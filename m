Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.339.1623361440649682007
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Jun 2021 14:44:00 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=MoQ+8t8V;
 spf=fail (domain: windriver.com, ip: 198.145.29.25, mailfrom: prvs=179527b468=randy.macleod@windriver.com)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 2915A38C0895
	for <yocto@yoctoproject.org>; Thu, 10 Jun 2021 21:43:59 +0000 (UTC)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 15AKN1TU029854;
	Thu, 10 Jun 2021 21:43:52 GMT
Received: from nam04-mw2-obe.outbound.protection.outlook.com (mail-mw2nam08lp2171.outbound.protection.outlook.com [104.47.73.171])
	by mx0a-0064b401.pphosted.com with ESMTP id 3934d9rwua-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 10 Jun 2021 21:43:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=grw8kDvOTKPB2ysPExbWKfK5sBzKprU9Y+n2NRwaRyVNvn6zSDnPrTzvBlgAihjlpr+AxQ9YyPlAb6Uc0HOhZvmUT8jpNmrYgFocKYHWeSBLPuHHgOsR+zrwHzBraxuS9S0GKmXz3CGEoRVmWcoiWuKhTWp9OPpdfZEyGyLfmcGagGZhEZmnlq2J3fzy22pnXijNEU6Xev5Af4t5fgPFK+exgF8/4ixfvZPjlxJUIQYYr/u4Kx60WwI5jUkAIobOlNSMSxe//ES2KRWL5RjxVrhixfNHX0PPyjW6rU4Ubn7+84IpFANxF15Cba2FbUxN+NRMM6KL6xBXv2f4sk21lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V/e9e/471rHmW9ojecIc9YV3Qa6NOn3LiUHVAd4hyrE=;
 b=c1JtKquSMqz48sEZDIDoEvCrwWdhkKYy8FttuwaCoy5xMBpBIgVEHBTVeZWrx/Ch0uhPU956gDUuBnkZk5Hu3BeyZ5XnVsDQ6S97h4ldW154wB9wxMl90smqEUmAc2axM9UlUyPc9xuAzDiseb1Av2AUEYRnY51F0jB5g2pRdZpFNisXjB6TMjt18jTYi50BgHG9nFhtmqoIRGQc5XJaPgzJlqxtZmI9Df1k+D0r4jVjZd6gDtMG2Arv/gom/dTn6lx0Y8ekPbxQPmypBN+O0W8OScWmIr2qO2oCDm4gcj2sHecHnmv2lvdYfe2vFC98jd1D+yK+Z2S5dARgVHVzTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V/e9e/471rHmW9ojecIc9YV3Qa6NOn3LiUHVAd4hyrE=;
 b=MoQ+8t8VmcysC5tsKS0bacOQ6Vzlrt9h5m6fcn4B8HQ45xP80QO+uoqUFHWq2oZYr05t6xqODnlMaCnkE9BtZzugEfvr4N+u1IvlPSqjUtlAJ2C9z64kL0m2klIgINjt7KBtpv5WDguC1PTx1cVEf7cJo//ZoSF48q4B2n2OYd4=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from MN2PR11MB3998.namprd11.prod.outlook.com (2603:10b6:208:137::21)
 by BL1PR11MB5349.namprd11.prod.outlook.com (2603:10b6:208:308::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.22; Thu, 10 Jun
 2021 21:43:48 +0000
Received: from MN2PR11MB3998.namprd11.prod.outlook.com
 ([fe80::cdaa:d94e:1247:12a1]) by MN2PR11MB3998.namprd11.prod.outlook.com
 ([fe80::cdaa:d94e:1247:12a1%7]) with mapi id 15.20.4219.022; Thu, 10 Jun 2021
 21:43:48 +0000
Subject: Re: [External] [yocto] Bitbake failure
To: Cris Scott <cscott@bird-technologies.com>,
        Yocto discussion list <yocto@yoctoproject.org>
References: <CY4PR22MB0006916E6957F29F955A1DD5993F9@CY4PR22MB0006.namprd22.prod.outlook.com>
 <4eafebbc-80cb-2d09-b603-f0235d55b215@windriver.com>
 <CY4PR22MB0006580A14D0C7F6E65D7B1499359@CY4PR22MB0006.namprd22.prod.outlook.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <f05beaed-2943-7264-c6c7-b4486b8c6d74@windriver.com>
Date: Thu, 10 Jun 2021 17:43:44 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <CY4PR22MB0006580A14D0C7F6E65D7B1499359@CY4PR22MB0006.namprd22.prod.outlook.com>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: BY3PR04CA0023.namprd04.prod.outlook.com
 (2603:10b6:a03:217::28) To MN2PR11MB3998.namprd11.prod.outlook.com
 (2603:10b6:208:137::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BY3PR04CA0023.namprd04.prod.outlook.com (2603:10b6:a03:217::28) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.20 via Frontend Transport; Thu, 10 Jun 2021 21:43:47 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 83497a33-6320-4ab7-9693-08d92c58d457
X-MS-TrafficTypeDiagnostic: BL1PR11MB5349:
X-Microsoft-Antispam-PRVS: 
	<BL1PR11MB5349153AFB15F0A10C448F1FF8359@BL1PR11MB5349.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	8MrCIlYjuMjF3IDf3k1FGQT+uRp5FasrWdHa8iy3WiiJTE4zw9+9JqGf8ae94/AX76zxt9jEqc1FWTQ+8nYO3rX5oA76laKeAKPGrEyANKecbuC8oRMZMjoYbw7HU5jzOgNJAwcJSbmaomIf6E6qZ8XhQLWtja1/sotMjK0qAANJm9DYkfdvujzQkFj5s+LjeY2vZPig9AtN5q9IaDt1f8tPnH2Lq5BsyCESGgtidMDurYMIffi2b+pVPqkrt/w3ft4Otgjm+fg11qD1Q1wpGeawywU3yYVYbW2a7VFvX/lGP+sW/VjDSNi1e6Ma1mLkOMIkxt+a9PT8dp+jRumXh+ipHh9bowElHAJmCVK3meQ7xV2bPyfjUacH3FVEM94pDZ9GmmLsEQMNrFuTAuMRjEetROZImuORds2SOCmpTZ4ahfLKRWkyL/oUWWE8nmQT/6no7dKDZzqXpRMGabbgFeMFo/Uu+pdWNe0D8BEcMwctsDTZ2RTtCiOUBZ7p2xSIVyUMSNJabS924Uz2G3LkM0MJuQmq78bUs8Pak/jhAi+Em0P26qx0jqLQlu0ZhXFVtABsQ1uEAcgcMR29TiHQtJiZAbIi4ypNANrT2xPGI24vDcfPdgd1pcblbDeNYGdpBPr9M9b3dzYHL45dsj6OupZoa/Wk+dl8zHFT3DJbRujWgI+udF7PzjRWRSzUBAOKPAniYBvGbA+Jkve68UjChqX+1pTcru+0x65ew++gDwm1v5+WZ9C42N4bcSoJ6+2+dTokE8fkLz3mu0wKb4vKmlDGApZM7tq/4vMvdy7jA2p+8Gkls+ATUzu2yi1A8dE0f4DkJ645espDPHvEChahHA0EbTPfUbj5gHCHq7BP18+sI1ReYLErtPHNItRrckLa
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR11MB3998.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39840400004)(396003)(366004)(376002)(346002)(136003)(31696002)(66476007)(5660300002)(52116002)(6486002)(16799955002)(86362001)(16526019)(6666004)(478600001)(83380400001)(16576012)(66556008)(966005)(110136005)(8676002)(36756003)(166002)(66946007)(26005)(8936002)(38100700002)(2616005)(53546011)(38350700002)(186003)(316002)(31686004)(956004)(2906002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?Windows-1252?Q?yQud1uXo5laieArIZPadcYeTUfXl0tTtutQGN+WYe8nwQiBva3hiufps?=
 =?Windows-1252?Q?OTWcaH9xzOiQfk8D4L+01m6B1a7Vys9a/Q5eR2kmwTzV/vsI4VFqwFpP?=
 =?Windows-1252?Q?qNBkNlm0ZFQTnpWBWpBQUBt+ciX0br7/sSZw6BO1cA9EpsFJZRjsFHMg?=
 =?Windows-1252?Q?G0iQNfF47+8FVl3V7d3hTF5AYtEU/yqB0ESkRK6pcOXpePwrT2MY/rt1?=
 =?Windows-1252?Q?43IkZ/1b7dSO8JLzUTtaWF3xowR9QayyW4bTF9d8Ayl8zzL1C3voaFPl?=
 =?Windows-1252?Q?i4fsw5IQb+BLt9VoSBlkAP/bqPfGtP/RH191qnL4nsG0Uh2QcyztlyYC?=
 =?Windows-1252?Q?2aTp3gh3hhkb2YH9TOmNPZS14FY9Npml1tJgfBB9GeNThE+e7mE6U1wa?=
 =?Windows-1252?Q?7w1hJjr4uTxaejH1zRq7Oi3hpOJLGAK7v/3G4aP+bpFbnvPgw6Ubc0R3?=
 =?Windows-1252?Q?DQQqHwul66w4L2Dsh52jOFmJ6MZqbA6frvQzyLzHRg9lD+hBIS/UL0Gc?=
 =?Windows-1252?Q?Ul2ibGllYz1fOX6C7x1o4b96Wxx/lpgQ5+Tj03lqncrUa4sKpbM7i2XC?=
 =?Windows-1252?Q?UTMOKTM9XOLzkaG26Pj8Ot/uc1sMZly2S2+xX0BCFwVLdUARymJo/VrS?=
 =?Windows-1252?Q?0cn0xa3w751nmUEZQZU75LqRltV10obGQ1eRUVusEy29YI5jcE4xF1y6?=
 =?Windows-1252?Q?lVbq57IUl+G4uqYg9Uyc//65U2A0z6c+pZ5EHJ9ebn31BiDMTTd8DYZ6?=
 =?Windows-1252?Q?+Z7VYT3qUrcB93+Tmhin//TCKaJ6PXfGLgOO7Gch5R4CPo8qWd/xqMA4?=
 =?Windows-1252?Q?sdi9UFeCQ2eWMGlBNqIzhs+SYPxAmft4qoEeD1lSX0I8tmH2XTyte2LZ?=
 =?Windows-1252?Q?j/8DbUYntoXEsYe4P+bU4twmTEnwG3cL2lYoKlt/pdG6xtlKHqSWlZJ0?=
 =?Windows-1252?Q?URsl32u7aXXvKkkjcSc703wBSYJ2Fwd5Ed4CGo2Dqjag1dzlVAg1k+xK?=
 =?Windows-1252?Q?HQqLI00ZPkxVUfcz2F6KTy3+MMBsAL8SRQm0+Cplsk6xPCy1KpoDrcVx?=
 =?Windows-1252?Q?DYAyIS5VQeqOuX1aFCTSWT1D7dkezGJJq9+YZ/RrpKgX2nWJu+VvfdMQ?=
 =?Windows-1252?Q?qo/yxKeBlQJVKHQKTJChzqAn341BN4qkqiKnEhzK9V3lwmrfosZ2WmPz?=
 =?Windows-1252?Q?ZURgur6ItHyAPa+vwT4g4a+IhzdizWNRNELiqCwTe1rHIKQFIwgSUrl2?=
 =?Windows-1252?Q?leOu3fBf0Mp1G/BrHVIEoC8/UHtILTfYSXvfEIpbPf+EkiPIZUB9fhrn?=
 =?Windows-1252?Q?hm61HQ9z7GkXFBwAu2drMvvc2m9s5Rla6ABzPkfZjQRviOTY0F+DZ0bS?=
 =?Windows-1252?Q?YODqIvzPCG5KfqjvqZMf+KzaPyzZtBtjCNaR5Whe8WIsEWyzZUaxnoTt?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83497a33-6320-4ab7-9693-08d92c58d457
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3998.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2021 21:43:48.2589
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /WqfN7NIv2Gw+4T/nsVMKCornJ999vLVcT4eFxXqZJzGNTc5CgxbE4npTWPwlKKo+OuvtxRV7OtyFXdI+Sx4MI8TxfA8ENlynm7Gac7T06g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5349
X-Proofpoint-GUID: cwF8rDIsUp1EuVkuD67a-Sj0wJY-7k0H
X-Proofpoint-ORIG-GUID: cwF8rDIsUp1EuVkuD67a-Sj0wJY-7k0H
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-06-10_13:2021-06-10,2021-06-10 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 phishscore=0
 mlxlogscore=999 malwarescore=0 lowpriorityscore=0 spamscore=0 bulkscore=0
 impostorscore=0 suspectscore=0 priorityscore=1501 clxscore=1015
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2106100130
Content-Type: multipart/alternative;
 boundary="------------E49E6CF3F2F3FA7B35D44259"
Content-Language: en-CA

--------------E49E6CF3F2F3FA7B35D44259
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-06-10 6:33 a.m., Cris Scott wrote:
>
> It is still a problem and I have tried everything you suggested.=A0 I am=
=
=20
> building with Ubuntu 20.4 and that seems to be the issue.
>
Lots of people use 20.04 so it seems odd that you'd have a problem=20
specific to that host.


> I have moved on from this, so will no longer require any information.=A0=
=
=20
> The problem has been turned over to someone new.
>

Okay, please encourage them to reply on this thread.

We may not always respond right away but there is usually
someone reading things and in my case, I'll respond eventually.

Thanks,

../Randy


> *From:* Randy MacLeod <randy.macleod@windriver.com>
> *Sent:* Tuesday, June 8, 2021 8:27 PM
> *To:* Cris Scott <cscott@bird-technologies.com>;=20
> yocto@lists.yoctoproject.org
> *Subject:* Re: [External] [yocto] Bitbake failure
>
> On 2021-05-31 6:12 p.m., Cris Scott wrote:
>
>     Not sure who to ask about this.
>
>     Using
>     https://push.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-e=
xtended/lighttpd/lighttpd_1.4.59.bb
>     <https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__push.yoctopr=
oject.org_cgit_cgit.cgi_poky_tree_meta_recipes-2Dextended_lighttpd_lighttpd=
-5F1.4.59.bb&d=3DDwQD-g&c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&r=
=3DbkH5VyRdXOkP5L2u8XTis0WNm1tDq0eP2H1TMFNt8wE&m=3DbLwJg_DP3pbzHU88yz3nhrh=
6dLl2OCg03Z8vQmh8dfc&s=3Dn4FuqOvgriQtR_RbsWzNL0VjbrolYBWiDcRE75K137I&e=3D>
>     to build lighttpd, bitbake fails, and I receive tons of messages
>     that look like:
>
>     ERROR: lighttpd-1.4.59-r0 do_package_qa: QA Issue:
>     /usr/lib/mod_staticfile.so
>     <https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__urldefense.c=
om_v3_-5F-5Fhttp-3A__mod-5Fstaticfile.so-5F-5F-3B-21-21AjveYdw8EvQ-21IjX1Dy=
HZJ7dwUtyALOFQVZn8VgQNRX29XBKx6NBRpbApF9vx-2Dj-5Ft8eKwsxzFofsRbsK8iQ-24&d=
=3DDwMD-g&c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&r=3DbkH5VyRdXOkP=
5L2u8XTis0WNm1tDq0eP2H1TMFNt8wE&m=3DbLwJg_DP3pbzHU88yz3nhrh6dLl2OCg03Z8vQmh=
8dfc&s=3DqSjqiRkn3YYkhymtTeGmC__gU9nCT7lXO52OpJJ5n-o&e=3D>
>     contained in package lighttpd-module-staticfile requires
>     libc.so.6(GLIBC_2.4), but no providers found in
>     RDEPENDS_lighttpd-module-staticfile? [file-rdeps]
>
>     Can someone point me in the right direction to resolve this?
>
> Hi Cris,
>
> It's been a while is this still a problem for you?
> If not, how did you fix it?
>
> Can you reproduce the error with poky? git://git.yoctoproject.org/poky
>
> What release/commit are you using?
>
> Does it happen when you just run: bitbake lighttpd ?
>
> Does it happen if you mv your sstate-cache (tmp*) directories aside
> and do a rebuild?
>
> What's in your local.conf?
>
> For completeness, what is your build host distro (I doubt it matters=20
> here.).
>
> I built poky from:
> 7f3c996d30 (HEAD -> master, origin/master, origin/HEAD) lttng-tools:=20
> upgrade 2.12.3 -> 2.12.4
>
> on an Ubu-18.04.3 builder, and both:
> $ bitbake lighttpd and
> $ bitbake core-image-minimal
>
> worked fine with:
>
> grep -v "^$" conf/local.conf=A0 | grep -v "^#"
> MACHINE ??=3D "qemux86-64"
> DISTRO ?=3D "poky"
> PACKAGE_CLASSES ?=3D "package_rpm"
> EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks"
> USER_CLASSES ?=3D "buildstats image-prelink"
> PATCHRESOLVE =3D "noop"
> BB_DISKMON_DIRS ??=3D "\
> =A0=A0=A0 STOPTASKS,${TMPDIR},1G,100K \
> =A0=A0=A0 STOPTASKS,${DL_DIR},1G,100K \
> =A0=A0=A0 STOPTASKS,${SSTATE_DIR},1G,100K \
> =A0=A0=A0 STOPTASKS,/tmp,100M,100K \
> =A0=A0=A0 ABORT,${TMPDIR},100M,1K \
> =A0=A0=A0 ABORT,${DL_DIR},100M,1K \
> =A0=A0=A0 ABORT,${SSTATE_DIR},100M,1K \
> =A0=A0=A0 ABORT,/tmp,10M,1K"
> PACKAGECONFIG_append_pn-qemu-system-native =3D " sdl"
> CONF_VERSION =3D "1"
> IMAGE_INSTALL_append =3D "lighttpd"
>
> ../Randy
>
>     -Bill
>
>
>
>    =20
>
> --=20
> # Randy MacLeod
> # Wind River Linux
>
> ------------------------------------------------------------------------
>
> This email has been scanned for spam and viruses by Proofpoint=20
> Essentials. Click here=20
> <https://urldefense.com/v3/__https://us4.proofpointessentials.com/index0=
1.php?mod_id=3D11&mod_option=3Dlogitem&mail_id=3D1623198455-a0PE2AaxolGT&r_=
address=3Dcscott*40bird-technologies.com&report=3D1__;JQ!!AjveYdw8EvQ!OWOR3=
2vmBafo2gv8CSF5Rk36l5CmgaNg6CwBh6fTnQVEK-0dHOw1HC-BxFaFh_j9Ezc93w$>=20
> to report this email as spam.
>

--=20
# Randy MacLeod
# Wind River Linux


--------------E49E6CF3F2F3FA7B35D44259
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-=
1252">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-06-10 6:33 a.m., Cris Scott
      wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:CY4PR22MB0006580A14D0C7F6E65D7B1=
499359@CY4PR22MB0006.namprd22.prod.outlook.com">
      
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]-->
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	font-size:10.0pt;
	font-family:"Courier New";}span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal">It is still a problem and I have tried
          everything you suggested.&nbsp; I am building with Ubuntu 20.4 a=
