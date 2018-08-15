import { Module } from '@nestjs/common';
import { AuthService } from './auth.service';
import { JwtStrategy } from './jwt.strategy';
import { AuthController } from './auth.controller';
import { UsersModule } from '../users/users.module';
import { ExtractJwt } from 'passport-jwt';

const extractJwt = {
  provide: 'ExtractJwt',
  useValue: ExtractJwt,
};

@Module({
  controllers: [AuthController],
  providers: [AuthService, JwtStrategy, extractJwt],
  imports: [UsersModule],
})
export class AuthModule {}
