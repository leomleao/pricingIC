import * as jwt from 'jsonwebtoken';
import { Injectable, NotFoundException } from '@nestjs/common';
import { JwtPayload } from './interfaces/jwt-payload.interface';
import { UsersService } from '../users/users.service';

@Injectable()
export class AuthService {
  constructor(private readonly usersService: UsersService) { }

  async createToken({email}) {
    const user: JwtPayload = { email };
    const expiresIn = 3600;
    const accessToken = jwt.sign(user, process.env.SECRETKEY, { expiresIn });
    return {
      expiresIn,
      accessToken,
    };
  }

  async validateUser(payload: JwtPayload): Promise<any> {
    return await this.usersService.findOne({ email: payload.email });
  }
}
