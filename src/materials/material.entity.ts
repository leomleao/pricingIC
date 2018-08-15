import {
  Column,
  Entity,
  PrimaryColumn,
  Unique,
  CreateDateColumn,
  UpdateDateColumn
} from 'typeorm';

@Entity()
export class Material {
  @PrimaryColumn()
  id: number;

  @Column()
  password: string;

  @Column({
    name: 'codigo'
  })
  codigo: number;
   
  @Column({
    name: 'pricingmaterial'
  })
  pricingmaterial: string;
   
  @Column({
    name: 'descricao'
  })
  descricao: string;
   
  @Column({
    name: 'detalhes'
  })
  detalhes: string;
   
  @Column({
    name: 'multiplo'
  })
  multiplo: number;
   
  @Column({
    name: 'UF'
  })
  UF: string;
   
  @Column({
    name: 'IPI'
  })
  IPI: number;
   
  @Column({
    name: 'NCM'
  })
  NCM: number;
   
  @Column({
    name: 'concat'
  })
  concat: string;
   
  @Column({
    name: 'precoRevenda'
  })
  precoRevenda: string;
   
  @Column({
    name: 'precoRevendaPremium'
  })
  precoRevendaPremium: string;
   
  @Column({
    name: 'precoAtacado'
  })
  precoAtacado: string;
   
  @Column({
    name: 'precoConstrutora'
  })
  precoConstrutora: string;

  @CreateDateColumn({
    name: 'created_at', nullable: false 
  })
  createdAt: Date;

  @UpdateDateColumn({
    name: 'updated_at', nullable: false 
  })
  updatedAt: Date;

}
