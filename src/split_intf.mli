(*  File: split_intf.mli

    AIFAD - Automated Induction of Functions over Algebraic Datatypes

    Author: Markus Mottl
    email:  markus.mottl@gmail.com
    WWW:    http://www.ocaml.info

    Copyright (C) 2002  Austrian Research Institute for Artificial Intelligence
    Copyright (C) 2003- Markus Mottl

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
*)

(* $Id: split_intf.mli,v 1.15 2006/01/17 00:23:39 mottl Exp $ *)

open Algdt_types
open Model_types
open Model_utils
open Dshave

module type SPEC = sig
  val dfspec : fspec
  val cfspec : fspec
  val find_split : dom_ixs -> vars -> vars -> var_ix option
  val most_prob_csums : vars -> fdsums
  val split_null_branches : bool
  val factorize_models : models -> Factor.factor
end

module type SPLIT = sig
  val derive_model : vars -> vars -> model
end