Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68363C0502A
	for <webhook@archiver.kernel.org>; Tue, 30 Aug 2022 08:29:03 +0000 (UTC)
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
 (EUR01-HE1-obe.outbound.protection.outlook.com [40.107.13.51])
 by mx.groups.io with SMTP id smtpd.web11.9249.1661848117372787942
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Aug 2022 01:28:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherrycloud.onmicrosoft.com
 header.s=selector2-cherrycloud-onmicrosoft-com header.b=Kbrrfnx+;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.13.51,
 mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T9QF951vIQx5GtTZvCm6N0tmsiSamX7mNyN2GVD+mscppXhn1Ai+O1TPO6uEsLHbGCuvl8DjEouKQC8gSyRGQ/Ly4+ISJEqpM0VcbZw9NyX48B0rOMuXubJfL4CSaKtItUEl6UD79ob1cbEJGNjsLqQrHusGgy7G+4LrQHpPuFFfCvliN9bPNX0n0hHMpYa/f7SniexMbB+/+0dFo2xRpMAdAXjZuPnJ3M95NvITN02h7L6r655xdxvMatG9gfXqPN8si8CSelo5jGtxo+DUFZRSjkYwmj+Irhg14WSYp6wFO9AAZ5AhGAdQ91giaYiUk7LF72smjzSmr8hNVzk2XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y2T6mEpyCHuRtsM65B5o48gYvb36PJjs7kFZWPTO3ko=;
 b=QW39TRXUql67DoynLn8KkTBJi78BhQxO0JX+v2h3ivYqyWghjyNTeBFh5d2TBsjggfCisYrk6nx9r01sIlNdXAARiEmeOEL6TmXWDJqMWfaTQE0e+XiaoXLHrBYC5WvjYXSvZh/PZd9XXLGxF1IwvpofCA/mJLrAoWlPhvgVU2L9LkC61ZD0Q4Hq0/W6UqDE3YrfXRJ0huzZT4uMLAgxX2Xbj9oxr1Im11++S5MSKRlUzPvU/aw4jfTSRUzrQh2y7M5LOjVWHA+9oH7fqvRu3i5Q5hlGs0rNgTzrl9Fd5S6bb3Iqw0DI8rxq8sw+zy6otTfxhgelr+JAAyuDbHlw8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cherrycloud.onmicrosoft.com; s=selector2-cherrycloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y2T6mEpyCHuRtsM65B5o48gYvb36PJjs7kFZWPTO3ko=;
 b=Kbrrfnx+dE+IJF4lK4HchWJlyA4DMhyIfD3ww5tEopuOnaXZLSM4iWds0OECFlLwTOmjcU2UQRp24tqTIoAP2Id26UVHTO8SnA1adp0IfThKY7B4/z4RyDwqfRkbMGQ+SFIcZ5avmrmRC8hmB/jRnELNyoM5qss633nZdzVIREo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AM0PR04MB4644.eurprd04.prod.outlook.com (2603:10a6:208:75::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.21; Tue, 30 Aug
 2022 08:28:32 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::84e1:275d:69db:1748]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::84e1:275d:69db:1748%9]) with mapi id 15.20.5566.021; Tue, 30 Aug 2022
 08:28:32 +0000
Message-ID: <52d37449-4f10-077c-d446-b4c7d87efbc2@theobroma-systems.com>
Date: Tue, 30 Aug 2022 10:28:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [yocto] Multiple Images on the same HW platform with one image
 recipe
To: Aleksandar Nikolic <an010@live.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: 
 <PAXPR07MB839816FEEA965D3194CEE9289D739@PAXPR07MB8398.eurprd07.prod.outlook.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: 
 <PAXPR07MB839816FEEA965D3194CEE9289D739@PAXPR07MB8398.eurprd07.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0023.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1c::7) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6d2fb374-342f-4483-831c-08da8a619fc7
