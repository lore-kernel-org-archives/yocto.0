Received: from EUR02-VE1-obe.outbound.protection.outlook.com (EUR02-VE1-obe.outbound.protection.outlook.com [40.92.69.43])
 by mx.groups.io with SMTP id smtpd.web12.230.1586800746013190315
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Apr 2020 10:59:06 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@outlook.com header.s=selector1 header.b=E48zULQD;
 spf=pass (domain: outlook.com, ip: 40.92.69.43, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gTKcFkSBKA6aqM9kCIKbjI1wpymVG7CsRZU35X55E1QbA+mfX4EzGS+oXrccgakZ+KzlTaDqE2/IZY0oHXLtX58wbkymgu/9w+G8M5liNLjp192c26/xMYodVWQ4GJ/Knf4Xbx2Q8Zz+q8eW57Odm2yNnCytzGNfQVSbwKg7lIzJQkx9NV57kWbWnXLNuL6CNXt50Qe/0GtCgEGznaHeOUtFZjpkIuGdal8JjkvJARtsRYx45cqGHeuaBnS34jfMESL8l9mgW/JHG39DYzy2c6KWPsxqjmf1Mpva5oBjh4X7YhKozDcHOlbYL986g+fFe9rCDgR7eo43nasx8TSs/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5+KAscF5zaqEjlYIxSfrueCURL8NbhwWhuk7NyzV7ns=;
 b=eGJ88YBHeFjjtDLNl3vp+Lmo5H57TMQ+oSG+hh9v1lWp0gqTogLnp0eeKw37rIpugvHqKqbTb2r1och276DAGIAiklV9KLIsfjOegukKnmEvyNc6UNUUA+bdMrq6YauHoMgDLJh94PecBBqfMDZYKd2w12YhLXD//04LG0avaJS6epdThQxtEmybr7MBddKlgZuMwLEIbuxW8cxc6k7I8Pof3cmMgBZnCS5Aiji3DbuxW2FbPwqlehZiyjK3ISW1DA1y5VQHc7SypKn8j/J+y9NLgxY6Z8M71sY4O6Hew2Q/8jV+vs9lWY3AC+zhXaVFUpL5An2Hxq180izWwfnqdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=outlook.com; dmarc=pass action=none header.from=outlook.com;
 dkim=pass header.d=outlook.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5+KAscF5zaqEjlYIxSfrueCURL8NbhwWhuk7NyzV7ns=;
 b=E48zULQD6zI9ZxCFlmEYUf1XMUs4xaeMkPJUGo1rAwv1sJJcUuFVxA1UgNl4ZXM2cCGnfc3arV8tI3OgrkbOJWJjNv1hS1FPQus9CaFdZsQz/+DE9keFdfCbMkT06tiSpVNV3xiHHj7tqxodMy+Ns3ugbndiIDyhb44D4/neULJ7Bh2QPfx7LCjhmkEktJXNzuY5+1TXbA38msctFgy5D7mIl6FTTgvgBte4iXJSxGwf0SF0h2TVYwkB7AtJAtz+31u/paXxzmgdZlyJEqVQ3L8nyxjiA9AYBkcxy7NOcSm4UeB9QUgN5txA1qjm9IabjIV5xHPbLz6ctTita7ynEA==
Received: from AM5EUR02FT024.eop-EUR02.prod.protection.outlook.com
 (2a01:111:e400:7e1c::49) by
 AM5EUR02HT198.eop-EUR02.prod.protection.outlook.com (2a01:111:e400:7e1c::339)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15; Mon, 13 Apr
 2020 17:59:03 +0000
Received: from VI1PR05MB4286.eurprd05.prod.outlook.com
 (2a01:111:e400:7e1c::4d) by AM5EUR02FT024.mail.protection.outlook.com
 (2a01:111:e400:7e1c::126) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15 via Frontend
 Transport; Mon, 13 Apr 2020 17:59:03 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:247A0CB56AC52B23FBC62140A0B4F8EEBDCC61B0221E34704F6493120F326CAE;UpperCasedChecksum:6D6108D2DC44F1DB10FF87DE5B6EF741175B98482C8CAD6C53DE2C998592FDF5;SizeAsReceived:9022;Count:49
Received: from VI1PR05MB4286.eurprd05.prod.outlook.com
 ([fe80::e1b1:4a5f:7dd7:4131]) by VI1PR05MB4286.eurprd05.prod.outlook.com
 ([fe80::e1b1:4a5f:7dd7:4131%4]) with mapi id 15.20.2900.028; Mon, 13 Apr 2020
 17:59:03 +0000
Subject: Re: [yocto] Files get sporadically lost for native packages
To: Randy MacLeod <randy.macleod@windriver.com>, yocto@lists.yoctoproject.org
References: <VI1PR05MB428643D97A9A175005473BDEA8CD0@VI1PR05MB4286.eurprd05.prod.outlook.com>
 <3d12b857-51ef-7266-23d1-805fa1d256f8@windriver.com>
 <VI1PR05MB428668BF04B6CC7F617C1FA2A8C60@VI1PR05MB4286.eurprd05.prod.outlook.com>
 <3ae41ad3-3188-a5a1-5e2e-a3a572cc5e91@windriver.com>
From: "Konrad Weihmann" <kweihmann@outlook.com>
Message-ID: <VI1PR05MB42866CEC9BB5364AE0840CF2A8DD0@VI1PR05MB4286.eurprd05.prod.outlook.com>
Date: Mon, 13 Apr 2020 19:59:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <3ae41ad3-3188-a5a1-5e2e-a3a572cc5e91@windriver.com>
X-ClientProxiedBy: AM6PR10CA0083.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:209:8c::24) To VI1PR05MB4286.eurprd05.prod.outlook.com
 (2603:10a6:803:4d::27)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: <20a9b4a2-7000-30fe-6d79-0e44ac66b54b@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.188.20] (87.150.38.84) by AM6PR10CA0083.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:209:8c::24) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15 via Frontend Transport; Mon, 13 Apr 2020 17:59:03 +0000