nd
          that seems to be the issue.</p>
      </div>
    </blockquote>
    <p>Lots of people use 20.04 so it seems odd that you'd have a
      problem specific to that host.<br>
    </p>
    <p><br>
    </p>
    <blockquote type=3D"cite" cite=3D"mid:CY4PR22MB0006580A14D0C7F6E65D7B1=
499359@CY4PR22MB0006.namprd22.prod.outlook.com">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class=3D"MsoNormal">I have moved on from this, so will no
          longer require any information.&nbsp; The problem has been turne=
d
          over to someone new.</p>
      </div>
    </blockquote>
    <p><br>
    </p>
    <p>Okay, please encourage them to reply on this thread.</p>
    <p>We may not always respond right away but there is usually<br>
      someone reading things and in my case, I'll respond eventually.<br>
    </p>
    <p>Thanks,</p>
    <p>../Randy<br>
    </p>
    <p><br>
    </p>
    <blockquote type=3D"cite" cite=3D"mid:CY4PR22MB0006580A14D0C7F6E65D7B1=
499359@CY4PR22MB0006.namprd22.prod.outlook.com">
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><o:p></o:p></p>
        <p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class=3D"MsoNormal"><b>From:</b> Randy MacLeod
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:randy.macl=
eod@windriver.com">&lt;randy.macleod@windriver.com&gt;</a> <br>
              <b>Sent:</b> Tuesday, June 8, 2021 8:27 PM<br>
              <b>To:</b> Cris Scott
              <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:cscott@bir=
