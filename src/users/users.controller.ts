import { Body, Controller, Post, HttpCode, UseFilters} from '@nestjs/common';
import { UsersService } from './users.service';
import { CreateUserDto } from './user.dto';
import { HttpExceptionFilter } from '../common/http-exception.filter';
import { AuthGuard } from '@nestjs/passport';

@Controller('users')
@UseFilters(new HttpExceptionFilter())
export class UsersController {
  constructor(private readonly usersService: UsersService) { }

  @Post()
  @HttpCode(201)
  /**
   * @param The createUserDto is a class-validator implementation, it valuates the sent body!
   * @return Returns the created user.
   */
  async create(@Body() createUserDto: CreateUserDto) {
    const user = await this.usersService.create(createUserDto);
    return user;
  }
}