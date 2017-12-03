/*
 * Copyright 2017 Google Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

`define IVERILOG
`include "top.v"

module top_test;

  reg clk = 0;
  wire uart_tx;
  always #2 clk = !clk;
  initial
  # 3500 $finish;

  top t(clk, uart_tx);

  initial begin
    $dumpfile("top_test.vcd");
    $dumpvars;
  end
endmodule