d-technologies.com">&lt;cscott@bird-technologies.com&gt;</a>;
              <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto@l=
ists.yoctoproject.org">yocto@lists.yoctoproject.org</a><br>
              <b>Subject:</b> Re: [External] [yocto] Bitbake failure<o:p><=
/o:p></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
        <div>
          <p class=3D"MsoNormal">On 2021-05-31 6:12 p.m., Cris Scott
            wrote:<o:p></o:p></p>
        </div>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <p class=3D"MsoNormal">Not sure who to ask about this.<o:p></o:p=
></p>
          <p class=3D"MsoNormal">Using <a href=3D"https://urldefense.proof=
point.com/v2/url?u=3Dhttps-3A__push.yoctoproject.org_cgit_cgit.cgi_poky_tre=
e_meta_recipes-2Dextended_lighttpd_lighttpd-5F1.4.59.bb&amp;d=3DDwQD-g&amp;=
c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DbkH5VyRdXOkP5L2u8XT=
is0WNm1tDq0eP2H1TMFNt8wE&amp;m=3DbLwJg_DP3pbzHU88yz3nhrh6dLl2OCg03Z8vQmh8df=
c&amp;s=3Dn4FuqOvgriQtR_RbsWzNL0VjbrolYBWiDcRE75K137I&amp;e=3D" moz-do-not-=
send=3D"true">
https://push.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-extende=
d/lighttpd/lighttpd_1.4.59.bb</a>
            to build lighttpd, bitbake fails, and I receive tons of
            messages that look like:<o:p></o:p></p>
          <p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
          <p class=3D"MsoNormal">ERROR: lighttpd-1.4.59-r0 do_package_qa:
            QA Issue: /usr/lib/<a href=3D"https://urldefense.proofpoint.co=
