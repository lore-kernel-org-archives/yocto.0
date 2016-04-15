Return-Path: <Tom.Vajzovic@irisys.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 622C4E00C2A; Fri, 15 Apr 2016 09:16:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.110.147 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 103350 seconds by postgrey-1.32 at yocto-www;
	Fri, 15 Apr 2016 09:16:52 PDT
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1on0147.outbound.protection.outlook.com [157.56.110.147])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A52B5E0092C
	for <yocto@yoctoproject.org>; Fri, 15 Apr 2016 09:16:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=danahertm.onmicrosoft.com; s=selector1-irisys-co-uk;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=r8J4f3qIZzAzL7OE+0xWpHwolBEfzHDaiy3RYfd/4ro=;
	b=AeyU+KbojrRdFibCKSz4wYjKJyNs3mJNv9+lpMVJAKlsGR3tMgQLkcB0TmnLcd7JyOcy5k5oVQrQgeGXU+p2IzDjeD2c6g+Fqn2Wn/joUJyta2GCMrOl50NdT5mAXMP7FMZISipJuw9U/k+x9TnpbwPKmMOtF8W83/iJdpoSy8o=
Received: from BLUPR05CA0073.namprd05.prod.outlook.com (10.141.20.43) by
	DM2PR0501MB905.namprd05.prod.outlook.com (10.242.173.156) with
	Microsoft SMTP
	Server (TLS) id 15.1.466.19; Fri, 15 Apr 2016 16:02:28 +0000
Received: from BL2FFO11FD040.protection.gbl (2a01:111:f400:7c09::121) by
	BLUPR05CA0073.outlook.office365.com (2a01:111:e400:855::43) with
	Microsoft SMTP Server (TLS) id 15.1.453.26 via Frontend Transport;
	Fri, 15 Apr 2016 16:02:28 +0000
Authentication-Results: spf=pass (sender IP is 192.65.42.18)
	smtp.mailfrom=irisys.co.uk; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=bestguesspass action=none
	header.from=irisys.co.uk;
Received-SPF: Pass (protection.outlook.com: domain of irisys.co.uk designates
	192.65.42.18 as permitted sender)
	receiver=protection.outlook.com; 
	client-ip=192.65.42.18; helo=mx.danahertm.com;
Received: from mx.danahertm.com (192.65.42.18) by
	BL2FFO11FD040.mail.protection.outlook.com (10.173.161.136) with
	Microsoft
	SMTP Server (TLS) id 15.1.453.6 via Frontend Transport; Fri, 15 Apr 2016
	16:02:26 +0000
Received: from US-BV-EXC01-P.global.tektronix.net (128.181.11.7) by
	US-BV-EXE01-P.global.tektronix.net (128.181.15.45) with Microsoft SMTP
	Server (TLS) id 14.3.248.2; Fri, 15 Apr 2016 09:02:03 -0700
Received: from EU-EHV-EXC04-P.global.tektronix.net (193.221.129.151) by
	US-BV-EXC01-P.global.tektronix.net (128.181.11.7) with Microsoft SMTP
	Server (TLS) id 14.3.248.2; Fri, 15 Apr 2016 09:02:26 -0700
Received: from EU-EHV-EXM01-P.global.tektronix.net ([169.254.1.160]) by
	EU-EHV-EXC04-P.global.tektronix.net ([fe80::460:bcd5:c8fd:14c9%13])
	with mapi id 14.03.0248.002; Fri, 15 Apr 2016 18:02:24 +0200
