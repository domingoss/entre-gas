import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import {Usuario} from './usuario.model';

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

  register(nome: string, email: string, senha: string, confirma: string, endereco: string, contacto: string){

      var postData = {

          nome: nome,
          email: email,
          senha: senha,
          confirma: confirma,
          endereco: endereco,
          contacto: contacto

      }
      
      this.http
      .post("http://php/controller/adicionar/add_utilizador.php",postData);
  }

  // register(nome:string,email:string, senha: string, confirmar:string, endereco:string, contacto: string ){
  //     this.http.
  // }

  logout() {
    this._userIsAuthenticated = false;
  }
}
