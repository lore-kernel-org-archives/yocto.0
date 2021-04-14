Received: from NAM11-CO1-obe.outbound.protection.outlook.com (NAM11-CO1-obe.outbound.protection.outlook.com [40.107.220.86])
 by mx.groups.io with SMTP id smtpd.web10.6805.1618362904298982767
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Apr 2021 18:15:05 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=ibDQiko+;
 spf=pass (domain: windriver.com, ip: 40.107.220.86, mailfrom: randy.macleod@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EDgDnarPZABWyWJEMb9ZB2VIWCbms+IniKw00tFm4IKH1jRMGgE5SqA7KT/mm1u5tg2thLctjPLau9ZQitZl79gQ37I8N/bIrZ5vsf9fph9VDHqOLI3ig5Rn8QY8Ve0ytY+Tjx7VE7L/qTVvsFSvmR/tcmF2gxvVQYTKAPawQW2jCF+bAoxvVyytD75OW2gcm0xcHW+vv8wVQ665E5EpJ3AVMrZQ/9Wv49SOsDK7pyPXhR8JjV2LkhYqvYAUgpaCZwp7x4WdCppVQ5DEN1+T9o3L8U96mnOMrhMOF8aEQdIWklOMNo/n8LVz3646yXQgVL6fwq22CoYHcYwuyotDjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bvFj8kzBfIHEk3hwuqDklzi1mioa+ktt/1MSLxS6sdo=;
 b=Xoc0bVZ7sUkVfw4f0VQWf7KnAwxSK5UfsTcZysh2hUu0KtXWDNv+gBRo3gAsJwCies+hijpJBiOAQ16/8rMJB9rlg5CzGFmCxs7p+k80HVOOHWvMXKROOl6DmbQsmT5vbVke4PhZAG9bwSISEPcwJSD7wGfH5sTIcAuJY5/NBy+U25BuTpFs2nf0ttzdslws4kiTXqLfllVBi7eHcSYxJCfm6jwYqzDSsxWiqzPR/r7DQoGTYGmuSfaN7fm2cew4i7hsb97LQKe2hC2cPnaWzyR0Xc1X/vyrQ4bQcTGYe418bVW/nhQSBA9TutdSgdLWcFWC7hLYvrV/dnq7hvSTVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bvFj8kzBfIHEk3hwuqDklzi1mioa+ktt/1MSLxS6sdo=;
 b=ibDQiko+VTLY2iiJ3yf7laLMV1gmyiuZonKKANKXUHNcDYonhsueyi3z7s6GYLECwKSij2fmcwy+6LcjedERnbUrH0DtmEjYJx23pMkVQCMfFLVzBAwES/DtCHezkf8WFRen8iBAmBm/VY6HlOVsghp70NFs+jZpLnuWRYdg/K0=
Authentication-Results: public.gmane.org; dkim=none (message not signed)
 header.d=none;public.gmane.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM5PR1101MB2186.namprd11.prod.outlook.com (2603:10b6:4:52::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.22; Wed, 14 Apr
 2021 01:15:01 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::f17d:2de1:291f:80a9]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::f17d:2de1:291f:80a9%4]) with mapi id 15.20.4020.022; Wed, 14 Apr 2021
 01:15:01 +0000
Subject: Re: [yocto] bitbake controlling memory use
To: Alexander Kanavin <alex.kanavin@gmail.com>,
 Gmane Admin <gley-yocto@m.gmane-mx.org>,
 "Li, Changqing" <changqing.li@windriver.com>,
 Richard Purdie <richard.purdie@linuxfoundation.org>,
 Ross Burton <ross@burtonini.com>, Joshua Watt <JPEWhacker@gmail.com>,
 Trevor Woerner <twoerner@gmail.com>
CC: yocto@lists.yoctoproject.org,
 yocto-gJxINTE1zeQw8ufyyF7U+SST3g8Odh+X-XMD5yJDbdMReXY1tMh2IBg@public.gmane.org,
 yocto-gJxINTE1zeQw8ufyyF7U+SST3g8Odh+X@public.gmane.org,
 Ferry Toth <fntoth-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
