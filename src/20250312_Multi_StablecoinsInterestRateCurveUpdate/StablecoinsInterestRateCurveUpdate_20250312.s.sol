// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {GovV3Helpers, IPayloadsControllerCore, PayloadsControllerUtils} from 'aave-helpers/src/GovV3Helpers.sol';
import {GovernanceV3Ethereum} from 'aave-address-book/GovernanceV3Ethereum.sol';
import {GovernanceV3ZkSync} from 'aave-address-book/GovernanceV3ZkSync.sol';
import {EthereumScript, PolygonScript, AvalancheScript, OptimismScript, ArbitrumScript, MetisScript, BaseScript, GnosisScript, ScrollScript, BNBScript, ChainIds} from 'solidity-utils/contracts/utils/ScriptUtils.sol';
import {AaveV3Ethereum_StablecoinsInterestRateCurveUpdate_20250312} from './AaveV3Ethereum_StablecoinsInterestRateCurveUpdate_20250312.sol';
import {AaveV3EthereumLido_StablecoinsInterestRateCurveUpdate_20250312} from './AaveV3EthereumLido_StablecoinsInterestRateCurveUpdate_20250312.sol';
import {AaveV3EthereumEtherFi_StablecoinsInterestRateCurveUpdate_20250312} from './AaveV3EthereumEtherFi_StablecoinsInterestRateCurveUpdate_20250312.sol';
import {AaveV3Avalanche_StablecoinsInterestRateCurveUpdate_20250312} from './AaveV3Avalanche_StablecoinsInterestRateCurveUpdate_20250312.sol';
import {AaveV3Optimism_StablecoinsInterestRateCurveUpdate_20250312} from './AaveV3Optimism_StablecoinsInterestRateCurveUpdate_20250312.sol';
import {AaveV3Arbitrum_StablecoinsInterestRateCurveUpdate_20250312} from './AaveV3Arbitrum_StablecoinsInterestRateCurveUpdate_20250312.sol';
import {AaveV3Metis_StablecoinsInterestRateCurveUpdate_20250312} from './AaveV3Metis_StablecoinsInterestRateCurveUpdate_20250312.sol';
import {AaveV3Base_StablecoinsInterestRateCurveUpdate_20250312} from './AaveV3Base_StablecoinsInterestRateCurveUpdate_20250312.sol';
import {AaveV3Gnosis_StablecoinsInterestRateCurveUpdate_20250312} from './AaveV3Gnosis_StablecoinsInterestRateCurveUpdate_20250312.sol';
import {AaveV3Scroll_StablecoinsInterestRateCurveUpdate_20250312} from './AaveV3Scroll_StablecoinsInterestRateCurveUpdate_20250312.sol';
import {AaveV3BNB_StablecoinsInterestRateCurveUpdate_20250312} from './AaveV3BNB_StablecoinsInterestRateCurveUpdate_20250312.sol';

/**
 * @dev Deploy Ethereum
 * deploy-command: make deploy-ledger contract=src/20250312_Multi_StablecoinsInterestRateCurveUpdate/StablecoinsInterestRateCurveUpdate_20250312.s.sol:DeployEthereum chain=mainnet
 * verify-command: FOUNDRY_PROFILE=mainnet npx catapulta-verify -b broadcast/StablecoinsInterestRateCurveUpdate_20250312.s.sol/1/run-latest.json
 */
contract DeployEthereum is EthereumScript {
  function run() external broadcast {
    // deploy payloads
    address payload0 = GovV3Helpers.deployDeterministic(
      type(AaveV3Ethereum_StablecoinsInterestRateCurveUpdate_20250312).creationCode
    );
    address payload1 = GovV3Helpers.deployDeterministic(
      type(AaveV3EthereumLido_StablecoinsInterestRateCurveUpdate_20250312).creationCode
    );
    address payload2 = GovV3Helpers.deployDeterministic(
      type(AaveV3EthereumEtherFi_StablecoinsInterestRateCurveUpdate_20250312).creationCode
    );

    // compose action
    IPayloadsControllerCore.ExecutionAction[]
      memory actions = new IPayloadsControllerCore.ExecutionAction[](3);
    actions[0] = GovV3Helpers.buildAction(payload0);
    actions[1] = GovV3Helpers.buildAction(payload1);
    actions[2] = GovV3Helpers.buildAction(payload2);

    // register action at payloadsController
    GovV3Helpers.createPayload(actions);
  }
}