m/v2/url?u=3Dhttps-3A__urldefense.com_v3_-5F-5Fhttp-3A__mod-5Fstaticfile.so=
-5F-5F-3B-21-21AjveYdw8EvQ-21IjX1DyHZJ7dwUtyALOFQVZn8VgQNRX29XBKx6NBRpbApF9=
vx-2Dj-5Ft8eKwsxzFofsRbsK8iQ-24&amp;d=3DDwMD-g&amp;c=3DeuGZstcaTDllvimEN8b7=
jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DbkH5VyRdXOkP5L2u8XTis0WNm1tDq0eP2H1TMFNt8wE=
&amp;m=3DbLwJg_DP3pbzHU88yz3nhrh6dLl2OCg03Z8vQmh8dfc&amp;s=3DqSjqiRkn3YYkhy=
mtTeGmC__gU9nCT7lXO52OpJJ5n-o&amp;e=3D" moz-do-not-send=3D"true">mod_static=
file.so</a> contained in
            package lighttpd-module-staticfile requires
            libc.so.6(GLIBC_2.4), but no providers found in
            RDEPENDS_lighttpd-module-staticfile? [file-rdeps]<o:p></o:p></=
p>
          <p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
          <p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
          <p class=3D"MsoNormal">Can someone point me in the right
            direction to resolve this?<o:p></o:p></p>
        </blockquote>
        <p>Hi Cris,<o:p></o:p></p>
        <p>It's been a while is this still a problem for you?<br>
          If not, how did you fix it?<o:p></o:p></p>
        <p><o:p>&nbsp;</o:p></p>
        <p>Can you reproduce the error with poky?
          git://git.yoctoproject.org/poky<o:p></o:p></p>
        <p>What release/commit are you using?<o:p></o:p></p>
        <p>Does it happen when you just run: bitbake lighttpd ?<o:p></o:p>=
