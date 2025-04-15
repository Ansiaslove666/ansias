// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IUniswapV2Router {
        function swapExactETHForTokens(
                    uint amountOutMin,
                            address[] calldata path,
                                    address to,
                                            uint deadline
        ) external payable returns (uint[] memory amounts);
}

contract TokenGetter {
        address constant UNISWAP_ROUTER = 0x...; // Dirección real de Uniswap V2 router
            address constant WETH = 0x...; // Dirección real de WETH

                function getWETH() external payable {
                            IUniswapV2Router router = IUniswapV2Router(UNISWAP_ROUTER);

                                    address ;
                                            path[0] = router.WETH();
                                                    path[1] = WETH;

                                                            router.swapExactETHForTokens{value: msg.value}(
                                                                            0,
                                                                                        path,
                                                                                                    msg.sender,
                                                                                                                block.timestamp
                                                            );
                }

                    receive() external payable {}
}
                                                            
                

       
