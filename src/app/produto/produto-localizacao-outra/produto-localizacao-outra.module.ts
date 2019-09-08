import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { Routes, RouterModule } from '@angular/router';

import { IonicModule } from '@ionic/angular';

import { ProdutoLocalizacaoOutraPage } from './produto-localizacao-outra.page';

const routes: Routes = [
  {
    path: '',
    component: ProdutoLocalizacaoOutraPage
  }
];

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    RouterModule.forChild(routes)
  ],
  declarations: [ProdutoLocalizacaoOutraPage]
})
export class ProdutoLocalizacaoOutraPageModule {}
