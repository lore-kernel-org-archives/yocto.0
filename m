Return-Path: <sazzalin@dares.tech>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23E5BC433EF
	for <webhook@archiver.kernel.org>; Fri, 29 Oct 2021 08:22:05 +0000 (UTC)
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.115])
 by mx.groups.io with SMTP id smtpd.web11.2691.1635495723029526564
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Oct 2021 01:22:03 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify"
 header.i=@b66557844.onmicrosoft.com
 header.s=selector1-b66557844-onmicrosoft-com header.b=T6jVHBUe;
 spf=pass (domain: dares.tech, ip: 40.107.7.115,
 mailfrom: sazzalin@dares.tech)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tyz0+EQf514McWJ2frNXrYuXGgbQUBfaUgPeD4PKULt5bzAJ7vsFJ4SHbYq2qYV7iq0s9cN9KnjQ6yWqYInoDv/cAIcL1fUAVXvGZdK32yy7kV9aJaR7YZhM3uCCu4ug6h7Tn2C5hX/bsGC2d7AvF+2FRwL7O6aWoDi+Xo6lannnJsWErmkOb+ODH/GR6JeDAyo/cnPAUyQnFDA0oLaW53NCuBfLlaZjE6S19NgyV8WLv+5LLsmqHREYSo/B7U0/RGZ+Xi+DLbpPkHOXY8hZVrHnYYcHyiaobiYIAWlPKaok2xZxix6KTwy7QL+iOYQBe64hfTczk1fFEog0Kgkvfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2Xu12k5I/5H/7+kWKMBalmBcU+iqm2dz9g0jhyUL6uQ=;
 b=kd20dATh1JX/GQOd3nd3JEh3DYOjSr8C/UfavmfKrdwCz2fdJJ/tzVvzxTSGbmql7tlC9+mlKQUr5W53P8NV/Ygt2ARmeZU6PV14DpFG4u1rqknGl3IIPadtt/468BMERlRzN22WB8yuFHlfysgmpTdQdnYwMOhZ7P5ZdUR+uOnVWtS8PBY0FCl3apTgyhqcG2aCeZ/Y54lyLLPJldfZUXTPl/mioG2qWUYATcIOYsOIw1FVsQNLx8mJKNCHt9gSUFn1ROoET4vhgLFDkt9Pe8RxOhLMC9g9Xj7aOBiV8Shr3sWdyQGXPbMrIbg5AkGwHMv8dElG35/ATjhIgvqbrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dares.tech; dmarc=pass action=none header.from=dares.tech;
 dkim=pass header.d=dares.tech; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=B66557844.onmicrosoft.com; s=selector1-B66557844-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2Xu12k5I/5H/7+kWKMBalmBcU+iqm2dz9g0jhyUL6uQ=;
 b=T6jVHBUejSAzERL6gWSOFLkVCsiJX6MRq8bHmVHkhwYckIP84q0rj3++JrKAyfAVcm8Jk0/FO/j0HQUAdgjYnKxrH/ax6L0pShqLmdvWI3edo86m5Q/kn5VgsDJqznUCTHH/QKQVdCXpXei71MRSdQq1UOQqe2NqQv3ZEtgxrVc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dares.tech;
Received: from AM0P194MB0452.EURP194.PROD.OUTLOOK.COM (2603:10a6:208:5a::15)
 by AM9P194MB1249.EURP194.PROD.OUTLOOK.COM (2603:10a6:20b:3a9::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.13; Fri, 29 Oct
 2021 08:21:59 +0000
Received: from AM0P194MB0452.EURP194.PROD.OUTLOOK.COM
 ([fe80::1db9:f4ed:3c2f:bb2]) by AM0P194MB0452.EURP194.PROD.OUTLOOK.COM
 ([fe80::1db9:f4ed:3c2f:bb2%6]) with mapi id 15.20.4649.015; Fri, 29 Oct 2021
 08:21:59 +0000
To: yocto@lists.yoctoproject.org
From: Simone Azzalin <sazzalin@dares.tech>
Subject: How to set IMAGE_ROOTFS_SIZE ?
Message-ID: <a5daf1cd-7e24-c92e-04b2-18d48bac112f@dares.tech>
Date: Fri, 29 Oct 2021 10:21:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-ClientProxiedBy: LNXP265CA0013.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:5e::25) To AM0P194MB0452.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:208:5a::15)
MIME-Version: 1.0
Received: from [192.168.8.101] (77.208.45.242) by
 LNXP265CA0013.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:5e::25) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15 via Frontend
 Transport; Fri, 29 Oct 2021 08:21:59 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8e8d586a-1e50-4e0e-6f3d-08d99ab52d95
