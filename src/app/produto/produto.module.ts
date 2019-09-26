import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { ProdutoRoutingModule } from './produto-routing.module';

import { IonicModule } from '@ionic/angular';

import { ProdutoPage } from './produto.page';



@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    ProdutoRoutingModule
  ],
  declarations: [ProdutoPage]
})
export class ProdutoPageModule {}
