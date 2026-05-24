module Memory_2 (
    input iCLK, iReset_n,
    input iChipSelect_n, iWrite_n, iRead_n,
    input [6:0] iAddress,      
    input [31:0] iData,        
    output [31:0] oData
);


    wire cs_n_u1, cs_n_u2;
    wire [31:0] out_u1, out_u2;
    assign cs_n_u1 = iChipSelect_n | iAddress[6]; 
    assign cs_n_u2 = iChipSelect_n | ~iAddress[6];

    // Khối Memory 1 (Địa chỉ 0-63)
    Memory #( .DATA_WIDTH(32), .ADDRESS_WIDTH(6) ) u1 (
        .iClk           (iCLK),
        .iReset_n       (iReset_n),
        .iChipSelect_n  (cs_n_u1),
        .iRead_n        (iRead_n),
        .iWrite_n       (iWrite_n),
        .iAddress       (iAddress[5:0]), // Dùng 6 bit thấp
        .iData          (iData),
        .oData          (out_u1)
    );

    // Khối Memory 2 (Địa chỉ 64-127)
    Memory #( .DATA_WIDTH(32), .ADDRESS_WIDTH(6) ) u2 (
        .iClk           (iCLK),
        .iReset_n       (iReset_n),
        .iChipSelect_n  (cs_n_u2),
        .iRead_n        (iRead_n),
        .iWrite_n       (iWrite_n),
        .iAddress       (iAddress[5:0]), // Dùng 6 bit thấp
        .iData          (iData),
        .oData          (out_u2)
    );


    assign oData = (iAddress[6] == 0) ? out_u1 : out_u2;

endmodule