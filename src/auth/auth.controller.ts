import { Controller, Get, Post, Body, UseGuards, UnauthorizedException } from '@nestjs/common';
import { AuthService } from './auth.service';
import { PassDto } from './auth.dto';
import { UsersService } from '../users/users.service';
import * as bcrypt from 'bcrypt';

@Controller('auth')
export class AuthController {
  constructor(private readonly authService: AuthService, private readonly usersService: UsersService) {}

  @Post('login')
  /**
   * @param passDto  The passDto is a class-validator implementation, it valuates the sent body!
   * @return Return the created token after further validation in the service.
   */
  async createToken(@Body() passDto: PassDto): Promise<any> {

    const user = await this.usersService.findOne({ email: passDto.email });
    if (!user) throw new UnauthorizedException();
    const match = await bcrypt.compare(passDto.password, user.password);
    if (!match) throw new UnauthorizedException();

    return await this.authService.createToken(user);
  }
}
