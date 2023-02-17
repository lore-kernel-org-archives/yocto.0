Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D781EC636D4
	for <webhook@archiver.kernel.org>; Fri, 17 Feb 2023 09:50:32 +0000 (UTC)
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.73])
 by mx.groups.io with SMTP id smtpd.web10.3344.1676627426363114615
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Feb 2023 01:50:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=Ri8mAR/B;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.7.73, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d+XolaKwQ9TfScr3+xAmaHEZDorV2j+gxz6wUz6EF+S47LStZTnE2qWAp5DoPutiZwuwp9b/jKmkCpha/vOLD8EUdOBaXv1UoSfq2WbRhxLr/qBqMTNzS7RUqAQuH2iGkj9UHVot86yynNLJlpceHpFUUIZ5o+4VKJDRSuHAVIvxP1mXsRQ64HaU4M3yNXN6DONaAPOZRm9zvDd7Y8+dZM9S25JokUOMhhfCW9+8SqQxDpjBcVt5EKdQ4sCSh4VG76RSaVO1GXc5g8MrFmQeqXg5Ci92/trlvC6ufUSBofQ3+BNjw9JU0Lvr1qxFJf9v/8fttZ+aV4Fd+V0cd95sPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s9qNfo3+OaxvSHnQOGLj58KYPdTYlOyuHMeIWTB/6WE=;
 b=IqMnztgCDmZRzkcfZcVPhuEL5xW9gWNg6w1Q/gSr8QDv5qvl3hPUtR8pVV54utdyUWkJGIjAUUh8EtznjLMn1/w1c6r13M9Ms45jX0uQQnAZLXSKOrxRw3YVZQviZJ7OnNmyFPoosxY5k2blNvu0X60naojtoe9OPzCbykDcaxSYqIfnG7zmXili6DyPfbhm2J4cUPNM/GrMGGcB98aNHppzYtnMD9UTIcBajINoQk026hItJFGrMeg1ybB9uk1YVfBtyWluyF1tTyM7YGIcviZgH+HAR1/xWpBIVvSGG+1l+TzpqlFcvz7I84ETDA/pxN/4i9M2QDfomILg7hAO+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s9qNfo3+OaxvSHnQOGLj58KYPdTYlOyuHMeIWTB/6WE=;
 b=Ri8mAR/BFcPJFRZeOQRSGWgpkH3aOteL8pcD6XCX+RT44ofX3xkGc2hR2b29xvgBLBXsCy+W0hWA26kkAZcpEDfISVzi1P0i5Eo5z6OUUZW83ZBMZylMNCJnPEvNkUpwqNIqbvIw/FIt+dGLo0MNG0/OZYUjjXzCsDalA4j4KdteoVssOluiMOGJsdft0VHnLhrcBVRiT5WuxvsLLj9ptPjgxVTIE0LaPT6sAkY4RSzPU0+X2Ez7jtCjAVURP1uAjbA2ZfdRO0/C5H+4HxM5A9CZCz6aWqQqVLKlliFOuGty2ZPNO/gF4F4c4jRnaRiUTeHlexJBRs8Xc/bGWNY9Uw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AS8PR04MB8070.eurprd04.prod.outlook.com (2603:10a6:20b:3f2::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.15; Fri, 17 Feb
 2023 09:50:23 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::24d3:14a5:eeda:6cdd]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::24d3:14a5:eeda:6cdd%7]) with mapi id 15.20.6111.015; Fri, 17 Feb 2023
 09:50:23 +0000
