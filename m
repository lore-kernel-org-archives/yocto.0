Return-Path: <Joel.Esponde@Honeywell.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4D5EE00C96; Fri,  1 Apr 2016 05:19:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.110.109 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1975 seconds by postgrey-1.32 at yocto-www;
	Fri, 01 Apr 2016 05:19:45 PDT
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bn0109.outbound.protection.outlook.com [157.56.110.109])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3EB2E00C92
	for <yocto@yoctoproject.org>; Fri,  1 Apr 2016 05:19:45 -0700 (PDT)
Received: from DM2PR07CA0019.namprd07.prod.outlook.com (10.141.52.147) by
	DM3PR07MB2123.namprd07.prod.outlook.com (10.164.4.141) with Microsoft
	SMTP Server (TLS) id 15.1.447.15; Fri, 1 Apr 2016 11:46:49 +0000
Received: from BN1BFFO11FD004.protection.gbl (2a01:111:f400:7c10::1:111) by
	DM2PR07CA0019.outlook.office365.com (2a01:111:e400:2414::19) with
	Microsoft
	SMTP Server (TLS) id 15.1.447.15 via Frontend Transport; Fri, 1 Apr 2016
	11:46:49 +0000
Authentication-Results: spf=neutral (sender IP is 199.61.26.154)
	smtp.mailfrom=Honeywell.com; kistler.com; dkim=none (message not signed)
	header.d=none; kistler.com;
	dmarc=none action=none header.from=Honeywell.com; 
Received-SPF: Neutral (protection.outlook.com: 199.61.26.154 is neither
	permitted nor denied by domain of Honeywell.com)
Received: from DE08W1026.honeywell.com (199.61.26.154) by
	BN1BFFO11FD004.mail.protection.outlook.com (10.58.144.67) with
	Microsoft SMTP Server (TLS) id 15.1.453.6 via Frontend Transport;
	Fri, 1 Apr 2016 11:46:48 +0000
Received: from de08ex5003.global.ds.honeywell.com (10.216.34.43) by
	DE08W1026.honeywell.com (10.221.248.37) with Microsoft SMTP Server id
	14.3.266.1; Fri, 1 Apr 2016 07:46:36 -0400
Received: from DE08W1319.global.ds.honeywell.com (10.216.14.121) by
	DE08EX5003.global.ds.honeywell.com (10.216.14.76) with Microsoft SMTP
	Server (TLS) id 14.3.266.1; Fri, 1 Apr 2016 07:46:36 -0400
Received: from DE08W1305.global.ds.honeywell.com ([169.254.1.207]) by
	DE08W1319.global.ds.honeywell.com ([10.216.14.121]) with mapi id
	14.03.0266.001; Fri, 1 Apr 2016 07:46:36 -0400
From: "Esponde, Joel" <Joel.Esponde@Honeywell.com>
To: Isak Lichtenstein <Isak.Lichtenstein@kistler.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] How to enforce installation of image specific config
	file/package
