(************************************************)
(*       AUTOGENERATED FILE - DO NOT EDIT!      *)
(************************************************)
(* Generated by: ocaml-protoc-plugin            *)
(* https://github.com/issuu/ocaml-protoc-plugin *)
(************************************************)
(*
   Source: google/protobuf/compiler/plugin.proto
   Syntax: proto2 
   Parameters:
     annot=''
     debug=false
     opens=[]
     int64_as_int=true
     int32_as_int=true
     fixed_as_int=false
     singleton_record=false
*)
module Google = struct
  module Protobuf = struct
    module Compiler = struct
      module rec Version : sig
        val name': unit -> string
        type t = { major: int option; minor: int option; patch: int option; suffix: string option } 
        val to_proto: t -> Ocaml_protoc_plugin.Writer.t
        val from_proto: Ocaml_protoc_plugin.Reader.t -> t Ocaml_protoc_plugin.Result.t
      end = struct 
        let name' () = "Plugin.google.protobuf.compiler.Version"
        type t = { major: int option; minor: int option; patch: int option; suffix: string option } 
        let to_proto = 
          let apply = fun ~f:f' { major; minor; patch; suffix } -> f' [] major minor patch suffix in
          let spec = Ocaml_protoc_plugin.Serialize.C.( basic_opt (1, int32_int) ^:: basic_opt (2, int32_int) ^:: basic_opt (3, int32_int) ^:: basic_opt (4, string) ^:: nil ) in
          let serialize = Ocaml_protoc_plugin.Serialize.serialize [] (spec) in
          fun t -> apply ~f:(serialize) t
        
        let from_proto = 
          let constructor = fun _extensions major minor patch suffix -> { major; minor; patch; suffix } in
          let spec = Ocaml_protoc_plugin.Deserialize.C.( basic_opt (1, int32_int) ^:: basic_opt (2, int32_int) ^:: basic_opt (3, int32_int) ^:: basic_opt (4, string) ^:: nil ) in
          let deserialize = Ocaml_protoc_plugin.Deserialize.deserialize [] (spec) constructor in
          fun writer -> deserialize writer
        
      end
      and CodeGeneratorRequest : sig
        val name': unit -> string
        type t = { file_to_generate: string list; parameter: string option; proto_file: Descriptor.Google.Protobuf.FileDescriptorProto.t list; compiler_version: Version.t option } 
        val to_proto: t -> Ocaml_protoc_plugin.Writer.t
        val from_proto: Ocaml_protoc_plugin.Reader.t -> t Ocaml_protoc_plugin.Result.t
      end = struct 
        let name' () = "Plugin.google.protobuf.compiler.CodeGeneratorRequest"
        type t = { file_to_generate: string list; parameter: string option; proto_file: Descriptor.Google.Protobuf.FileDescriptorProto.t list; compiler_version: Version.t option } 
        let to_proto = 
          let apply = fun ~f:f' { file_to_generate; parameter; proto_file; compiler_version } -> f' [] file_to_generate parameter proto_file compiler_version in
          let spec = Ocaml_protoc_plugin.Serialize.C.( repeated (1, string, not_packed) ^:: basic_opt (2, string) ^:: repeated (15, (message Descriptor.Google.Protobuf.FileDescriptorProto.to_proto), not_packed) ^:: basic_opt (3, (message Version.to_proto)) ^:: nil ) in
          let serialize = Ocaml_protoc_plugin.Serialize.serialize [] (spec) in
          fun t -> apply ~f:(serialize) t
        
        let from_proto = 
          let constructor = fun _extensions file_to_generate parameter proto_file compiler_version -> { file_to_generate; parameter; proto_file; compiler_version } in
          let spec = Ocaml_protoc_plugin.Deserialize.C.( repeated (1, string, not_packed) ^:: basic_opt (2, string) ^:: repeated (15, (message Descriptor.Google.Protobuf.FileDescriptorProto.from_proto), not_packed) ^:: basic_opt (3, (message Version.from_proto)) ^:: nil ) in
          let deserialize = Ocaml_protoc_plugin.Deserialize.deserialize [] (spec) constructor in
          fun writer -> deserialize writer
        
      end
      and CodeGeneratorResponse : sig
        module rec File : sig
          val name': unit -> string
          type t = { name: string option; insertion_point: string option; content: string option } 
          val to_proto: t -> Ocaml_protoc_plugin.Writer.t
          val from_proto: Ocaml_protoc_plugin.Reader.t -> t Ocaml_protoc_plugin.Result.t
        end
        val name': unit -> string
        type t = { error: string option; file: File.t list } 
        val to_proto: t -> Ocaml_protoc_plugin.Writer.t
        val from_proto: Ocaml_protoc_plugin.Reader.t -> t Ocaml_protoc_plugin.Result.t
      end = struct 
        module rec File : sig
          val name': unit -> string
          type t = { name: string option; insertion_point: string option; content: string option } 
          val to_proto: t -> Ocaml_protoc_plugin.Writer.t
          val from_proto: Ocaml_protoc_plugin.Reader.t -> t Ocaml_protoc_plugin.Result.t
        end = struct 
          let name' () = "Plugin.google.protobuf.compiler.CodeGeneratorResponse.File"
          type t = { name: string option; insertion_point: string option; content: string option } 
          let to_proto = 
            let apply = fun ~f:f' { name; insertion_point; content } -> f' [] name insertion_point content in
            let spec = Ocaml_protoc_plugin.Serialize.C.( basic_opt (1, string) ^:: basic_opt (2, string) ^:: basic_opt (15, string) ^:: nil ) in
            let serialize = Ocaml_protoc_plugin.Serialize.serialize [] (spec) in
            fun t -> apply ~f:(serialize) t
          
          let from_proto = 
            let constructor = fun _extensions name insertion_point content -> { name; insertion_point; content } in
            let spec = Ocaml_protoc_plugin.Deserialize.C.( basic_opt (1, string) ^:: basic_opt (2, string) ^:: basic_opt (15, string) ^:: nil ) in
            let deserialize = Ocaml_protoc_plugin.Deserialize.deserialize [] (spec) constructor in
            fun writer -> deserialize writer
          
        end
        let name' () = "Plugin.google.protobuf.compiler.CodeGeneratorResponse"
        type t = { error: string option; file: File.t list } 
        let to_proto = 
          let apply = fun ~f:f' { error; file } -> f' [] error file in
          let spec = Ocaml_protoc_plugin.Serialize.C.( basic_opt (1, string) ^:: repeated (15, (message File.to_proto), not_packed) ^:: nil ) in
          let serialize = Ocaml_protoc_plugin.Serialize.serialize [] (spec) in
          fun t -> apply ~f:(serialize) t
        
        let from_proto = 
          let constructor = fun _extensions error file -> { error; file } in
          let spec = Ocaml_protoc_plugin.Deserialize.C.( basic_opt (1, string) ^:: repeated (15, (message File.from_proto), not_packed) ^:: nil ) in
          let deserialize = Ocaml_protoc_plugin.Deserialize.deserialize [] (spec) constructor in
          fun writer -> deserialize writer
        
      end
    end
  end
end