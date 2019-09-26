import { NgModule } from '@angular/core';
import { PreloadAllModules, RouterModule, Routes } from '@angular/router';

const routes: Routes = [
  { path: '', redirectTo: 'produto', pathMatch: 'full' },
  { path: 'produto', loadChildren: './produto/produto.module#ProdutoPageModule'},
  { path: 'auth', loadChildren: './auth/auth.module#AuthPageModule' }

  ];

@NgModule({
  imports: [
    RouterModule.forRoot(routes, { preloadingStrategy: PreloadAllModules })
  ],
  exports: [RouterModule]
})
export class AppRoutingModule { }