Message-ID: <c84f3b6b-3213-5de9-eceb-258d4210bc3e@theobroma-systems.com>
Date: Fri, 17 Feb 2023 10:50:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [yocto] ERROR: No recipes available for:
Content-Language: en-US
To: Murali Krishna <mkn20679@gmail.com>, yocto@lists.yoctoproject.org
References: <CAOYqR5aF+1hJ7XTcXJXFy6ndENi0CMjytO5smAffH83=zPkF9Q@mail.gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <CAOYqR5aF+1hJ7XTcXJXFy6ndENi0CMjytO5smAffH83=zPkF9Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0130.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:94::11) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|AS8PR04MB8070:EE_
X-MS-Office365-Filtering-Correlation-Id: 00a2fb2a-3859-47fc-ed53-08db10cc6320
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	dzgmr/EVjLPC5X+N+jXDV+7DOjWqFS0dTycnvweZqi1SdZ/mbu9E5R9B5ClwLrRaFuMB7f0I2UFE1YfIGcjdXTh9vJn48TZFsiKQ82AF4o58b7eduNEj/7aylXt718g42SsIkyE/5LMgNc/bWqwb3YYoSusB4T50bzlIqRXO5AjnUwPzDLIfpKaF73xDWB/bU7EPInIMuvEpW3cgX0gO0rBMYuiyIWcYHNFzeXOp58CEYevEWH558rPmzK3GfYOAYst/Dgyf/3DBYGfgg+ag+2x128fHq6jEbA6OOH3YvpEP0AOi24l9olA6BM7yPLLv5dt7qAh+wNNG91gQ8qLvsFQk2ZSs9dSfAWlNSVIxV6wmInz5yrGs+ih8YKRk2UId68iT+D9yiYbvcVcEizltKej1TpOhgxoFBcKJEg/aP8/+Uf8ocXcGaYTy2JBpxRgJym4PehWoWxY2xA5TJJqMf3ngRT6clUiCgSkc3A2XMZUKTZFJNJZ//uVCVbtDUy5ItHnnSl3KwICB+ImGeqQopbE76wbpFSzryJgSO3PUe6Iy0tMu/NcvYlsQiHCoby59fBogz8OVj2HdCRLbOZj/f9eeVC17pca9P4FLjyzJwmqcFPWz+jsdePcJIruB5H/NeALDj7oL8LLYjQtHxgRS1+OlnaCXynLL+JPo4Lx6c6rSqZU4PvokDZx8r8F3fJ5zUCCQHBX7j5/q9DXu0WEI7/RzVeUA0BA8Ya91jvphvQ0=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(376002)(366004)(39850400004)(346002)(136003)(396003)(451199018)(31696002)(41300700001)(66476007)(8676002)(66556008)(66946007)(6512007)(26005)(186003)(2906002)(5660300002)(44832011)(86362001)(38100700002)(8936002)(2616005)(36756003)(478600001)(83380400001)(6486002)(31686004)(66574015)(6506007)(316002)(53546011)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cEdLZkNjZXMxTHkrNEdXOTJHQis5Myt4TmNOZkIrMDNmelRuK3Q0QklHWWw3?=
 =?utf-8?B?dVlQUHBDdS9yTWl3RlV5OTlUdlVRdS9sZVNJMkR3c3E1aGlrQXh5cHJacjA0?=
 =?utf-8?B?cExsYmNOYlpTMFN0T0pOS2FFNFIrQkJqc2pRQ2x6T0dxWTJuaEVITjVhZllz?=
 =?utf-8?B?c202RzBhTHhkaXdDbXdRUUhuN1dJcHVDUE8xVGswcmc4bWZHcElCMllMYThL?=
 =?utf-8?B?WWNSc2dpUUpCbC9jQnkxRHZCMWxiZXhmM0hoajVjNFhpNTRnc2NJKzlSdHho?=
 =?utf-8?B?dTNkMy9WUjFLc2xnTVljWE43Z2xrenR3QjlDWjgzU0NVN1o4RFhpTHNqeHFQ?=
 =?utf-8?B?ZDRnWDg2NHZJcmlhenVNVUh5Y3Y3YlJtVlpWWmdJV0k3cmdwQ0tvdFJMTGor?=
 =?utf-8?B?OXp4V3ZzWHdZQ1VWenRBblQ1amQzZ25nNXlLRDkwaXdCNXkxNERWZWp1VWVz?=
 =?utf-8?B?djBNSVBmVndtdVh3aW51Z0EzelhBc0hNVUZKRXdJdzBOMW9HU2w2bXlVMkx2?=
 =?utf-8?B?QitROU1URzRUekl5V2QrNFJtZStYaHI5NWpjQktCMk43cExKVzZSM2ZXSkdr?=
 =?utf-8?B?SDNTVXpMcDc5VDFVaEYxTzhXMmZ0K0plUGdrbGNOMVFHODZlMDV2WWZWVlVa?=
 =?utf-8?B?c0J3MkFQMWoxNitlQ1Q5UUF6QkZJRWx1cVcvSGp6QWNOS2J0UTlkbkxQcUNB?=
 =?utf-8?B?Z25KVndOM25FWjFQZ21mdzhkL09EQ1djenBPdEFGai9qaWszYWRZaDZ0WkdX?=
 =?utf-8?B?MXp6bkFIVFM5c3Y3UE9SOElFY3BOSTRyOG10K1hLcUh0bnpaV3g3Tyt6NUhv?=
 =?utf-8?B?MVlqeDAvNUpJTFRqaFpBeXN4YlZNaU9LdXRJYzZwMHBOWHpRZ0RyOTlValhC?=
 =?utf-8?B?UkI3SG1KZWp6eCtGWWxNTytaQmkrbjlWTEZHWDMxY3hJVkNZUHloQWZjUlBv?=
 =?utf-8?B?czA4Y2ZaMmtHc05QV2huMFdjelBxaWJMNHlQZmp4ZE1IRkwwb0JzeGo0b0dm?=
 =?utf-8?B?RFVWYW95VmxjalFVNzcvbHhyUGlwcEMxNGVBMnlYaHZ6aFlyd29uTHcybS93?=
 =?utf-8?B?ZkF2OUI0OGQxTnpzaThZbUxBWEZ5bUI3V20yUUN1Q3d5aytGQ25LMUY0dmVM?=
 =?utf-8?B?ZThDL2VRNUE2YVFQeVFvUjFXQkNObFFITDliOUVIYTBLTjdRZC8zQXZoTlJl?=
 =?utf-8?B?UjJKTzJoOU5qN1VNWTZaSTNjZ3lEMFp0NndnaXppYm5FNzFqcjNRazZBcTBh?=
 =?utf-8?B?RVlucFcvRW8vTWh2bS9WczcvWnVkV3hnQjVZZ1JoL2dZbEdCNEJnb2w4aE1z?=
 =?utf-8?B?amdFajlVaExmMmdGUnF4OEZRams5OUJSU3JjK3hCY0dyZHdaQ2pST1gvdXdn?=
 =?utf-8?B?aW1aLzFBR1JjUHFYZEJqL041Y0NKNU51MzJBSG5zdlNJMEFNblNLdnNSbUlH?=
 =?utf-8?B?aWdrci9ISHVzR0JXYnV3SXdqNFJoMGJDSlZyazRvTSsxUnJ2MUZWeHlaWG16?=
 =?utf-8?B?U1JtOWYvU3RPdnBpZHQybXl1OGx1ck5qTi9ra1Awdm42eXlCelV6dTg4ZzF2?=
 =?utf-8?B?WHIxQkIyQWRkZnJDRFlidTRkbTRFeVlGdTRNQlpPdkRMNFBxQW8vSmd0a0Zi?=
 =?utf-8?B?M2Z3Yk1saU9GQXBnTjJHVSt5VzVLa2RtQlV5ZUsycFRRVjAzQnlydyszdFRp?=
 =?utf-8?B?K2R5TGxGdzVlL0Z1d29mcEVFeWFCdnlNSE1KZFBwcHlIcWE1cFlNZHR2TUJX?=
 =?utf-8?B?eW1sRnJUY2d3NEJqWDlic3AxSzk1QU00TDZFOC8xOWE1UGFzY2NFMENlM0VS?=
 =?utf-8?B?QVhRU3NoMGlUQ29qcEdOODlycFNmODF3Mm5ZRkZ6UHBQK2ErZVdZZHlVRGV1?=
 =?utf-8?B?MERENTZUc3lMb2dGKzNRMzhLRmE5Y1RQQ1lKVWdvSlJkQUgvUmtTVzFobmZJ?=
 =?utf-8?B?eHNoZGx5YzhEZEdGNUxhZkphZDJpWXpuQVlsUGp3NWFsd1hRMjVLb1NZd2pQ?=
 =?utf-8?B?eUt4UGlNQ0pLa0JFWGdJdVVLU0I1NkZ1dTlYbkRQM2YrQi9XcXErMC93eDJW?=
 =?utf-8?B?NFFjSGJnSGZja2lrU0dXQkhDeWhpdVFEMS9PVm1BUkVmaGZ6RmZERCtvTlJ4?=
 =?utf-8?B?aEJyUXZKL0FYbHJ2YlUzRkQzOUJyMFAvUStUa3VNdUdwR1Rpa3VrVGpiVWJp?=
 =?utf-8?Q?z17P/qHZSkfI4QRWV8htIFY=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00a2fb2a-3859-47fc-ed53-08db10cc6320
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2023 09:50:22.8513
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SCFB1WmRztNLAkNSsIrNZD2y/vOCRzKLAmWeeQXiViEzpID5MGpd338XL7x/Iga6tvUtdHoao6UA8Ln32b4n9DFcdWZNtREkAY7GiVzQrN/NQbs0IH7xgGvP28kmAbF0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8070
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Feb 2023 09:50:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59240

