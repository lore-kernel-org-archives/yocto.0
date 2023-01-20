Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21588C25B4E
	for <webhook@archiver.kernel.org>; Fri, 20 Jan 2023 12:08:58 +0000 (UTC)
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (EUR01-DB5-obe.outbound.protection.outlook.com [40.107.15.54])
 by mx.groups.io with SMTP id smtpd.web11.72578.1674216526896644070
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Jan 2023 04:08:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=OzRfTDcm;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.15.54, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M/eZ7WKRfl80gFHX22+jdBdkmDfGfPGwtwKtKw8FMS61qW0yuPrQjyiamAXjGKWyfSd1JFaicAGavNcfr8XysHCafKvnrXfz2N7bFl0kdA21svXtBu0UlBj5NaDq3nzwugcpSbSXAlafm37F+dFrPRnnWIBEkxIFEZkT4JFVPwtZMmBAwppTfHv33YNdKcTFOSZ01PjkGKJTmMvwTJ3yUoEuYjgJ9bIWbWcggvjefQb432SoYVBh+eIruCWDeIdMmL2T3bEbeoB2MyxG/9WIr/gmh7TExDeeXpB+HODmfTguFVwgxXp9UGTqA9RchBnh7aIU/5DRMlOmZ7ISo52RjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xQThlPBEB5MSqjGujwNMMGOHpVWTVEN3B0DmbOpJd1k=;
 b=VCOw1pvN/vx8+JmmIsniTvllLelDFlizabMbPU3yg9Txq7WIG499zEdXqzAJVETgoKtcSkbjCPIZib3AQI0n5IfthT1hxCatQjLWt/RHYveQKdWNG2bERW266cr4IsBhJxAclcTPOT5hletbtuH5PSBN9hO+6bAksJoXNenrdCfRbb3Z8nQoBIVFTqMJFx/xF6PrWpUjdw1jktKjAAc8+me6deeM8dTTQAKpIRQdgwnkL0Li6oy/HF8fIsgO+m1k3VjySrtc2YPWjti86f/mCC1xOPXtpo/B5aoJXOPywejoBlpwkuwvTajf/DTI24bcU6Fn6/SzmjKKQDhf2iwXpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xQThlPBEB5MSqjGujwNMMGOHpVWTVEN3B0DmbOpJd1k=;
 b=OzRfTDcmfFIy9S0zlUbPe9UdQ9T6M+FaKGJPUnQ8FJK9co54VAJKQwuZlE2b5ySCVrm3NDi+9aB3kBLtDXLELdGfbzq733nShHioTO3xD02VNk47w1vljqbW92PBehnu9dE1Y5wJm+1UyscJv2aNm2G9Vwde99FVYQNuW8EJVn3f67GMjK9M03jtfNkp67BG67MCc+H8cLPkrDRrWRpJdcfR5a/OZHu379De6w790b/gg8r3g7LZYNwIwscvk62kA8ER1uTiY9lnNa3OEkzHliwlvhzrgX7Dvw81AnSmJpFQnpKqZNzHK5VCd9hAc/jmP6rk0JQ4hQ02906z/6RrMw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by DBBPR04MB7996.eurprd04.prod.outlook.com (2603:10a6:10:1e3::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.27; Fri, 20 Jan
 2023 12:08:44 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::24d3:14a5:eeda:6cdd]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::24d3:14a5:eeda:6cdd%4]) with mapi id 15.20.6002.027; Fri, 20 Jan 2023
 12:08:44 +0000
