Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF9D3E7716D
	for <webhook@archiver.kernel.org>; Thu,  5 Dec 2024 14:38:03 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.89])
 by mx.groups.io with SMTP id smtpd.web11.12395.1733409478810892427
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Dec 2024 06:37:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=kiAGsdmo;
 spf=pass (domain: cherry.de, ip: 40.107.21.89, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sez2LYaePae/ZhpHCjp2CAgy/TARK/jT6DKXn9OtPT4s2BDqCAtZCDwNZBCIqX9uq7uz1BL4kch4xbNMsj3vVGIlBIvVaiksoRCBY5T6PwtZeNNMXwucpEYIltjNHPx6AHTnPGCDYjZhbgFkq6DWUHkP+GzoH3s+t+x4SOedG2/QYGlaW+02x7f/c3Yy82DxJBwa2olgYGfydBavpPsjklpUr7zl5U127jE/NXCOoTAVEpWX14kTlyEVdVBqUgP0m0d4tlX9wuHMeu/ZWap6PlSgknCL9g7wTniD4J8SGBPPWqjnYkOijWRYFKaCrwGZXbgCSXRyysikJec3ZYktOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RqCpf0WBMwYNUUfKIuRzieu+aa8xbZHrPTd5KGb8HZo=;
 b=wEDemdlnCcBEcYY/zw3aOrvi8dfngqrcefvLsUO2vvUe84VOXzyD8MT6Yk50bfW+uEutaLv0Uf1Bcc23YeHai2R3HbYbIlKgSFzyt2wuNkxC/DAbn9IF/tfJ+MFW2SS7OTyWpe7bB0HTdPhX/wMBJZv/8oW9jX8CURcoX9PcxX4d1tLTZyyLf6rXdvm4DlJvWyG8eeObYboIpwqfImdGztoHCqhb+sYVpdrHizV7lWYag26iPEVwR6fFxOXI4/7FujA+8q9mtqwHRkMtXdLlPgWhiACV7wR7udUgHew00AS1JA1CSpnC82MlryGF+dKVLS2pd6CwmZLy8RkmoqG4Kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RqCpf0WBMwYNUUfKIuRzieu+aa8xbZHrPTd5KGb8HZo=;
 b=kiAGsdmon2tpZ9L+vX0xmwC6YqtzH8sx5OsAk5xTEOiyrdKTxxSjpfi3uvAqc5V42zjTwIXkmEt3lrVuu/TVB0KooaSyaRZtELWrvLbT7Z6vMr5+ExDZqWB4zzB2MAn9Rvjd8z8YSfak5HGefplzFIecQsQ4sNmT/lam/LsyGeM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by VI1PR04MB7055.eurprd04.prod.outlook.com (2603:10a6:800:123::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.11; Thu, 5 Dec
 2024 14:37:50 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%7]) with mapi id 15.20.8230.010; Thu, 5 Dec 2024
 14:37:50 +0000
Message-ID: <14d82d46-9e1e-4723-9586-fab5a5c69bdd@cherry.de>
Date: Thu, 5 Dec 2024 15:37:48 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Backporting in Yocto
To: aravind posina <posinaaravind0205@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <CALvuYr=oud5yZHATSO0PSxGsvY6BhAUGiP9kq=oZE5o-c5MgUA@mail.gmail.com>
 <465a05d1-4268-476e-bd83-5eb82bd62922@cherry.de>
 <CALvuYr=6J5C4U6H4teLpa9HvKqto7wn5COfk9f9iJBWeK2dRDg@mail.gmail.com>
 <a7e30b47-4e2a-477d-b7b3-ab059af37c4d@cherry.de>
 <CALvuYrnJKAC7OPAD=LZCmNKMSH2nMT5rCiSWhYM3VDP7qd93UQ@mail.gmail.com>
 <4939a682-8a6b-4a55-aa40-cf29dfca274c@cherry.de>
 <CALvuYrkNnCpE80EPX47Qp3cY6q5nBQcohWkiCtY5hGwv7P+fMA@mail.gmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <CALvuYrkNnCpE80EPX47Qp3cY6q5nBQcohWkiCtY5hGwv7P+fMA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0073.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1f::17) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|VI1PR04MB7055:EE_
