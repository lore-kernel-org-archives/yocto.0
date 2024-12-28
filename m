Return-Path: <fran.millocs@live.com.ar>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BB9DE77191
	for <webhook@archiver.kernel.org>; Sat, 28 Dec 2024 18:38:19 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (NAM11-CO1-obe.outbound.protection.outlook.com [40.92.18.26])
 by mx.groups.io with SMTP id smtpd.web11.33371.1735411095575742057
 for <yocto@lists.yoctoproject.org>;
 Sat, 28 Dec 2024 10:38:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@LIVE.COM.AR header.s=selector1 header.b=D8jUDiat;
 spf=pass (domain: live.com.ar, ip: 40.92.18.26, mailfrom: fran.millocs@live.com.ar)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DZnQFy3CSeMj6XXT8QZj8XlYEtjrJ2Mrtv+Qkzg9cMA5p+XjRs52QxNpqxwFI1cL535Rmt6UUOcL485DyGTG3dCN6rTkqBZxG9x5CDzQTp79vl260oT4WNtPMClB7rdE3JZbsc9W3m/tYGhnMtxHDpzKE50yDF5SoAcpCzFMgwSSuOG+yHncz7HJurbXhB5zIpIfTXXgEn2N2it4D+rJxUaykgDi+dsSblblwSlxj7JnLSNwYVl1hDZqSPX7dNH8oPZQh1w0nPPx41ljWIobMXwdCl5kZfHH30UY05hdv+TSWBwQgSxskImlPLLp1URiUsDBZTXRK8IzwxrBKSCNsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jlhjfuxO7qW4IG9Gc5ngbrZ1MbMLEV2uCm+bkLnWm/4=;
 b=yJRzCbUdiFnZRB/+bEb57xmsmBWrx2f5v6oQ/m5TjIUyWvt3gGvU119GN3YCFGnVNlrjWJLII8vK64tS8tmI+aTAZ2Ciab8mNn81YedcKKKY2Xb9UaNzY79AIN38zyrkzrUvYWNbGqnGpTny02w8hUkV4kBadgSxYhTQdw5WhkjG2S2SgqJjcjOCdMck7WeB+SNabFtXsSJBx7rGzMuX9NVJSB+jPC4wDTgmEDPyLbYwfIMf0ti4bCtkMLiEveXZaCxmfcfZOD9jXSuB/OB/Bw9znW0z7RkqKVVToFwNMvhCdj2o636kzUpd3E3RleVN2olyzqjfErvfZyV9TGYPug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=LIVE.COM.AR;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jlhjfuxO7qW4IG9Gc5ngbrZ1MbMLEV2uCm+bkLnWm/4=;
 b=D8jUDiatVUg6bYe+mqaHu9ig4LFOgdnWpzL4nw2MN4a7mcnP0Yb5Gq2zZdMZKVHvsss02UPIjRiwYHbFIBiU5R32D1VpUpbT7ya/cFqCQhU+NGkz++nU0qj5yZHRbL9jrBxdiobc1vcXiNgeSaoEQM+C1USpugCthb5JSwNscR6RKg05WDmfmSTKmxUaHHbRwA+lnwgrz0j+RciE89h9CWneBitECDFa+qMts0FTvh9gPRJCWRSEWHXZ3mBNFmbTuT42h/h4YsiOS+/anoy79r8SB1j/vMaddOg/4X0sI18STf+cdtSOITZFvcwrQlPmQp3vI+flsCBIUGb+67oxJg==