</p>
        <p>Does it happen if you mv your sstate-cache (tmp*) directories
          aside<br>
          and do a rebuild?<o:p></o:p></p>
        <p>What's in your local.conf?<o:p></o:p></p>
        <p>For completeness, what is your build host distro (I doubt it
          matters here.).<o:p></o:p></p>
        <p><o:p>&nbsp;</o:p></p>
        <p>I built poky from:<br>
          7f3c996d30 (HEAD -&gt; master, origin/master, origin/HEAD)
          lttng-tools: upgrade 2.12.3 -&gt; 2.12.4<o:p></o:p></p>
        <p>on an Ubu-18.04.3 builder, and both:<br>
          $ bitbake lighttpd and<br>
          $ bitbake core-image-minimal<o:p></o:p></p>
        <p>worked fine with:<o:p></o:p></p>
        <p>grep -v &quot;^$&quot; conf/local.conf&nbsp; | grep -v &quot;^#=
&quot;<br>
          MACHINE ??=3D &quot;qemux86-64&quot;<br>
          DISTRO ?=3D &quot;poky&quot;<br>
          PACKAGE_CLASSES ?=3D &quot;package_rpm&quot;<br>
          EXTRA_IMAGE_FEATURES ?=3D &quot;debug-tweaks&quot;<br>
          USER_CLASSES ?=3D &quot;buildstats image-prelink&quot;<br>
          PATCHRESOLVE =3D &quot;noop&quot;<br>
          BB_DISKMON_DIRS ??=3D &quot;\<br>
          &nbsp;&nbsp;&nbsp; STOPTASKS,${TMPDIR},1G,100K \<br>
          &nbsp;&nbsp;&nbsp; STOPTASKS,${DL_DIR},1G,100K \<br>
          &nbsp;&nbsp;&nbsp; STOPTASKS,${SSTATE_DIR},1G,100K \<br>
          &nbsp;&nbsp;&nbsp; STOPTASKS,/tmp,100M,100K \<br>
          &nbsp;&nbsp;&nbsp; ABORT,${TMPDIR},100M,1K \<br>
          &nbsp;&nbsp;&nbsp; ABORT,${DL_DIR},100M,1K \<br>
          &nbsp;&nbsp;&nbsp; ABORT,${SSTATE_DIR},100M,1K \<br>
          &nbsp;&nbsp;&nbsp; ABORT,/tmp,10M,1K&quot;<br>
          PACKAGECONFIG_append_pn-qemu-system-native =3D &quot; sdl&quot;<=