From: "Vajzovic, Tom" <Tom.Vajzovic@irisys.co.uk>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: module do_configure depends on kernel .config and headers
Thread-Index: AdGXMAINBY5Zm3+XQGCGNDz/JJQ5EQ==
Date: Fri, 15 Apr 2016 16:02:22 +0000
Message-ID: <14E4216AB3B3624BB1E80BC692D0F413D8D3A4F7@EU-EHV-EXM01-P.global.tektronix.net>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [193.221.132.30]
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:192.65.42.18; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10019020)(6009001)(2980300002)(438002)(199003)(189002)(5001970100001)(110136002)(107886002)(450100001)(97756001)(50466002)(66066001)(33656002)(5640700001)(164054004)(106466001)(229853001)(50986999)(46406003)(2351001)(54356999)(1730700002)(586003)(102836003)(1096002)(85806002)(3846002)(6116002)(23726003)(55846006)(1220700001)(47776003)(2906002)(9686002)(11100500001)(86362001)(92566002)(2930100002)(2900100001)(2920100001)(74482002)(87936001)(5008740100001)(5004730100002)(6806005)(5003600100002)(22756006)(189998001)(142923001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM2PR0501MB905;
	H:mx.danahertm.com; FPR:; SPF:Pass; MLV:sfv; A:1; MX:1; LANG:en;
X-Microsoft-Exchange-Diagnostics: 1; BL2FFO11FD040;
	1:qir0TJlknTkqZnyWpIGRGH4XAgCspHE79QixRl1K4mhx59cksXlAToG8AZ0TheCAu8rcCHRZE/1ucS+ipq8lkTfjBm7dwBn1vDY1EYYs0L+k1kN0tu/iUwSYDIC8dVZRI50teWmvgJz3XyTkYGnIzIqBVElKiYR8e5uFzesM8QsYGgAc0E1RE1U/f5HnRlS8AdIf388krsMaC+UvoaILi7LHJuWyYsm5oVkIqGcAMid/mBbmEZ/f2HdwP824vRtJkQuDalSnnwXKTfnmJgWFCrFhxz6yIzPxI1VyYK5Slcic+yXJdKGUEqWBebkut5yviQPpzB0EgwAyYbUqvv/chTwAe0svhHexvyk0rV0lfjMKgqdS4XcHy79GLjdWQZqOdPUhM+mbfgta3DH6UCzZv/pE2xz2xUeDIKT13BlQ6cMuvA2mr5Dr/NVfA6L+6qqailUPtsuFYNE27Cd4TW+/bJKRFT5NbxzInu0NoXv0jBdaEV6jVWbU1uExii+ZAviV
X-MS-Office365-Filtering-Correlation-Id: 96db7973-b1b6-423e-bd1e-08d365475751
X-Microsoft-Exchange-Diagnostics: 1; DM2PR0501MB905;
	2:jfYJBR5BCPxSbucahIeplUtiQ8PAUiWvwoyme/pJShGaCZ5cK/Q3+XVS+0NhtyFHC+LjurwnBm0lkftd4mKRTGNM0IvqvY96Y/MdDNqB4W6eI6NFwr4Lukq9ubv1jVWPpvt08rW8EICZBvAyG5Fh6A31XhU1yHzXVXzd7yybdjGQXycV9n0eWKaKdsEHg3i8;
	3:bQ7+xlJiE5rS1zVoWUmzgqVQxjpHUbTonP9qE+lo/fk742RZlIvMd/jJ7vwGwb0ZDpJHkY8TxVdeTDNCv4/x2QjeEIT786DeAKuPgKxzmYBnSjCQiLxbeq8YSrGds87pE5HNp+aQsc8GF9Wq2QhxzWypZ6wuV93HGpkttMVycwJoFM198/DGeFyt9akVryI1AdNs6Z2nD/acm0Yehu64YZqHEsCoeCZLYMTLWFTWMllhzgh284v8L4VQe3rX2yMp;
	25:WJkzIZCKSk9Rs8AEeDfn1GfbGoGPLrw9Tw7Rk9tLt6OUPGwuANdHLOkrCphjgSZ+lgDjY/vv8LP2Uq2Zj03j46vWJdeGnYxL3l7fSwBmIz9QW5IgSFlVpZzkn+gJsa6QlqaHlnWyEWe9Jy1Xo3dLG58hvrF1i1j1Whh0KrGAOa7mrmRLhyyakwYuuEEtjAoj94eKjEnwHVLkJKx6gdq+rooX8XYN5gvLbgWkCmepLwRl000xox6WJqtT12JZRMGzVIbrv3pMjmawMZdhP/PVoDq+x7HU2djG+ekpkGGJR2Eab7zGpR0KPHxgaoHAv44bw0xmhEXT9aSW3H1cCYDS2A==
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0; RULEID:(8251501002);
	SRVR:DM2PR0501MB905; 
X-Microsoft-Exchange-Diagnostics: 1; DM2PR0501MB905;
	20:+l1uiSUmYIZe78GJYFgyi7T7gjdhe08hxxoV5PwzYcQfZpbdxh+5IM0YAi6xrYwajGAlPvYDSozvalCUhHriyTgo2lkN8oo1GTZoVcQ2OpJZJWAp955ruUN7yxJn9WomGNMEGtX2kbWis7sWcw1OKzNNWxQ7iqzKiPLFW9AKDJJuPGDa6SQdBi5jehaLq4QeMr/eL+wEXZkW9wS6yRpvNAZo/jTzLLTYPOvlQxEZ2qd17ru7czFrl1DaBj/8pha/P1tN7Rd+LwrbicasY1ZAnfCoi1O6laYPVA/FI22BC/ZU00ZbPIQeFyORntjssfrCFLhTQa3wnHxeLzA64PawLjtOFNMV4gW144rIjWw0rT6fb2RlBFJs1vK++31JJD7E/H5rQSDhbBqnqSOutc/DxYW50HH1HcTkXie5kTicHho52OFS3YKVv51XS0n46b0glk2WnHYV18NpPuZ+hkWPeVkjOHJ0jvb1dB8PJ5HJlkoQvaNyUsszk96Kuvcw2LaL
X-Microsoft-Antispam-PRVS: <DM2PR0501MB905630A1E1B1D87868D49A7AF680@DM2PR0501MB905.namprd05.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(9101521026)(601004)(2401047)(5005006)(13015025)(13024025)(13023025)(13017025)(13018025)(8121501046)(10201501046)(3002001)(6055026);
	SRVR:DM2PR0501MB905; BCL:0; PCL:0; RULEID:; SRVR:DM2PR0501MB905;
X-Microsoft-Exchange-Diagnostics: 1; DM2PR0501MB905;
	4:JFjSUrEKfbb2IHwrfbHha4KUbQif5OcfLrsGqqZZCCgJIYJDeh/c8iYghpprv9gb7E9jEQMHxonlgtaNZzsehPPWQr7qGzY4ve4dc078uJL9rIbsFFzKv48Ihu8JoSj+YxSGfqozhDMgEvMU/Us8/U5LbRNu12Oc/YOMynRCPYbMAvMaICNAAoPOkb40NaiunnynvS2OxvFTgDw8OMIBxhi20ILvGEE0GOQeiMDcztTV9b0rNYra/D71dfa/pAKk51a73yGSRuCLytu98wW2h1QmSQy9dfD0bxP3kDkNtGb1tn8LemZgcj2QZCJSuDwSgsIyhna/EffpDQqrjo5WZsIVgHYUthfTT8chV0gNa/phP/9BZJ5kQP+liK0AK774eSqlMJVjlj9OccMIyPFd4HHLzrRh0agLEDDUIWV2zDHzpX95MCIoJdPJqYwqJmklFLlFvrP+5erU/ExKIbNQW5LpQHYgrxtB4AlhcLGTy9VQXVXQl+VXq6TfRDKN2wEK
X-Forefront-PRVS: 0913EA1D60
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; DM2PR0501MB905;
	23:p6IwgXwLbCOkqk2G7oEWAqYZVYz+K6EmJUKVvGt2?=
	=?us-ascii?Q?VNh6PHJMmf6JbIZdeyE1Ks6jiSxjiOLnsONzhIVNgDkSNsGKJovnYZY5CT6P?=
	=?us-ascii?Q?oKxztNCDlnnzUbLXHFV9V1hUniAe5OKYl89EqcQj5gw/bvFBPeOMU8EFbbjM?=
	=?us-ascii?Q?4rPD5DEyiBuq2HfiwD23zhjdd5kMnOJ4UqAOwo8QALnkawDGHb8iSx5IvzWm?=
	=?us-ascii?Q?uD/1fIEHodWkeshrFbp6eBM+Pld+YKilYJPFxYYTNBnvqQ14eZO92+H81yIk?=
	=?us-ascii?Q?T1i/2O5IVrbJL6IpMQsq8dQA9aQvqNPb7Frt6q5n6JadvjtCcTqDJE/rD/bJ?=
	=?us-ascii?Q?i79zwzDbDAMHdY7PHs59TyW/2mrHpl6NgJwz9qM0OGn+47KmAyAD+bPeQfzk?=
	=?us-ascii?Q?930bUVzs3sfy0HG7MGDNWZpXLe9WYV3m+a+Abxh43+v4DZYgngPNNGDzMjcG?=
	=?us-ascii?Q?DD+bEOQaQ3mM8CgvJ/gMq+5Oya1bIffSBI5Vhe67xwp81iTTJj3GE1zkz+iu?=
	=?us-ascii?Q?zTRB4BNQGE+SVNPyfAgWvAqM3XD+tRxJxS/Y0NX8gk/aAsrto50diXdNRkfy?=
	=?us-ascii?Q?qYOAQeP+LsEBUcApcxCQH+giQDDUnU+BLJHSiJJo/hCSuPipgjtN9kzMWivz?=
	=?us-ascii?Q?tM1chEMGXt+M44Smn9+usk/0HBga8CT/3KbRJCMDyz5CmJ1K6gEP7mYwPwFF?=
	=?us-ascii?Q?2wfHB4a7YUuxPbDgJ+aO/v56FiESwcTLMRbC/W4u4ZELxRffxipomHGFov7C?=
	=?us-ascii?Q?RQ254saQtgeqzBnZgXbIB7KXLpMRgOysFLugK7CaEoDQ/IqG900y8isJurAk?=
	=?us-ascii?Q?Bf4AgtsMR6CuVawx8ZOooILeoSQwPtqusgcW1xCyzslsoj3xYjmW9yBSnKsK?=
	=?us-ascii?Q?p3NMyCXxOgP82rCAE92etaar56G0gkU4Usc+Vh/KPeCpbjig7AyoN2djRrV8?=
	=?us-ascii?Q?cbkrmcI4C8R/VZrVSdr0bnaMzt9GehhJEjhLEwur1P1XtEam7rT8TpYEbjD+?=
	=?us-ascii?Q?5ZBQGeMgfyyqXMzOqUdXhZSyYTo3fKkSkDdJFHCK6+UIf9hlaYuQX7nnT7KG?=
	=?us-ascii?Q?g3cHip/AlRDTaIzLZasmdFC+NP7SkuAmPQ24Uwmkq7PqGZSekvwo4okAFpIB?=
	=?us-ascii?Q?DazTWs7GxaYhUWvUY+Spgdj1ztTwIm8vsc9k1oT9PhqHnkYGf0a3LXXTpqUz?=
	=?us-ascii?Q?m5qwVuLfhi56sbmPotU2EzuZGOKciDrxJ+20Kg9NFShBh9t5ShLR7XI5Kxa0?=
	=?us-ascii?Q?cMtLPJ8Fit3mvjvROw0=3D?=
X-Microsoft-Exchange-Diagnostics: 1; DM2PR0501MB905;
	5:VSQDhdZxv3fHmNcqKu9is1Wrx7c8XgLGNIs6UlDQYthLZV5aiqPRUIwfXLuZlyhfIgeTmNE07XB0C5t+z0eSq0tFmYjqPxm06wV88CnFuUt6OvQwdwwl1YcpE9icMXhxUunVUeBZZa6uwFZZmTdUxP5RZAq4pinxnmrrm2xESfb8gMsyP55SlZd9Mk5EH3D9;
	24:WtcK0KeboQuD1Wb8F79x1NqcHXWTb8Kwr3CRHn7JZA6Inw9XYYpZS1fvKlSBP9dz9hhK0CJW0h4s/FbeblVKKG8dp8yCzJB75sHcQA9NyhQ=;
	7:lwpiuV5VhFsFLfqH9LG+DjyUMj07oS7QCwUh3+qci5O2qGZSTlmm9e9ArFqW5B7YlgeeH58n9ID/9cJh5ppqNVqRy/Adafyzxe02TX7wAUKMbImWF/XP7jp69IYYhs4tMo7X/Scqe/JRhoR0h7ECoC0Fzu5qreKyNLe8bylMRZdHBHwa2V+8gRuDEyPjI2KMkyQk3hsRmFFRKV/NvSs6wCLym8LRjRpKiZ/ebezUwwE=
SpamDiagnosticOutput: 1:23
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: irisys.co.uk
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2016 16:02:26.7841 (UTC)
X-MS-Exchange-CrossTenant-Id: 937985d5-3f80-4fc9-be29-0bccc11e8b77
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=937985d5-3f80-4fc9-be29-0bccc11e8b77; Ip=[192.65.42.18];
	Helo=[mx.danahertm.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM2PR0501MB905
Subject: module do_configure depends on kernel .config and headers
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
X-List-Received-Date: Fri, 15 Apr 2016 16:16:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am using a meta layer provided by a SOM manufacturer.  They have a recipe=
 which sets:

inherit module

export KLIB_BUILD=3D"${STAGING_KERNEL_DIR}"
export KLIB=3D"${D}"

and then its do_configure script calls make, and the Makefile expects $(KLI=
B_BUILD)/.config to exist, and the kernel headers to be in the same place.

This sometimes succeeds and sometimes fails, which I presume is to do with =
the order that the other entries in the run-queue are executed.

I thought that this might be because the dependency on the kernel .config a=
nd headers is not correctly recorded in the recipe.

I added a .bbappend file to the recipe in my own layer which contains:

do_configure[depends] +=3D "virtual/kernel:do_shared_workdir"

But this has not resolved the problem.  I have used bitbake-layers to verif=
y that my bbappend is being applied.

So my questions are:

Is $(KLIB_BUILD) the correct place to look for the kernel .config and heade=
rs?

What is the correct way to record the dependency in the recipe?

Why isn't this done in module.bbclass?  Wouldn't all modules depend on the =
kernel headers?

Thanks,
Tom

