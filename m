Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D420BC4345F
	for <webhook@archiver.kernel.org>; Wed, 17 Apr 2024 08:33:01 +0000 (UTC)
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (EUR01-VE1-obe.outbound.protection.outlook.com [40.107.14.112])
 by mx.groups.io with SMTP id smtpd.web11.7934.1713342779238584044
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Apr 2024 01:32:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=WTSmkkfv;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.14.112, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J9G6gYT/IY09oU0tZyM+7N3INd+Uvv+3/h+DEj3FwvIxQJwVEYhefrnbJvT85DNV2EuV5iA+TyD9nlxFO2XDmKR4NSBzcQLkZfSZ5lA8hVKBLwI4Sb8UOsY+HzPEI5Kp5vld/icTo9QZ7xzRlQf+kdZs0UQgMiHJ5iRUp7XajwytxAE8kl4tZuAoj6GD4Mw42l9sreNaF1AwGNZTGd7+ap+p0773Isg7i+q3eEEdPZOUFNGhB5/+Y7YERvavvHPY03agKHMxl+0CaLJP4joJgyuyNr+OCRnNf0bAUjIEho8RZY9AqjUnvxB44/CGFb0w5igvnqAEl123/t+U18MelQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vm5+x+RFx4OKx9Pre8ATyb31AvvSeozsMilN6G0hiEM=;
 b=fLPmp1ZA9t2Avn0zqT7Ei7MzVMIb9hQKq5fpy52h1+qHkccYu80KgcPJtOY4kiOg6p518SPV4ZI8rI916PTcgLOHbvcwLRp85LSv9SAXOh+QCqZsACGqKSFMX3iFgFavlO1UAszSELye/2tdFZ4PFj5/7RbNz+LZxdUjxIUfcanhGoUwVAsYfsYfURerdRcZPu2ltHgjDrD3o1CGfNmfHnj1+pQCUobg5ydEuE7COnXDmsxci3T7fUnMLp1wurobMdy54Bm2ak4Gzt7tw2uGurKLi+1+GefXOGNKYHTk9/9z3FPkeMlOn8KAbj4QlS+YuSkVZGqkJT5LLQLU28Q7mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vm5+x+RFx4OKx9Pre8ATyb31AvvSeozsMilN6G0hiEM=;
 b=WTSmkkfvADmZan63SOn/e3y1gReQyiccFoZbCe7CqylW1xxKLH/Scibld3+duK17inrxUbmg0B2YOAV4t4BzFzeZMaeC8BfAky9VVH62cQkVtZ+bTTlRn6mrWWTaeq77KLXZ2LbNOXx/Zc4ECFHsYsZfPjaUM36qeYCW37OfnfFnqYVEBvxFAW+hSA1Sx0+6VpiPgi8o2LmaQUR/ZwLD6CtuUAAjQ/gFml0Zww2XGk+9ATfwYpW4FsWZqc/7z9hTYaoNBOtsoLJlKToXHA6JVyKwLkcKvmW2Dxuj8pl5/dzQzqrFZUB5dm8zmaSFs2LnrG2BA6WLRpQ3n2Z/2cckyg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DB7PR04MB4842.eurprd04.prod.outlook.com (2603:10a6:10:1b::13)
 by AM8PR04MB7460.eurprd04.prod.outlook.com (2603:10a6:20b:1c5::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.50; Wed, 17 Apr
 2024 08:32:52 +0000
Received: from DB7PR04MB4842.eurprd04.prod.outlook.com
 ([fe80::bdc7:4b2c:e74e:1504]) by DB7PR04MB4842.eurprd04.prod.outlook.com
 ([fe80::bdc7:4b2c:e74e:1504%7]) with mapi id 15.20.7452.049; Wed, 17 Apr 2024
 08:32:52 +0000
Message-ID: <0b73263e-6a9d-4c89-be79-b3644c9e02a9@theobroma-systems.com>
Date: Wed, 17 Apr 2024 10:32:50 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Implicit RPROVIDES somewhere ?
To: jguittet.opensource@witekio.com, yocto@lists.yoctoproject.org
References: <4720216d-bcf7-4cb6-af82-22de63e0953b@theobroma-systems.com>
 <22839.1713287385608688409@lists.yoctoproject.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <22839.1713287385608688409@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA0P291CA0010.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::12) To DB7PR04MB4842.eurprd04.prod.outlook.com
 (2603:10a6:10:1b::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB7PR04MB4842:EE_|AM8PR04MB7460:EE_
X-MS-Office365-Filtering-Correlation-Id: e034c647-3689-4294-cd91-08dc5eb8f8e2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	6NZvksamc546DxbvvdvcTz39tOa9l48kGB/iffyrANA2CMnNR+G4y2peRDYXZTLPS1jgJSj7t3kHOE57rs/QqHSLbl/C0U/XAjZDL3DcYeh+7h93cVu3Q7ewZSeycgF2daRaKKAGEodr268JGVVq7irjE02rb456IC1Mdrn3FLMuIYJHeXB4c7WuqcQl73dRPLHz07m1+98zaC5x+VKK0mS/XHog7bg8N5UnkJnJq6uhycXvN0i2RVqVGid5kJ7FBSMloRHoktBOAJO8S5Jv17exYqr0fAT/9O7j5W+XYWKUIlSfIpx3D7CMCYNah1ZqGE7HuXjkv9kwOgSje95goTub3dqgZ8X+29Tit1LL/LzQERzYbJh3tEDSATiiGtuNCNF7+L7Sw9t8A9ulFw6F4voKIfoOPrqb8qFkAve1K2ten6SXSfHgfsyzkMGvLXhOW/H+5clUL4lCn6rJl0dzK2/NnHk0hmgExxe4v3+9fEPL2WW6sr0uXJawswBLgF5/nXPnOmp+DrUc8TGe8HDOJrzE+Z1Rl8isAlhgqRexLNPLwPeptwOnGu3Em1JyRl4YziT8gWPooAblvBsTM9uRTAaZgntmFAPhXvIyBXE3wq4=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4842.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(366007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Y2hVc0lQQkdHMkV6Vk5KQzl4SUFqZzFIYnBzc1pwZm83MUFkc3Nyc0tsZ1Q0?=
 =?utf-8?B?cmJKbWYydVVqOS9pUjRtTytUbmszOWZST2xOdW9NcWNHdFlZOFZvL0gzdzFL?=
 =?utf-8?B?RHVpOVlNdUNwYkc1MXZreHhhS2x5V1FOSDY3N3NtYXZlVDM1T1FEbmMzY1g4?=
 =?utf-8?B?dFhYTExmZktrOE1EaHEvK2hpZ00wRUh3OVJiOEdDMEJiM2cxUmppeDVEeDlM?=
 =?utf-8?B?MkVPcHU1em10c0EvWDdhYUZuZjFRMjE4dDNtNGFIS0tOQmR2Wk1mUlRmNzN4?=
 =?utf-8?B?Vi90c0ZjZER0eGVoMllZa2p0ek8razBvUnRWb21rMU5vaGVWalFrZG9jUjdL?=
 =?utf-8?B?NDNEUmxEU3liY0lvZjhrYy94ditrVTZPQWhlNHNaSU9zZEcySmZ4SkpUWldU?=
 =?utf-8?B?MFBtOGhrVFhldkJlMVpwaWdvS09Jb3hRa3dJQ1VzZnJDL2RKSDBUWFFIZjRk?=
 =?utf-8?B?V2FPeGlmNmplZ2pLS3VsT2Q5VzFTd1Z2bitDSWU0UEtZcllTbHdyc0syV3JL?=
 =?utf-8?B?QXUvZ2FsK1RyZElWVEw2bjFBUldzbUQrZW9FVUFLdFVJNnh5eE5vSjVQVE9l?=
 =?utf-8?B?QTZKc2pZR1pKSm1BdkZocVJjTUVrTmhJTlZkKzdQOUFDOEhRSFc1SnRvUU81?=
 =?utf-8?B?TG5Wd3lIVXhYUm1Kc0FmZzM5ZVc3aEIyZW1qMkJ1MFBzSXAzVmJFSURnc2xT?=
 =?utf-8?B?cGxWNk5scG9KREVQbThLTkNQNTdTck5Vd0FUVHdjbzVRajB2ZlBUR1prc0VK?=
 =?utf-8?B?aG9CZFREWDdXb3N1SFM2OWwvVzFvNkthV050M3BGTUgxZ1JGbStwZE5aMlgz?=
 =?utf-8?B?aTUrakJBT3BSRndQTVA1cHhBT1RwRkZiWjAwNzl5Y3pUcmxmSmY4c2x0TjI2?=
 =?utf-8?B?TmdlWmd2YUY0dXMveGE4SmY2V1VhTFBrQWhzYnVpSkJPNThZNmNWTjdKcGFx?=
 =?utf-8?B?d0ttdjNhcStobUk3QWYvd3dpblhxZHhDWC9vNDhaSkpvQkFnUDhhMVBxTDFM?=
 =?utf-8?B?b1g3ZDJlb012SEFDQk11cytGTlR3cXQ0TC9zZ0ZPbjdxL3dtV0RoVC9PZWFJ?=
 =?utf-8?B?MVdzaUNidWc0cEZWS0NJaFQ4VjM0Y25yRjc0TFRBUHdyM1lYNVBLWmVPVTUx?=
 =?utf-8?B?MHB5ZXpnT3dlQ0gwVGY4SkdCSGtZN003Y3V2aUg5WDJGVFZ1djJBNUk1RXY2?=
 =?utf-8?B?STV1WFppMmN4QmtBd1ZKK3dBeFVvR2Zkb0x4dms1SnJoZnlZTWNkczNvcXk2?=
 =?utf-8?B?Y1N4SGpwazRkQUJ6Qk1UdXZMRXVHNTY5eHNVL2pkcUpRKzJzQnNiV3NNRDcv?=
 =?utf-8?B?aktlVExaYzVKV3JhODNUWmkvVnZ2MmFkU1dTNTRqVXY3UUZMZWptelYwQVY3?=
 =?utf-8?B?TUh4WFFOVXBCVUI3a2pGZnFZM0JXYi9VdkdTYXd0UGN2bjVLR0xNSWpDQVhC?=
 =?utf-8?B?T2pkRnJzbytCOGErdFVRS05ZTWxpaGw2elJwcDlzQW92VEdXaER3RkJFSWg3?=
 =?utf-8?B?NzVhN1lrTzBHbmljT3VkSUV5M09ZKzVEYWRjcy8rNm56TEMyeUdaUWVXVlJq?=
 =?utf-8?B?K2RCSU1nVFBsbzRpQWtmbGZUZzA3b0dJNWJyYzMzZUMrZVdjNDBwVWVzajZI?=
 =?utf-8?B?RE0zb2xnM1NNWEFINjdJRjlOMU1aV1V4TEhoZnYyN0NNNEk5YVRWV3B1aUNp?=
 =?utf-8?B?Rktabis3emtLanFWeVRTeG9mMUpUVlhDQ2hoUG94RUVGa0NwNVVyZWEzTFUv?=
 =?utf-8?B?bFdCNjZRdjFNKzRUNUlVS1dWWGRsekR0WDlXdytBUHA2K0drTFVuY2gxQXhI?=
 =?utf-8?B?WHFESEFwWUdRbEVSQ0RMUGw2Ty9qWnhSQW9OV0U4b3g0Mmh5Z2JwS1IxTUZz?=
 =?utf-8?B?ODRFMXA5UmhpNlhQV0RGdm9PQll3UUYwS1Blb2FkaUVwL3VUTmxTWk5xb253?=
 =?utf-8?B?UFA0ZkNhMUNMOFpOYjNSZVZJQk9DMXhmNHRQcUVhUHZXZ3hjYTQ1NmlwK3RV?=
 =?utf-8?B?bVB1VEdPSjgzQjdIM3NibXRmL3RBc0VMV0pnSVpRRWgrS2ZOOFVOMGdNQnRo?=
 =?utf-8?B?ZFUyNHRiWUJmSHowZVNSYUhNVURtUFo5TjBCWCtYc2FtR2hZOXFNU092RVBO?=
 =?utf-8?B?RHlhUDFrQUZXRlJnSzF2R29WY1JFT3o5dUFKc1dJL0RWQ21HWTN6WllyUXhi?=
 =?utf-8?B?b3FZcVd4Wk5kWTNGM0ZONmd1cHFnQzlLV2kyR0x3eHpETHFFVHk0Z2crRkY2?=
 =?utf-8?B?Zm9reWtOU3RhdEs1c0RoTEJ4dmVRPT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e034c647-3689-4294-cd91-08dc5eb8f8e2
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4842.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Apr 2024 08:32:52.4512
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g59TWtmaYUyw/9+V6C15+y7piZsb/WN8dLPQvdOLBusgRi5oKOYiZzxm2QFaHsylK+Hi34c2U/qkD4IPtMAL8Y4DXTaUplLsr8iSFWk9Kjm3dBucj6WwhueSxazELURZ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR04MB7460
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 Apr 2024 08:33:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62942

Hi Joel,

On 4/16/24 19:09, Joel GUITTET via Lists.Yoctoproject.Org wrote:
> You don't often get email from jguittet.opensource=witekio.com@lists.yoctoproject.org. Learn why this is important<https://aka.ms/LearnAboutSenderIdentification>
> Hello Quentin,
> 
> Thanks for the quick reply on this question!
> 
> The reason of this organisation is that my customer is responsible of providing library "bar" (he cannot share the source code with me), and we are responsible of providing library "foo". It's not confortable for sure, but it's the actual state. So my customer provides me the "bar" libraries (arm and aarch64) compiled (so files), that I copy/paste in my layer. And then I build "foo" libraries that are linked to "bar" and additionally I have to install only the "foo" libraries in the rootfs.
> 

So far so good. Not an uncommon setup, bar recipe would be following the 
prebuilt binary section in the documentation. 
https://docs.yoctoproject.org/dev-manual/prebuilt-libraries.html

The thing I do not understand is why you do NOT want bar on the rootfs? 
Your foo shared library explicitly states that it requires libbar.so to 
be able to run, why do you not want libbar.so in your rootfs?

> The library that is building "foo" have nothing specific to the architecture. The IMAGE_INSTALL has "lib32-foo" and "foo".
> But something to mention that may have an impact here : because of this organization above my recipe that is building "foo" have the following (else I don't succeed to build):

This smells like bad build system/instructions for the foo recipe. All 
libraries built by Yocto should be versioned, I highly recommend to fix 
your foo SW to have some version in there to not have to deal with this. 
It's best practice and will help you in the long run anyway (actually 
trying to figure out which version the customer is using by simply 
looking at the filename for example). But I don't think that should 
impact libfoo being added or not.

> 
> FILES_SOLIBSDEV = ""
> INSANE_SKIP:${PN} += "dev-so"
> INSANE_SKIP:${PN} += "file-rdeps"
> 

This INSANE_SKIP isn't that common and I don't think it's that good of 
an idea?

There's one thing I missed is that you're building with multilib. Do you 
actually have a lib32-bar package and a bar package? Is your libbar.so 
available in both aarch32 and aarch64 architectures?

I assume that the automagic RDEPENDS got broken for lib32-foo and you 
are not seeing it because of
INSANE_SKIP:${PN} += "file-rdeps"

It's probably trying to locate a multilib lib32 package containing 
libbar.so but cannot find any and complains about it. The aarch64 
package does find a package for libbar.so so it adds it automatically.

Cheers,
Quentin