Thread-Index: AdGL+a2OwlJWzhvETr2eLF8MlZ782AAEhRag
Date: Fri, 1 Apr 2016 11:46:36 +0000
Message-ID: <F6CD090A69E64C4289DC608E1C5D2024253C7ACB@DE08W1305.global.ds.honeywell.com>
References: <91B4C1B91AAEFD42AC985EA0F3D4E6680194828956@kihagwinex01.int.kistler.com>
In-Reply-To: <91B4C1B91AAEFD42AC985EA0F3D4E6680194828956@kihagwinex01.int.kistler.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [158.138.38.45]
MIME-Version: 1.0
X-CFilter-Loop: Forwarded
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:199.61.26.154; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10019020)(6009001)(2980300002)(199003)(189002)(55784002)(92566002)(5008740100001)(5001770100001)(5004730100002)(54356999)(23756003)(50986999)(47776003)(6806005)(86362001)(5003600100002)(50466002)(76176999)(2950100001)(2920100001)(15975445007)(77096005)(55846006)(66066001)(6116002)(3846002)(81166005)(102836003)(1096002)(2900100001)(2906002)(87936001)(1220700001)(586003)(105586002)(106466001)(107886002)(2501003)(33656002)(19580405001)(19580395003)(189998001)(11100500001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM3PR07MB2123;
	H:DE08W1026.honeywell.com; FPR:; SPF:Neutral; MLV:sfv; A:1; MX:1;
	LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; BN1BFFO11FD004;
	1:MvAonK9VZNqJvShefbZog4D/D4+8bhTWBvCAMp21H5iDiLh0jTLi1plNOlj65W5zxa9b2dfqCwzbgLF/wIn/kyvMdOTFM3C5f2lFj0M0EcIg3/TkEGroKFeuG4tB6V8/N7uEKpKT37pGrKzN3jWax9/mpIfrxdQMXPse740EOkofR/ODWqjPFouAqZ954Gi9rqT+4izyBcrUgzgeqNwpwKXsuDky39DrlG/Nrbw0i09QcWm4vFai2XErbcXtB4D1OmqWToV7ZD2kArq1OBJxHxQFoX2gIhNoaw92s7WvbbZE70YVKBS2UQB20fxrVcjDehQEIzfUOI5QpWaeb/7aDq0JIdXt4C1F0fdQtmgvldzuAAz94atmkNgW0Lez8q+pggBrmKsWsk6KsbUbvqPaTnQmNB984ZrYziHIDObxgvr5MVFz6spvUtTi3sY68aRwTFATPG2zhafweb2MZBTgM2fr8L1RRexV01ee3rWQDYE=
X-MS-Office365-Filtering-Correlation-Id: f47c2755-06a5-4cb4-c35a-08d35a234ee9
X-Microsoft-Exchange-Diagnostics: 1; DM3PR07MB2123;
	2:XmLiYtFfchC27lwogzTrLUTHty2Xu4xrGh139NL9X/N3+xU7p2gjpWdiC0Y3q7UjbiOUOOeTEwjst06DzQ6vPZWSOqxH1N08fwWCHumWTmQz+rR/HUfR6lGo5OIMyE6XDGDZVi8xsur7UEZlfZhkFHZ8vJTT8cHd92iVYI4IsbcKO1L0z6L3M2tGySWfkhHg;
	3:s9KvEMQn6LPg6A8ti58XTClwZM4YXC/A5iK0ihQkTvR7H/sI4TcPOlsNJbB6wiiJEhebhwrp4CtamsbtyIj76iyl3LbPH4I1ySR0A0BOBXtdM64qpbIuQZR2tqenyQYusMKCGkKES48uCF3psoxBe6p82O8ARPNfyqxFJay8m1FEZvTVIGN7ZPK+Kij6JSXUVZMTL7Ky1ByOUuFl1rRBonxuwHA/GOR3SPj5yrBPAqM=;
	25:nsamD94aOwpeZKqxdg6qbZETQCUvpeBMPZMY+g1LqFTiwNbXiSTkJ9IPsbiFqIyc+tXjJIRfho/oCHqQtNeR4cC1TFkP3tUsnSE/aTHsBiPj0yi5YCnElY0jz8Ub/9YM/NQHYHI6mWaFyW8J/DFev7CLjAXqrSLZ1Nmt1vbfnGa7BpkzkzQ874s3wkkucgjl3D8mgPxqySfCEhCgNCA+E7YhH1sLFYSBwhpPbVupPitUwG+5llTdgabyol5FAWaDIfxMjdVZfGAtyYD4a/4H0hDgRO5i5NhjMFydMUrbq2ehRDark4yB1GGHgY44kKO3qHdKFOT9Tx2UQUfu2SIQlRXYLGLc2kZ3uobtRm5fyP0=
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DM3PR07MB2123;
X-Microsoft-Exchange-Diagnostics: 1; DM3PR07MB2123;
	20:oIuHptgnNJ9wIdhf9XKJSmatU20UREWYOi1TjufkOAJSHJXT+4wRX7M9qp3Ub39Tg6/ni0wqBTK1iKplWLVl8UsT5vMnjKqp11XqBe/1sYPyDHD2Zt9kPZuTHnRxBiGItOZeT6qdp4RBYMAbNGpt+NspiyHEQwAfM0ugi6hY0f8f4Qz27jyv6UDq/ON4htBB+qveGzGWo4PA7Zq0Kn6BwWmG5qOq/Z+jUASPqLQoRh9pgnW0E4SYuoQ1b8Ns3jD89RW7+BcetdMNzKXqB0fStLCvS6eqc+QNUNhBcmTaEsZ39e7G4ikOq/upESgCAP53I0g1fJC5y2tRQmYSzjmDpj6wxUlGxRZ1Hf9sC5QT2/wf9FmVZri+7qYu1SqX+YSo+ZWKRi/nIOs+jKqwDFDT1IWVPS9A1f0kJCWFieh8atuhX5Xw3tyPDgYOXG/nO8ikkA0i37GiuVPXHEfmQk8GzWJNrOj7juihyo7Lp656xPJ6kjWfOV4fSd9e1+33yy1s
X-Microsoft-Antispam-PRVS: <DM3PR07MB21236F61DB93B1C27AE614A9969A0@DM3PR07MB2123.namprd07.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(13018025)(5005006)(13017025)(13015025)(13024025)(8121501046)(13023025)(3002001)(10201501046);
	SRVR:DM3PR07MB2123; BCL:0; PCL:0; RULEID:; SRVR:DM3PR07MB2123; 
X-Microsoft-Exchange-Diagnostics: 1; DM3PR07MB2123;
	4:YW3eRE//fvQJBcBn9Y59iyH1vO4pnvu2r/nGztpF0SSZhrKlan0/EDIvY1PT+rncOqv/9HtyxoLyGHQj43TlayVuPkNH8yjPuq/7BxtU0kJLAB7MhLnqAJfCVVjO+5VO/CkvBaiQMCpyDnSv/gpolsn7TJvFSiI0tcTAZ+DPUpU0A5qnNegbCCVR7dbgQl8O9dffxbYcyHXh8mIkmSt9QUomXQfTgDJ0E6rEroNSBznuqmGIjh1ORgYr3Oo2eJE//b0zuCr68Nak8neFN2Jp/9wkD/DO6xJldRcSD7MNPFQHgH8732JNLeL43iR69dJ6OOOdhv5YSmGqijJmWS++9vve0yK+bwYsMQtBWHCZDZwRPBOO1F6Jvd2x9zy6rlrXuQiHqzN+5QPcyT+cn6NN8FhiKUwGPYXYOtPz9oA9qIfNMHFkhSgo0wMD4Rq18JsutxImsbslM/IH6ONb3wnC4g==
X-Forefront-PRVS: 0899B47777
X-Microsoft-Exchange-Diagnostics: =?iso-8859-1?Q?1; DM3PR07MB2123;
	23:kHrLMZT+DGAu4IduJOjgHWOpA3mNYnfN4sxV/Jm?=
	=?iso-8859-1?Q?RKLsCHQ78ZPCj3b5ETduejC+SbeUO5x19uRkiO9LKN3qiOAvfRSlx3JmTU?=
	=?iso-8859-1?Q?HgfQmLvspJBOJ/GZEhHBrayaUJ+FW/gMp4+9gXfp5qQChkNCeaYA5Jk6Ca?=
	=?iso-8859-1?Q?ayja6mc47TskzzlGClfP/kSK8tsLRR8iAfFFqtaNKPbTBE3EDaS4zhKz2/?=
	=?iso-8859-1?Q?gy6xI86sWXmUfC3/wMK9N/EY26U9HflDU4ikbPxDyxO15QhLh2ymbG73M2?=
	=?iso-8859-1?Q?BC6c3j4VGex43xda1U/XDA6NtzdNdT9tFEeJ6LBtQmurP7r/QoLWg9LrNN?=
	=?iso-8859-1?Q?yMgpDNKfGrVqXXtOnVcvUhLbrOlMbysjjSuHyqXEahdmYdi+rjhfHwafo8?=
	=?iso-8859-1?Q?kBcgavhGE34/wd6igSJSs0ROwnLzYmFRWMkE3WoX25+IKfiJO5aDhddSBp?=
	=?iso-8859-1?Q?oxlbKvYebrT5bjox8e2q4LAa9hULjPgWAYF2/eT17BGLxaDw2OmTPQ8AzS?=
	=?iso-8859-1?Q?xdBnPllcUHCZsIxm84Whv6xmR/d5NT/I64wE7EKEWUQmEmZ1lm8j5mbpXA?=
	=?iso-8859-1?Q?9GNdNbLfsNd67DkJXytxqJ/acUWeCRJ8vdDzwHQCN6vmCLLumX0iPtoqQ6?=
	=?iso-8859-1?Q?If8DoJScT0ZwU+rOJJCGMp0ARzXcU09a1raPMbqT50mhn+tkgE0F8u0Vis?=
	=?iso-8859-1?Q?dEwQMZ1aWZDNnfCo/oLaKBKzbtq84ok2f9638CQgtOSS84kWbplA97VSCQ?=
	=?iso-8859-1?Q?6h0dD6iRJqThp1cdOC+/4JbYj3toNriB2rcyn5Hjg8ZAgRj2Fwv5I85j+w?=
	=?iso-8859-1?Q?bZnvlzvZ4Lz8T8Ndi95XitniWe5u75OarrI9yA+NCw4Y07NhV2kv9syiU9?=
	=?iso-8859-1?Q?F6A8ASJ+R34Yaj5RNzn91x3ZyDxgnoLU/MQDzYQPdRDfTWrlFFFvSc9q7N?=
	=?iso-8859-1?Q?7A8NK7Hba/zkmdZyjQRAt6tRy9zRJJOKDWQXjSSDIZ8pTO2IuNU0f2+nKV?=
	=?iso-8859-1?Q?6TbTuiOV1qaqoOMBwfPN/Mt0oNc/cdRlyMa1i/W39msJv+a+JulIGgf+53?=
	=?iso-8859-1?Q?KlSVPVo9COPWuS3n0H2t89hL1I27jhsvXH2+Z4yRP87swh0u+WuQExtAaj?=
	=?iso-8859-1?Q?PWbRUi4A4x5SExL2t7MsQ4R/i3UcNN3/gfmB9U1wyq1PrXcFlcKo1HNVNl?=
	=?iso-8859-1?Q?YfkErRciDx5?=
X-Microsoft-Exchange-Diagnostics: 1; DM3PR07MB2123;
	5:FNChZo/9d9RE/7rIebBpo9bYLrDYNe1RPMIn7pNxfzfzCbdWGh03lPWAAtGny/SgAucaV20vr7gPE7JjmQ793vwz0K0YkNeCB69IGJ+dL8+W+FB/oddiF3xa3MLr3Aa5Tz9FkTPJuLZrSlo76wPS0Q==;
	24:mT6584Wea6NFKnWm/N3M1nDbgk6pAxVyZvwJnLKha6oEcayQvq72A3DbTL9xH2248abH7KGzDHE/cG2qJhUikWjfeM/MylAFMYtP4cuWcrs=
SpamDiagnosticOutput: 1:23
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: Honeywell.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2016 11:46:48.1173 (UTC)
X-MS-Exchange-CrossTenant-Id: 96ece526-9c7d-48b0-8daf-8b93c90a5d18
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=96ece526-9c7d-48b0-8daf-8b93c90a5d18;
	Ip=[199.61.26.154]; Helo=[DE08W1026.honeywell.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR07MB2123
Subject: Re: How to enforce installation of image specific config	file/package
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 01 Apr 2016 12:19:48 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

One idea may be to create one recipe per configuration file.
So in each image recipe, you would add one of those recipes to IMAGE_INSTAL=
L_append.

Interested in other ideas for this use case!

Jo=EBl Esponde
Honeywell | Sensing and Productivity Solutions

> -----Message d'origine-----
> De=A0: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] De la part de Isak Lichtenstein
> Envoy=E9=A0: vendredi 1 avril 2016 11:35
> =C0=A0: yocto@yoctoproject.org
> Objet=A0: [yocto] How to enforce installation of image specific config
> file/package
>=20
> Hi,
>=20
> I've got a package "A" that has a runtime dependency to a configuration f=
ile.
> This configuration file is image specific. For each image I've got a spec=
ific
> configuration package "config-image-X" that installs this needed
> configuration file and I build multiple image in the same build directory=
.
> How can I enforce that each image containing package "A" also installs an
> image specific configuration package?
> I've tried with virtual providers, but then at the second image it always=
 tried
> to install the virtual provider from the first image as well, which leads=
 to the
> following failure during the rootfs task:
>=20
> check_data_file_clashes: Package config-image-1 wants to install file
> /home/root/build/build_dev/tmp/work/poky-linux-gnueabi/core-image-
> test/1.0-r0/rootfs/usr/bin/config
> 	But that file is already provided by package  * config-image-2
>=20
>=20
> I'm using yocto jethro.
>=20
> Best regards
>=20
> Isak
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