X-MS-Office365-Filtering-Correlation-Id: 058c2b14-0c5e-4d15-ebb7-08dd153a64cb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?czcvZHpGOWNXNjVqKzRQd3NjSEdkL1d0WitBcHJnbkV0UEhzblI2Z3QrKzRI?=
 =?utf-8?B?bW9FaWY5ZWZheDZCMkVMOUEyV05EV21DejVsYnN2TDlWbDJ2QjZiZVZvcE1Y?=
 =?utf-8?B?eGNXME9vbFhYVWVaTDNnREZyTW9vNlFBMXJtZnY2WlMzeTRhMUNnTGZzQjJP?=
 =?utf-8?B?Yk55NHVvN2Z4NzB2d3E5MTM5L1FtbWQ1SFlqQTZIZ0wzclZnMFVRUGNTc3M3?=
 =?utf-8?B?QUxTakxKN0lxYUcvU0w4eGlReHk4MVVpaURPTEVzdDY1cHowbC8zQSt4enpZ?=
 =?utf-8?B?b0Uwb2VPNUlTaFVNNEM4VzYzZVJUdGQ4ZWxxQmxxU0xLaUJQOFVsa1Z0Nnlt?=
 =?utf-8?B?SE1veXJsTHVDVWprcEEyWTduZTdkTG80NGlha1hqNjlCc0puYlY5REFCY0lp?=
 =?utf-8?B?V1c2MEk5aVcyZVBMZUJBNFZ4NmFXczRpVm1YRk5GWG1pNThuUUI4OU8wQkxw?=
 =?utf-8?B?emZ6OSs2ZWhlUWcyM3k1RU5USFlqaDZhd2doMjNlb3Rsa3FBTWxod3RmRFhG?=
 =?utf-8?B?NFg4RU5ienE3VU1qMmgyT0RTYm9CUmRDL2RKbVhGbmVhcGtTaERBbjM4cXo0?=
 =?utf-8?B?bzYveE9jNUZ4UXdmakR1cWV0MzBMekl6ZG80cDIxVU5xQ05ML1JKam4xYmFJ?=
 =?utf-8?B?VFNpNGtHNklRMWlBaU1FTVNFVW04WXFYSGxoUjEzdEhOVjljeVJ5emc3K2hK?=
 =?utf-8?B?dnNXNjRpZWxuaDY3ZjF4K3dtZWNIVHhxaldYdWN5elU3VlBGRDhxTHVSWUhB?=
 =?utf-8?B?cENjQ0pON1NPU0IwNmp5ZW13dHNVRm1DM090UHptSHhabFJFZndVQ240T2x0?=
 =?utf-8?B?VVRTSXZxaDZsVzY3b0NTU1NNdlVVVUZtay9sOEtKdVM4MnE3R0hGSi84UHdP?=
 =?utf-8?B?N1VqbEhmY3RjS2EwREN5NFg3SEZPdEZ2VkN0SEo3OGV3b2xHd2RJU1FqNFFw?=
 =?utf-8?B?NG9yc3d5aGRXYmRZV2V3VVpMMUg4N2pyaUEyK2twT1FpQXdzM0JvVGFqU1NP?=
 =?utf-8?B?TFRDOVdZcjEyNmFDYkJQMjdqQzM0OGl2YTVJV2ZZRnN4TDB0bWErYkpWb1lB?=
 =?utf-8?B?bkRkSkp5TGd1dU5QT2k3Sy9KZnpzcWpRUnhDeXpSbEFLWVJQUWdDQ2V4YWZU?=
 =?utf-8?B?LzQ2d0RoMDlJYjhBWWhsdlZBVWFRTFdRVDRkenFaZU1mbW56czNFTS91WUFs?=
 =?utf-8?B?WHBTTlNzeHRub1Q5SS9SODB4YzdlQzIxeE1ZenVnZmpwc2c4NzdsenJOT3Rx?=
 =?utf-8?B?dHJlZks2ZHJKUHRtRXdBdnNnLzZXSkQxWm1KV3dNK0VQSXI4UDVDaHFBWEZq?=
 =?utf-8?B?dm01MHFVRjh0RkhKNkFQNTVleVNQZlp3RlNNNjhSMmNGZkJtaEVoTUQyNUFT?=
 =?utf-8?B?clhPRVp3N2JReDRxeTk3ZTB6b20rUE9TSTFQS3ZSQU9TZkpLWlFGa3NxTDdj?=
 =?utf-8?B?RFI5YjV1RzBVU2FKdnZ3dVFaMmVOZ1RIKy9oSWdjb3kzRWxzeTZGbWF4bWhq?=
 =?utf-8?B?cUU1WC9DVVdhbUlDVFBGZm4rUXdUOEx0OEVwRks5eU92Tkwzb29UN3I0KzN2?=
 =?utf-8?B?UWVBS3M5eCtXYjJlbDhucTBVZThBcjhJSG1lMVRKRUUvZkJlTStmaGhuWVQv?=
 =?utf-8?B?MEIvQmk0YjZIOUZBWnlGM2wxb0ZKdmZkUk5iTitabExldFVGbisvNXRHSXAx?=
 =?utf-8?B?eHNtSEZzWTJEV2ZMQjFUdno4OXM0R3Z2bUJES1QzYkNKbmlLaUwxQVlZNFJ0?=
 =?utf-8?B?TGxyMjl2N1RiK1pid0JsMG53OFdORnBBYXJFalI4T3JENlVzVUtlV1Vla2Er?=
 =?utf-8?Q?B300EjcBgi5rhG2LEhOm1/ZhCwE3VmKc2Ukvk=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UUJRemRhY1JjRmRYZ25jQ2gzTTZVcXRFMFlSeml6S3M1N0RxVTBEalpvb1FF?=
 =?utf-8?B?QysvU3lTeVNWNmlRZjRjeHR3SWhPZ1FIbVNkS2VrREVPeHlYL2l1Rm9RVEo0?=
 =?utf-8?B?dHRvRkdNVlBpdGxJVlNzME1aNXd4MWcxNlpQS1NLU1lvNHFJKy9mTjRtYjV6?=
 =?utf-8?B?L1gxYzQ3d1NZaXJiQjFQRzM5aVVoM0pqeHlGUEdndC9ydzJtS04xRmsxcG4x?=
 =?utf-8?B?aDVGbjk3OGFyNWR6ZlBLbmlBWlFOZy8zMDExUmliNFJXSE5saWh5eDQzRFUx?=
 =?utf-8?B?SDZUZGQyYzR1Q0xOSUw1SVJsaEQ3N2I0SUtSejhsQlpXZ2Rxb1BMNVhUL09B?=
 =?utf-8?B?MVNGRFQvQjkwaWJkV3VsNTVjdGwrbEpZdTRPRFVVdUJiOHNGMFdnWWVsTEhn?=
 =?utf-8?B?bFlCbWpTc2RwdGpOVk5WOURuOXc0RVRvNHhOVFJNRkNKS2V2QVZwSzh4Nlo5?=
 =?utf-8?B?Q0pHa0UydU54dlBKNEZmL2pKbUJPWWsyNXR5YUo5ejNNY24rNVNEaHNQQXc0?=
 =?utf-8?B?RDVZVjFIRzRDcFpZZ3loUjAzOGMvSmlxUWpVTjdLNktDQldtdmNEbzlHMUw5?=
 =?utf-8?B?QUY1UERCQ3IrNTRDQXZVL3paMEs0ckJWckVRcVJXelFuRHBqaThVNkx6THBB?=
 =?utf-8?B?dHFGdGZOWmVTTTZ4WEpqcEMxU3lMRXdQUzE1RmNMUXBaOHJHQU5aeTl0OGZq?=
 =?utf-8?B?ZEo4Mm5LTDZWUUdmUEpnTkZ5MTFvSDU2ZUE0dHFaQWxIMURHZ05JZDc1Sk41?=
 =?utf-8?B?QWkrdlBONHcyN2pnZXMzT2FNMVcwdUM5bVRMSzBMSjQvZDJPNzl0TmJBSVpM?=
 =?utf-8?B?cGh5NGs5WXRTbWZqZzZsZHRZMW8zRTNNV21SRUttVnh2eG9KTjJ5S25iSUxD?=
 =?utf-8?B?YTE3Ym5MVmRscFpOTDV0ZjdDQVExWnRrZmVEc3NBVjcvYWhJZWRkWWQrRmFW?=
 =?utf-8?B?TzlzdDFEZ1JPeXZiQ3BWM0dXOUpFdGxlaTdEdk03d25zQVlNSHVLNVp1R2Jw?=
 =?utf-8?B?eWxYUmxxQjFvTEVTZkI4N0Q5dnUxVjJ1RE5CUll6dkxiRGFaZ1pjWWh2aXlX?=
 =?utf-8?B?OC9BK2pJcW9Yb2lDMVJvZEZsbkVCdFNaczhDMWRNOC9iL1lGZ1R1alJqTGcx?=
 =?utf-8?B?MXNTRkZzOElxaklXYi9LNHRSaHVYMkIzR0NTdVhSdjZkdmJoNVQ2QXNvbWRZ?=
 =?utf-8?B?S0ZjKzlJKytqMjUxRUZaVkNTWFFDYlUycnZaem1VUU4xMlZaODRhdW9iL2ZZ?=
 =?utf-8?B?TGlpV1JpY0ZrR2xRcG5XdTVZRzlGbVYwajJQZGhheldSUnRZcWNVbE5oYmtU?=
 =?utf-8?B?YzRjM3Vvd0pubUVjR2lCUDNiQUhSRTM5L1pKWjIwWVNOdXNMOEdXQkxNUTVs?=
 =?utf-8?B?ckdWbnFJbHl4UWMxdmRPbnZPc0lGRFp1czJLNjBhOEQ0bVVPa3BwRmRQbHRC?=
 =?utf-8?B?d3ZyWUhUMXBySkpnRXZmS0VMZ05aQjVLQlI4UHJsNGlGZ0lFMkhvM2hrQTJP?=
 =?utf-8?B?alFFc3NNZW0rMndvNHhZM1lYN0hKQjZtZEZxVmxjK21ScG9RU2p2WHNSbFdt?=
 =?utf-8?B?NWZuNUZWVHdCaFRMU3BLRjNoZDZ4ODA0ZTZQdWUzVzBtd0FkdXFNZFZVUnZt?=
 =?utf-8?B?ZTdpbm95eGVrMnVOaE9RQmJ3S1lZcUJoQUhaRm1QUWpIUlBaK2I5SDRURmEr?=
 =?utf-8?B?MlRIYktyRmN1cndGSStZUnV1aXo5S3JWWUtoTDNTTUlPZ1JRQmJnKzVqWmkz?=
 =?utf-8?B?K28rYjNJTEx5QUhZQlZvcG1HSUdaT2EzNFEvdWdRUUM2cTNhbVhsdWhwUVFS?=
 =?utf-8?B?RGlKM2x2SmlHMmczaDV0R2J5OGFrei9kS0wrWm0xVU1hTzlXVzFhODVIUFQv?=
 =?utf-8?B?cHBYcHN3V052YjBaZVVvTGtMeVZFTnA3YTFJbDM4UlZBTHhJMUpaTEN0OCtW?=
 =?utf-8?B?M1FqYnNabjBFRGlSZW5iMWRyTXZHZUlNUGZCK0dOL2pDWWhsdHJ1WW9abk9x?=
 =?utf-8?B?WkJqcDVOZGhCaUhCZWRzcG5JM0ovY3BWTm1VKzBpbnkxOGlHcHAzWXFlUDRG?=
 =?utf-8?B?cDdUZDhqcGsxUmdDRGJDTHRmL3FuZEVueHpaN1RmOWFuV1JWZ0tIbDFxV1hY?=
 =?utf-8?B?cmVFN0NNRFhXWXRud2Q1RVE4WnJaNStmYVJpaDZ4cktyVmJMRWtiQUZNMnU1?=
 =?utf-8?B?bFE9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 058c2b14-0c5e-4d15-ebb7-08dd153a64cb
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2024 14:37:50.4067
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h0PlHTW3zAvT/YaTnF5QAuGOIV2kDs2zKP2VzTHjtYeWp2uWibotVtaYJpBzDPK9Y01utBtUW7Sb4/luq8Ct0ROFkB3cW1GcCneIIV02OqM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB7055
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Dec 2024 14:38:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64407

