Return-Path: <Joel.Esponde@Honeywell.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE467E00D29; Tue, 10 May 2016 03:27:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [65.55.169.112 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 2098 seconds by postgrey-1.32 at yocto-www;
	Tue, 10 May 2016 03:27:44 PDT
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0112.outbound.protection.outlook.com [65.55.169.112])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56006E00D1C
	for <yocto@yoctoproject.org>; Tue, 10 May 2016 03:27:44 -0700 (PDT)
Received: from SN1PR0701CA0011.namprd07.prod.outlook.com (10.162.96.21) by
	DM2PR07MB621.namprd07.prod.outlook.com (10.141.177.140) with Microsoft
	SMTP Server (TLS) id 15.1.485.9; Tue, 10 May 2016 09:52:44 +0000
Received: from BN1AFFO11FD011.protection.gbl (2a01:111:f400:7c10::126) by
	SN1PR0701CA0011.outlook.office365.com (2a01:111:e400:5173::21) with
	Microsoft SMTP Server (TLS) id 15.1.492.11 via Frontend Transport;
	Tue, 10 May 2016 09:52:44 +0000
Authentication-Results: spf=neutral (sender IP is 199.61.26.153)
	smtp.mailfrom=Honeywell.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=Honeywell.com;
Received-SPF: Neutral (protection.outlook.com: 199.61.26.153 is neither
	permitted nor denied by domain of Honeywell.com)
Received: from DE08W1025.honeywell.com (199.61.26.153) by
	BN1AFFO11FD011.mail.protection.outlook.com (10.58.52.71) with Microsoft
	SMTP Server (TLS) id 15.1.492.8 via Frontend Transport;
	Tue, 10 May 2016 09:52:43 +0000
Received: from de08ex5001.global.ds.honeywell.com (10.216.34.42) by
	DE08W1025.honeywell.com (10.221.248.36) with Microsoft SMTP Server id
	14.3.266.1; Tue, 10 May 2016 05:52:21 -0400
Received: from DE08W1305.global.ds.honeywell.com ([169.254.1.182]) by
	de08ex5001.global.ds.honeywell.com ([10.216.14.56]) with mapi id
	14.03.0266.001; Tue, 10 May 2016 05:52:22 -0400
From: "Esponde, Joel" <Joel.Esponde@Honeywell.com>
To: Daniel. <danielhilst@gmail.com>, Matthew Clark <linux.matthew@gmail.com>
Thread-Topic: [yocto] How to add libraries to poky toolchain
Thread-Index: AQHRl0YeYBLbaLaYfkW9WQiMOO+9l5+LpasAgCZrrpA=
Date: Tue, 10 May 2016 09:52:21 +0000
Message-ID: <F6CD090A69E64C4289DC608E1C5D2024253EE329@DE08W1305.global.ds.honeywell.com>
References: <CAHHS9cGm9FsQ+d6_JJqFR5h3Nu-0O9cyTaoUZ0ewC9-4_ANJhA@mail.gmail.com>
	<CAF3SDA62uB2f8SQP=oTu4tRv=3JbowyzJ_NNx04XtM6=yEoPTA@mail.gmail.com>