/**
 * @dev Deploy Avalanche
 * deploy-command: make deploy-ledger contract=src/20250312_Multi_StablecoinsInterestRateCurveUpdate/StablecoinsInterestRateCurveUpdate_20250312.s.sol:DeployAvalanche chain=avalanche
 * verify-command: FOUNDRY_PROFILE=avalanche npx catapulta-verify -b broadcast/StablecoinsInterestRateCurveUpdate_20250312.s.sol/43114/run-latest.json
 */
contract DeployAvalanche is AvalancheScript {
  function run() external broadcast {
    // deploy payloads
    address payload0 = GovV3Helpers.deployDeterministic(
      type(AaveV3Avalanche_StablecoinsInterestRateCurveUpdate_20250312).creationCode
    );

    // compose action
    IPayloadsControllerCore.ExecutionAction[]
      memory actions = new IPayloadsControllerCore.ExecutionAction[](1);
    actions[0] = GovV3Helpers.buildAction(payload0);

    // register action at payloadsController
    GovV3Helpers.createPayload(actions);
  }
}

/**
 * @dev Deploy Optimism
 * deploy-command: make deploy-ledger contract=src/20250312_Multi_StablecoinsInterestRateCurveUpdate/StablecoinsInterestRateCurveUpdate_20250312.s.sol:DeployOptimism chain=optimism
 * verify-command: FOUNDRY_PROFILE=optimism npx catapulta-verify -b broadcast/StablecoinsInterestRateCurveUpdate_20250312.s.sol/10/run-latest.json
 */
contract DeployOptimism is OptimismScript {
  function run() external broadcast {
    // deploy payloads
    address payload0 = GovV3Helpers.deployDeterministic(
      type(AaveV3Optimism_StablecoinsInterestRateCurveUpdate_20250312).creationCode
    );

    // compose action
    IPayloadsControllerCore.ExecutionAction[]
      memory actions = new IPayloadsControllerCore.ExecutionAction[](1);
    actions[0] = GovV3Helpers.buildAction(payload0);

    // register action at payloadsController
    GovV3Helpers.createPayload(actions);
  }
}

/**
 * @dev Deploy Arbitrum
 * deploy-command: make deploy-ledger contract=src/20250312_Multi_StablecoinsInterestRateCurveUpdate/StablecoinsInterestRateCurveUpdate_20250312.s.sol:DeployArbitrum chain=arbitrum
 * verify-command: FOUNDRY_PROFILE=arbitrum npx catapulta-verify -b broadcast/StablecoinsInterestRateCurveUpdate_20250312.s.sol/42161/run-latest.json
 */
contract DeployArbitrum is ArbitrumScript {
  function run() external broadcast {
    // deploy payloads
    address payload0 = GovV3Helpers.deployDeterministic(
      type(AaveV3Arbitrum_StablecoinsInterestRateCurveUpdate_20250312).creationCode
    );

    // compose action
    IPayloadsControllerCore.ExecutionAction[]
      memory actions = new IPayloadsControllerCore.ExecutionAction[](1);
    actions[0] = GovV3Helpers.buildAction(payload0);

    // register action at payloadsController
    GovV3Helpers.createPayload(actions);
  }
}

/**
 * @dev Deploy Metis
 * deploy-command: make deploy-ledger contract=src/20250312_Multi_StablecoinsInterestRateCurveUpdate/StablecoinsInterestRateCurveUpdate_20250312.s.sol:DeployMetis chain=metis
 * verify-command: FOUNDRY_PROFILE=metis npx catapulta-verify -b broadcast/StablecoinsInterestRateCurveUpdate_20250312.s.sol/1088/run-latest.json
 */
contract DeployMetis is MetisScript {
  function run() external broadcast {
    // deploy payloads
    address payload0 = GovV3Helpers.deployDeterministic(
      type(AaveV3Metis_StablecoinsInterestRateCurveUpdate_20250312).creationCode
    );

    // compose action
    IPayloadsControllerCore.ExecutionAction[]
      memory actions = new IPayloadsControllerCore.ExecutionAction[](1);
    actions[0] = GovV3Helpers.buildAction(payload0);

    // register action at payloadsController
    GovV3Helpers.createPayload(actions);
  }
}

/**
 * @dev Deploy Base
 * deploy-command: make deploy-ledger contract=src/20250312_Multi_StablecoinsInterestRateCurveUpdate/StablecoinsInterestRateCurveUpdate_20250312.s.sol:DeployBase chain=base
 * verify-command: FOUNDRY_PROFILE=base npx catapulta-verify -b broadcast/StablecoinsInterestRateCurveUpdate_20250312.s.sol/8453/run-latest.json
 */
