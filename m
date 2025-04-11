Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFD5DC36010
	for <webhook@archiver.kernel.org>; Fri, 11 Apr 2025 12:16:50 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.56])
 by mx.groups.io with SMTP id smtpd.web10.24384.1744373802812981046
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Apr 2025 05:16:43 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@cherry.de header.s=selector1 header.b=oAXQa4DV;
 spf=pass (domain: cherry.de, ip: 40.107.21.56, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=djobm7GJBiJPkcfNVLSAp4WJ4W88dbEJTCFtaVdbEyqQlhK7X3vxVb0/v5+x3NN5fEfFEM2OjXXXW5T7zuHtiiyFKtdJ4bfq4r9EFuKs1yQGkb9wa+bv9Y6tX57T9JYlUTwrrkWSWVYfXMuGFiIRCKODWs+IW8jTmeAGS8Tgf/qAg04cTKSLJB/QAlxe6C2FVlNmWbRMxFH9rnT33g3xh/A1x32itoTXOVFYu4pImHMu9cMDwN0RJIQrZouhe6zcSdPsgRPbc5A0FqNJRsOeagwvIdJIa8ACtOA4RwAzBGsapw7E2N6wpY1hsRoipG52h9xIfo5l11JKcyO4W3PtwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BIzradQiRMRmXjpx5/Bv10fmMn5DRZDiq8cp/uh/sRw=;
 b=heafSli1nAVc2AIjtasWExHdKkzJgI+q5yhSuBc24BIG2m6Z5clkE8nNWR/5iqotf0/6bEG3g0OwLlbeetY3z5UsmJZeINgDdszB5Els8dYET8/vEttc44FcekUfh5CCrdThJOKy7LHjX53WeiEFj1Xenf4gaU0gfkOOgQkJsMSuPA61pb1gMD3fxz03ZAIcErGpepeT0MXqImQplCXbom8TTL1rllpCLvLB1zuw0ZE6ZByGLUR1smFp/ramBKznxr9LcUEoZE14ktlp0xkEfamLjHuUkHc235Yi0QlDqPseNfOM1uIwNczyvRr8vWwrjgamefe9hyrzImSQtDgnfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BIzradQiRMRmXjpx5/Bv10fmMn5DRZDiq8cp/uh/sRw=;
 b=oAXQa4DVClesO4v3PutIDCZWd/6DZgz83p1jBgsJpw4bhAJvW9kfKUhxwLLTbjj+5A/qZr5O+0Sto8ZEO1iasakF2nIzHkqI85c4Ut8xvXjcQLNrJYmxcwFezjH/6KfwVY4+xgsCd7HnHQDFFbVKGd000I/DwMWGemVCUF1uILk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by GVXPR04MB11020.eurprd04.prod.outlook.com (2603:10a6:150:227::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.27; Fri, 11 Apr
 2025 12:16:37 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%6]) with mapi id 15.20.8632.025; Fri, 11 Apr 2025
 12:16:35 +0000
Message-ID: <60792f52-b330-43a4-bb62-bef2b0be5845@cherry.de>
Date: Fri, 11 Apr 2025 14:16:29 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] A new member
To: yocto@lists.yoctoproject.org, nguyenthaithuanalg@gmail.com,
 Gyorgy Sarvari <skandigraun@gmail.com>
References: <27168653-ce9a-417b-8f89-5efc9466ab9c@gmail.com>
 <2395.1744373336201661750@lists.yoctoproject.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <2395.1744373336201661750@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: FR2P281CA0081.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9a::8) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|GVXPR04MB11020:EE_
