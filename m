Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3C4CFC4828D
	for <webhook@archiver.kernel.org>; Mon,  5 Feb 2024 10:31:35 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.123])
 by mx.groups.io with SMTP id smtpd.web10.60252.1707129089872266590
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Feb 2024 02:31:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=IdyALgsT;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.22.123, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BnZVspOEzp2Ntr4UgqwF5ZwW6u6O/GRO4Z/vQP8F7TeF7m0OigK6JEZqf7flENH+8QKmotkiHViur97DZ24dk3kFc11dKG8/q0q0jJzqxVD6Plgu84GmteHhuQNYAWJYq1MTrya2OrppgcRE9k7rWRc/y9IWM1SYXk24ZrmnTj6pVNtv4/zR/RpC5YiJjhitp6nh1+zeLeBUSznzlNenVOKVR/DR3gYo5xGnR9lc7astRc7cAq1M9lXXuFYjSYoKCZe483ZxWpItM7UYP8CG79l1QHjTKhOaXX0U7D26BwSh1bHJOAUkNUDPynvVQ0gvOSGlNr/eCc625ITPRWdm7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TQN/5olyQAmYspGkdtG8GIgwM5Pomz7ctlI8AWJ5G30=;
 b=ldfypq6TjwcwCWaPlaCFjg6YAUaR9ffhmXFOBVubCsUSgt9iY6gysd3BsrpOkJqEwe16mddiqJzwDx/ajMsog9Ev0pzFaTl8PwYMxACFP9L8rGbfxzICG8/8+cJ1iKyVtK5UzBc5rsD+xmNdwIPPf8sh6CZcU2sfFCcYsh6hHusCrVlf6SJZOoSF+mNwCU/+sXg93DG/S2zICt4mjTuxGfD43BwANblDVRIYXVj9RMZuzjlWb5nPHOFE4SNwLZQiW/uFpigYwDUhJAn/hZm1KqL3JFgWfGD85OI9wnYJrA9FehWWT+PGmK8B2qQpOCK0uIe12TocTHH2+QtYGqI1Cw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TQN/5olyQAmYspGkdtG8GIgwM5Pomz7ctlI8AWJ5G30=;
 b=IdyALgsTLJhsOHicK7DCaW97NJRWtx5ImC/uW/mutmfORy2uSJWLXFhXDJEqvU01qF0wHeYHPtmBtIpD0MCtBSjw5cOGfHmePDzn4RJkrCXo/2MjR7zCDmIw0pHwn67V8o763ChKUk+/fsEBeXDwX0AZ4RB32f2DwzWu4D9fM4hBMsP8VSWbWkc52tVwLhpKIIXfJZEzbvUmFBK8ZbuIYPTowEHRD1AOGz0I4KCd8nrxW+puMF7EWKxuHTDHKMJBTPurS++HUtpsY8m8YzoL/CtSXCm6wLNo/TFt/ds7JCRm8se/d7AYlOh81y67/S3Ogvy1qbOGlFMEbhMjuJQM3Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AM0PR04MB7074.eurprd04.prod.outlook.com (2603:10a6:208:196::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.34; Mon, 5 Feb
 2024 10:31:07 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::550d:ad96:e3cb:9a6e]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::550d:ad96:e3cb:9a6e%5]) with mapi id 15.20.7249.032; Mon, 5 Feb 2024
 10:31:07 +0000
Message-ID: <f00729b2-8ac8-48b4-ba11-cb556d6a79a1@theobroma-systems.com>
Date: Mon, 5 Feb 2024 11:31:05 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-rockchip][PATCH 2/2] rename u-boot bbappend
Content-Language: en-US
To: yocto@lists.yoctoproject.org, twoerner@gmail.com
References: <20240129012920.23122-1-twoerner@gmail.com>
 <20240129012920.23122-2-twoerner@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20240129012920.23122-2-twoerner@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR4P281CA0303.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f6::16) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|AM0PR04MB7074:EE_