X-MS-TrafficTypeDiagnostic: AM0PR04MB4644:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	G74E2LKr7jelUudZM6DJ/ISKsQ080hCvNA49RFgmaCCSDxBLlXsQKjGrKwFe9q/sUbAK/b6LA0IdxULKKquVQr2YTV3eCTB6fwJuHauLgV21OK3p04KOCdst5rX3GLlbh+2XMJiVCQ+pNPHdeKk2S2BgeQsvod5g6IoNht1F7hwGsmbzR2hknBT3UzPRomK7Ocs5q0O29/Q9u4W68DUOxcWgqtQoJHxETJiUdiQ6TfuoxOZuBdlcYSSWn3V9mpga87ijWwcQwvh8wBEMvYGghZ4fG5VxJcksDALWGAHkYVp/g0wJbEK7jSMS2f4d0G17hj4JeYbUNiEZxJf2oRuVdym6Q3zWj1BAGUw4IMMao1arzXj96b5Z86i03T+FuWTPqvmCLfMxbOLaplhX2pcwejYWyliWUKScZUKh1P51GVqOc/xvPZZyeM0TPWQJI8DP+0HHgHa4QOYQ+a0d6kM8+5T49DlaY9atjTvS0k9cDZooVb2+IOXjN2zGU1JRI1AxQ8T7EXBhqgv6CKgvAFmoglb7m370BboyoSGPIzYobmj8YNr5ff6PeUhNwJaMPAo0CvaOmAW93Ln6JLo+CreBFVnPIgxvv+ZWaVVxJWLIX+Ai9Rm+9kbckEG68qR6H6nJ4JknBcfGalOBUWBJ8ZPgVrPm/KqUJXEwU1yKBWbj5Ma4GvWYQlvwW//hOVA6WZ/CYVUO9NAResfc6pStgu2xXPeyQ0cM5fGDTu37QmNzsltNjROWBRjS+c4oLECTCgIt92BKOay4g0SCdXnwCSzjV7oY97KIBQCVkZTNogC47bM=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(366004)(136003)(346002)(396003)(376002)(39850400004)(66556008)(66946007)(66476007)(8676002)(8936002)(6486002)(31696002)(53546011)(2906002)(6506007)(41300700001)(186003)(5660300002)(2616005)(44832011)(86362001)(478600001)(26005)(6512007)(316002)(38100700002)(36756003)(31686004)(110136005)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?eitpcEl6MjNiYXhHU3R0c2VjQzR6NnEwc1pEbHc5aFVsYTZPUE9mbFNUb0hu?=
 =?utf-8?B?RzZKcXFSenVBMkJ2Y2IrY0M2SkduZkp4Wjc1Y3paRWFFaWlVZmRra1JDbUFu?=
 =?utf-8?B?cVg4OGZRLzlLNEx1U29MZVpMWlJ0NGcrWFlmQ2ZibUNxVGtaT0cvdnpqMVc4?=
 =?utf-8?B?RzJGQTRxMEJQRmF2a3ArK1hnaEpzc3FTMXk1REdoN09SMGJHWHNRSXYxcFlV?=
 =?utf-8?B?a0VKNDg0bE1SSmFRaDhGMjNCQzN6ek5oVnBlNW5EK01NdjRrV3B4cXowTTdV?=
 =?utf-8?B?OFo0dEVCSTR1aldBVDA1OS9oUWFQOGczS2JRQ3doMlBWaVI1WkprVnc4elJJ?=
 =?utf-8?B?UlRyT2RXYnRTNTVUSldNL2E2cFJ5S2pCN3luZmdkMWRjUkN2a1A3RHc3bWJ3?=
 =?utf-8?B?L1RKUk1EcDBFMmdud0s0V0ZkcTBKSmVSbVpMaGhFeW42QnJEUVZrUW16V1BY?=
 =?utf-8?B?elQydkQ2L01qVGIrNlRlV0trMzVMelB3dWw4MDZpV3lUVHV6OFVzTW5lbGdu?=
 =?utf-8?B?TWVSVTFjWXRjVHpPaS9tWDNVQW13N25mTkRsbjI3cDRzY2l2NGlHd3ZUMzVF?=
 =?utf-8?B?R1o0dmZLMEdZSGgzd3ZZZUVCUm9wTk44ZXlEdDR0c2pmcTNXVTZoWWxOdzJW?=
 =?utf-8?B?eHJQbnZ3Y05CUEt0WFpVSG5nOXl5REVDR1cvY1pEYzMyY2lKbGFvOURQc0pT?=
 =?utf-8?B?cnN6YkZWMjVLM29iWkpFSmtUWFcyNWpUVHlYWm9LUWNPWWZSR2txVDNKSXRJ?=
 =?utf-8?B?LzQxZGJhM3RLaGlQU291WWFINTFwek9MR212b3RVMTZvYi9zZENzdTZWajBn?=
 =?utf-8?B?VGhNUndxQnBPNUtmN1cyUGtyWlcwbDZCV1o2WkpZRTgzS2g2V0o0blg3Vysx?=
 =?utf-8?B?dVFYaS9SSzM0K2lRYmhMQW80WUhkZFJOTEVZbGRwRDlCZ3NOVG5WTlZscm0v?=
 =?utf-8?B?OFBuM25BWEkwQVZxaTRaMGVjSUlnQ1FORlRYYmkxMmt2Qm1iU3RINW1TZFEr?=
 =?utf-8?B?ZWcrblZOd2VWazBJY1R0NjBNQUZPTnF0c3BSSTZFSG9ZUWdyYXkrZ3Z6OFRS?=
 =?utf-8?B?SEVlckZ3dkp4ZTNXd1BWTFZWeVdGd1BCOU05SmRROEIrbThEajBDUC9xeGhl?=
 =?utf-8?B?azhoOWtIYXJOc1NkL0ZOdWxnOTNhZDR6dWp4SG13ZEo4dXR3L25mK0pvMXVp?=
 =?utf-8?B?VS9IdWZmRWh1ZkRJajNXakRnZXI2ZDEzaXI3M2xuYTQ3SCtFK283ZHhZUENE?=
 =?utf-8?B?c3dyWmpTUmVzRkNPTG5ad3VQcTdwSVQ3d0pzc2pVNER0d29Mejl2MGVBSlNt?=
 =?utf-8?B?ejlmalBmMEl6NFFRbHpoaUNTeWxJQzRSY0tOTm5nMUhnTlM0aWxJdzRMSS9Y?=
 =?utf-8?B?NTVYMktVNFlsNllRVmw4WnJ0OWFiN3ZxaFBqN3VFSjRaL25MK0orOUYxU1hK?=
 =?utf-8?B?a3RBbkh1ZmdGa0wxckhoUFRtUUV3Vld5dWZQanhvMm1NOFBmeUM2cnFDdnI5?=
 =?utf-8?B?SmMvckMvRTVnelFiN2RjTE1PaUVRLzZzVEt2UC81a2pRRnBjR0Z0bVFOY2w0?=
 =?utf-8?B?bnI0SjRVRzZIRUl3Ly9tR2RmcFlJSmV3YjFYakNEb255czc4T00ySTlQTkRI?=
 =?utf-8?B?MVR4L2dOQjFBZ1AxOE8wbit5NTNGVFFYRlNETTlJaXU5dDlLd0dZcm9GL1VT?=
 =?utf-8?B?d28wcG9nLzVkSm41bUFQVjNOM2FkN2RlNkVqNmtPQjV2eXNUd3VyL0pxd3dS?=
 =?utf-8?B?bnNvZ3BucHJhVTJjVHlwSzV5WHVKWjFkanZJQi9XQWhEWFNYOEFoYmNKZldZ?=
 =?utf-8?B?VlhUT1ZQVmJzTEU1dkE1a3hia2JSWVYrQ21ETDZuai9RRGdYalpHa1N4NWJM?=
 =?utf-8?B?RHF0b1BIa3dJeDZoOHl1Wm92K3IyWXRHTFRYL0tjQXloRG1DaHhHamVRZVZZ?=
 =?utf-8?B?TjN1RFJKN3JYTURDdzBVTFk5SHlqSmR5R0Y3L2VsZ3dlL3RpdXF0SzJHWFYy?=
 =?utf-8?B?Sm1tR3prcDliRWF2dDNwNC9NbE5QMDV1MDk2b3BTYnRiMkNsNmVYV2hCOVZt?=
 =?utf-8?B?VG1PdWpvNDJtMEZseTF4dVpWcFFieHJqT1RxZWhZZTBwRXJxZU9TYmxWSnZj?=
 =?utf-8?B?NytubE12L3RSS08rbUFrVkxmaGpZRmk1SEVKMG96eU4vVXRaTWVNeUkxOElr?=
 =?utf-8?Q?2MqSL3oGEKUbK4hN4oHXmLY=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 6d2fb374-342f-4483-831c-08da8a619fc7
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Aug 2022 08:28:32.6272
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 sOU325kZp45ja5AS+XKdiHvhe/+FdZMzGjQA25Hcwoorhx2fFzZ01xjTDA9a1TaVzkTHIz7ZMYEe5+mSXm58xdDSm/dbI9lU457uL1hV+LZJsTM2M+7ljf/p0XEs1IDv
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4644
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Aug 2022 08:29:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57943

Hi Aleksandar,

On 8/24/22 09:10, Aleksandar Nikolic wrote:
> Hello Yocto Experts,
> 
> I have a minor question regarding how to manage multiple projects within Yocto with MACHINE_FEATURES, DISTRO_FEATURES and IMAGE_FEATURES. If I have one HW platform but two images, where the latter one contains a bit more applications, am I supposed to have one MACHINE, one DISTRO and 2 IMAGES? Or maybe one IMAGE but somehow to define IMAGE_FEATURES / EXTRA_IMAGE_FEATURES differently in those two cases? Due to simplicity, I would rather have one image recipe.
> 
> Whats the best way to achieve this? Thanks.
> 

If the packages that are in both images are compiled identically, with 
the same options, etc... then two images. Recipes are the least invasive 
in terms of Yocto builds so if you can avoid different distribution or 
machine files, try to do so, your build times will thank you for it :)

If it's only a few additional packages, I recommend your image-extended 
recipe to include/require the image-simple recipe and then just add an
IMAGE_INSTALL += "additional-packages" in there. Super easy to maintain 
and read.

Cheers,
Quentin

