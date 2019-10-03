import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { Routes, RouterModule } from '@angular/router';

import { IonicModule } from '@ionic/angular';

import { HistoricoPage } from './historico.page';

const routes: Routes = [
  {
    path: '',
    component: HistoricoPage,
    children: [
      {
        path: 'entregue',
        loadChildren: './entregas-feitas/entregas-feitas.module#EntregasFeitasPageModule'
      },
      {
        path: 'pendente',
        loadChildren: './entregas-pendentes/entregas-pendentes.module#EntregasPendentesPageModule'
      }

    ]
  }
];

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    RouterModule.forChild(routes)
  ],
  declarations: [HistoricoPage]
})
export class HistoricoPageModule {}
