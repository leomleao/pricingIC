import { IsString, IsEmail } from 'class-validator';

export class PassDto {
  @IsString() @IsEmail() readonly email: string;
  @IsString() readonly password: string;
}
