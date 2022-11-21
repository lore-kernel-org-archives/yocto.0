Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57F8FC433FE
	for <webhook@archiver.kernel.org>; Mon, 21 Nov 2022 09:11:06 +0000 (UTC)
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (EUR03-DBA-obe.outbound.protection.outlook.com [40.107.104.56])
 by mx.groups.io with SMTP id smtpd.web10.34147.1669021864936868752
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Nov 2022 01:11:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=hGFMKxVx;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.104.56, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CcslmT4dsAsquDPmQ635MePorcL805geQqNgMnAT7bROXRT9ckzOvCDrXCq69/kEksEGl4p3nL3meTFGjnFd27+uBDesysiXhvvfsJLLdj2+8TdZDljsUDZIKeHp0TQyApKGdWsfo5AP37/fRjIAGe+u+vkMaYR3LMg6mi2+NUFkhzRv9aWC9Q1aOysSc+2KhH0S6hEmbt3lvO0prceP0RhPH0nXjJ+zRVZ1yeZL3zt3/GaNKYAKGW/6sWWsgoWK46G/ucBoR/5IGDw9bu/98OJcECSFTXzkhGzij99pdtUhU6Gh7kX1aAwctc+3uXIkE4ogBaislBSpTjuNtgaoXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/g+dsWzWkatpDeb4kPVRTYE2c+2lT6UZYxBfP+B+Auc=;
 b=k6fm21GOSDS2+1ov2PduGG7x7+6Jokihi7YSLWp9TEj61Arnxzmass3s/fL5tQx9cs7y/MErKYQcBogMV1CGLsGax1C/wmwGkP69zYBRd+kpzlu/2yj/8eiVoHFHy/EvEI7jpUuJvs+8C7G9y7PcUJOfjhK0O8EX34VyWKMemKz69hUa5RkuaG5r/FZY1TiAzvIXUp972ygskqXpqRz7AST4nz0oFL/n+b6WRy3ei10VBUyPl5pDtIkDX9bsANaDsnffkrs5SBKqFSP7ByRAH1x6EjxySdbd+ADOIpbic2XPoBO5JaLHABBuebkvLG3QdQ2s0eBFeTbiDXDMbShuyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/g+dsWzWkatpDeb4kPVRTYE2c+2lT6UZYxBfP+B+Auc=;
 b=hGFMKxVxOyO8s6TIk7CvWa6ByYnE+iw3uYkvd8PlJM6cyTEllmWuRY5BkowUF4OUQD8OxgHc5blzjTXBcLdTPRJZ8V7fbKovMa1hq7l2Ur8mrn2i3RFvvmH5sdmt5vdqRcd7tN7qud9KCXeQfprEMLVCuNBybTFTaOSlC089NzwzUt50WXKck2k6meDgwK32eUl/p6rRolCUPxwMYfk1IuPAN/mz5JS1qh6rn69yLXn3Nq2HBx0FgwHbfOppFC7woDZyEPd1apLlWcQA4MjiRndyfdkPkTRXSqP+jevshBPUDkJIHNMlFwk0SOGKguuMlAwpv2qC6F1gkmYrFRdKGA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AS1PR04MB9335.eurprd04.prod.outlook.com (2603:10a6:20b:4dd::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Mon, 21 Nov
 2022 09:11:01 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::9584:94ee:73c6:bed4]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::9584:94ee:73c6:bed4%5]) with mapi id 15.20.5834.015; Mon, 21 Nov 2022
 09:11:01 +0000
Message-ID: <066bd850-6c33-a26e-cdeb-9d8fef1dbf9a@theobroma-systems.com>
Date: Mon, 21 Nov 2022 10:10:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [yocto] [meta-rockchip][PATCH] rockchip-defaults: remove
 xf86-input-keyboard