References: <s4v495$bak$1@ciao.gmane.io>
 <CANNYZj_CsY0YL_bjtgf6O3A16FXe38-hLke4wEQR6mMz58SMVg@mail.gmail.com>
 <d8ab0231-717d-69e4-e6f9-739b9a08bd29@gmail.com>
 <CANNYZj_K-zpP-iTQMh5YA58dhBV88wLP-PouXS5KrHjybfsy-g@mail.gmail.com>
 <14207c27-7f5e-9a13-d8e8-28dbb0e7ea7b@gmail.com>
 <CANNYZj8MtLM5KdUqMsqhiVMHTnmj4VMoSf3XnCLvSns8grpmmA@mail.gmail.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <0c8c0d85-c3e0-41d5-1a0b-2d121302439a@windriver.com>
Date: Tue, 13 Apr 2021 21:14:55 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <CANNYZj8MtLM5KdUqMsqhiVMHTnmj4VMoSf3XnCLvSns8grpmmA@mail.gmail.com>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: BY5PR17CA0054.namprd17.prod.outlook.com
 (2603:10b6:a03:167::31) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
Return-Path: randy.macleod@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BY5PR17CA0054.namprd17.prod.outlook.com (2603:10b6:a03:167::31) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16 via Frontend Transport; Wed, 14 Apr 2021 01:14:58 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 74ae0d1a-de2f-481f-db98-08d8fee2ba16
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2186:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM5PR1101MB2186230197B222601449887AF84E9@DM5PR1101MB2186.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	u1AOyD4XkIeD1zhMgUIU+GsJ3uyoOxVfzU7Ly8H1lbHXTAUPobhrN6FnmVpD6lR1Rch3iROykjscE5uhHhG4IfDM/xLFQqRu+c/R3S17NMKKOi2rDFKocHYYrK/cmLMzcFQUat8Van9sMf6kmhULlqZ/Wo8YJUZsusvfJoN5Q2qD7rzSmLqAbEZmrXMtsPzCCr+j3S/TtiTHAokNk12DvTVcmnG7C+ZolfARmV1l9o+6FQUI/n0McucIMPHit4GhhBOx/+TRXp0TTh8mYaG3nXRsaEPLnPu3gIv5OkAQAFHXI2+iRFLnv2OHR6rg/1fvi5XckBwN1iZQDphRJPhpbdyHmyNXF8Sb5KquJ6uM8J8g6GNCkNY7OB2nrm08Ijes1ujN54OKOzmzLVoNC7av9osvy3a7w6qBRs6tryu/1yKrY9pjAEVQ1AofyQEkHHc2dGcVyoFvCNFbx7MtyGf06Drjg3HHiPaClxLc+ELqeA+eDtnPf+QcTpFatIOOquFOPKNo8RYhFSMko3liPHaDJt25VHllKrw8XB+zAuO9Lb97oLR78wLvCQvi7KzlEEFtG5lQEhUiz90lpEQdarY0JO7uOOSHiyTZhr49tUxkkQT/biuBs3/sW2Kf3JYq5vsbcsQyodI23+/QRbksBdjA+RsTwKw0lR2gyUss+KVvNIK3tuwNGXn78rq3wWxQASU9hg39YVI0LdAb7C1XMRdhObOLP3UDH72X1cET8JpC0lo4HLHrZ1d/zYzUF270oY3qbbOV4N7ZBDSwG/cujUO/hKtVOxJSaOGckQxwdNnFDtw=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(346002)(39830400003)(376002)(396003)(366004)(86362001)(38350700002)(8936002)(4326008)(16526019)(31696002)(110136005)(478600001)(5660300002)(38100700002)(316002)(31686004)(6666004)(6486002)(16576012)(83380400001)(26005)(66476007)(66946007)(7416002)(52116002)(186003)(66556008)(2616005)(53546011)(36756003)(956004)(8676002)(2906002)(966005)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?GMOqp9y381LWd1Ma4G1il5PV81HPzzJlq34chrXDrewUKYpIPxKQAE94F+Jg?=
 =?us-ascii?Q?O/YTqFTGgJm2g8YXfr0Q1QaUc8opRYs+xmTr3OzCrzXIaDAMBGGflbOgujzX?=
 =?us-ascii?Q?8p/zK5ur2sgwDij8WkVh85tBaInbp5av5hHWGcCVAarGwOW07b4zhJY88xKR?=
 =?us-ascii?Q?AA76bBCh8WSu+HEsRYGB+sKqVBHhh1UOYNUlBX5E/f7z2O1DhqY6z7Y0nw/y?=
 =?us-ascii?Q?63+sZWd5USWCRwfxSpj1O2vVWk2MGM3UpuERsgDiwPm2PKAQRvGXwk46eUPn?=
 =?us-ascii?Q?RLKpl/UH+b8KCSOVHzSCs4GCjikn1bDMbl+MC+5TQB+S0iSYzkSwqr4G5dfL?=
 =?us-ascii?Q?j0GpuDAk0jq3yStyrqPxcJHgv228UIJUN1Lzbmo/XgZHfYV9ODZdVem9jEzq?=
 =?us-ascii?Q?nHDU44WWY8B89penEhORgJHwVyiskg3bsrE6Ww/rTpr7g1SaVxr9Wtfujx5O?=
 =?us-ascii?Q?jUKvNxLk6N2UPb0L2wmDxfyaom7Z790+CHPS9PXo+1q3BZtNgFFBQdHXm9dD?=
 =?us-ascii?Q?7/G+mvipdWNstR2sXKH8IEk/o+U4S6fx/j8noXkE+jcfVxktAUv8A3gOPUHK?=
 =?us-ascii?Q?VRz1l0MOMfICqa3UfKC7scgEFYQPjwmZzbO3BDeMq09FjcUdDlBhP0JFKZ1V?=
 =?us-ascii?Q?Jl92CKi+hN4LPpT5DoRE73ELtK5ZavghMVnJvne0PSyCHAVA+9HjfNN5/atY?=
 =?us-ascii?Q?rh2l6Gurp2zvNXzMkH0EytKFY4sTyhETKlI6nfqX6J55thZ+EBMwnQXOkmQX?=
 =?us-ascii?Q?dPQNV0C2rUOpG6S8UtFniKgoNFkrMU7wedZkuh1136+xFu/Kk1H//8gZnOch?=
 =?us-ascii?Q?ZHKC/uTZnVkuWx2jAFj8lHoiT0MhHwub4XsrxWo35p1CGyh/WsQQCGTI7jDR?=
 =?us-ascii?Q?fFLpPfiumv4rNeDY6UHf9CkkWBSNTibnYjouYpEyVvmk+2CtVN/ohDlT+6F7?=
 =?us-ascii?Q?B53y6gAmVqd91JX8vo30XDPGg91UfnCaFIGr8fqsidVyiuBntqDy03XDFQIl?=
 =?us-ascii?Q?UIvlt5DegItFJK3QwM5b/KfZzj6llJqfsiYIUOj/OCk6srhbuIIzUdVio54/?=
 =?us-ascii?Q?kIMHpTA6aC0m/j0iCdl6RTKSEX9sXXsbTJ1lXjynx4q6x1ALZkOuQWhux5Mr?=
 =?us-ascii?Q?Srr8pFQDIezHsa4+n7FWFe2B6yozY+oMkPTEt9e72yt4MMsYHNDtr0+csR6v?=
 =?us-ascii?Q?O362ioVRG7KgBQhQF4Vyx+vtNYk++CGb9EX/P0vmGJNvtk+noGe7i41N6mi1?=
 =?us-ascii?Q?huf4O6Xs27cq+8fNnH0WrUQuZVPDN0koo1zhvpZEy/4shayGF4XNBrlpaGym?=
 =?us-ascii?Q?4gj2vre7rB5NrhjM6F9ndcKZ?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 74ae0d1a-de2f-481f-db98-08d8fee2ba16
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2021 01:15:01.1978
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pOGC5rjNZnCeIQPOAMwavY7z8DOPbUdUYYiFlk3QHkdBJgg2Mn/6BQVg1qasJmR4grtFpJMaKih7qrZMUA4PjCeUd5sNhXy5nrKmHh9puRU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2186
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: quoted-printable

