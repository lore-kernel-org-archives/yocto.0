Return-Path: <dwatkins@sierrawireless.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 839BBE00978; Wed,  8 Jul 2015 08:09:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [65.55.169.88 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0088.outbound.protection.outlook.com [65.55.169.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4854E0095D
	for <yocto@yoctoproject.org>; Wed,  8 Jul 2015 08:09:14 -0700 (PDT)
Received: from BY2PR02CA0062.namprd02.prod.outlook.com (10.141.216.52) by
	SN1PR0201MB1615.namprd02.prod.outlook.com (10.163.130.146) with
	Microsoft
	SMTP Server (TLS) id 15.1.213.14; Wed, 8 Jul 2015 15:09:12 +0000
Received: from BY2FFO11FD054.protection.gbl (2a01:111:f400:7c0c::182) by
	BY2PR02CA0062.outlook.office365.com (2a01:111:e400:2c40::52) with
	Microsoft
	SMTP Server (TLS) id 15.1.207.19 via Frontend Transport; Wed, 8 Jul 2015
	15:09:06 +0000
Authentication-Results: spf=pass (sender IP is 208.81.121.47)
	smtp.mailfrom=sierrawireless.com; linux.intel.com;
	dkim=none (message not signed) header.d=none;
Received-SPF: Pass (protection.outlook.com: domain of sierrawireless.com
	designates 208.81.121.47 as permitted sender)
	receiver=protection.outlook.com; client-ip=208.81.121.47;
	helo=mail.sierrawireless.com;
Received: from mail.sierrawireless.com (208.81.121.47) by
	BY2FFO11FD054.mail.protection.outlook.com (10.1.15.191) with Microsoft
	SMTP Server (TLS) id 15.1.190.9 via Frontend Transport;
	Wed, 8 Jul 2015 15:09:05 +0000
Received: from carmd-exchmb01.sierrawireless.local ([10.0.6.3]) by
	carmd-exchhub02.sierrawireless.local ([::1]) with mapi; Wed, 8 Jul 2015
	08:09:05 -0700
From: Darcy Watkins <dwatkins@sierrawireless.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Wed, 8 Jul 2015 08:09:03 -0700
Thread-Topic: [yocto] do_make_scripts race condition with externalsrc
Thread-Index: AdC5i1j1g82G2KqxTAGW7mA8ZZkpVAAA/8tw
Message-ID: <8F90F944E50427428C60E12A34A309D2459F358B48@carmd-exchmb01.sierrawireless.local>
References: <8F90F944E50427428C60E12A34A309D2459F124C2C@carmd-exchmb01.sierrawireless.local>
	<8F90F944E50427428C60E12A34A309D2459F358B20@carmd-exchmb01.sierrawireless.local>
	<130581424.7RvSPDq1dn@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <130581424.7RvSPDq1dn@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Microsoft-Exchange-Diagnostics: 1; BY2FFO11FD054;
	1:dWeFjTD+nG+W3JUetSQzDcrC9+EZydipl7h9C9Y/pYb+1vVyAY2/7XtLPvnqu6V8xws7uraLSaoWSE3+doFdoL0KjxeTyWYq0R9pi8pq0/MZEasUGwEzXv6Xi/AdcgKvd0yYHmRlp5k2wl6FVzYfVU003fjw4YdT7MR/HwhXSMiLLEbEPvdRZcDEkhCQUnvoIYPWFBh4bD5MP2cdC114ofDjW598KCcOqablh1S05mk5kQhL1UzWIEaQ9fs4t6vovjGhAihLyfao7xHzJDZaL9oL2z4m115d1Zz1bwWMLkI=
X-Forefront-Antispam-Report: CIP:208.81.121.47; CTRY:CA; IPV:NLI; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(6009001)(2980300002)(438002)(189002)(51704005)(199003)(377454003)(24454002)(13464003)(106466001)(189998001)(19580405001)(55846006)(6806004)(2656002)(15974865002)(87936001)(19580395003)(77156002)(86362001)(47776003)(62966003)(5003600100002)(104016003)(50986999)(110136002)(50466002)(102836002)(54356999)(33656002)(76176999)(98436002)(92566002)(23756003)(77096005)(46102003)(5001970100001)(2900100001)(7099028);
	DIR:OUT; SFP:1101; SCL:1; SRVR:SN1PR0201MB1615;
	H:mail.sierrawireless.com; FPR:; SPF:Pass; MLV:sfv; MX:1; A:1;
	LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; SN1PR0201MB1615;
	2:tLsxZCMylzfFBAPtFh8dUumS6h79vlPC9UJFnxZ9U7iCiAApsEvARB+hqYCMr4U2;
	3:Los7sBUHqHcjMc8mWU5XPyMW2MBreKtBgWB80xc9m+7Wy4Zz9aaR1O37YzOEk0xRBWktQvpVHvxDP5KJJJ2NHubcRnzpwLM79tKP62fEaeD5QeaQg0qhrGKIaQTNz8zS9VG0EjWHEmDQfiHd/7bcvgOVFXO1VmYuObxe8IKccCySho/fLHqqsUqTAOPWv37aBfGZQpmWCPq/wOFvyzBN5B54rCRdhBbKvhyK517l5s8=;
	25:JkBiigmLTROrhQMKrW1VGgIvMBftpHIHr/VVnvdbme0Pu8mKUykJR8YZoU1pvxmaaRj0Id751P7O3k0NWvJ4jYZ12tB/gaoezUES58sH6lCf58Vrh4sAundwwWMewWRqsQ3F4zAk98mynrc/x3UdgMog7opIF4QBqbLhWsObbocwz424w5S53BU8TKCu8GsjrjBSEVcwEpVZtotohFuViZAxsb4630wkZXtLnXyg25dHtyJorYFsFRLa9duamrCCVCiVcGnhrLZeYhVocqCihg==
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:SN1PR0201MB1615;
X-Microsoft-Exchange-Diagnostics: 1; SN1PR0201MB1615;
	20:J1vdatS1jxIUcz/hO09AmKu6q5EgK2OACwT7DhQVEv/5u/e6Pchar7kxOf2v774voZ3/6nsovEjHhrCyYtX6GpmvKBXH3YtxbBRucsdi3v+p/P3dc+knGEXvtIvQCaXfRk9IaJ6eVewaGt3jsffvwVg7dm36o8lFTTys3Z5yBXqunbf/zgFJWcc2FrrTAoR5xYeHHrYleM8jLK6I/Sp3jyv9Jqnqc6WYheLLH4Mptb4rtsk06fNlCcfwkxCBsp7pumSdNv5/HlG9SC7N9wz/1k5QIp3iFE6OhKWv/7yhVWwQzWQrI2/SMMzb6NGMGveaj0+rexbXSCJvpXIUe945zHuiYsKH1/aPHkrasPykT8/QDksd7/8vMWRwQGcfG90rPAlpfjK1zFlTERNR3rKA4iSYny1hsTNEMNKWlqaWdN0vKpT9m3uVugT3hL6KdGFkvCs78gBnCOxPWV0dCjy5gBlk6P6EsupSyEZ3ldwr7D/EKiH+Dm6V2GJrrPcbRkWu;
	4:AsXe/SfJbv3XTpIH9YY9u6zo130NfSQKZce8EuiZ9mOn+zPSEkPf2pT6miuz8mmQGZTFzC2JqbF64D2jf8N1IHlDzRIguIro79Ji6WdkeNubdnxvEvxsKYqBI3VCNwZwtCM4G9RurM3ghFlt1SuXg1Rg+Oo4AVZrqXJLq0c6tCEzI4R0dsDlEXyZ9uJFoa8USRvcc18zlePQh4qeePJlP8xVG1gmaM0oBUiIS++sou1RJtS65MPXrt2ajMVVOPRVAmKWOASqdivIUeI9RmNJRmwWppxF8E+QTkyofn0Md8w=
SN1PR0201MB1615: X-MS-Exchange-Organization-RulesExecuted
X-Microsoft-Antispam-PRVS: <SN1PR0201MB161538027BF28CDC66E94385B2910@SN1PR0201MB1615.namprd02.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(5005006)(3002001); SRVR:SN1PR0201MB1615; BCL:0;
	PCL:0; RULEID:; SRVR:SN1PR0201MB1615; 
X-Forefront-PRVS: 0631F0BC3D
X-Microsoft-Exchange-Diagnostics: =?iso-8859-1?Q?1; SN1PR0201MB1615;
	23:RZMkujIftf2tRi0OaIcyzcLdD/BclJN51Cat9?=
	=?iso-8859-1?Q?f2Xvexg5I3vni0nO9KtOhMtu0Vt6hqIbDCUzaysSPWYarRatkUD8C1a2nP?=
	=?iso-8859-1?Q?U9Jvc1D/3DsiJNcnjfOZ+8OkOcVACrLp4yenRofyEOVDkBh+boJwsE51wR?=
	=?iso-8859-1?Q?iMIAzDLtDumfh2PWm9y8bhz4t2x/MkztNQcQd/G6ac0yDAJrTYj1u0F4rb?=
	=?iso-8859-1?Q?/rbCGiAFqUNto1D4zqk6YoW+WDjlo3fG5ABeNYGH8gcK6OByzAwkUGfRkd?=
	=?iso-8859-1?Q?ssrkTjxxtcYh67Ci0gFRwIHDiZel1JeKH9rCl5cvm4V0Dvr38HaE1ogbh2?=
	=?iso-8859-1?Q?gk7MSJa42JvZqxr4iE/Zd5dfxTAdD2yRnZXbY8vYe6/O6TmsZ/hDbe7DSv?=
	=?iso-8859-1?Q?/POd55vp8stzdeO9q9mbi6Tz3G2/zsOAObjzRAcma/GawcOO94AD6aO/iG?=
	=?iso-8859-1?Q?GaLAIpSHbr4fXaT3R0V3Ld5sxFxc14IwKffheZwjj77qzXiEwRbNnynwaQ?=
	=?iso-8859-1?Q?mnt6ItsBs7lkzSFpBZP80xwEiCqa+rYcbmr7S+Z7t+aOKHCzIjzfiUtxes?=
	=?iso-8859-1?Q?2MUtTRZQCGbWQjT8lOi1u4eI9lFtJQkDTxnDD/TflRSD39FtWs379aHNWe?=
	=?iso-8859-1?Q?HrpBVWzJjzc2P0w0rh4+zP6wT6bELOmx5cI72G5p9cu9fMwpFo1f5mvg0+?=
	=?iso-8859-1?Q?GYdvV4MOnw/Kys3O322TJNFnCrahu30zbRg3mGTUuG76MtXn6QyyGzIlR0?=
	=?iso-8859-1?Q?IOztYoCNVUIfcYdbjqMuHDgkFXErGXHSsxaMQyBzLm1ujHGLPxYH7iseWE?=
	=?iso-8859-1?Q?4AJYhzO8lSsQATUMFc9XAuFYxPyP657dyXC2jBXK0icrsY1ywkll4wJvGR?=
	=?iso-8859-1?Q?vUU+MfF0zkpQpaz+SmcEBK3p/kwtc4+V/ihgsp7+lrdbUwxsw2gtXz3Agt?=
	=?iso-8859-1?Q?8BBcRfNuIDMUnBRNMrtQpmj0BF3ZHK497x2E4k53MvN6yfVDev3DH1A/cv?=
	=?iso-8859-1?Q?8klR6UT2gFy8IS1P3I9WK6jQDyZpZ7mbUgCHu1dS4zVwbAZdtxm3CQq79O?=
	=?iso-8859-1?Q?w?=
X-Microsoft-Exchange-Diagnostics: 1; SN1PR0201MB1615;
	5:jGPuyvmMUCduomSSa1eAPg4xlJptiTg+0NvkaD20nEX9vLSYzj0T0ujZu+lVLHxJWikK6TV9u0zOiAFAgxwHygUpYW8P2u61RSjXoGa6i0NrER/N9mCfrCq4rC3+E2TluMLQmiBGnqLb/z3CuFDoEQ==;
	24:wwXdd/+ewLheqsd+5vc3QVqKyK0YI3UWYhVPJHiLEyzJ2+S4Zj6Lt9Q6xpql0OFcIsqOFg7IjCjBhlwtQdM43XMgcF9DPV5qmIKSnJIWoJw=;
	20:5+nkO5oRstvB33DNcXzZQ0vmRjff7OrGPXj9L21yBt5VTu+fhxvY03namgSL6+ok4tqNObKo1Fh2RhyeLeb1kQ==
X-OriginatorOrg: sierrawireless.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2015 15:09:05.9023 (UTC)
X-MS-Exchange-CrossTenant-Id: 08059a4c-2486-43dd-89e3-3a747e0dcbe8
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=08059a4c-2486-43dd-89e3-3a747e0dcbe8;
	Ip=[208.81.121.47]; Helo=[mail.sierrawireless.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1PR0201MB1615
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: do_make_scripts race condition with externalsrc
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
X-List-Received-Date: Wed, 08 Jul 2015 15:09:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks!

BTW I took the meta data as is from master (including the other updates) an=
d embedded it into my project based on daisy and it appears to resolve the =
issue, plus the other changes to force the externalsrc packages to recompil=
e every time is a great idea since that seems to be something that gets for=
gotten a lot in my project.


Regards,

Darcy

Darcy Watkins ::=A0=A0Staff Engineer, Firmware

SIERRA WIRELESS
Direct=A0 +1 604 233 7989=A0 =A0::=A0 Fax=A0 +1 604 231 1109  ::  Main  +1 =
604 231 1100
13811 Wireless Way=A0 ::=A0Richmond, BC Canada V6V 3A4
[P2]
dwatkins@sierrawireless.com :: www.sierrawireless.com :: www.inmotiontechno=
logy.com=20

-----Original Message-----
From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]=20
Sent: July-08-15 7:35 AM
To: Darcy Watkins
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] do_make_scripts race condition with externalsrc

Hi Darcy,

On Wednesday 08 July 2015 07:27:02 Darcy Watkins wrote:
> I believe that recent commit to poky master branch dated June 16, 2015=20
> by Paul Eggleton touching
>=20
>       meta/classes/externalsrc.bbclass
>=20
> with comment "classes/externalsrc: handle tasks with existing lockfile"
>=20
> Resolves this issue.
>=20
> Are there any plans to retro merge it to previous releases such as 'daisy=
'?

Yep, this one is a good candidate for backporting. I'll add it to my todo l=
ist.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