Message-ID: <8c58b088-391e-f150-9def-ec996c2a2f3a@theobroma-systems.com>
Date: Fri, 20 Jan 2023 13:08:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [yocto] SSTATE_DIR by MACHINE target?
Content-Language: en-US
To: mattwood2000@gmail.com, Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: <CADjezmbVGxzeob6BGbsOUW2VMfUMjVogH85nL16zcSdncc7QqQ@mail.gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <CADjezmbVGxzeob6BGbsOUW2VMfUMjVogH85nL16zcSdncc7QqQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MR2P264CA0088.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:500:32::28) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|DBBPR04MB7996:EE_
X-MS-Office365-Filtering-Correlation-Id: c1bdd118-179e-4166-d1be-08dafadf13c6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	NZw0BdQopBavUrwIJQEIelqeu3U8yZ0NPN7L/FfRRoA4x9mpSYAP9+ZIwGZfwm4F/PYK9Ug4q11lJaR1ImYgMVmlEzht2/mNpodrydYfNUi+HOFD5JJmO3M53kCkbufuZNXnuGMe5QLc8qvjOwUCL3Ai70EDfqIKhOWLFCLA5mjoBcUnO/nPqvIOV2kdP2imsmtc9LwGYjXYjLdI1fDznfoNwU3yQjBu7WQeQ6CUV0KwebTlJ6s5N4hUT4gOwxaajaAUgOCHbS3FEvhDbhARzSyX+FEUznrdByR9h/QoelPZA+T8W1TBHvwFExitQNmezBGBaK4TpEAl/pg4SidRpP374f3NI85sgvi2uo+9+KsSKvwXM48G1uCzU8Olecr3AXsUl3GEtIrhYcP542sf8Xwm/xALtD2ntvYdmwEBQQ9e5PtxQ0lScQNqKNeNY6gqcw1nDDzv0Agp4wpwc5IQxd4O/rv3z7jbKbtjZoEETdZ/OBcDwsIgObTf+miSNlkzMosOCx+e6pZ0jB8P/Kpd6MNLfn9m4VQl/KUk/w7D3B/AZY4s6+i8sCIhwURpDpoVZUfeNk1kQeKHkd5j69sR8ZuN1om2nvrZ+2Lj3f3s4nzxZtEw2nSKvA17Ud9zoKd2LggiFjegkreb/CdKEneulNjln4U+T9QIcBykidAj8E0jDUb6iENG1kn5GIdMtZ5oOXE6ZONNq9czBhKvwAEa6Wm4vinggONe+qTVo+L3Ke8=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(396003)(376002)(136003)(366004)(346002)(39850400004)(451199015)(66476007)(6916009)(66946007)(66556008)(2616005)(8676002)(6486002)(478600001)(6512007)(53546011)(26005)(186003)(31696002)(6506007)(316002)(36756003)(31686004)(38100700002)(44832011)(2906002)(41300700001)(86362001)(5660300002)(8936002)(4744005)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WHlyQkRBdXhDaUNHMXJBTUFtUmIrVTJqaHJSMzgwYWlMMGx3SE0rYTM1SXA0?=
 =?utf-8?B?NmdWQXJGTVd2ajZya2dvQlczVzdvSFY1N2lMWjdHY0tjOVBCZkNRclJCYVNK?=
 =?utf-8?B?SFpRTjBUVHRray90VUlBK2lEQ0Z2S3ljUVpDTkNZOVhRVlp4VU9BY0hId2NY?=
 =?utf-8?B?bi9BWVUraVR2TUlWSXZ0dm5NbHhXS1NESjBKSHVwYXNndXNKTllJcEJwL0dk?=
 =?utf-8?B?WlY3bjFiQm1lYTNmdnlCT1NyQVBzMVJYVC9teCtGVmdTU0poSGJaVHh0SThu?=
 =?utf-8?B?N1BhV0NpVzRTYTVzL2hFc2J0TXlMdmNNdGRTajYraDFzUHpxL2kwbXZ6SkJC?=
 =?utf-8?B?ckNGb1VVc2NhUUkvYWZZcUVCZXBOS0lpMTBZK01qUnRubVJYV3d4eExxckZX?=
 =?utf-8?B?eHBUNW1QQlNNV1Y3ekVZZlVFQVJyM1pUMENSMFNwVGozT2VtY09IYnN2My9D?=
 =?utf-8?B?VnlVWVhqTlo2TklSOWZsTk5zZTI3QjBra1VLdkNRaTJaUSt5cWx2U3IxL01z?=
 =?utf-8?B?MDBreWpkSXdwNllnTzJWMk1jUTlTQ2Z4TFlRd20zMHpGS3hBV24xRzBHZktY?=
 =?utf-8?B?MklvM29SN3pYN2R6WGZ3OU5Xc01HN3BjcWF2dVkzK2ZaMlplQkRQQ2tLRjYr?=
 =?utf-8?B?bHJ5ZTdRa2k2M01xUG9KR3RBamtaMW9rL3ltM3Y3SndmT1NXVGhITnIwTTZV?=
 =?utf-8?B?aS9BWm1DWmRydUQ5dXRCMCtOcHNCSFJkWmhGYmlsQU1WZlFkRVpucDliOEt3?=
 =?utf-8?B?RFdQNmZ5SHZLVmc5b213ay9GdmovN0FvZXM2amRWUGlZbzRGQTRjNW05Tm4z?=
 =?utf-8?B?MFhLSklTV3daVFUxTmI3RjdCK2VYa1VMRE1jM1BoYTVJbExKTVhmU3dCeDB5?=
 =?utf-8?B?Z3VYUkxGakttVm9LS2F5ZUVYRGpxdnFzeEt1azJZa2VqVVk4Z2VwdG0rRk5m?=
 =?utf-8?B?NUQ3MnlJMk1EWmJic0k3dmhZMmpvNGZPNi9yUHN0N05vSEhLSURsdHNweFkw?=
 =?utf-8?B?cGxXQmJod2I5Y3VPazRmYk9DT1YyVHlQVDYzUWxLcE5wYXZDTXFnMTh3L3Av?=
 =?utf-8?B?aDZKaWdPbm1oVWN3MnZKcXczY2ltdldwLzV3a1Y5MS9LdURjeG5ZbER4K01X?=
 =?utf-8?B?OWdMWWxNV2ZFMThOeVNzSHo5OWNNN29iNHRrNHZyMFVQdmFvVGFrRlVyZ1lY?=
 =?utf-8?B?d09RR1U2RE04bmUrMzBjRXVFam9kbThFZTJtSFFjbFBxSzBqTlpIYkh2UUhG?=
 =?utf-8?B?U0IwYWRMNEo2MmJDRFBrZmdpMWxocDh6Ti9Yd3kwUE54V05uUC8wMGtWc2o4?=
 =?utf-8?B?c2JSUzN2alBNTXFVVWVhZ2dEYURXUmM1WnNSaWtZWUJMMGUydm5mZUI3cnc0?=
 =?utf-8?B?OHRIejBuWUc0U1BScEJWVGhSM2tRdUtudXNkak9WeG5PTHpBZHozeEF6dXNV?=
 =?utf-8?B?L2VjQnMzZHRvUFFDK25TUS9LdlRjbWNGZlRoT0lNdEhXbzdSdFJBZElsZ0NQ?=
 =?utf-8?B?UlRkUWRhOU9zWlphR08xU0hGek96MVlETHBBUTU3NmxYTERsMUg3Q2xLTE4r?=
 =?utf-8?B?V3N2U2NzODJhZnRrMmxOdUtTYm93eGdDZFpNazNWOUVaZ0d1QVRZWFlvZW94?=
 =?utf-8?B?Z3JOLzduaU5mdmluWnNXZkppblZVa1JCb1BzczN1TDVwSFIwWDJjYlEvcVNK?=
 =?utf-8?B?NVZUWVJySDZZeG12Vjk4QnJEYUxJRFZScjFRb3BvalhQNGp3bXFBQTh5eUVr?=
 =?utf-8?B?Vy9qbTNDNFVnY0xlVnYvSHhWT0ZmUnVoTkhMVThVRWd1UHlwRDZVT2pqSlpv?=
 =?utf-8?B?TEpUZGVpai8rZ0duUUtmNEs0MlpKbXFpMmJRUit3RUZ0UmdEbWZPZ3pCRlRx?=
 =?utf-8?B?Z203MlNhNjVwcFROYTVsSlhMbTY2N1gwb0hmTHRZaHNKZ1FMRjBtbUZnelFx?=
 =?utf-8?B?ZVJBWHdyQWkvQ1VJNkJsSDRzNGp1bnFLOHhQc1lwcFJKQkd3SmJpQlVtQVZR?=
 =?utf-8?B?NVRHKytvVllPSnZJWUdLTEVsczZ1MjZyRHZOU0F6SjBUQzJiK1ZISHVKUHRk?=
 =?utf-8?B?aUNKZ1VOcFdSYXpJcGpCam1QUHUrWDNPczBEc2kwYW1BS2hsSXB2aWR3am9y?=
 =?utf-8?B?YnZ2YVhtU3RLSGxOdm8wSmpzemVCZXVramJ6RkZMdnhaNkgwbUlUSHlzWnNa?=
 =?utf-8?Q?zwmTd2B4xxGIpt3J7jrL19Y=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1bdd118-179e-4166-d1be-08dafadf13c6
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2023 12:08:44.3887
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aisZ/zl+yEjBz520feX8U+icDsISrjMHarn57X/HVs6IobKyhBx1j4skSB4ggdO8/d8szwZwUeO0CVtiFwa262bFDCAbFEUQQK++ogYNKZngamzrRC2gEpsPaMEse7OT
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7996
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 20 Jan 2023 12:08:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59025

Hi Matt,

On 1/19/23 17:37, mattwood2000@gmail.com wrote:
> Hi,
> 
> is it possible to have SSTATE_DIR overrides based on the MACHINE
> target or SOC family?
> 

What are you trying to do? Which problem are you trying to solve that 
would require this?

> For example, is this valid:
> 
> SSTATE_DIR:sama5 = "/path/to/sstate_a5"
> SSTATE_DIR:rpi = "/path/to/sstate_rpi"
> ...
> 

It depends what exactly you want to do, because this would apply only to 
SSTATE cache for the recipes to build for the target. A Yocto build 
however is made of native and target recipes. The native recipes are 
compiled and run on the host, while target recipes are compiled on the 
host with native binaries from native recipes and run on the target. So 
native recipes would have their SSTATE cache in a common directory, 
whether you pick rpi or sama5 as your MACHINE.

Cheers,
Quentin