On 2021-04-11 12:19 p.m., Alexander Kanavin wrote:
> make already has -l option for limiting new instances if load average is=
=
=20
> too high, so it's only natural to add a RAM limiter too.
>=20
>  =C2=A0 -l [N], --load-average[=3DN], --max-load[=3DN]
>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Don't start multiple jobs unless load i=
s=20
> below N.
>=20
> In any case, patches welcome :)

During today's Yocto technical call (1),
we talked about approaches to limiting the system load and avoiding
swap and/or OOM events. Here's what (little!) i recall from the
discussion, 9 busy hours later.

In the short run, instead of independently maintaining changes to
configurations to limit parallelism or xz memory usage, etc, we
could develop an optional common include file where such limits
are shared across the community.

In the longer run, changes to how bitbake schedules work may be needed.

Richard says that there was a make/build server idea and maybe even a
patch from a while ago. It may be in one of his poky-contrib branches.
I took a few minutes to look but nothing popped up. A set of keywords to
search for might help me find it.

Someone mentioned that while ninja has not been open to accepting any
patches that would complicate and potentially slow down builds, there
is a fork of ninja calls 'samurai' that does seem to be open to some
improvements that we could benefit from.

It was also suggested that  there were existing defects in the YP BZ (2)
but I didn't find any earlier and it's too late in my day to start
looking now! If no one replies with a relevant BZ ID, I'll create one.

