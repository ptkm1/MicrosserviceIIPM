# Learning Repo method

on this module "Iipmcrud" i have a Repo, Method of direct connection to Database.

on Repo Object, i got others methods...
for example, be like: get_by()

in this module, exists modules created by myself, be like: Admin and Users, created in phx.gen.schema

and, i use this 2 modules to get data in my db, for example:

    alias Iipmcrud.{Admin,Repo} <- all modules than i got, like on js: import { Admin, Repo } from './src/controllers'

    
    Repo.get_by(Admin, email: params.email) <- method of Repo, to get data on database based on parameters.