contract DeployBase is BaseScript {
  function run() external broadcast {
    // deploy payloads
    address payload0 = GovV3Helpers.deployDeterministic(
      type(AaveV3Base_StablecoinsInterestRateCurveUpdate_20250312).creationCode
    );

    // compose action
    IPayloadsControllerCore.ExecutionAction[]
      memory actions = new IPayloadsControllerCore.ExecutionAction[](1);
    actions[0] = GovV3Helpers.buildAction(payload0);

    // register action at payloadsController
    GovV3Helpers.createPayload(actions);
  }
}

/**
 * @dev Deploy Gnosis
 * deploy-command: make deploy-ledger contract=src/20250312_Multi_StablecoinsInterestRateCurveUpdate/StablecoinsInterestRateCurveUpdate_20250312.s.sol:DeployGnosis chain=gnosis
 * verify-command: FOUNDRY_PROFILE=gnosis npx catapulta-verify -b broadcast/StablecoinsInterestRateCurveUpdate_20250312.s.sol/100/run-latest.json
 */
contract DeployGnosis is GnosisScript {
  function run() external broadcast {
    // deploy payloads
    address payload0 = GovV3Helpers.deployDeterministic(
      type(AaveV3Gnosis_StablecoinsInterestRateCurveUpdate_20250312).creationCode
    );

    // compose action
    IPayloadsControllerCore.ExecutionAction[]
      memory actions = new IPayloadsControllerCore.ExecutionAction[](1);
    actions[0] = GovV3Helpers.buildAction(payload0);

    // register action at payloadsController
    GovV3Helpers.createPayload(actions);
  }
}

/**
 * @dev Deploy Scroll
 * deploy-command: make deploy-ledger contract=src/20250312_Multi_StablecoinsInterestRateCurveUpdate/StablecoinsInterestRateCurveUpdate_20250312.s.sol:DeployScroll chain=scroll
 * verify-command: FOUNDRY_PROFILE=scroll npx catapulta-verify -b broadcast/StablecoinsInterestRateCurveUpdate_20250312.s.sol/534352/run-latest.json
 */
contract DeployScroll is ScrollScript {
  function run() external broadcast {
    // deploy payloads
    address payload0 = GovV3Helpers.deployDeterministic(
      type(AaveV3Scroll_StablecoinsInterestRateCurveUpdate_20250312).creationCode
    );

    // compose action
    IPayloadsControllerCore.ExecutionAction[]
      memory actions = new IPayloadsControllerCore.ExecutionAction[](1);
    actions[0] = GovV3Helpers.buildAction(payload0);

    // register action at payloadsController
    GovV3Helpers.createPayload(actions);
  }
}

/**
 * @dev Deploy BNB
 * deploy-command: make deploy-ledger contract=src/20250312_Multi_StablecoinsInterestRateCurveUpdate/StablecoinsInterestRateCurveUpdate_20250312.s.sol:DeployBNB chain=bnb
 * verify-command: FOUNDRY_PROFILE=bnb npx catapulta-verify -b broadcast/StablecoinsInterestRateCurveUpdate_20250312.s.sol/56/run-latest.json
 */
contract DeployBNB is BNBScript {
  function run() external broadcast {
    // deploy payloads
    address payload0 = GovV3Helpers.deployDeterministic(
      type(AaveV3BNB_StablecoinsInterestRateCurveUpdate_20250312).creationCode
    );

    // compose action
    IPayloadsControllerCore.ExecutionAction[]
      memory actions = new IPayloadsControllerCore.ExecutionAction[](1);
    actions[0] = GovV3Helpers.buildAction(payload0);

    // register action at payloadsController
    GovV3Helpers.createPayload(actions);
  }
}

/**
 * @dev Create Proposal
 * command: make deploy-ledger contract=src/20250312_Multi_StablecoinsInterestRateCurveUpdate/StablecoinsInterestRateCurveUpdate_20250312.s.sol:CreateProposal chain=mainnet
 */