Content-Language: en-US
To: Trevor Woerner <twoerner@gmail.com>, yocto@lists.yoctoproject.org
References: <20221119134518.1054-1-twoerner@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20221119134518.1054-1-twoerner@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0089.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1e::11) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|AS1PR04MB9335:EE_
X-MS-Office365-Filtering-Correlation-Id: 96bc7fcd-797f-4569-8b9b-08dacba03b80
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	81CTaB0/NOx/ZYBq8uwx5qSOZzj0SzKEoqg7XcmqmMe+ClisLO4jlZDfmhzmMXyksUMFtqrB+KPjOgOfZU5nsdBUu2nhqmtVTrgpda+TTBRccju7YC1d0UBO+MxefTwb204ZCZil5cqql7vCMQn9+Fcp0VBJ6QnJVlZFFFjTxLH5LIseoebPe0r9GCx5U47yClA33vcucNI8hHZGULBCgDjtdmZNlKQZe27/GWY+swHzruzKt+iHldNZX3BGdAv/fGfW99pDKIFPmCF9xQozxS9JLLMEbvhjJ0L7z14GS+yNQ4AY/mND8gRSB46l59xogZSBaXaIqM+aaJx1I7pK5/mP5JM+2BAd1ceUqasGQ0wEw8hRjH9aQGWO7phMMiZ03ApLiN/J4G47aET5C2jm5oXQXc+hTAtSu2Pfu+0w65vxgwnRbVBwjpx0XKLYjWI/ySB177KCCfwQg6lrddTGtvE9FhXd61xF8UeZ+ndBbYgz6rECde4XLVvMuHcJ5uNmNTWEkyCEtDC7qC5XUNfVts+NeYYE1+NFyYXROaC9suYYCgHD6HTgCPgZZedp7jvx3BcwynuGI2tGJ+NQ0LlzOgwb4S8kpr0JsCf1wwJjgFhikq4aEwcqDeaJupLx/gtiBsplV6v6Q+NjWRelToBgqoPhJLYQxKbRgs5d9z/NuTGrNUoQiTO9Xj887QB3acFLkZzqGNZV20QmSkOXNv387wCvHDxAhjFBh/Q43Q1idIo=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(366004)(396003)(376002)(346002)(136003)(39850400004)(451199015)(316002)(36756003)(2616005)(186003)(6666004)(6506007)(6486002)(26005)(478600001)(53546011)(6512007)(4744005)(31696002)(31686004)(41300700001)(44832011)(8936002)(5660300002)(38100700002)(86362001)(66476007)(2906002)(8676002)(66946007)(66556008)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SGpLRGYxMjI2VUlyQWFNMksyS2lJdnU5anpYZ29hWmpMQmUzeEpmVmJZVFJ3?=
 =?utf-8?B?QUgrUWNlY0poTjh3TVZyS0dibHYxaFowZFRlS1VVNzhxTmhadnJvT2hZQVFh?=
 =?utf-8?B?MGhHbjBMcUY4UzdEVy9zek91T05oZFEzRWVNMytKbXhBekJ2bjZpUFpOMVhE?=
 =?utf-8?B?cW42SnFzamRnTHlwUXFrUjBMNVUwd3l5NitoZkV4TnRLNGc2anpmblE2M3Bh?=
 =?utf-8?B?QXFuS0IrNzV6dVNHRTM1dHA1UW5kdGhGdmRXbmN3QzFhcjNWelI5Q1ZVUVdn?=
 =?utf-8?B?L0MwNk9BN1Z3ZTMyaUVRQzg0bi9ZZGZkNWl2czlHbWhtaDB2bUx0UGN5S2dX?=
 =?utf-8?B?WGFEbmwzNUdkY2R6akVnU3hzbWJYYVBkNXVvN0xlditERlJTR2hrRzRzc011?=
 =?utf-8?B?SWNWL1k1NXk2dkIxQnliR2JGeVFnSk1tamJoSFNTcnBoU3RYbWhPamMrTSt4?=
 =?utf-8?B?dWVveTNUbitZWThMMUR3L2FNMnpBQzlMNlRLSGFadVpGNG9CSHlMdHpaMlFX?=
 =?utf-8?B?NVBNZy9YTUQ5TFFpWC9pZFJGWVd5RFRjbWRoZE5QTWU2UlEvVnhmRmFXYjk0?=
 =?utf-8?B?Yy96Ni9tUzFrVWFXbW45MFR0Mm9ZOWJxdTJFaXhnRE0zdURLa2J1elNzamxt?=
 =?utf-8?B?bnhsOWdFNUdYOGt4ZnBCU2NmTUgzN21EV29HNWlmc3k2UUFxUVJLdzVZYWFW?=
 =?utf-8?B?S3JiNkQ5cXdxQlovNCsxQnJQdHpQTDFrWEZQSThDQTJvanZQQkFhUkljM1NF?=
 =?utf-8?B?dVEwVDJuZ2p3V2hQelhBSGpjS1pHYW5pOFUvVmRRM0dsVy9Qc1NrOFVneWFj?=
 =?utf-8?B?TG1iS0NWdjkrRG1TaFdXZEhlSU1oSndXTTNCeUk5M2Q4M2lKZjZ0OFkxL2JB?=
 =?utf-8?B?OFpaZnJRTjNwam9uOEc4NmhUWElFbmwyS243TnJXcEZmU0xJVTA5N1R4TkV0?=
 =?utf-8?B?azdKcXJKUE00ZXF4V0VXSDZaZW5TaDBPeFpjaWplMzlJc3EzY2Vhak5QSlhx?=
 =?utf-8?B?eDNYY01qMVUzcXVYblk4aDB4Ym12TW1kM3hRZmZvQkk5Ri9iYytmYkp2SVRk?=
 =?utf-8?B?MnlPUjBuM3VXZUlVQWNQUVZ6eEF5U1dOUURhdldpT01naG50SVZEejlnd2No?=
 =?utf-8?B?M1RxVFRJczI3SmdOZGdsc2Z0SER3a3k3VzFuRE1jbGZ3cmw1bWRLMENvM1l5?=
 =?utf-8?B?OHRwS0Z1ajVkS0JRYkQvRXlWZ3dNVG9PUjRQaFdaZjVhUTNzOG52YUREYVlH?=
 =?utf-8?B?cnZWcmVyTnVBbER5Rm5KcmtMelROZnVnV3JmdDlOSVYyRkV0eldvRzM2VVk2?=
 =?utf-8?B?eGZZVDBFT1pwR3RoWWZ1cTJOdCtSSkdvQjdFUld6UDRvVUNZRkRhNXIvc2lx?=
 =?utf-8?B?Uk56b3F4MWczQmthLzZvTzZPT0pCeEVpN2pNdmxWWnVqMWUxUC9mdHpLUjRh?=
 =?utf-8?B?Ty9HRVA0OW1WWitWSXRlUEJKSk1YWWZHQmg3VTdBNk9BKzNqOTd4NXNZSm9M?=
 =?utf-8?B?Snl4b092V2M0eFgyckdyeFJUblllWW9rQkl2emdoU2RvdnBidGVZR2RNWU5L?=
 =?utf-8?B?a2JXeCszUzVNcERndXZwUzBUaEdSTmdSTzY3a1NrWVpWOEZiQnNnT2JrV3VU?=
 =?utf-8?B?cmdFcll3SHRMclpMWmFoUTNwcGtEcmRBSjlYUDFhWUtNRG4yQ0cvTTRqRi83?=
 =?utf-8?B?eGVLdHkzL2hpclJZMW9zL0JyTGJiTDkxS1FGREpTcHNCSGNqT3ZrSTk3ckdO?=
 =?utf-8?B?U2hUenoxV2RoUVEvYmZINmVhekJabkRQU2Rrak1BOWxEcVpxSmVUZHJ4emJC?=
 =?utf-8?B?ZUlhZTMrcE1KU0k0bzdNT3VNdjgyS1FvbS9ISUIvU3RJemNBeEtOTExVNldF?=
 =?utf-8?B?WkRyWWc3NWxDMWN0VGduamZKMUkyR1FYWkdGN3ZaUTQ1RFpIYkwzZzRxM2ho?=
 =?utf-8?B?dm5SOFpHbmNwR2JsR0l4WTR4TjNyMEhtQUNiZmFHNTQ3Rmt2Mkt0bG94NHdV?=
 =?utf-8?B?dGswNFoyRlpxQUp3em1ER0hiT3UxN3F1YW91emovem14Y05zdkVmRVlocTRW?=
 =?utf-8?B?Zmg0QWlNU25HZzZKRjdPb2pIUUMyQnhLb3pIVkhtaWNYWkI5QXJ4dFcyYzc1?=
 =?utf-8?B?OFZrYVpnaHg2dUlCS1FidUFwWlpxdG5zSmRCd1RRenlINkYrZ0FMRnZGOVo5?=
 =?utf-8?Q?6f7kGu4w/MYylxFCTtmDun8=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96bc7fcd-797f-4569-8b9b-08dacba03b80
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2022 09:11:01.1903
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /PIMuhcZONaUdaHSKVHu7Bk+hUswNULTlCgeXNXnHvWk7B26mSZRagRXto5QOrg5ydGtLOAK8W5XpJB0RBgsa5VbKMlhDLOGc5lvhLObQO4oRsqsz0vY3QEvb51kienN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR04MB9335
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Nov 2022 09:11:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58597

Hi Trevor,

On 11/19/22 14:45, Trevor Woerner wrote:
> xf86-input-keyboard was removed from openembedded-core at its commit:
> f1d7c33b64 (xf86-input-keyboard: remove the recipe, 2022-07-20). Therefore > remove it from the XSERVER definition.
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>

Reviewed-by: Quentin Schulz <foss+yocto@0leil.net>

Thanks,
Quentin

