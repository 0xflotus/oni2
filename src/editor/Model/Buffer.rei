/*
 * Buffer.rei
 *
 * In-memory text buffer representation
 */

open Oni_Core.Types;

[@deriving show]
type t;

let ofLines: array(string) => t;
let ofMetadata: BufferMetadata.t => t;

let getLine: (t, int) => string;
let getLineLength: (t, int) => int;

let getMetadata: t => BufferMetadata.t;
let getUri: t => Uri.t;

let getNumberOfLines: t => int;

let update: (t, BufferUpdate.t) => t;

let updateMetadata: (t, BufferMetadata.t) => t;

let empty: t;