In-Reply-To: <CAF3SDA62uB2f8SQP=oTu4tRv=3JbowyzJ_NNx04XtM6=yEoPTA@mail.gmail.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.19.130.199]
MIME-Version: 1.0
X-CFilter-Loop: Forwarded
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:199.61.26.153; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10019020)(2980300002)(377424004)(189002)(199003)(55784002)(9170700002)(2920100001)(2950100001)(19580405001)(19580395003)(5003600100002)(19617315012)(15975445007)(1720100001)(77096005)(4326007)(2906002)(6116002)(102836003)(15395725005)(16236675004)(85806002)(586003)(84326002)(106466001)(106116001)(105586002)(790700001)(1220700001)(76176999)(54356999)(50986999)(86362001)(5001770100001)(512934002)(55846006)(16796002)(8936002)(92566002)(11100500001)(87936001)(19300405004)(5008740100001)(6806005)(19625215002)(81166005)(33656002)(189998001)(10126625002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM2PR07MB621;
	H:DE08W1025.honeywell.com; FPR:; SPF:Neutral; MLV:sfv; MX:1; A:1;
	LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; BN1AFFO11FD011;
	1:smuXtoz3E7f3dcGZSad5kv63PbI0hLnuXPt7RMeKPUk5QvGOpY9jM/Gy2yaYdQltH6g004C1bGDNmPd8u04Oe3/mcM6S73J6k2Mt+TXe51YdPWFUcCL6IeFNcLQhYsEPH8RmbWv0yEvFINYJZ9CyT/v8MbFvOxxN9tomnIeIONiNPWz5lWeih1DSUwKdsjYY65mAgtqhGR5AuDcWzslrugHCJqxPJS7lmiVA2mgils5O+GZBxm8YXCfMxIFRQt6QSrGs+57f5WDkfN0bjH0bRJl0uWIG5v/I+oUlIpR1ymrhGpgI6laP+OFT3oVmuZn8A/RbSi9P/JY8ICkiIb8dQFMHm2sCvcl8+oL8GVMFnT/fDUUh0iKOIwd+HDvte/gka0s/ttJakHok3cq40lJKef4klgFPcowDRB/Xnnd+kq49zGOOl3A5wcullK2gUaliBKWbFczDow1dSQvg0JHvUz0RH21d+bghJsD98MAlfomfzuwvkb2J1gSljNhFwTU9xSLdoqDtRnTh+EvY97fMYN1w6u0GZ4CpozU0sZIfbmg=
X-MS-Office365-Filtering-Correlation-Id: 92d7834b-f340-4d24-27e7-08d378b8d56b
X-Microsoft-Exchange-Diagnostics: 1; DM2PR07MB621;
	2:uNkZ5/gILRUAS5PiIbmMxumcwLEhh2Ajy4wBN0ItxPzGQt0/pmLZQBqjueiAZoswLYBV46FeXid7W8ujPZcMIIX3R7NqYXKnR5HH70XK3G2e9O/4H0+8yaZvjugrCAcqsyTnGwjDIfkOnEceKkf8XTYF6wc+mhYUZ3mEfEBn09KDm8Frt+6Ec6CCb9sedVOW;
	3:LUwxmy4OtDtLgZ5U2iAO8lIVBSgdmj6Hb6v22aymUNK/gIg8jolqF6FJYFF/C88dedG0Fl1nsTPPCR8s25AoOSs2RFseVRA1mDnZMbO28EcoGdDjb9y3ugmX6crY6mg6iUrty7SRuDV6PzVNFPmKJt8fNBd15XHwWyFRKwpv+GwwP3z58DYFYsnNecMMp+fquobRePlZAZXPN9NVwPu37IcFPiNsSQ1U1BEVrPGha2M=
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DM2PR07MB621;
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; DM2PR07MB621;
	25:6XCHZwGjQEs5KEZVh3o5wtS7BnqKSHYsUc4ajohaF7?=
	=?us-ascii?Q?AXy9/7mSB7fEQ9VucQVSETGhGwDJIufYryQ+7pqcXI5mH1gaa1zWnM1zM0dm?=
	=?us-ascii?Q?P3GgDteISkGoavgqxJtgcgQn1951ptgwYZ1Z94V5mSxYH4yNrmMOs02DDkvU?=
	=?us-ascii?Q?69OfW7LjYHpQgE5hKAg4XnIpeufqzanz9cmnYkc2ggmVmr5hQzZPwYQ1pkzI?=
	=?us-ascii?Q?04/33myHhkjypnyzYyNEAriRNuAHb0tI1efCmxPX2DUjM5jRP4+L04AkcQ4n?=
	=?us-ascii?Q?xsLr+giQ/FPi+ecv53mxgCqAJqVgK9LJExOyuU4NmTeC4h/qbMeJnbqa+xyU?=
	=?us-ascii?Q?eeWhV8TgHle0zSfuSZC7mQ8JAscVI+HEtOrlo0+xqHvX6qF2PJmMgdPUFkBC?=
	=?us-ascii?Q?gVRna6GJ5JSLEnLvtLBMTSasH3/TOiLnKRiFG7yVC+3YexMO98P5pdMYlGob?=
	=?us-ascii?Q?VnE4MfaAFTS9DAINUKYoy5I4HAoqgaQH6u3HEL7HWi2utxWeRSLY/YJgQHRc?=
	=?us-ascii?Q?VgxxYWf9+eloSF4DjDWW36wG7nYkNFXeUBaM2J3/J1bpHfpDGtWFxKAco42M?=
	=?us-ascii?Q?o/Cx3zib0aj0UbfdwZsmvGrl+4PNmuIBzxJgLnwrqq5p50JPS9eBJPb8WmIp?=
	=?us-ascii?Q?ndfEWU0KRXFB4YYFfzgaS29/9ghrOWC4F5Ipjt51/hXNKvX1XOScdQjaMx6H?=
	=?us-ascii?Q?QGyq7YaXYKzW+WRINThSmf4MjQzENzj0D+OefOobYGR0nb4B2HbB1HwnGMsm?=
	=?us-ascii?Q?S+O13/uxl/G3GTn1Vq/rYcdu9J3aRvOWz0ailzKouHqVi4HxahNRHupDMyF8?=
	=?us-ascii?Q?aFh5TUwPFB66cRvAi8gnVow0pPOhk2cCaV0tPaj3+95n8XR0HoC5FqSqhDpE?=
	=?us-ascii?Q?MBBxvhs3AoXYa3iI/sesCaU8EyLipBaUP8XgptD71xsnONUH6bsc8cCMV88x?=
	=?us-ascii?Q?s/2A+2gABcJ+vBvPtcIXfsQaNjwQy3xSz3PkiNSIY/BvXnvEp0kStx4X8a/k?=
	=?us-ascii?Q?gRyNiDv2EWThCDFLBhsUVWfIUfsKGlNhvP629hj0KS6Xk4R/3MweoLyjOQLE?=
	=?us-ascii?Q?D4+pw=3D?=
X-Microsoft-Exchange-Diagnostics: 1; DM2PR07MB621;
	20:m60oEvz0vNYVlOgG/PEbqdGRr1MtpdP/mr01Q3+ek6noen8isSTgxGOUHVgAjRv8is67zR4WIBdh2cfd+Tq5FvPDroF1McG3vJKj2UIX5ayfiQMck6IJsC9w9FaHZIa8ZZvUm+ejpq4jIsXvvvemnr7w8NM2E93hhAu1IFZLxglEFN8Fn71SSh+74MSjBiM0Ua5tMil2b725vKds4fWxbfJh53ny3jHaWAJNnej8nYPxxYPlqp6m1pW3nO1Y00LfaClmQjarQC+TkOvs/Lg6eJqFgTO7mPM5imzjqtOg++B0SpV0Ly+MCZ+abTZgSi+Z53SqLR/6ntXXHm4vdf0rclxkLvnXG7zdjquR5I9yALZ16Ej6JF88d4TI788iEiYMSIQ6d8XYG4+m9XEOwVLDs19AT24HbmR4c5KNS/qEO2vA5nrlRSsU3orh8LoK3c2eOP+pTRx1UVt3setNnY6FaqUG/ukwZo08yB53ujwIej/QO5soKKevLjtNQesJ0kkj
X-Microsoft-Antispam-PRVS: <DM2PR07MB6217441B0E3A20623CE379A96710@DM2PR07MB621.namprd07.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(13015025)(13018025)(13024025)(13023025)(13017025)(8121501046)(5005006)(3002001)(10201501046)(6055026);
	SRVR:DM2PR07MB621; BCL:0; PCL:0; RULEID:; SRVR:DM2PR07MB621; 
X-Microsoft-Exchange-Diagnostics: 1; DM2PR07MB621;
	4:1Tcem51uAKNmGPT6MFbZH38CZ9D3FeJPFJ3kjNr29TAU4KzQDToNLS+OfKRqFcoulF191oTbSduesaFusmGlyEqSZDZCBKbAJB4tlzEU1bbdiAnZGhrCtsj6EuOObjP4F9Vq2gPQrH0Pm0fQLji2G4iOkWqvSRDfvquLPI7RZKZMuhJAM3EFR2hJUdwZy36Rynok0TVHxkvEo9sQaVMXkjClBoghtkCBuGKBdi30Oa7dliSuMtn29Ypds1YBPQebLrUZs8z/VsRJj0f4Qjp748dwjeENIbMpuVfjyTFAy0Y8cZXVks9YG/dBlsfczFerGvSKaiNnmumH+hhY3hYjUKJOQRqpE7fB7jD9xZwg8VODw/cxUCsPuGxobO4Tp6pxbnw6I1aEsSoHPdDU82HsgF/D9mwKxxzTVC3Tzir7vVlHo9elC3pSywW2u6eBRbZPnZZ2AJy5/A+9NBica1S209OQL72qGe/HU86d1tJdoCw=
X-Forefront-PRVS: 0938781D02
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; DM2PR07MB621;
	23:8jCCWoXvzC/0peZ5hs5JaNac0CE2RO7p1i9eDmXTjJ?=
	=?us-ascii?Q?HaNoze+zVLAdpJ+BAIAaeQoL/KU12KSx5yBfsLx8u3d89BnWV+JriN5wICOD?=
	=?us-ascii?Q?YhI7OD5Uh7Jr+9zqxYx8JMZnBRNhVkXh620mUgnW6EKoS0LnqFgKiA7a78py?=
	=?us-ascii?Q?ljmXI6RLycStpFPmZnwPvgOwBC00KCzAynaN61BPY3RmWecWantqPO3HZnNP?=
	=?us-ascii?Q?Q0KhPi9jg5GN1CZpN4PmIzQ5JpttxfP6a4MfZGEGqTX5YJwoCCLG2sMcPyb4?=
	=?us-ascii?Q?7zLr3EylOc+YeKa37PqsM5Ch+AfUAJH55PJfql5cs0kFfzwBB/MFgeG/hQ31?=
	=?us-ascii?Q?F819zn7RlIWFJxzV79DzDGQ7YuQA8+DFhcNoOxoQaC0k0CImGnHFqQyNclUg?=
	=?us-ascii?Q?I38JwemddFwDl3WMaXZJtueorRH23nvEsz8tvIiF9jqzoPxfZC4WZaFzaVR5?=
	=?us-ascii?Q?krEBJh1KvEhRA4+MfQAypO3mBqapZgt32lw6maQedS9Orqv0eKcZZri1Qmar?=
	=?us-ascii?Q?wGVUohZI9lznRnNrcngQ1yys5Kp/RI1LpTIwilsCFKohpChbC9rnSjB5RKZC?=
	=?us-ascii?Q?VUa5AJyV/eIQJHcSV/6fYXmNFK/wdw5kgyWiIW2Nf12OD5nGXY4GwMIcYih0?=
	=?us-ascii?Q?MjqdzoVsrslRgPIZZyyYBVlbz164r6+rId+JiZOJdJOYQB7l7XsGgb9cxwJM?=
	=?us-ascii?Q?ZnBz73hrIV4RS/1O3DOyc7FoREstw0KTqGns1jtApeidEv76jBr/AIrFA6fi?=
	=?us-ascii?Q?0TrSyEkNf6oJZxx4vE0I9J5LLlZCIWm0m6xzdCdxt3Gaq/xwseqQda/AEhN6?=
	=?us-ascii?Q?TzQnbBClYqDG4dpBeoV4sDwrRdrN4/xoNELjWyZRXc0Sbf6XxU2jZWklGQmA?=
	=?us-ascii?Q?Ya5YP5jL3cwDedeDoQJm7Ig0gvS2lgrjZN9LsBE3wDEu4Kttv1f+auT6Zgqp?=
	=?us-ascii?Q?kMCb8BruFKkPv+2OGz5iCa3SmMqzpcd1KO7BDpqAxVcIar2MhvSgDfgK2Fmf?=
	=?us-ascii?Q?MRI+CiML9npbvOFmPi+LVaXHpWIlA043Ne6z9erZvBcWZpggGmjeIEgtg+v2?=
	=?us-ascii?Q?O0esFu8JO9ZeMq976u7UO+g6cGlBX2IPV5hzzMyIVifSHEZZnfGbf2+eMtCm?=
	=?us-ascii?Q?A+abx78A8i487R3M8QnPLBl6RqSG+cC8PHImxz7FSKnz5tdF1/Ap7C0nMNfQ?=
	=?us-ascii?Q?GIVRLZa1VMVFa2TG/PS3mFWJY8smj8h+fVdhOSmscaB+84uf10hJB+YQ8L1q?=
	=?us-ascii?Q?mmQ1lXMa1jwr7YotOUk1L1xS1qyoXVxoDLgxKFW3yZhdKt42xhPlMkPyvq26?=
	=?us-ascii?Q?fAWcZkU7G4ouw8I2FCHjw=3D?=
X-Microsoft-Exchange-Diagnostics: 1; DM2PR07MB621;
	5:2xR+N/3H9pZRJovt8SMEtGwK1ygwPfXXmk45h4x2asPjKVAt1+qELSQuOyINFTJ6TdVK/gHFjWJFE7s6Tek7QjTEv/qX0CAAXctU+yAPL1j7ZnfsFARE1fQcHO6kboj5wYV4LaLVPLOQEseYr6UCNA==;
	24:C1l/dxxSnKNU9jDK2k+6FH6/kYj/4lMoT3y5562o3injdRTXS9zIkvD4Ol4hRMdnBf8ODycJkZrvOwBhd5r7/pp0C3ghXRJG9utYkNSe/LU=;
	7:16oFAva+iBYKVzrH1o1FQJySfrCHmRuDh3hXuY33Y07LTDNujgyDrkf3v5t5A07pCDlpZ18QOubN+KGg97FOwDJa4QKpMGw/xPAqh9F/rGe8MzjhxW3xNSXCc2f0pTkOunWM/3S9G21/1ilIeQvbZCNlwRfN9H6vOOAYj41pPmlnN6Qp2Q2UFuDleh4I2QvI
SpamDiagnosticOutput: 1:23
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: Honeywell.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 May 2016 09:52:43.6917 (UTC)
X-MS-Exchange-CrossTenant-Id: 96ece526-9c7d-48b0-8daf-8b93c90a5d18
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=96ece526-9c7d-48b0-8daf-8b93c90a5d18;
	Ip=[199.61.26.153]; Helo=[DE08W1025.honeywell.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM2PR07MB621
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to add libraries to poky toolchain
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
X-List-Received-Date: Tue, 10 May 2016 10:27:52 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_F6CD090A69E64C4289DC608E1C5D2024253EE329DE08W1305global_"

--_000_F6CD090A69E64C4289DC608E1C5D2024253EE329DE08W1305global_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,



If the library is already in the image you are using, you should be able to=
 build an SDK with that library by using this command:

                $ bitbake image -c populate_sdk



Here is the official documentation about that feature:

http://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#sdk-bu=
ilding-an-sdk-installer



Jo=EBl Esponde

Honeywell | Sensing and Productivity Solutions



> -----Message d'origine-----

> De : yocto-bounces@yoctoproject.org [mailto:yocto-

> bounces@yoctoproject.org] De la part de Daniel.

> Envoy=E9 : vendredi 15 avril 2016 20:57

> =C0 : Matthew Clark

> Cc : yocto@yoctoproject.org

> Objet : Re: [yocto] How to add libraries to poky toolchain

>

> I may suggest something, run `bitbake meta-ide-support' and then use

> tmp/environment-*.sh to setup environment.

> After that go to your software folder and run something like:

> ./configure ${CONFIGURE_FLAGS}

>

> Here is a little text file that I saved to remember how to compile libfpr=
int with

> yocto's toolchain from tmp/ folder.

> http://pastebin.com/hyzrd3up

>

> Regards,

>

> 2016-04-15 15:38 GMT-03:00 Matthew Clark <linux.matthew@gmail.com<mailto:=
linux.matthew@gmail.com>>:

> > I'm trying to cross build a package with a configure script and I'm

> > running into a problem because it can't find a missing library

> > dependency:

> >

> > arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mfloat-abi=3Dhard -

> mfpu=3Dneon

> > -mtune=3Dcortex-a8

> > --sysroot=3D/opt/poky/1.8/sysroots/cortexa8hf-vfp-neon-poky-linux-

> gnueab

> > i

> > -o conftest

> > -O2 -pipe -g -feliminate-unused-debug-types  -Wl,-O1

> > -Wl,--hash-style=3Dgnu -Wl,--as-needed myconftest.c -lgdbm

> >

> > /opt/poky/1.8/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-

> linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.9.2/ld:

> > cannot find -lgdbm

> > collect2: error: ld returned 1 exit status

> >

> > A quick look shows there's no libgdbm in

> > /opt/poky/1.8/sysroots/cortexa8hf-vfp-neon-poky-linux-gnueabi folder,

> > though it is in /opt/poky/1.8/sysroots/x86_64-pokysdk-linux (which, of

> > course, is for 86_64, not ARM)

> >

> > I'd bitbaked the meta-toolchain and installed the .sh file, but

> > apparently I need to add more libraries.  What's the best way to do

> > that?  Is there an additional package I need to bitbake?   I can

> > kludge it myself, by manually copying stuff into

> > /opt/poky/1.8/sysroots/cortexa8hf-vfp-neon-poky-linux-gnueabi but I'd

> > much rather have something more elegant so I can replicate it to other

> > development machines.

> >

> > Thanks.

> >

> > Matt

> > --

> > _______________________________________________

> > yocto mailing list

> > yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>

> > https://lists.yoctoproject.org/listinfo/yocto

>

>

>

> --

> "Do or do not. There is no try"

>   Yoda Master

> --

> _______________________________________________

> yocto mailing list

> yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>

> https://lists.yoctoproject.org/listinfo/yocto

--_000_F6CD090A69E64C4289DC608E1C5D2024253EE329DE08W1305global_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Texte brut Car";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.TextebrutCar
	{mso-style-name:"Texte brut Car";
	mso-style-priority:99;
	mso-style-link:"Texte brut";
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 129.75pt 70.85pt 129.7pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"FR" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoPlainText"><span lang=3D"EN-US">Hi,<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">If the library is already in=
 the image you are using, you should be able to build an SDK with that libr=
ary by using this command:<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $ bitbake im=
age -c populate_sdk<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">Here is the official documen=
tation about that feature:<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><a href=3D"http://www.yoctop=
roject.org/docs/latest/mega-manual/mega-manual.html#sdk-building-an-sdk-ins=
taller">http://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.htm=
l#sdk-building-an-sdk-installer</a><o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">Jo=EBl Esponde<o:p></o:p></s=
pan></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US">Honeywell | Sensing and Prod=
uctivity Solutions<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText">&gt; <span style=3D"mso-fareast-language:FR">----=
-Message d'origine-----</span></p>
<p class=3D"MsoPlainText">&gt; <span style=3D"mso-fareast-language:FR">De&n=
bsp;: yocto-bounces@yoctoproject.org [mailto:yocto-</span></p>
<p class=3D"MsoPlainText">&gt; <span style=3D"mso-fareast-language:FR">boun=
ces@yoctoproject.org] De la part de Daniel.</span></p>
<p class=3D"MsoPlainText">&gt; <span style=3D"mso-fareast-language:FR">Envo=
y=E9&nbsp;: vendredi 15 avril 2016 20:57</span></p>
<p class=3D"MsoPlainText">&gt; <span style=3D"mso-fareast-language:FR">=C0&=
nbsp;: Matthew Clark</span></p>
<p class=3D"MsoPlainText">&gt; <span style=3D"mso-fareast-language:FR">Cc&n=
bsp;: yocto@yoctoproject.org</span></p>
<p class=3D"MsoPlainText">&gt; <span style=3D"mso-fareast-language:FR">Obje=
t&nbsp;: Re: [yocto] How to add libraries to poky toolchain</span></p>
<p class=3D"MsoPlainText">&gt; </p>
<p class=3D"MsoPlainText">&gt; I may suggest something, run `bitbake meta-i=
de-support' and then use</p>
<p class=3D"MsoPlainText">&gt; tmp/environment-*.sh to setup environment.</=
p>
<p class=3D"MsoPlainText">&gt; After that go to your software folder and ru=
n something like:</p>
<p class=3D"MsoPlainText">&gt; ./configure ${CONFIGURE_FLAGS}</p>
<p class=3D"MsoPlainText">&gt; </p>
<p class=3D"MsoPlainText">&gt; Here is a little text file that I saved to r=
emember how to compile libfprint with</p>
<p class=3D"MsoPlainText">&gt; yocto's toolchain from tmp/ folder.</p>
<p class=3D"MsoPlainText">&gt; <a href=3D"http://pastebin.com/hyzrd3up"><sp=
an style=3D"color:windowtext;text-decoration:none">http://pastebin.com/hyzr=
d3up</span></a></p>
<p class=3D"MsoPlainText">&gt; </p>
<p class=3D"MsoPlainText">&gt; Regards,</p>
<p class=3D"MsoPlainText">&gt; </p>
<p class=3D"MsoPlainText">&gt; 2016-04-15 15:38 GMT-03:00 Matthew Clark &lt=
;<a href=3D"mailto:linux.matthew@gmail.com"><span style=3D"color:windowtext=
;text-decoration:none">linux.matthew@gmail.com</span></a>&gt;:</p>
<p class=3D"MsoPlainText">&gt; &gt; I'm trying to cross build a package wit=
h a configure script and I'm</p>
<p class=3D"MsoPlainText">&gt; &gt; running into a problem because it can't=
 find a missing library</p>
<p class=3D"MsoPlainText">&gt; &gt; dependency:</p>
<p class=3D"MsoPlainText">&gt; &gt;</p>
<p class=3D"MsoPlainText">&gt; &gt; arm-poky-linux-gnueabi-gcc&nbsp; -march=
=3Darmv7-a -mfloat-abi=3Dhard -</p>
<p class=3D"MsoPlainText">&gt; mfpu=3Dneon</p>
<p class=3D"MsoPlainText">&gt; &gt; -mtune=3Dcortex-a8</p>
<p class=3D"MsoPlainText">&gt; &gt; --sysroot=3D/opt/poky/1.8/sysroots/cort=
exa8hf-vfp-neon-poky-linux-</p>
<p class=3D"MsoPlainText">&gt; gnueab</p>
<p class=3D"MsoPlainText">&gt; &gt; i</p>
<p class=3D"MsoPlainText">&gt; &gt; -o conftest</p>
<p class=3D"MsoPlainText">&gt; &gt; -O2 -pipe -g -feliminate-unused-debug-t=
ypes&nbsp; -Wl,-O1</p>
<p class=3D"MsoPlainText">&gt; &gt; -Wl,--hash-style=3Dgnu -Wl,--as-needed =
myconftest.c -lgdbm</p>
<p class=3D"MsoPlainText">&gt; &gt;</p>
<p class=3D"MsoPlainText">&gt; &gt; /opt/poky/1.8/sysroots/x86_64-pokysdk-l=
inux/usr/libexec/arm-poky-</p>
<p class=3D"MsoPlainText">&gt; linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.9=
.2/ld:</p>
<p class=3D"MsoPlainText">&gt; &gt; cannot find -lgdbm</p>
<p class=3D"MsoPlainText">&gt; &gt; collect2: error: ld returned 1 exit sta=
tus</p>
<p class=3D"MsoPlainText">&gt; &gt;</p>
<p class=3D"MsoPlainText">&gt; &gt; A quick look shows there's no libgdbm i=
n</p>
<p class=3D"MsoPlainText">&gt; &gt; /opt/poky/1.8/sysroots/cortexa8hf-vfp-n=
eon-poky-linux-gnueabi folder,</p>
<p class=3D"MsoPlainText">&gt; &gt; though it is in /opt/poky/1.8/sysroots/=
x86_64-pokysdk-linux (which, of</p>
<p class=3D"MsoPlainText">&gt; &gt; course, is for 86_64, not ARM)</p>
<p class=3D"MsoPlainText">&gt; &gt;</p>
<p class=3D"MsoPlainText">&gt; &gt; I'd bitbaked the meta-toolchain and ins=
talled the .sh file, but</p>
<p class=3D"MsoPlainText">&gt; &gt; apparently I need to add more libraries=
.&nbsp; What's the best way to do</p>
<p class=3D"MsoPlainText">&gt; &gt; that?&nbsp; Is there an additional pack=
age I need to bitbake?&nbsp;&nbsp; I can</p>
<p class=3D"MsoPlainText">&gt; &gt; kludge it myself, by manually copying s=
tuff into</p>
<p class=3D"MsoPlainText">&gt; &gt; /opt/poky/1.8/sysroots/cortexa8hf-vfp-n=
eon-poky-linux-gnueabi but I'd</p>
<p class=3D"MsoPlainText">&gt; &gt; much rather have something more elegant=
 so I can replicate it to other</p>
<p class=3D"MsoPlainText">&gt; &gt; development machines.</p>
<p class=3D"MsoPlainText">&gt; &gt;</p>
<p class=3D"MsoPlainText">&gt; &gt; Thanks.</p>
<p class=3D"MsoPlainText">&gt; &gt;</p>
<p class=3D"MsoPlainText">&gt; &gt; Matt</p>
<p class=3D"MsoPlainText">&gt; &gt; --</p>
<p class=3D"MsoPlainText">&gt; &gt; _______________________________________=
________</p>
<p class=3D"MsoPlainText">&gt; &gt; yocto mailing list</p>
<p class=3D"MsoPlainText">&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.or=
g"><span style=3D"color:windowtext;text-decoration:none">yocto@yoctoproject=
.org</span></a></p>
<p class=3D"MsoPlainText">&gt; &gt; <a href=3D"https://lists.yoctoproject.o=
rg/listinfo/yocto">
<span style=3D"color:windowtext;text-decoration:none">https://lists.yoctopr=
oject.org/listinfo/yocto</span></a></p>
<p class=3D"MsoPlainText">&gt; </p>
<p class=3D"MsoPlainText">&gt; </p>
<p class=3D"MsoPlainText">&gt; </p>
<p class=3D"MsoPlainText">&gt; --</p>
<p class=3D"MsoPlainText">&gt; &quot;Do or do not. There is no try&quot;</p=
>
<p class=3D"MsoPlainText">&gt; &nbsp;&nbsp;Yoda Master</p>
<p class=3D"MsoPlainText">&gt; --</p>
<p class=3D"MsoPlainText">&gt; ____________________________________________=
___</p>
<p class=3D"MsoPlainText">&gt; yocto mailing list</p>
<p class=3D"MsoPlainText">&gt; <a href=3D"mailto:yocto@yoctoproject.org"><s=
pan style=3D"color:windowtext;text-decoration:none">yocto@yoctoproject.org<=
/span></a></p>
<p class=3D"MsoPlainText">&gt; <a href=3D"https://lists.yoctoproject.org/li=
stinfo/yocto">
<span style=3D"color:windowtext;text-decoration:none">https://lists.yoctopr=
oject.org/listinfo/yocto</span></a></p>
</div>
</body>
</html>

--_000_F6CD090A69E64C4289DC608E1C5D2024253EE329DE08W1305global_--