X-Microsoft-Original-Message-ID: <20a9b4a2-7000-30fe-6d79-0e44ac66b54b@outlook.com>
X-TMN: [wQCCcFoELSOdOLmRm/pe5C0eNLit2RqN]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 49
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 9ff1660e-da1d-4eb4-e854-08d7dfd45a2b
X-MS-TrafficTypeDiagnostic: AM5EUR02HT198:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	7GI5nNZCOO63xt0bV91u6hbLXbXcKu2UF4w8TZCfLSWeuUdLMJpM8kAzwI6qgeG1nWx9HgY19E0tRdKm3BU7eBFaEEtwkLOIBvYisCVJHM4KqnzQY5e4JpT0aTou1albxQSJf2/RkQMkOcvoiIY2MLJSEmln5XeGHkx/hva0TMX2e1FpMzgrbqyqFeHPwZLveuDxlSK6TZBM97uiRynI99E9j0JIvRwToAuMFL++7ug=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:0;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR05MB4286.eurprd05.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:;DIR:OUT;SFP:1901;
X-MS-Exchange-AntiSpam-MessageData: 
	KChGB9beyHG6s9AK4Fq2plYScAhh7ow+e1+u1idLKJ6YUxrJgB9m0YSI1iq6md4tt2Hu/9zMy6r95wO8LJk8LlJW8A1Ltxy56pkqbMep1EEDHJVUIyMXsZW/DXordanPNYNsdzQSiCkFSOa5mliuMQ==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ff1660e-da1d-4eb4-e854-08d7dfd45a2b
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2020 17:59:03.8710
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5EUR02HT198
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Randy,

I'm trying all day to create an account at bugzilla to file the issue,=20
but somehow I don't get any confirmation mail  (although I tried several=
=20
mail accounts today, and no it didn't got stuck in spam;-)) - guess=20
that's not how it is supposed to be, right :-)? - I don't know where to=20
address such a problem, so take this reply as FYI.

Best
Konrad