Hi Murali,

On 2/17/23 06:59, Murali Krishna wrote:
> Time: 0:00:00Loaded 3775 entries from dependency cache.ERROR: No recipes
> available for:
> /home/murali/test/sources/meta-boundary/recipes-browser/chromium/chromium_%.bbappend
> /home/murali/test/sources/meta-boundary/recipes-bsp/u-boot/u-boot-fw-utils_2017.01.bbappend
> /home/murali/test/sources/meta-boundary/recipes-bsp/u-boot/u-boot-script-boundary_git.bbappend
> /home/murali/test/sources/meta-boundary/recipes-kernel/linux-firmware/linux-firmware_git.bbappend
> /home/murali/test/sources/meta-boundary/recipes-mozilla/firefox/firefox_45.5.1esr.bbappendSummary:

bbappends are appending content to already existing recipes. There are 
two possible issues, for chromium_%.bbappend, no chromium recipe is 
found in the included layers, make sure the layer with chromium recipe 
is added with bitbake-layers add-layer.

For bbappends for version specific recipes, e.g. 
u-boot-fw-utils_2017.01.bbappend either u-boot-fw-utils recipe does not 
exist anymore, the layer containing it is not included in your build or 
the recipe does exist and the layer is included but the recipe is of a 
different version (e.g. 2019.07 or something like that).

I know u-boot-fw-utils has been renamed to libubootenv in some versions 
(don't remember if it was already the case in dunfell though).

But it is likely just a mismatch of the recipe version upon which the 
bbappend would be applied.

The fix is to find the new name of the recipe, update the bbappend to 
apply to the correct recipe version by changing its filename and/or add 
the necessary layers.

Cheers,
Quentin

