import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

export interface AuthResponseData{
  estado: string;
  nome: string;
  u_id: string;
  tipo: string;
  email: string;
  contacto: string;
  endereco: string;
}
@Injectable({
  providedIn: 'root'
})

export class AuthService {

  private _userIsAuthenticated = false;

  get userIsAuthenticated() {
    return this._userIsAuthenticated;
  }

  set userIsAuthenticated(estado: boolean) {
    this._userIsAuthenticated=estado;
  }
  constructor(
    private http: HttpClient
  ) {}

  login(nome:string, senha:string) {


    return  this.http
    .post<AuthResponseData>("http://localhost/php/controller/login.php",{nome: nome, senha: senha});


  }

  // register(nome:string,email:string, senha: string, confirmar:string, endereco:string, contacto: string ){
  //     this.http.
  // }

  logout() {
    this._userIsAuthenticated = false;
  }
}
