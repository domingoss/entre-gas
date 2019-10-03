import {RouterModule ,Routes } from '@angular/router';
import { ProdutoPage } from './produto.page';
import { NgModule } from '@angular/core';

const routes: Routes = [
  {
    path:'',
    component: ProdutoPage,
  },
  {
    path: ':produtoId',
    loadChildren: './produto-location/produto-location.module#ProdutoLocationPageModule'
  }



];
@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})

export class ProdutoRoutingModule{

}