X-MS-TrafficTypeDiagnostic: AM9P194MB1249:
X-Microsoft-Antispam-PRVS: 
	<AM9P194MB12496022F7B00EA40C941F7EB7879@AM9P194MB1249.EURP194.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	OpZFpwsIwCe4nrO8UflWTE3WpKJYC22Vj6LCsjF97dk6Jf3gfKxKgF6ZMQRTPIYafQ8LbO4ooRxYOsHiLaobL1gawHZtAjWWm1tWSI6QM8pZgQWDp0P3P+hNcHFOqvGlT3p+BRivWBc8kArwIXHqT28tGlZXofqy36OWhw1rySpoF2H6SL837V9SmduCA1K6qz45NsAwsnbiamdqophQKwOz8LihblktEYZezaduDkU4HRhRiOXHsZBBKmiNLSNNjM6lzcs+vlPtzWHDqmFUbApuRTX10QE7wRDm51IB8bcCsnlQxL0aKUeKtbHTLKe5BPAU+tVzc7TMyKNGk9E9duBDHLClbLoVdiIuroF3CzHBYJu+HA7vQ4ua+r5Qxe9S5mpeuoN2NsuxLyh3PS0c5Opy2i1RYCxRJTo4z6PSOpbZ1RO1bcvYah3kXoM7mcanDQ+2UR6NyQfbw5ef3z8uALTG8K0jc98BKnfqVfPrkswyH1h0cYc8aLR5xUYhVwIZEjlZ0BXF7jGnTNLg/97K4VrNB6rcwPZ5HyewzS/J7iA00XCICixmsRWYT65yR4zZwaoWJUMU9rTWKubwwyFoXtEdupGZY3f8vp2YlWnApwPcQs08vMJ4aRtv+qAm5tR7VgwLuuA2jMh7Cm7Gd8Y915dXhKbuJeySUNOiXpREocvKUUES1kj9ymUQg0S1S4+v4Jv/LbI08/RQN8QlWwBJAlvcqtf5JUAE7vmMgjkexncV0nHa6oSrj4ETdeMtuRsLX9znTExHIAHPlugrmNwUeA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0P194MB0452.EURP194.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(136003)(346002)(376002)(366004)(396003)(39830400003)(86362001)(52116002)(956004)(186003)(66476007)(4744005)(66556008)(66946007)(316002)(2616005)(31686004)(31696002)(6916009)(5660300002)(38350700002)(26005)(16576012)(508600001)(6486002)(2906002)(36756003)(38100700002)(8936002)(8676002)(43740500002)(45980500001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?pPMaljTk3yqH+6K9DsGeYnOd7FTO4fT1OVMcguK6tN7r0ONwPF12bBG7VsFZ?=
 =?us-ascii?Q?DI+8nsUvyu7Mfk1pBLVHc6J2zsgJVWm94Fd4T+GStclfAFdksLI+HT6B6S2P?=
 =?us-ascii?Q?M+4nW+72yCoPYZSH3EYzAjk7ZphyLZMnjyM4N4bfYjhvd6QLD2pe1zHZDiBQ?=
 =?us-ascii?Q?flU3DTQ2L/Y9gNcY0fF43QbEv+6k4KoYlZPFrX2jmoZZkDo6anAXsq+qsl0D?=
 =?us-ascii?Q?s5RRYfk6hlwORdC8XhTqzhkYxjei2GWVTNx1NSFb5n5ayVce6YEuDACHGy6W?=
 =?us-ascii?Q?eU95ETJuossUQkXYryKJryvWKnvCxHwkXIq+ayHD1pBHobbAWWP8SSvNOqYO?=
 =?us-ascii?Q?aprFa7O4wK4o1+jAU02C3LLp3+a8WnOdYwh2a+v5biz8LqAzuKUY0a1OXOY1?=
 =?us-ascii?Q?LOCIRY9o4rT/dKzWz+31sZ1o0rM9W0vOsG8iqViBUOV0ldAnZLgeHdpaehl0?=
 =?us-ascii?Q?dwTEqrnp4BtyIkXgvfflkcvDiuLpVvcv5gZykl7DfuJSoAb4EktOChTv65bz?=
 =?us-ascii?Q?DhHeNEo/gHLTgc0p6Ii4uh289v6qv6XTqawn4sGzuvGw2btqBxLFpULW3OGK?=
 =?us-ascii?Q?Tscn5fWj5OENonZkpo74CWUGF5uIJYX6IkzWOwVWz7kBw4HfeegLNx5zasTx?=
 =?us-ascii?Q?rVbU1UPEf8ECYr0P8R3B77xY2rZnOSlOwfsVphIrgg20Jn5nf49U2Z0d53kq?=
 =?us-ascii?Q?XpFXzVB3AicZtZpGFFD/KO2FUslYnt8ks7a4XmIOlAW8fleI2yEU9cxpBlQV?=
 =?us-ascii?Q?a5Sbo6qcJ6JJlnycyubyUVc8FPj0LCAkEVBVoVwxBupMaLrUib8PgKZfMJRH?=
 =?us-ascii?Q?95o55LcgJypPogBGm1RH4jY6ZwGa30ue66Rdg3CyuTo8sd9Q9YRzt+02pnl8?=
 =?us-ascii?Q?l75oLmQPkbxTgBMzExCG4qSWHgBMpNvWQ2WpmQx0oe/PZx+50yQR19YLQ+m/?=
 =?us-ascii?Q?wAIohG5aGb+7uHhnzmDRR2X18bYupO2FfCoKix5EqmgmhEfXxPJdKQdhHSZx?=
 =?us-ascii?Q?NCMHSm3gdsq62DwyBI3ANxfIvsT+StPEsF9todkf7+RsskbjKeqZN2THt97X?=
 =?us-ascii?Q?SoAJLCOwOzw/tKsNZZeqDFsagsO5dMW0U2FXocmm+cD4Fyn/GwceRCAe1tAP?=
 =?us-ascii?Q?WJZcav60p7hwSjtu5cs448bxRyLvQTqMsbpvWB7U1z8q7DtdkNQjSC5Mr0JI?=
 =?us-ascii?Q?9jt2hbtUxR6LhRxAjve2opFS9eiocp6yY8e68vVWeldKazv/Ez/6wHGllm+P?=
 =?us-ascii?Q?uUB1GJUbIOjy5X69NH8oZOx1gSGfUMc7mPRBw5T4EMaIHamfHYU+A55EpTN8?=
 =?us-ascii?Q?IraSvR1E8n3gbxtzbrE0QJlOF/vweG0tbd4ZVyX/+xn80Odulyu9QW8NRjIe?=
 =?us-ascii?Q?vABWr+ZCBvip28QEC6fCNwgRHkrRGyVbAvfeAi83k9pUULgSCgyz/SRUZ28L?=
 =?us-ascii?Q?0uceHAtaJ7Doii9bCddYfzjwlIJgm2NF7KunW4KK40dm6paUiFa86+E1o5WG?=
 =?us-ascii?Q?J6mWRlVlfF7FCn8WxodNjhT/6VqP665F52gp3HpK4YdMXVyOvF88xhNEHJCc?=
 =?us-ascii?Q?wc2jPUaPGyBFyHc3L5UKrtxH+ERJRzBOq6l8KWWEaEh/ULw1TI300Q1MQvCT?=
 =?us-ascii?Q?pdcx0IVDu3v9WstUo7fmiWc=3D?=
X-OriginatorOrg: dares.tech
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 8e8d586a-1e50-4e0e-6f3d-08d99ab52d95
X-MS-Exchange-CrossTenant-AuthSource: AM0P194MB0452.EURP194.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2021 08:21:59.5641
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 7f455517-e1d1-41dc-8637-685b5d7585e3
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 g3YnM78fto5ZGP03615as8EqM58M/q2mDRWG6QeZK9gRaHiH5jMgRZwFlHsjtn+KCOdFSWXMb9s/OmENpZM9Nw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9P194MB1249
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Oct 2021 08:22:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55183

Hello,

I am trying to set a default size for the rootfs.jffs2 generated by Yocto.
For this purpose, if I am not wrong, this can be done using the=20
IMAGE_ROOTFS_SIZE option.

But where=C2=A0 I have to configure this option ? So, in which configuratio=
n=20
file ?
It seems that this detail has not been specified in the reference manual.

Thanks,
Simon


