import { Inject, Injectable, BadRequestException} from '@nestjs/common';
import { Repository } from 'typeorm';
import { User } from './user.entity';
import * as bcrypt from 'bcrypt';

@Injectable()
export class UsersService {
  constructor( @Inject('UserRepositoryToken') private readonly userRepository: Repository<User>) { }

  /**
   * @param conds is an object with desired conditions, e.g { id: '123 '}
   * @return Returns the found user or error response.
   */
  async findOne(conds) {
    try {
      return await this.userRepository.findOne({ where: conds});
    } catch (err) {
      return err;
    }
  }

  /**
   * @param user is the entity User using typeorm definitions
   * @return Returns the created user.
   */
  async create(user: User) {
    const SALT_WORK_FACTOR = 10;
    const response = bcrypt.hash(user.password, SALT_WORK_FACTOR).then((hash) => {
      const userWithHash = Object.assign({}, user, {
        password: hash,
      });
      return this.userRepository.save(userWithHash);
    }).then((userData) => {
      userData.id = undefined;
      userData.password = undefined;
      return userData;
    }).catch((err) => {
      throw new BadRequestException(err);
    });
    return response;
  }
}