contract CreateProposal is EthereumScript {
  function run() external {
    // create payloads
    PayloadsControllerUtils.Payload[] memory payloads = new PayloadsControllerUtils.Payload[](10);

    // compose actions for validation
    IPayloadsControllerCore.ExecutionAction[]
      memory actionsEthereum = new IPayloadsControllerCore.ExecutionAction[](3);
    actionsEthereum[0] = GovV3Helpers.buildAction(
      type(AaveV3Ethereum_StablecoinsInterestRateCurveUpdate_20250312).creationCode
    );
    actionsEthereum[1] = GovV3Helpers.buildAction(
      type(AaveV3EthereumLido_StablecoinsInterestRateCurveUpdate_20250312).creationCode
    );
    actionsEthereum[2] = GovV3Helpers.buildAction(
      type(AaveV3EthereumEtherFi_StablecoinsInterestRateCurveUpdate_20250312).creationCode
    );
    payloads[0] = GovV3Helpers.buildMainnetPayload(vm, actionsEthereum);

    IPayloadsControllerCore.ExecutionAction[]
      memory actionsAvalanche = new IPayloadsControllerCore.ExecutionAction[](1);
    actionsAvalanche[0] = GovV3Helpers.buildAction(
      type(AaveV3Avalanche_StablecoinsInterestRateCurveUpdate_20250312).creationCode
    );
    payloads[1] = GovV3Helpers.buildAvalanchePayload(vm, actionsAvalanche);

    IPayloadsControllerCore.ExecutionAction[]
      memory actionsOptimism = new IPayloadsControllerCore.ExecutionAction[](1);
    actionsOptimism[0] = GovV3Helpers.buildAction(
      type(AaveV3Optimism_StablecoinsInterestRateCurveUpdate_20250312).creationCode
    );
    payloads[2] = GovV3Helpers.buildOptimismPayload(vm, actionsOptimism);

    IPayloadsControllerCore.ExecutionAction[]
      memory actionsArbitrum = new IPayloadsControllerCore.ExecutionAction[](1);
    actionsArbitrum[0] = GovV3Helpers.buildAction(
      type(AaveV3Arbitrum_StablecoinsInterestRateCurveUpdate_20250312).creationCode
    );
    payloads[3] = GovV3Helpers.buildArbitrumPayload(vm, actionsArbitrum);

    IPayloadsControllerCore.ExecutionAction[]
      memory actionsMetis = new IPayloadsControllerCore.ExecutionAction[](1);
    actionsMetis[0] = GovV3Helpers.buildAction(
      type(AaveV3Metis_StablecoinsInterestRateCurveUpdate_20250312).creationCode
    );
    payloads[4] = GovV3Helpers.buildMetisPayload(vm, actionsMetis);

    IPayloadsControllerCore.ExecutionAction[]
      memory actionsBase = new IPayloadsControllerCore.ExecutionAction[](1);
    actionsBase[0] = GovV3Helpers.buildAction(
      type(AaveV3Base_StablecoinsInterestRateCurveUpdate_20250312).creationCode
    );
    payloads[5] = GovV3Helpers.buildBasePayload(vm, actionsBase);

    IPayloadsControllerCore.ExecutionAction[]
      memory actionsGnosis = new IPayloadsControllerCore.ExecutionAction[](1);
    actionsGnosis[0] = GovV3Helpers.buildAction(
      type(AaveV3Gnosis_StablecoinsInterestRateCurveUpdate_20250312).creationCode
    );
    payloads[6] = GovV3Helpers.buildGnosisPayload(vm, actionsGnosis);

    IPayloadsControllerCore.ExecutionAction[]
      memory actionsScroll = new IPayloadsControllerCore.ExecutionAction[](1);
    actionsScroll[0] = GovV3Helpers.buildAction(
      type(AaveV3Scroll_StablecoinsInterestRateCurveUpdate_20250312).creationCode
    );
    payloads[7] = GovV3Helpers.buildScrollPayload(vm, actionsScroll);

    IPayloadsControllerCore.ExecutionAction[]
      memory actionsBNB = new IPayloadsControllerCore.ExecutionAction[](1);
    actionsBNB[0] = GovV3Helpers.buildAction(
      type(AaveV3BNB_StablecoinsInterestRateCurveUpdate_20250312).creationCode
    );
    payloads[8] = GovV3Helpers.buildBNBPayload(vm, actionsBNB);

    payloads[9] = PayloadsControllerUtils.Payload({
      chain: ChainIds.ZKSYNC,
      accessLevel: PayloadsControllerUtils.AccessControl.Level_1,
      payloadsController: address(GovernanceV3ZkSync.PAYLOADS_CONTROLLER),
      payloadId: 19
    });

    // create proposal
    vm.startBroadcast();
    GovV3Helpers.createProposal(
      vm,
      payloads,
      GovernanceV3Ethereum.VOTING_PORTAL_ETH_POL,
      GovV3Helpers.ipfsHashFile(
        vm,
        'src/20250312_Multi_StablecoinsInterestRateCurveUpdate/StablecoinsInterestRateCurveUpdate.md'
      )
    );
  }
}