X-MS-Office365-Filtering-Correlation-Id: 36011816-2b44-4517-9ca7-08dd78f2b3ad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?eCH7IdjZwsIVgbqU2WcQHagOcZtiPwDIb6rndR24DdVg9HjQAsxSY1LqeWNN?=
 =?us-ascii?Q?Ht2YuRy1c/p5qcofMZLLjFp966qZeLh/Fhy03SNA9gjWz3SHlsiEIf/LE9j5?=
 =?us-ascii?Q?BHRiOfrRm8ggpGYv06H0qtL49VLgVarq2p9OkwBCXraG1vx4DfNya7JMNvLw?=
 =?us-ascii?Q?HUHyq+1+G5iDJZg4FjhgA+EHEV2FDRzkG4LIp8MGiFVBZlF/BtrvRGQCUIA2?=
 =?us-ascii?Q?Lb/aGPffhrtrgxHkqCClk1oBCw6ny/OP0DBZKbIsIGObtVZxEr8fCXjiyGY4?=
 =?us-ascii?Q?Sk5hqc0lknSa1fSxCPLmlwo8Dm1gg0QXROf6K/7molPrVBvtpwV+ANeNHPyK?=
 =?us-ascii?Q?GyrtLBHl8kOmq2tKrVFJkvUAj9zf8N555GOfLRGNPcqwTF4/n2Uipo7VRxCd?=
 =?us-ascii?Q?FlQUTRDqst15TgWHYG/ksidWCWCmcuiYFCpTVvpzLHEn2UAyjjSbhYWcyQT1?=
 =?us-ascii?Q?cja6a14jXDx7CyG4I8AIRBIrT9NxA4V8cnHiRA6/SYZBREcZXcMP0OA2aeXP?=
 =?us-ascii?Q?x3mciY60VoAMvZJJlb0MovoXVJ2qELboZT3/eTh/KBe4MAPiIoeB0AK/VQo4?=
 =?us-ascii?Q?vhppKdWpiOPInXvqYbQoF0hosafROfxxWPJANNqdoRw49SxWSBtIZg4MAQYa?=
 =?us-ascii?Q?vtA3GbxRg1r/2FnDnqieDgHSvBuA5HD9TbMLVz7BUsrJg4gjDD84WLJDv+3c?=
 =?us-ascii?Q?E4d9V+o80FGbyWfRPdZ/5FCww+bQhmvlBxKpvpXOwncSH9dt1XvR6RG8TBRe?=
 =?us-ascii?Q?/VBSAEpG0TJVl/z7+dnN9PN0RR9LgeWr2x6c4zbPw5WSyz360xP4rTYFX8MU?=
 =?us-ascii?Q?Q72BEhC64rh8gseE194iHKvsu+++/73CzquW0AZcudYmCZabt2697rWQyjZz?=
 =?us-ascii?Q?bayPnKNyJHavbgQdvCn4AfuJz7npD5xhmpyMbILIsTSDGpW1WHEQNBB1JP/V?=
 =?us-ascii?Q?R+rGoETBZkWgKPt4p2YkQY/265D1CCaJHdBBh+Y+RGeV2OQrgf/X1amVxR/H?=
 =?us-ascii?Q?CVdAaOqqcK/hHP3AM5pg6gV3BPL3chBamNv9QjgaGR1wARxSmlSySVsQsBEy?=
 =?us-ascii?Q?Bk42WPLxEH7UButjSZqt311H1d+PT2b/tHnHQBKfdy7TCq1X8mCZy6xDeg/Q?=
 =?us-ascii?Q?qMrC3D3ldyUWed3MqCSMp6/PdJBDhNQIwU9FyonMoK4aoYQX/UjP+WSwgW26?=
 =?us-ascii?Q?hiVgbDbaLGd5IxsSOy3aXldpgrhtWgeElpnEvxi5NbWFMX9K3DY3VpQAz85V?=
 =?us-ascii?Q?Lf+eZ9QQSROOZ2EG05ljPMAz8Do5GIXLrF+Xclcvhdc22svX6IhoxtFNTkN6?=
 =?us-ascii?Q?tasPS+EOfUY3IrhRWYqi4/HPJU0nY/wysdhEHcE1TdD2hMHB42gOZEyc2pOb?=
 =?us-ascii?Q?18UCsn0=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?qFt2uWSYAZJjP7/i84w7KK3aaY2/I/4L7cQcYXpsasBwBSpqbEhqaTjueTYi?=
 =?us-ascii?Q?kHAVdPD0zxBMDHpluuIsqYbaPkzUiyAB88SqGbbbaE9GC9JLr8fh7fYbrGI6?=
 =?us-ascii?Q?KlR5uD1+0JgpAQWZJJwL4FblxVibiNXci3TgVwPeA+ax3gcQOuy4G3gABkZN?=
 =?us-ascii?Q?YZnh4PPbrxvv6y4F0JsEToLAhm2qkfzuaINYA22/9knjKzrTIUJ1H38a48YW?=
 =?us-ascii?Q?EG63vmVvUs4zqWYd67jJFsLeaK4eBkkGUIJ85x3LciuBtwqb0W7aOzfUwpZi?=
 =?us-ascii?Q?RswWZikl18gK45KhCjywCcKnxRiYRbElQ0keR5l0y5gaVWnTzjDR1KojghpJ?=
 =?us-ascii?Q?WsEDHmo35AGfzL/+tPEhLgcIviUhtiC8Xm+1TqYqNMOH+57lL83LZe7QoW0L?=
 =?us-ascii?Q?srcxCdohXgRA8iE5SMC6ZYqpVf0QWvviiXjxb4EMKBX/kH/2uZbuEG4VR1mx?=
 =?us-ascii?Q?qkzNSndNUPpngf/sMdwhNmXAyqX1llXxo6aDW08CW44AP8oBYgFQkx9gDI/V?=
 =?us-ascii?Q?RjwKF3RWcHIzaMHLnOEHg6eDnEidrBxbCkjVwbNr1qQ6agDVbRqWbPlThEj/?=
 =?us-ascii?Q?mELdtfOdECzsRACxXB5mT21nDOkeCLHt8x6dtGwV8Mnq375pajG44jJT4Xyi?=
 =?us-ascii?Q?EQbpt1OQDF6Dr7Ista/2QIPHDq4MuI42Vb1Xupwc30oMDK8GInyrXliUFY2r?=
 =?us-ascii?Q?T/ZjqVacrqih285Ua/yTpLKmrU1+Cmlbo88K7XcLQkP17Amymkios6V/DBcH?=
 =?us-ascii?Q?wk1+E6yywqJFKYeOG8m848q4d4Yimr+OruhdB5pMdPk1lUO56kBF+KgWpwTv?=
 =?us-ascii?Q?s+xt6XRjTI+0DRV5xbkQoqSxj9Dbw8DCCAkcyS1JjCz8bYDgnN9porfnI7Ku?=
 =?us-ascii?Q?jM2ZDTXLeZKoVYbGy+fH0g9BtsZxwRn71unFB50CS+jj0+WDQkubzvl6Tzgf?=
 =?us-ascii?Q?cDdli+5OWdPMIV3pBI9AHtBL6Tby7CwVBMef4bEANxzjcJMvFrPfyixOcCBO?=
 =?us-ascii?Q?tt6BxbqXhTKV1wvLDvYSKDT00EUMml6oniKB38GtnA2x8LiMqA8Bcx4GaNzY?=
 =?us-ascii?Q?pAJCsu5D5N8TwWZl95zHTUKhorMbwti0jACtcg2otcY0JxNf/e+l1kzJK0zn?=
 =?us-ascii?Q?alTR0qo2U5aqJlFklhKKhpw12DvMpaoIuuPAQhRkS5/Ry5slsTG9tCQZdQZ6?=
 =?us-ascii?Q?2hZU81amoLuuG6NujpR73e/MKn7Xrw3MsULKcCaOA125iZcugyY+w+RSYHrr?=
 =?us-ascii?Q?y71zCjKjSRxr01T69u5wgrPa7bfXGwQpIsUCL4jcEbYk/G0YieKZhf225Pu5?=
 =?us-ascii?Q?HDhjwABYdfaYeVC5+avvU+9hik2fO6Zsz5wpdtKWFxJo/o7z8TOkpMispLZ9?=
 =?us-ascii?Q?HxeqTAovDXWHbVYnG9xFgOZ91M+19UWbe/ZlxCFW8WCMfflMvYDD3jk9RmtI?=
 =?us-ascii?Q?XCpR4fapxrBmaxvRChyFuLixeRYinot6YuP2i39zDTq9Q99mK86sUXU1O4HZ?=
 =?us-ascii?Q?kZZMcd5qL3AG/1hkLlGqCqhdCi9mwxW7AcdHeYmfn2AdEe2YWPG1e/z+SAJA?=
 =?us-ascii?Q?SHfHVkN9LS8zvXuxYPHqmE8HvyHTNGIhJHzBrgGZUXkBhroszh4tdrd/AJYU?=
 =?us-ascii?Q?Ww=3D=3D?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 36011816-2b44-4517-9ca7-08dd78f2b3ad
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2025 12:16:35.0256
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e6PUQ7NIbUaXV5noOcyNJLWdMBtt4q5ZXopvihcpnAaBFJGY7QXF3JVw5gCbNNKhFsCSXnbrYyz89SRIUo+waHLOnHYa38Fv5a1Lis5o0ec=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR04MB11020
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Apr 2025 12:16:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65143