br>
          CONF_VERSION =3D &quot;1&quot;<br>
          IMAGE_INSTALL_append =3D &quot;lighttpd&quot;<o:p></o:p></p>
        <p>../Randy<o:p></o:p></p>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
          <p class=3D"MsoNormal">-Bill<o:p></o:p></p>
          <p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
          <p class=3D"MsoNormal"><br>
            <br>
            <o:p></o:p></p>
          <pre><o:p>&nbsp;</o:p></pre>
          <pre><o:p></o:p></pre>
          <pre><o:p>&nbsp;</o:p></pre>
        </blockquote>
        <p><o:p>&nbsp;</o:p></p>
        <pre>-- <o:p></o:p></pre>
        <pre># Randy MacLeod<o:p></o:p></pre>
        <pre># Wind River Linux<o:p></o:p></pre>
        <p>&nbsp;<o:p></o:p></p>
        <div class=3D"MsoNormal" style=3D"text-align:center" align=3D"cent=
er">
          <hr width=3D"100%" size=3D"2" align=3D"center">
        </div>
        <p>This email has been scanned for spam and viruses by
          Proofpoint Essentials. Click
          <a href=3D"https://urldefense.com/v3/__https://us4.proofpointess=
entials.com/index01.php?mod_id=3D11&amp;mod_option=3Dlogitem&amp;mail_id=3D=
1623198455-a0PE2AaxolGT&amp;r_address=3Dcscott*40bird-technologies.com&amp;=
report=3D1__;JQ!!AjveYdw8EvQ!OWOR32vmBafo2gv8CSF5Rk36l5CmgaNg6CwBh6fTnQVEK-=
0dHOw1HC-BxFaFh_j9Ezc93w$" moz-do-not-send=3D"true">
            here</a> to report this email as spam.<o:p></o:p></p>
      </div>
    </blockquote>
    <p><br>
    </p>
    <pre class=3D"moz-signature" cols=3D"72">--=20
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------E49E6CF3F2F3FA7B35D44259--