Hi Aravind,

On 12/5/24 1:34 PM, aravind posina wrote:
> SUMMARY = "Cypress Wi-Fi backports package"
> DESCRIPTION = "Backports of Cypress Wi-Fi drivers from a newer kernel
> version to be used with an older kernel."
> LICENSE = "CLOSED"
> LIC_FILES_CHKSUM = "file://LICENSE;md5=b4425e8d7d63055b514bf7732284231a"
> 
> SRC_URI = "file://cypress-fmac-v5.15.58-2024_0118.tar.gz"

Would be nice to see the Makefile in this tarball as well.

> #SRC_URI[sha256sum] =
> "5b58e4f4e3182b60575dbbd1c5a91f55f50fefcbeef48666ceb279fa1b6db49d"
> SRC_URI[sha256sum] =
> "062574e1e63ffb4d9b1a67e68267126e49615d15bfeef4aea1cd14e063882eea"
> 
> S =
> "${WORKDIR}/cypress-fmac-v5.15.58-2024_0118/cypress-backports-v5.15.58-2024_0118-module-src/v5.15.58-backports"
> KERNEL_VERSION = "5.10.76-bsp-yocto-ampliphy-i.mx6ul-pd21.2.1"
> 
> #CFLAGS += -falign-functions=16
> CFLAGS_append = " -falign-functions=32"
> #EXTRA_OEMAKE += "CFLAGS+=-falign-functions=32"
> 
> # Define the kernel sources and build directories
> KERNEL_SRC = "${STAGING_KERNEL_DIR}"
> KERNEL_BUILD = "${STAGING_KERNEL_BUILDDIR}"
> 
> EXTRA_CFLAGS:remove = "-falign-functions"
> EXTRA_CFLAGS:append = "-falign-functions=4"
> 
> 
> # Inherit the module class to build kernel modules
> inherit module
> 
> do_configure() {
>      oe_runmake KLIB=${KERNEL_SRC} KLIB_BUILD=${KERNEL_BUILD}
> defconfig-brcmfmac
>      oe_runmake KLIB=${KERNEL_SRC} KLIB_BUILD=${KERNEL_BUILD} oldconfig
>      oe_runmake KLIB=${KERNEL_SRC} KLIB_BUILD=${KERNEL_BUILD} modules

I assume this is actually building the modules, so it should be part of 
the do_compile. Which you should be able to do by simply setting 
MAKE_TARGET to "modules" in the recipe namespace (i.e. simply 
MAKE_TARGET = "modules" in your recipe, outside of tasks).

I would strongly suggest to look at what was done for the do_compile and 
do_install tasks inside the module class, you likely need something 
awfully similar for your do_configure step.
https://git.openembedded.org/openembedded-core/tree/meta/classes-recipe/module.bbclass?h=master#n49
https://git.openembedded.org/openembedded-core/tree/meta/classes-recipe/module.bbclass?h=master#n61

Specifically look at the unset line and all the variables passed to the 
or_runmake instruction.


> }
> 
> # Compile the backports kernel modules
> #do_compile() {
> #    Compile the backports kernel modules
> #    oe_runmake KLIB=${KERNEL_SRC} KLIB_BUILD=${KERNEL_BUILD} modules
> #}
> #do_compile() {
> #    oe_runmake KLIB=${KERNEL_SRC} KLIB_BUILD=${KERNEL_BUILD}
> EXTRA_CFLAGS="${CFLAGS}" modules
> #}
> 
> do_compile_append() {
>      export KERNEL_CFLAGS="-falign-functions=16"

Pretty sure this is not used since you'd set the variable after the 
compile instruction has run (:append).

> }
> 
> 
> do_install() {
>      # Create directory for the modules
>      install -d ${D}/lib/modules/${KERNEL_VERSION}/kernel/backports/cypress
> 
>      # Locate and install the kernel modules
>      find ${S} -name "brcmutil.ko" -exec install -m 0644 {}
> ${D}/lib/modules/${KERNEL_VERSION}/kernel/backports/cypress/ \;
>      find ${S} -name "brcmfmac.ko" -exec install -m 0644 {}
> ${D}/lib/modules/${KERNEL_VERSION}/kernel/backports/cypress/ \;
>      find ${S} -name "cfg80211.ko" -exec install -m 0644 {}
> ${D}/lib/modules/${KERNEL_VERSION}/kernel/backports/cypress/ \;
> }
> 
> 
> # Update module dependencies after installation
> do_install_append() {
>      depmod -a ${KERNEL_VERSION} -b ${D}
> }
> 
> # Files to be included in the final package
> FILES_${PN} +=
> "/lib/modules/${KERNEL_VERSION}/kernel/backports/cypress/*.ko"
> FILES_${PN} += "/lib/modules/${KERNEL_VERSION}/modules.*"
> FILES_${PN} += "/lib/firmware/brcm/*.bin"
> 
> TARGET_CFLAGS:remove = "-Werror"
> TARGET_CFLAGS:append = " -falign-functions=4 "
> 
> # Skip the sanity check for installed vs shipped files (if applicable)
> INSANE_SKIP_${PN} = "installed-vs-shipped"
> 
> Here is the recipe that I was compiling and I'm facing the issues.
> 

Which version of Yocto are you using? Because the _ override syntax is 
long EoL, we now use : instead, so it should be do_install:append(), 
FILES:${PN}, do_compile:append() etc.... I see there are some 
:remove/:append there, so it seems like you're either using dunfell 
because both syntax are supported or something here just won't work as 
it's one syntax or the other that works but not both.

Cheers,
Quentin