I'm sure I missed some things that were mentioned but Trevor Woerner
sometimes takes notes so I'll check on them once / if they are sent out.

../Randy


1) https://www.yoctoproject.org/public-virtual-meetings/

2) https://bugzilla.yoctoproject.org/

>=20
> Alex
>=20
> On Sun, 11 Apr 2021 at 18:08, Gmane Admin <gley-yocto@m.gmane-mx.org=20
> <mailto:gley-yocto@m.gmane-mx.org>> wrote:
>=20
>     Op 11-04-2021 om 17:55 schreef Alexander Kanavin:
>      > On Sun, 11 Apr 2021 at 17:49, Gmane Admin
>     <gley-yocto@m.gmane-mx.org <mailto:gley-yocto@m.gmane-mx.org>
>      > <mailto:gley-yocto@m.gmane-mx.org
>     <mailto:gley-yocto@m.gmane-mx.org>>> wrote:
>      >
>      >=C2=A0 =C2=A0 =C2=A0Yes, and make project doesn't care, because ma=
ke is called
>     with -j
>      >=C2=A0 =C2=A0 =C2=A016 so
>      >=C2=A0 =C2=A0 =C2=A0that is what it does.
>      >
>      >=C2=A0 =C2=A0 =C2=A0So here's my pitch: bitbake can stop processes=
 spawned by
>     make, because
>      >=C2=A0 =C2=A0 =C2=A0it knows that it started make on 4 recipies, e=
ach with -j 16. The
>      >=C2=A0 =C2=A0 =C2=A0individual makes don't know about each other.
>      >
>      >
>      > And neither they should. They can simply abstain from spawning ne=
w
>      > compilers if used RAM is, say, at 90% total. Then bitbake does
>     not have
>      > to get involved in babysitting those makes.
>      >
>      > Alex
>     Bitbake does a lot of babysitting anyway :-) And is pretty good at
>     it too.
>=20
>     To me, fixing make et al. is more work and less effective then addin=
g a
>     feature to bitbake. The only way to know how much memory the compile=
r
>     will use for each spawned compiler is to let it run. And then it's
>     too late.
>=20
>     This memory issue is all over our eco system and nobody cares (kerne=
l,
>     make etc.) The only thing moving is systemd's oom killer will arrive
>     and
>     start killing processes. So that will just stop our builds from
>     completing.
>=20
>     Yeah, I prefer a babysitter over a child murderer :-)
>=20
>     Ferry
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20


--=20
# Randy MacLeod
# Wind River Linux