Hi,

On 4/11/25 2:08 PM, Thu=E1=BA=ADn Nguy=E1=BB=85n-Th=C3=A1i via lists.yoctop=
roject.org wrote:
> You don't often get email from nguyenthaithuanalg=3Dgmail.com@lists.yocto=
project.org. Learn why this is important<https://aka.ms/LearnAboutSenderIde=
ntification>
> Hi Gyorgy,
> Let me paraphrase your hints by the steps below:
> 1. I fork a new one from "master" as: https://github.com/thuanalg/poky

No, as

https://github.com/thuanalg/meta-openembedded

poky is not meta-openembedded, don't mix both.

Similarly, poky is not openembedded-core (often shortened to OE-Core).

> 2. Add my new recipe into "meta-openembedded"

So far so good. It'll need to be in one of the "sub"layers, whatever is=20
the most appropriate for your recipe. Cannot tell you what that would be.

You could also have your own layer in your own git repository as=20
Alexander just suggested in another mail.

> 3. Send mail to the Admin about my recipe. If that which email? Khem Raj =
raj.khem@gmail.com?<mailto:raj.khem@gmail.com>

Then you follow the instructions from the README inside the layer.

The same set of rules for mailing list contribution as for poky/oe-core=20
is likely to apply to this git repo, so follow=20
https://docs.yoctoproject.org/contributor-guide/submit-changes.html=20
(4.5.3 can be skipped).

You probably want to have a look at=20
https://docs.yoctoproject.org/contributor-guide/recipe-style-guide.html too=
.

Cheers,
Quentin

