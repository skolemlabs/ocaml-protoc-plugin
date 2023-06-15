open Primitive_types
let%expect_test _ =
  let module T = Primitive_types.Types in
  let t =
    T.
      {
        int64 = 1;
        sint64 = 2;
        uint64 = 3;
        int32 = 4;
        sint32 = 5;
        uint32 = 6;
        double = 7.1;
        float = 8.0;
        fixed64 = 9L;
        fixed32 = 10l;
        sfixed64 = 11L;
        sfixed32 = 12l;
        bool = true;
        string = "string";
        bytes = Bytes.of_string "bytes";
      }
  in
  Test_lib.test_encode (module T) t;
  [%expect
    {|
    int64: 1
    sint64: 2
    uint64: 3
    int32: 4
    sint32: 5
    uint32: 6
    double: 7.1
    float: 8
    fixed64: 9
    fixed32: 10
    sfixed64: 11
    sfixed32: 12
    bool: true
    string: "string"
    bytes: "bytes" |}]

let%expect_test _ =
  let module T = Primitive_types.Types in
  let t =
    T.
      {
        int64 = 0;
        sint64 = 0;
        uint64 = 0;
        int32 = 0;
        sint32 = 0;
        uint32 = 0;
        double = 0.0;
        float = 0.0;
        fixed64 = 0L;
        fixed32 = 0l;
        sfixed64 = 0L;
        sfixed32 = 0l;
        bool = false;
        string = "";
        bytes = Bytes.of_string "";
      }
  in
  let bin = T.to_proto t in
  Printf.printf "Size: %d%!" (Ocaml_protoc_plugin.Writer.contents bin |> String.length);
  [%expect {| Size: 0 |}]


let%expect_test _ =
  let module T = Primitive_types.Empty in
  let t = () in
  Test_lib.test_encode (module T) t;
  [%expect {| |}]
