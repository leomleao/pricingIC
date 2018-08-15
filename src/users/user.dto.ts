import { IsString, IsEmail } from 'class-validator';

export class CreateUserDto {
  readonly id: string;
  @IsString() readonly fullname: string;
  @IsString() @IsEmail() readonly email: string;
  @IsString() readonly password: string;
}
