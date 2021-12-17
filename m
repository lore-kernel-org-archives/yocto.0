Return-Path: <kweihmann@outlook.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95237C433F5
	for <webhook@archiver.kernel.org>; Fri, 17 Dec 2021 11:19:23 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (EUR05-AM6-obe.outbound.protection.outlook.com [40.92.91.14])
 by mx.groups.io with SMTP id smtpd.web10.4967.1639739953066890509
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Dec 2021 03:19:15 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@outlook.com
 header.s=selector1 header.b=WjrEVQDC;
 spf=pass (domain: outlook.com, ip: 40.92.91.14,
 mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QgEIe8rKuMIHXAWlNrFSJiI4mwDlv0kUZboZhfRJFptywav+wTZAxpbrEtT/EzcLx5tSqP96Q/H4B3bnjJcTq3ySBSA1OX7/uKeV52KQ4Ql3Rb76ZYis4X5aVlJ2WLHrLSQjOLzh6JRw2iDtSSck1Gfsl3A/8MMaekpQ7KbngZcNUaBSgXjMYwdLU0ylhRRlyBM8IhkS+whyG+w0Y14sd/IC2kuNM/AZOicGGufXwK70q7/c6OgceLesBGMEKQBIHVI/zdUUB4imM41/54abOq3uZSjxQErw/AWmRZ9WVWuJ3GfsoAbH4pgTkIpmr928Hx3fOO6XNcbIGuOSbL5nLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O/Z8oFm8KX3IjshcsPFWiuEYzMTa55poiCNfndZr3rU=;
 b=ID1NBrBLEmll6To3NRsLn7uOpFeVJSz28P7gRTnVuE52UhOPzTaXzO2ws5sTNCpgSj2C6E5tVlxs3UjMfnB2qbi28+FDriNjMD1Ol3jDo4OJD76w8g/kmBS56RcMyBvzf7+DLwIHYyqerY0AoITaqFj6fRqVuG3YRYz5Ivwo90m43pWAwUUTtfvw6F0gvq5UvMJVtpwmWCr9DkWFytZBqd0F1lo2kllmIvqXAat6P43cHDSMBozizbdEfPFbgvx1yuAIU5JtcEXwqjVUTMz2chEQpO3fLyFJdism4PrOvjOfoPzyWThM6xr3Cj7oIvwMNYfk91oLJh0AwVk3inMpLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O/Z8oFm8KX3IjshcsPFWiuEYzMTa55poiCNfndZr3rU=;
 b=WjrEVQDCZeuVs69zB7mJFYNgtVMiI2lIGSVpgi4X5XLwHB+aTxtj7wpTE/UwnEI0mTHIMnb7y87l/sBnzf27wJBWkkwHgYdfS0PPnYQlxbmHjxGr5Y9/EYm1gToE9d36swAnE3UTLqXR8m3pNaP9N+stEx8LE6iHAUhfQDLNDZiVPMLaah9xG6yHgDz6FlQwDcorYcWrpx9UFTUKQVG0WF8vbwZCi+KVZlOYJWl1Y4GlnPtG+ZSgkWS1X5d2bHAQPYdKYm9Q021OQqzZByjlnna/0PGsGHTNpgVM/y2hoovspuXIzb3WaEuSvL8HAPkvYzKydsZDIRGuM7G1wzsIjQ==
Received: from AM9PR09MB4642.eurprd09.prod.outlook.com (2603:10a6:20b:284::24)
 by AM0PR09MB2898.eurprd09.prod.outlook.com (2603:10a6:208:132::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4801.14; Fri, 17 Dec
 2021 11:19:10 +0000
Received: from AM9PR09MB4642.eurprd09.prod.outlook.com
 ([fe80::782f:9964:348b:b2fa]) by AM9PR09MB4642.eurprd09.prod.outlook.com
 ([fe80::782f:9964:348b:b2fa%9]) with mapi id 15.20.4801.016; Fri, 17 Dec 2021
 11:19:10 +0000
Subject: Re: [yocto] do_rootfs: Taskhash mismatch due to BUILDNAME containing
 automatic date
To: Jesper.Ahman@dasa.se, yocto@lists.yoctoproject.org
References: <RtNV.1639737312168313422.77T4@lists.yoctoproject.org>
From: Konrad Weihmann <kweihmann@outlook.com>
Message-ID: 
 <AM9PR09MB46428BD3406529CC249EF285A8789@AM9PR09MB4642.eurprd09.prod.outlook.com>
Date: Fri, 17 Dec 2021 12:19:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <RtNV.1639737312168313422.77T4@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-TMN: [0MyVHgciOZEODP0p1M+NVM315XSWnXD15u8jBBtHuOicK1kGY5oN5b+jvkWKAcgs]
X-ClientProxiedBy: FR2P281CA0034.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:14::21) To AM9PR09MB4642.eurprd09.prod.outlook.com
 (2603:10a6:20b:284::24)
X-Microsoft-Original-Message-ID: 
 <a0b3f4c4-2e8d-0b7d-c48a-2af9a34dff7f@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e617bae5-e89a-477d-e3f4-08d9c14f0c17
X-MS-TrafficTypeDiagnostic: AM0PR09MB2898:EE_
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	FxT6cYyZ4lT6zW2cdfCAi4YeW2SwY4OkqMHXr34gbuVFswpdMp0PelQHjHetkIBNGVhoKoWIy8gmwN0t1Op3Kf41MMaaIRxJe5UUhkNw91MU17Xe0eVFHuOh3HACRJuxY3ovPQ9U2Yn7T8n/YPIZRxblDa9cq2WVTdtXa5+Lm8QkaLP7nug8s2Z/dy8GDIIT6Mc+5R2mAtUQvezqIqLyLcwi/mSqmV/9kjhy+oZe546mgd6LzSrIVg2qn3ZScub8UpU+TT6WTZCtbMR/dCGtr06hB1mHqEmrKLRQyyfy+H3P00GytKUjSSC7O8t7e6jSlJwe1LcHCNmmlmzcVop/WmHlaHgd9q7lRgBCKI+rMTvRFKpDDoFQ7VFA8DbN60qxp0cdarsEIfKJlqtZMD+aFXh+QhylXeWYi4ITVVtp3Xd++9c4j/Ugo9c9Qm3qdniix8GUuVcrxVQsIw5hik++APefcACIKnYl0+WbcvRIZOtU9TaTIRsAfE8cwhQeTrx6ywnm2uxHMmjKKd2y9GvxAPRnJYtv3yOA2aIQRK/EHDiLRVwm+VsZVa3/QRW/t47eXF0bL1ZU8/p9VayG7G+qMoos2NlTj1Zkxoi+iUhjuas8FT4yi1fjN07J9MuuXKqFDdvTXss8LY+VYR2s+WDTpwwTPQTOkoubW84S/jAQ8QA=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?lNFxX3F3HbqMkT+MuPfLsDs3x+ZpMj117cv+HCCtoUZOnhf68QW48o4anFWO?=
 =?us-ascii?Q?IZRsHtVDRubwIo9aSBFt6BtHPEFGhzcvlQT1HQmdn6xXZCKtn9ObmyOS2xOV?=
 =?us-ascii?Q?Y2JHj8FdEctXkq95Bu/ckhdn2G1kHU5ns7bMqadjKujkOwz6IhZd4sqZu4zZ?=
 =?us-ascii?Q?iDT8J43NQDG+/jN9/919Qht2LmFupZjWEfZxSLA1zbO31wUELF5N9Sx9LQwz?=
 =?us-ascii?Q?bSJdVvXeMGtKFeiOicAJX6taSzPtLlJ7p+j9s7wioYKor9GMB5wRi/n46Hc5?=
 =?us-ascii?Q?pMKsQxN6n9k5ZzDSoMjKoPRiM9UGxK74z8I1+4KNWh//GyAdBKPCV6MaLbIh?=
 =?us-ascii?Q?1xfIEbQ7Q0ntJsINEE2g9VEqIm9T2TIfhOQKmvhpm10k5vK61aO9rrz7voMA?=
 =?us-ascii?Q?e8RjyncrNZ2KFq03r3KS3CPCrp/CqqvqRmtUmtJQs7DeO9jH0NTmnW/mJ8QV?=
 =?us-ascii?Q?8xBTIzhHLuTKuKOnlpHHtjDPe8x8L80rbXlXQXKB1ZujPjh90RtdGYfualF8?=
 =?us-ascii?Q?p3X6NtRjMbvDb1rb85oNVlKYgZ08ESFuGG072oYfD19tSaEOkr8igrdxS1uJ?=
 =?us-ascii?Q?pJIlpWnaCjOp22L81w5IU4jjuCKCyFuzViQVvvWNFgwiNxqGL937joRqn4ea?=
 =?us-ascii?Q?mwl6JCVBpMuIrFcTrWALvzbB+T6UYJ1xj7kmdqrgSu3mNoUJQCAK8qas5lo9?=
 =?us-ascii?Q?UMKqh1jRuLiq1qwhrdCYgFpVRd/y0zCJTKLVpYTqBmYQPVoBc2cJSosIPDNy?=
 =?us-ascii?Q?Q4wGqflsN6Bsq3jRYvtM//33KUpoC9IORABuU3auDMpN0K8/j4ytEDVLYuvn?=
 =?us-ascii?Q?yi+T67xDlVouwRFcPw/7r/Bw0RaGBGa8eg9WvBWqYGmaXEgKtl+ndGl2rZP+?=
 =?us-ascii?Q?0UqyUHUnLUMvkCsk+q7D+BFiNBotnohGH32dtnJ+MS7r0/nBPIoniAk83QeI?=
 =?us-ascii?Q?kQBP8D6ABU8imzAhq5GnpvopdPCUIXGjZOCGcGC53vY7GDO4F3W2MJcpVKxS?=
 =?us-ascii?Q?l8tC1U6GPO91kk1JjIBqlC1bSw=3D=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 e617bae5-e89a-477d-e3f4-08d9c14f0c17
X-MS-Exchange-CrossTenant-AuthSource: AM9PR09MB4642.eurprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Dec 2021 11:19:10.1448
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR09MB2898
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Dec 2021 11:19:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55609

Hi,

according to my understanding BUILDNAME should not be used like that=20
since f85f1ef24e59c0c058f96f0dfa82e50969fd580b in bitbake.

The variable should contain only references to other automatically=20
determined variables (default =3D ds.setVar("BUILDNAME", "${DATE}${TIME}")

Judging from that if you would set 'BUILDNAME =3D=20
"my_Image_0.0.1_${DATE}"' the warning likely will go away.

Please keep in mind that these inline functions (esp in early stages of=20
the parsing process, like machine.conf) are not expanded.
Which explains the seen behavior.

On 17.12.21 11:35, Jesper.Ahman@dasa.se wrote:
> Hello,
>=20
> In my machine config, I have set buildname using:
> BUILDNAME =3D "my_Image_0.0.1_${@time.strftime('%Y%m%d',time.gmtime())}"
> In order to get a timestamp (date) in each build name.
>=20
> Although, this causes some error messages when building the rootfs:
> /ERROR: When reparsing=20
> /home/buildserver/fsl/sources/meta-freescale-distro/recipes-fsl/images/fs=
l-image-multimedia-full.bb:do_rootfs,=20
> the basehash value changed from=20
> 6b1226a9fe10f08dd4f2fe634944a53cf03f7699a8553a9cc346c097027b24e to=20
> cbd5de79b73a1bc4dd02024bafd1e5c29d4baa8f43617c37eb8f5fc57ed738ed. The=20
> metadata is not deterministic and this needs to be fixed./
> /ERROR: The following commands may help:/
> /ERROR: $ bitbake fsl-image-multimedia-full -cdo_rootfs -Snone/
> /ERROR: Then:/
> /ERROR: $ bitbake fsl-image-multimedia-full -cdo_rootfs -Sprintdiff/
>=20
> I ran the suggested commands and found the following:
> /Task fsl-image-multimedia-full:do_rootfs couldn't be used from the=20
> cache because:/
> /=C2=A0 We need hash=20
> 066153e1a8d8ad0e8025f6409dbac96c277e6300541356b077f1823f195ef19c,=20
> closest matching task was=20
> 040147cd35d17688668c7435633fd8ff25d8cf7425a93d35efdd7799a47bdc85/
> /=C2=A0 basehash changed from=20
> cbd5de79b73a1bc4dd02024bafd1e5c29d4baa8f43617c37eb8f5fc57ed738ed to=20
> 61b1226a9fe10f08dd4f2fe634944a53cf03f7699a8553a9cc346c097027b24e/
> /=C2=A0 Variable BUILDNAME value changed from 'my_Image_0.0.1_20211214' t=
o=20
> 'my_Image_0.0.1_${@time.strftime('%Y%m%d',time.gmtime())}'
> /
> So when /${@time.strftime('%Y%m%d',time.gmtime())}' /is converted to the=
=20
> actual date, it messes with Yocto.
> The build succeeds anyway, but it's quite annoying having a load of=20
> error messages on each build.
>=20
> How can these errors be avoided?
>=20
> I found in the Yocto FAQ:
> /This is often something time-related e.g. a timestamp which is=20
> calculated every time an expression is expanded. The solution is to=20
> ensure the value is calculated once per build and then the expression=20
> expands to the same value for the duration of the build.
>=20
> /Which sounds somewhat right, but the issue here is not that the value=20
> is changed due to recalculation (the date rarely changes during a build)=
=20
> but the expansion of the expression itself (from Pyhton code into its=20
> result).
>=20
> Running Yocto Dunfell.
>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55608): https://lists.yoctoproject.org/g/yocto/messag=
e/55608
> Mute This Topic: https://lists.yoctoproject.org/mt/87786852/3647476
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [kweihmann@outl=
ook.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20

