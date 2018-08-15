import request from 'supertest';
import { Test } from '@nestjs/testing';
import { UsersModule } from './../users/users.module';
import { AuthModule } from './../auth/auth.module';
import { AppModule } from './../app.module';
import { ContactsModule } from './../contacts/contacts.module';
import { INestApplication } from '@nestjs/common';

import { AuthService } from '../auth/auth.service';
import { JwtStrategy } from '../auth/jwt.strategy';

import * as dotenv from 'dotenv';
import * as path from 'path';
import { v4 as uuid } from 'uuid';

describe('AppController (e2e)', () => {
  let app: INestApplication;
  let token;
  const id: string = uuid();
  const newUser = {
    fullname: 'Leonardo Medeiros Leao',
    email: 'leomleao' + id + '@gmail.com',
    password: 'SuperStrongPassword',
};

  beforeAll(async () => {
    await dotenv.config({silent: true, path: path.resolve(__dirname, '../../.env')});
    const moduleFixture = await Test.createTestingModule({
      imports: [AppModule],
    }).compile();

    app = moduleFixture.createNestApplication();
    await app.init();
  });

  it('should register a new account /POST /api/users', (done) => {
    return request(app.getHttpServer())
      .post('/users')
      .send(newUser)
      .set('Content-Type', 'application/json')
      .expect(201)
      .end((err, res) => {
        if (err) return done(err);
        done();
      });
  });

  it('should login the new user and retrive the access token /POST /api/auth/login', (done) => {
    return request(app.getHttpServer())
      .post('/auth/login')
      .send({email: newUser.email, password: newUser.password })
      .set('Content-Type', 'application/json')
      .expect(201)
      .end((err, res) => {
        if (err) return done(err);
        token = res.body;
        done();
      });
  });

  it('should use the retrieved token to add a new contact to the secured endpoint /POST /api/contacts', (done) => {
    return request(app.getHttpServer())
      .post('/contacts')
      .send({name: 'newGuy', email: 'newContact@gmail.com' })
      .set( 'Authorization', 'bearer ' + token.accessToken)
      .expect(201)
      .end((err, res) => {
        if (err) return done(err);
        done();
      });
  });

  it('should reject the request as it is not authorized /POST /api/contacts', (done) => {
    return request(app.getHttpServer())
      .post('/contacts')
      .send({name: 'newGuy', email: 'newContact@gmail.com' })
      .expect(401)
      .end((err, res) => {
        if (err) return done(err);
        done();
      });
  });

});
