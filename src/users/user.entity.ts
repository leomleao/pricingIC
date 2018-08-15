import { Column, Entity, PrimaryGeneratedColumn, Unique } from 'typeorm';

@Entity()
export class User {
  @PrimaryGeneratedColumn('uuid')
  id: string;

  @Column({
    nullable: true,
  })
  fullname: string;

  @Column({
    unique: true,
  })
  email: string;

  @Column()
  password: string;
}