X-MS-Office365-Filtering-Correlation-Id: d7a6c934-68c1-43e1-576d-08dc26359001
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	w7XKQQ4Gd9UnSg2YrqDizIV+qcO9CPV/Ut0ghCdWAPTiIAuoWP08yPWH5GsfLmZSGijOhbiS76c9ReT2wyU5jKnC4gjg/GDXV7/pasX9H9IXeBfgxORpCMIcAODBpimg8FYLzTFZWm4okIdtd8KOmJPQtIZUlZR4BtHQrXbMGy/fc9K0mWhc4B94HQ/lEuFWm6VFYYoz4Ik7x1fG50bSc86yvKUxqpIflN2NBGfbCgLn3YA5yxCaPv31bk6CTRR9BKiDVOYjekk/9A/jO+bpO3kU/oaqvU3jZE3VIUkHmpZKjBpcCt+NnzkxZBZ0wtRMRmI/XYTLt5EjNRDmmg3qpMnqQd2YRXAJnH5IrRSZXWLopigQvFRtPxFhhvVbCaGQ60PUOHKzNt9nQl5GtBdBT6ngXDLKeCarFm6yHzCrQzCVW0BYP2b+pcJFPyDPYZx22qhpb26h+1iZn2n1t2KIUBNoooswC1oAqr3MvcrRFe+FCk1fZEo0+t4j2UjSEOt5jTfCyOnlgjpzJd6NXi08uD8GWSlYYbcOTdrKpS3ZZlOp8jLg0unX8+B4cbEfJHjJdfHzPq2i146LyjsQnYjfHNOrJMN+zLtJGt5UT1xxmBjp0Ov/hnjLz/Orv/7MAbBrYpKQO5JyQ736LmFnPFwUmw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(346002)(366004)(39850400004)(376002)(396003)(230922051799003)(1800799012)(451199024)(186009)(64100799003)(86362001)(26005)(478600001)(2616005)(38100700002)(8936002)(8676002)(66946007)(66556008)(5660300002)(2906002)(316002)(6506007)(4744005)(44832011)(66476007)(53546011)(6512007)(6486002)(31696002)(36756003)(41300700001)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cTVtTVhZY2pzVVpyRFAzSjZkQktsK3NPVSs1WG1Lbkx4N1k3UWRZN1BQclNK?=
 =?utf-8?B?a2htWG5LOXMyQVdiT0JzbXdHNWZGOFBhR3g3L0xCUjJXSnptNlpJdGJFUnJo?=
 =?utf-8?B?ZkJCMXQreGoxZXFrOGp1cW8xbmJzblhPQlN6S25IU2svejdUUTlYVE40c0tO?=
 =?utf-8?B?aXZGYmVJb01LeGVEQ21EdG1SQjFqRVpMVXN0MG5iVUQ3M25vMnlHamo3V3Iv?=
 =?utf-8?B?bzZFSHdTNUxQVWR3Wnh1V204WldxeE1rV0hTUjdjeFpwZDhQVlEvM2h0SzNi?=
 =?utf-8?B?NVRYYmZSSlNFVUhadjdpWHU3TmZzdFZBSE43TTNFZmVTeG5rNFVYWGplZFlH?=
 =?utf-8?B?UmRzSll0d3N0dkk3eEVhUlR0OEh0RTc3eFpNeVZKT3FqU0V1Um02WUNIVE5E?=
 =?utf-8?B?dU1LUWRicGZoQU5YaUJYSHdVbTROekFtK3VweDR1RVpBb2VLUk5oenBwYmpZ?=
 =?utf-8?B?UW5uU1BiK3BCV2FLM2xvSENZdTF2STdQNC9pd0ZVTGpHd0Q3dEFEVjhTRkhT?=
 =?utf-8?B?M2JRY29JbnN6TWUrWk0yK2xwaDk1VTF5anNxQVBvOGpjekVpcTVWOXR1aS9M?=
 =?utf-8?B?UEgyVG15ZTk1T3JXenB5aE4vSVRvVGxucjVkSnVKWThlZEpGTE0vY1IwTXZp?=
 =?utf-8?B?d2hBN2ptZnFCaUdjZFErWUQ2b0VsMUdUVldrbjBwZ3BSVks5OGRDTlVCdGVM?=
 =?utf-8?B?Yy9qUnRFam5ZTkFOaDJJOGpQeUI0czMzUnJFQ3ErczJ4KzEzZjFYa1RCdjRG?=
 =?utf-8?B?RWQrMnlta1oyYnBTeFI0d1FUaXYwODBkUzRQaEhGQUM3ZGZWRkE3VGp0b253?=
 =?utf-8?B?MXNtRkNEbTgzK3lGWmhydG9CVzIvcmdDOU9vUWZTaWNUdmJ5RzdkWStIVFg1?=
 =?utf-8?B?QTVOM0J0SmVPdDRpbmpVRlI2OE1qbGhmMDFySnMvbG54cng0UjJSU1Bhb3pU?=
 =?utf-8?B?U2NZNkttbU8xWVgzNjR3ajQ4RjRqZ2JNY3lVbVZIb3pWMm04a2lzak1mMG43?=
 =?utf-8?B?NjlOM2h2UFhRTFdEYlFPMFgycXdKUTl5bzdrTDhjSGtoMkZtV2NqOHFmY1Q4?=
 =?utf-8?B?amh0ZzBHWWlLVGd4MEhsUjRuZnd0TjhhYkxFeTJRbFl6WFVSSWxnZ1oyVXZG?=
 =?utf-8?B?NjJjZkJYRytGdmpzcWZJajBXSHdWVFVqT0IyZ2d4TEdSbUxsazBOdGNzSmxJ?=
 =?utf-8?B?dkVjUzlOYm1NQk14YzdmY3BGQ0NKT053dGMyUnZkZEpZa3hTVFJXWlRpVjhR?=
 =?utf-8?B?VFlNRmsrbEV0azZiYXptNHFDOU9JejkrOGVFenIveENhUFJTaVV2SkRZcHpS?=
 =?utf-8?B?TG9rZ0hJdGpVUCtQTFRCU0RReXFKdTcyOWpmaWxDblhwWTMrb0llWHUrRkhV?=
 =?utf-8?B?aWRia29nRkpDdDYyUkEwWWllcGl5RlA4TmxTaTR2b1BnNkEySXl6SVU4SE5o?=
 =?utf-8?B?OC81K1dVamYrMzdGcEcwKzlxemcxY2NRN3FGTWRLbnFmMHIyTDhOVkVjRFA4?=
 =?utf-8?B?UzJjUEdqckVlS1VYc3NFVS9VRXA4aFZydEtJK212Y0Nxb2xVZWxsQ1drdld2?=
 =?utf-8?B?aUpCM3BGMXNZSXVsTDJuNmZacUQvV01IOXZ0dnR1aXVscEJ0Q3NaMGswNmZ6?=
 =?utf-8?B?WFVXTDQvSUIyVTF0Y1hzYmtFNHN3bmJ6QWNxdENjWjY4OGJERVBHQ0Q1WmVj?=
 =?utf-8?B?VGF3K21KM096ZlJtS0FIeTZaT2ZtUmkvWlBMSWZ4K0l5K0gxWDdtWVM4dEts?=
 =?utf-8?B?LzZFNkdaRzhEUjJOdVNialhCeHB1TE5pYUdTTi9KNE9aeFU4MlJOcmJxeFN0?=
 =?utf-8?B?WW5QTkUrUjFnNVpwZmVBNnBtK2dJS3FOQlQzREUvZzNqWnBlZlhoa0xodksr?=
 =?utf-8?B?YVkzYWlFUi84K3dmNllMOWVCUm1oaUZVR2c0R2l3andCWGNhazdCUGhTa3ln?=
 =?utf-8?B?dUVaSVZybVBpakpWSFd2aE9kSHBDdkl0ZFpFNFhFc3RTVlUxZFl2cENsejc1?=
 =?utf-8?B?dlc0SjFIeWZTNGdsczlYSDdpM1BoU0FucGhpRjJwSHhIaDRmVm0wd25acXJo?=
 =?utf-8?B?cXdYbFdmUTNXZy9aY0JQdWN5Y0djUzFWU2Y4WmJZWm54cC9rZDZqdllOaC83?=
 =?utf-8?B?dFZNYmo3LzJzcTZtdEozeXhVRms5OU5aS0J2c1JPeXZlaVFRK3JiaHcyei9k?=
 =?utf-8?Q?OEQFeWsoa/8Y5kE2diMo3e0=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d7a6c934-68c1-43e1-576d-08dc26359001
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2024 10:31:07.2361
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ypdQp+EAqMxVTcXCVupo1JqWCTtyveAhZ5xKWdX6UvvDHtuDOsZLbSz3Oj2RyqkueOJZ8GKGHAQDEniN+6qzVcIFIYAhVZ/c+Yoi5U/2RibtE6Y6xU/SRUFl4mWIa9ZO
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7074
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 05 Feb 2024 10:31:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62393

Hi Trevor,

On 1/29/24 02:29, Trevor Woerner via lists.yoctoproject.org wrote:
> The bbappend provided in this layer only needs to apply to the
> u-boot_<version> file itself and not all u-boot files in oe-core.
> 

Well.... We need BL31 and ROCKCHIP_TPL environment variables set, as 
well as the proper dependencies set, and that, for all U-Boot recipes. 
So now I'll have to copy those in my own U-Boot recipe(s) :)

I'm not against the change, just that some parts inside that bbappend 
made sense to apply to more than just u-boot_% recipes :).

Cheers,
Quentin