On 03.04.20 21:28, Randy MacLeod wrote:
> On 2020-04-02 4:44 a.m., Konrad Weihmann wrote:
>>
>> To answer your others questions... see below
>>
>> On 02.04.20 05:42, Randy MacLeod wrote:
>>> On 2020-03-28 8:26 a.m., Konrad Weihmann wrote:
>>>> Hi,
>>>>
>>>> I'm facing the following error message sporadically on all branches=
=20
>>>> I tried so far (master, zeus, warrior and thud)
>>>>
>>>> The stack trace of python calls that resulted in this=20
>>>> exception/failure was:
>>>> File: 'exec_python_func() autogenerated', lineno: 2, function: <modul=
e>
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0001:
>>>> =C2=A0=C2=A0*** 0002:extend_recipe_sysroot(d)
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0003:
>>>> File: '/build/poky/meta/classes/staging.bbclass', lineno: 551,=20
>>>> function: extend_recipe_sysroot
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0547:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 dest =3D newmanifest[l]
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0548:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 if l.endswith("/"):
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0549:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 staging_copydir(l, targetdir,=20
>>>> dest, seendirs)
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0550:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 continue
>>>> =C2=A0=C2=A0*** 0551:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 staging=
_copyfile(l, targetdir, dest,=20
>>>> postinsts, seendirs)
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0552:
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0553:=C2=A0=C2=A0=C2=A0 bb.note("Insta=
lled into sysroot: %s" % str(msg_adding))
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0554:=C2=A0=C2=A0=C2=A0 bb.note("Skipp=
ing as already exists in sysroot: %s" %=20
>>>> str(msg_exists))
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0555:
>>>> File: '/build/poky/meta/classes/staging.bbclass', lineno: 152,=20
>>>> function: staging_copyfile
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0148:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0 os.symlink(linkto, dest)
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0149:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0 #bb.warn(c)
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0150:=C2=A0=C2=A0=C2=A0 else:
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0151:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0 try:
>>>> =C2=A0=C2=A0*** 0152:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0 os.link(c, dest)
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0153:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0 except OSError as err:
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0154:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if err.errno =3D=3D errno.EXDEV:
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0155:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bb.utils.copyfil=
e(c, dest)
>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0156:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 else:
>>>> Exception: FileNotFoundError: [Errno 2] No such file or directory:=20
>>>> '/build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-na=
tive/usr/lib/python3.7/site-packages/msgcheck/__pycache__/__init__.cpython-=
37.pyc'=20
>>>> ->=20
>>>> '/build/poky/build/tmp/work/qemux86_64-mine-linux/core-image-minimal-=
mine/1.0-r0/recipe-sysroot-native/usr/lib/python3.7/site-packages/msgcheck/=
__pycache__/__init__.cpython-37.pyc'
>>>>
>>>> I already had a look at the manifest
>>>>
>>>> cat manifest-x86_64-python3-msgcheck-native.populate_sysroot
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/lib/python3.7/site-packages/msgcheck/__init__.py=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/lib/python3.7/site-packages/msgcheck/po.py=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/lib/python3.7/site-packages/msgcheck/msgcheck.py=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/lib/python3.7/site-packages/msgcheck/__pycache__/__init__.cpython-3=
7.pyc=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/lib/python3.7/site-packages/msgcheck/__pycache__/po.cpython-37.pyc=
=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/lib/python3.7/site-packages/msgcheck/__pycache__/msgcheck.cpython-3=
7.pyc=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/dependency_=
links.txt=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/requires.tx=
t=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/top_level.t=
xt=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/SOURCES.txt=
=
=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/PKG-INFO=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/entry_point=
s.txt=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/bin/msgcheck=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/sysroot-providers/python3-msgcheck-native=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/lib/python3.7/site-packages/msgcheck/__pycache__/=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/lib/python3.7/site-packages/msgcheck/=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/lib/python3.7/site-packages/=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/lib/python3.7/=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/sysroot-providers/=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/share/=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/bin/=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/lib/=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/=20
>>>>
>>>>
>>>> which states the file should be there, but when doing
>>>>
>>>> find=20
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/lib=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/lib/python3.7=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/lib/python3.7/site-packages=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/lib/python3.7/site-packages/msgcheck=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/lib/python3.7/site-packages/msgcheck/__init__.py=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/lib/python3.7/site-packages/msgcheck/__pycache__=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/lib/python3.7/site-packages/msgcheck/__pycache__/po.cpython-37.pyc=
=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/lib/python3.7/site-packages/msgcheck/__pycache__/msgcheck.cpython-3=
7.pyc=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/lib/python3.7/site-packages/msgcheck/po.py=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/lib/python3.7/site-packages/msgcheck/msgcheck.py=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/dependency_=
links.txt=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/requires.tx=
t=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/top_level.t=
xt=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/SOURCES.txt=
=
=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/PKG-INFO=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/lib/python3.7/site-packages/msgcheck-2.8-py3.7.egg-info/entry_point=
s.txt=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/bin=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/bin/msgcheck=20
>>>>
>>>> /build/poky/build/tmp/sysroots-components/x86_64/python3-msgcheck-nat=
ive/usr/share=20
>>>>
>>>>
>>>> the file isn't there.
>>>>
>>>> This happens to random python packages compiled as native (sometimes=
=20
>>>> even for python-native itself), but (afaik) not for cross or target=
=20
>>>> packages (I'm pretty sure because of the different packaging applied)=
.
>>>> So I digged a little into the code=20
>>>> classes/sstate.bbclass:sstate_install, which seems to create the=20
>>>> sysroot-component dir and the manifest.
>>>> There is a gap between the manifest creation (line 285) and the=20
>>>> hardlinking (line till 311).
>>>>
>>>> Now my question is there any place where a file potentially could=20
>>>> get lost? - at first glance there shouldn't be one - I have to admit=
=20
>>>> that I don't fully understand all this subprocess magic in=20
>>>> lib/oe/path.py:copyhardlinktree.
>>>> What I do to fix the issue is reopening the manifest and double=20
>>>> check for missing files and remove them from the manifest, but this
>>>> feels wrong - so any advise is welcome...
>>>>
>>>> Hope that someone more familiar with the topic could have a look.
>>>
>>> Hi Konrad,
>>>
>>> I'm not really familiar with that code but it's being run buy 1000s of
>>> builder around the world so let's try to eliminate a few possibilities=
.
>>>
>>> When did you start having this problem?
>> Since the start of the test distribution I'm working on. But also for=
=20
>> plain poky builds if I forcefully inject all of the python-native=20
>> site-packages via local.conf (DEPENDS_class-native +=3D "..."), without=
=
=20
>> actually using them in the recipe scope
>>> How often do you think it's happening: 1 in 3 builds, 1 in 10?
>> See the other mail - looks like it heavily depends on the host
>>> Tell us about your machine: OS,version, disk, CPUs, ram
>> See the other mail
>>> Do you do anything special in your conf dir? Send local.conf perhaps.
>> No custom modification (just for testing the DEPENDS-injection)
>>> Do you have any local bbappends or commits on top of poky or
>>> in other layers?
>> No
>>> Have you tried to simplify the build to eliminate problems
>>> potentially caused by other layers?
>> I did - see above
>>> Are you able to reproduce the problem on more than one build machine?
>> See the other mail
>>> Are you able to reproduce the problem on a different Linux distro?
>> Not really - Debian 9 was fine all other Hosts are Ubuntu based
>>> Are there other builds or users on the machine that may be causing
>>> extra load?
>> No the hosts are just being poorly equipped - at least the ones that=20
>> produce this issue
>=20
>=20
> Hi Konrad,
>=20
> Thanks for the detailed and complete replies.
>=20
> I don't think I've seen this error and we do 100s of builds
> per day using local many-core systems running Ubuntu-18.04
> but with the builds in docker containers using a variety of
> OS distributions.
>=20
> My first *wild* guess is that the problem might go away on the Azure
> systems if you allocate more memory. That might be an easy
> test to do so that we can confirm that it happens more frequently
> when there is a memory constraint. Can you do that test?
>=20
> I've also BCCed someone who might know someone who
> would be interested in fixing Azure + Yocto bugs. Let's see
> if they can help. :)
>=20
> It would also be helpful if you created a defect in:
>=20
> https://bugzilla.yoctoproject.org/
>=20
> and hopefully add a patch in that defect including the -native recipes t=
hat
> are required to make the problem happen.
>=20
> Thanks,
>=20
> ../Randy
>=20
>=20
>>>
>>>
>>> ../Randy
>>>
>>>>
>>>> Thanks
>>>>
>>>> Konrad
>>>>
>>>>
>>>>
>>>>
>>>
>>>
>>>
>>
>>=20
>=20
>=20
> --=20
> # Randy MacLeod
> # Wind River Linux
>=20