Received: from PH7P222MB1231.NAMP222.PROD.OUTLOOK.COM (2603:10b6:510:316::9)
 by PH7P222MB0982.NAMP222.PROD.OUTLOOK.COM (2603:10b6:510:2fa::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8293.15; Sat, 28 Dec
 2024 18:38:13 +0000
Received: from PH7P222MB1231.NAMP222.PROD.OUTLOOK.COM
 ([fe80::7a0e:44d:cc74:141c]) by PH7P222MB1231.NAMP222.PROD.OUTLOOK.COM
 ([fe80::7a0e:44d:cc74:141c%4]) with mapi id 15.20.8293.000; Sat, 28 Dec 2024
 18:38:13 +0000
From: franco ariel <fran.millocs@live.com.ar>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: [HELP] Building custom kernel with different GCC version
Thread-Topic: [HELP] Building custom kernel with different GCC version
Thread-Index: AQHbWVeX6ry6+wX5Z02Xi1QqIJBqvg==
Date: Sat, 28 Dec 2024 18:38:13 +0000
Message-ID: 
 <PH7P222MB1231FED1441DBB6B8B869A22D00F2@PH7P222MB1231.NAMP222.PROD.OUTLOOK.COM>
Accept-Language: es-AR, en-US
Content-Language: es-AR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7P222MB1231:EE_|PH7P222MB0982:EE_
x-ms-office365-filtering-correlation-id: ceb64439-b351-4ff9-8053-08dd276ec934
x-microsoft-antispam: 
 BCL:0;ARA:14566002|15080799006|15030799003|8062599003|8060799006|19110799003|461199028|7092599003|3412199025|440099028|102099032;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?gn5LShBXwnsSdFNODsLLPGKPuSCuKZogPyxzPT/bVRImlzppGAhtF8v8ol?=
 =?iso-8859-1?Q?/tdVKFwvko+YzAHkkJd1PIWcRLnt9NjB+fMYCRFUUxWNSZNNNyCN0KRhUr?=
 =?iso-8859-1?Q?84ZZ/XXx6XZxBq8dHVXx3/FFQNITPEanPWUexpAif+sehlo7i0qYNzvfqA?=
 =?iso-8859-1?Q?D8C73jEFQ4x3FWi1qEADR5DYq6YjL0mqtLR8VcS+ZPAd4ZNjzOzNkKwTWG?=
 =?iso-8859-1?Q?rFBssvM6Qkt+g2vY1RodBeR3tQJ6jBbunInSAT3XXA6Er/ObMk0NyXbx0b?=
 =?iso-8859-1?Q?PuI0A124extDUM1gFKLhwzvxPoPQZhxoA0tLjqS9rVjasIVuOfvtq+gaA+?=
 =?iso-8859-1?Q?0av3Qi5HHHxkB05+H+b07i98tNMOfP8qR+iY315+wqb7ovAnq3t7BfrO3k?=
 =?iso-8859-1?Q?KbYQmktJ1e8Q7YKnSACqh2FMcnZMtOHHDGGFddrx5+tpPnMo6KCqA2eBi2?=
 =?iso-8859-1?Q?KbWT/xP2EFunhStpteF9DGDLq4eetGqI09Xd+dcxsGMTwMXIni6cJuTC3G?=
 =?iso-8859-1?Q?bKe+G3wFPGlVvvH26HKYlqp8EyEpuQnnf6I8Igl20CIlZTmL4MFhO1jo7U?=
 =?iso-8859-1?Q?XgibpdgTbz533zjHCtfFvvmMVNP8uDhNfxvNRJ9i5Fr+bCkrZzF3DiXAqX?=
 =?iso-8859-1?Q?NentRkSa2aZ10zoQa8FhYwaH9OrVPKRzcvSeKSArYssu65AFHEBzG1JbhN?=
 =?iso-8859-1?Q?cNN8PdYvMfRo3Scn0UX9hkRu712CEVcU7ckZ1c6RoNKN4VI9fP3yUe0Qja?=
 =?iso-8859-1?Q?457EcbwggphyvKbhszykcjUKhh4a45rOqnsjY7Gibe3aPY8TW+UyQ8Y8hC?=
 =?iso-8859-1?Q?QZdEKmoglFOLtYr2HpGDxvX5JJYgAEZsowTZLVm74VG34oMiuNcjrUvnv+?=
 =?iso-8859-1?Q?gnPP2/+j6XePDM/MAs7APJuwwsdHe4stj2/c62RWBWsuhsU4Ono03WRuc6?=
 =?iso-8859-1?Q?XwGDIf5MXua+ER+xh6rx0h9WzZKNPKTWDC0Hzw9nV8MrfZJiWUJnkZZ6vJ?=
 =?iso-8859-1?Q?GJK/J8y/Ln0R1WGeBhU4dgl17ux0hfCPhiUHLkZiHV20Yc1z/wqfwGPIGz?=
 =?iso-8859-1?Q?fIBZzJIPl0BLnHwaVirR3YZ196DkDt27Om9aSr7VYTSOuXHohaUaMeTAa5?=
 =?iso-8859-1?Q?yudbYD61fC2WOL4Nsg6mJIaAJe83Q=3D?=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?Hmp3hMv7ePFaoLjwACZQZzRUQj4ixeHbnne6fxtatzp1xRiSBCwKKAdrVQ?=
 =?iso-8859-1?Q?J7gSZhmluF0xnQzktzCwoE7OVKxCfQk1B2b9Q5PC8tCElzqkNXlz93+hDv?=
 =?iso-8859-1?Q?errbYdt+t3o0DwOP18/ziTirtmaEvRuexWr2VMZnVQmoXIJGKYhM+7mC7c?=
 =?iso-8859-1?Q?PFfiydnN64Oj+QppYW2dVsxkdATm7uCbfMXOW6wG2QJfRRfiCoSsPoWjfB?=
 =?iso-8859-1?Q?xubAw4QGIxBLDKKaPZ0i740OxboUHgIDF0ccFVFpQ8126emV72xPzjF4tr?=
 =?iso-8859-1?Q?C3v4wPyEkIJcl7DrAe1VOgxXQws8J37VwNa7x3H2t7svrdSxo0z5SdhZ67?=
 =?iso-8859-1?Q?SiI+rpMu370vX7n+FsAWkIhTZWFdfvrp/iy39iyRcLrnI6s4RavBgifiOY?=
 =?iso-8859-1?Q?kmLS67gY8J2EXANQHC7/LdJLdArr91r0iJFSkyD6JBM0pMLe4XXP++QBnB?=
 =?iso-8859-1?Q?kVgwhexCWJ0EIn19jv6P6BgOfY/wSE+1BAeGduY2IWwgK2fF98YHfSDu7c?=
 =?iso-8859-1?Q?IYpUmR7wOQFGXMuI/9WusmfwYc4T5ceZGSTwURaEMgGd30+cty84Oj2U1A?=
 =?iso-8859-1?Q?V8EZIrmL1fWJNQoK6srB2nAYXoZnmmPx5O7Yk/l+/qUO8Lr7tF9l0VNVfh?=
 =?iso-8859-1?Q?CPk9EYaMDW9GPA9qQ54LtKv71XzjSJa8ALZoRKcF0qYEHiXarv69/ZvPO4?=
 =?iso-8859-1?Q?dwcnHZBxj7dwjBsaxQqfsRSRt1DkG+sVZbr4LJ2cY+qGc+PMvJNyU6AkLd?=
 =?iso-8859-1?Q?aHeBpLyZFkcWlX56hzQJ0rxEiti+lgAODnIfXMlQa89DQE2GkZcPxnWGtS?=
 =?iso-8859-1?Q?TEjGaViUeBqMg10IxlLSP8k0m6zdS9ZG1aEf8Qhhy6yCDy4CGkWr+IfQXu?=
 =?iso-8859-1?Q?dOdHVIJTEFbfrHFdIJ4h/Z2nCuOMP9f8f0aNjSvpB1M3SOnzyT7O7AeanW?=
 =?iso-8859-1?Q?7aLbhQLXAmNjF0+Z1d9YVuUayBeoTCFCQ+/wsmDN/5JtjTGzv89lJiQIjn?=
 =?iso-8859-1?Q?2Hi1TGt56pCqcnDjXjfae20N3/kCMJ4ARzBr/2hFhYQ0UfSlJeN+Bd51FW?=
 =?iso-8859-1?Q?/jR9DY3Zf4kiNjyqB25f52BRH0jFHtBPl7D8Wx1kGpzWDy16Q1kBBkVLTN?=
 =?iso-8859-1?Q?Q/+YdogUcOK1uu2B6mCblBd2RZP9pR6i6TT9pBmCSwLMPa0JOz9hUIuyQy?=
 =?iso-8859-1?Q?uq6m00N6fNSZ3yqaukfuElCpPpuaNRxKtorA1M19dMqRopCkmW5Kr4pYzd?=
 =?iso-8859-1?Q?eaFQwQVnuip0CHNwlCQ9t/RmVvtnuw7H5pei6+NQY=3D?=
Content-Type: multipart/alternative;
	boundary="_000_PH7P222MB1231FED1441DBB6B8B869A22D00F2PH7P222MB1231NAMP_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-f13ea.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7P222MB1231.NAMP222.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: ceb64439-b351-4ff9-8053-08dd276ec934
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Dec 2024 18:38:13.1746
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7P222MB0982
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 28 Dec 2024 18:38:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64483

--_000_PH7P222MB1231FED1441DBB6B8B869A22D00F2PH7P222MB1231NAMP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello to everyone!
I am currently working on a custom project using the meta-meson layer for t=
he scarthgap platform. The project requires building a custom Linux kernel =
that explicitly depends on GCC 12.x. However, the meta-meson layer (and the=
 associated Yocto environment) defaults to GCC 13.x for both the toolchain =
and the kernel build.
I would like to configure the build system to use GCC 12.x exclusively for =
building the kernel, while keeping GCC 13.x for all other components in the=
 environment. Is there any way to do this?

Thank you
Frank.


--_000_PH7P222MB1231FED1441DBB6B8B869A22D00F2PH7P222MB1231NAMP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
background-color: rgb(255, 255, 255); margin: 1em 0px; font-family: Calibri=
, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Hello to everyone!</div>
<div style=3D"text-align: left; text-indent: 0px; background-color: rgb(255=
, 255, 255); margin: 1em 0px; font-family: Calibri, Helvetica, sans-serif; =
font-size: 12pt; color: rgb(0, 0, 0);">
I am currently working on a custom project using the <b>meta-meson</b>&nbsp=
;layer for the
<b>scarthgap</b>&nbsp;platform. The project requires building a <b>custom L=
inux kernel</b>&nbsp;that explicitly depends on GCC 12.x. However, the meta=
-meson layer (and the associated Yocto environment) defaults to GCC 13.x fo=
r both the toolchain and the kernel build.</div>
<div style=3D"text-align: left; text-indent: 0px; background-color: rgb(255=
, 255, 255); margin: 1em 0px; font-family: Calibri, Helvetica, sans-serif; =
font-size: 12pt; color: rgb(0, 0, 0);">
I would like to configure the build system to use GCC 12.x exclusively for =
building the kernel, while keeping GCC 13.x for all other components in the=
 environment. Is there any way to do this?</div>
<div style=3D"text-align: left; text-indent: 0px; background-color: rgb(255=
, 255, 255); margin: 1em 0px; font-family: Calibri, Helvetica, sans-serif; =
font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"text-align: left; text-indent: 0px; background-color: rgb(255=
, 255, 255); margin: 1em 0px; font-family: Calibri, Helvetica, sans-serif; =
font-size: 12pt; color: rgb(0, 0, 0);">
Thank you</div>
<div style=3D"text-align: left; text-indent: 0px; background-color: rgb(255=
, 255, 255); margin: 1em 0px; font-family: Calibri, Helvetica, sans-serif; =
font-size: 12pt; color: rgb(0, 0, 0);">
Frank.</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
</body>
</html>

--_000_PH7P222MB1231FED1441DBB6B8B869A22D00F2PH7P222MB1231NAMP_--

