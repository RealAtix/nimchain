import json

let 
  block_a* =  %*
    [
      {
        "index": 5,
        "timestamp": 1515110045.123456,
        "transactions": 
        [
            {
                "sender": "154d8554f9541e12354e1234f512a001",
                "recipient": "8654e21254c6512a51bce156542d1e5c",
                "amount": 212,
            }
        ],
        "proof": 488612354568,
        "previous_hash": "c7be1ed902fb8dd4d48997c6452f5d7e509fbcdbe2808b16bcf4edce4c07d14e"
      }
    ]

  block_b* =  %*
    [
      {
        "index": 5,
        "proof": 488612354568,
        "transactions": 
        [
            {
                "sender": "154d8554f9541e12354e1234f512a001",
                "recipient": "8654e21254c6512a51bce156542d1e5c",
                "amount": 212,
            }
        ],
        "previous_hash": "c7be1ed902fb8dd4d48997c6452f5d7e509fbcdbe2808b16bcf4edce4c07d14e",
        "timestamp": 1515110045.123456
      }
    ]