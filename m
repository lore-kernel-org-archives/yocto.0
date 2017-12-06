Return-Path: <yannick.koehler@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9805E00CE8; Wed,  6 Dec 2017 06:13:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [15.241.140.73 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from g4t3427.houston.hpe.com (g4t3427.houston.hpe.com
	[15.241.140.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF43EE00B5F
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 06:13:37 -0800 (PST)
Received: from G1W8107.americas.hpqcorp.net (g1w8107.austin.hp.com
	[16.193.72.59])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g4t3427.houston.hpe.com (Postfix) with ESMTPS id BC50480;
	Wed,  6 Dec 2017 14:13:36 +0000 (UTC)
Received: from G2W6309.americas.hpqcorp.net (2002:10c5:4033::10c5:4033) by
	G1W8107.americas.hpqcorp.net (2002:10c1:483b::10c1:483b) with Microsoft
	SMTP Server (TLS) id 15.0.1178.4; Wed, 6 Dec 2017 14:13:27 +0000
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (15.241.52.10) by
	G2W6309.americas.hpqcorp.net (16.197.64.51) with Microsoft SMTP
	Server (TLS)
	id 15.0.1178.4 via Frontend Transport; Wed, 6 Dec 2017 14:13:27 +0000
Received: from CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM (10.169.16.20) by
	CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM (10.169.16.20) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.282.5; Wed, 6 Dec 2017 14:13:26 +0000
Received: from CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM
	([fe80::34ce:188c:7a83:f2fd]) by
	CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM
	([fe80::34ce:188c:7a83:f2fd%18]) with mapi id 15.20.0282.012;
	Wed, 6 Dec 2017 14:13:26 +0000
From: "Koehler, Yannick" <yannick.koehler@hpe.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] externalsrc + sstate why is not compatible?
Thread-Index: AQHTbjedWgwnr0N2hk+XqKAyNmw3B6M2AS+AgABZ9+A=
Date: Wed, 6 Dec 2017 14:13:26 +0000
Message-ID: <CS1PR8401MB08404303F44A38D6603DE3B3ED320@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
References: <CS1PR8401MB0840E46EE333163758C5D9B3ED320@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
	<d7cac90e-b07c-fe83-945f-82725ceeda81@linux.intel.com>
In-Reply-To: <d7cac90e-b07c-fe83-945f-82725ceeda81@linux.intel.com>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=yannick.koehler@hpe.com; 
x-originating-ip: [15.219.163.10]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; CS1PR8401MB0840;
	6:R2PVjGl1g5aptZFcaMxsj0gwRV6UktZ56o4LYlCZk31cVjCf2f9bsoXPPgpwlXO1GPfWXaEBluZsoT2jjjI85d5CCo2j79sxih3jpyn0mKgE4YOS8CSDQSyj4M6YgIOrCFrjJwXQvOFFRAFUisxUcl9ggERzl4M2/KEkrWhsmnYQpLu8tspUC43uSl5c1lpUFtmJfC1cWgk1cKhURj9KB17xaBb/jwVlPQIF9a5WZTXQxgFFuWgn4N8MZSscAgVfpZ2KRJT3o1JxcPJuajnJWVuMm7/QK2bzskeDh8HNVt1SRa7fU5hERgSzG7L3HGCfK3TdhLTs2dyybu6kaLaJHC/tMYZ4mwZNWWbfKM+a7lU=;
	5:y8Jv9u01XdfwShe5EJhAm5+6sAE6k6t/IpZg6XVNVSfzXSYuIlXQSQZgOqTLVtxEokYJmJozQK4io3mNfj2Ak2MNsoFkhQGxvy0EYgqSESEhuUshxfRowbvdJiB0UzqI7/P9qU9+0ZK1Spm1lqlQW2TKN+eY5vWoTE56sHKss+s=;
	24:ZiQ9M0bul2fYlsiwkn5qvEgtEyhAEHhj3WQJR1EHBD9MmnvDz9Ud+VkoGYW04amAeMpY+/fybNYQq8n1Nq1f523MQYb1wxGCD9YD7txEB7w=;
	7:A0WwOOW3yjfcVTvP0lCPYZiWzwqSQQixzVGkGVGSVNPDyzyvwLlMIxpnQHGFoylbtGv914idDq6UUKUOZKJ1z/dJ/QcX+2S08XoWtbuPEBvCIOzEWPhe8bG9/frFVsoBN0MA0VR7ojjJ4if5QWFNewtcU/0zcBVTqlMVYGeyJ7OYzRamWjJXfo/eyWCUP/4JLMeKXhjzr/BNM/hht4EUFPuEAU+NHb9ghQsaoiie0oY8h1zzKYADHE3ZC0wpF4TO
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 311d3c8c-f097-4eda-063d-08d53cb384a3
x-microsoft-antispam: UriScan:(222181515654134); BCL:0; PCL:0;
	RULEID:(4534020)(4602075)(4627115)(8989060)(201703031133081)(201702281549075)(8990040)(48565401081)(5600026)(4604075)(2017052603286);
	SRVR:CS1PR8401MB0840; 
x-ms-traffictypediagnostic: CS1PR8401MB0840:
x-microsoft-antispam-prvs: <CS1PR8401MB0840992AA146F6CFDBA421CFED320@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(227479698468861)(222181515654134)(228905959029699); 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040450)(2401047)(5005006)(8121501046)(93006095)(93001095)(3231022)(3002001)(10201501046)(6055026)(6041248)(20161123555025)(20161123562025)(20161123558100)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123560025)(20161123564025)(6072148)(201708071742011);
	SRVR:CS1PR8401MB0840; BCL:0; PCL:0;
	RULEID:(100000803101)(100110400095); SRVR:CS1PR8401MB0840; 
x-forefront-prvs: 05134F8B4F
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(376002)(366004)(39860400002)(346002)(54094003)(55784002)(199004)(189003)(24454002)(33656002)(6116002)(105586002)(3846002)(106356001)(2950100002)(53546010)(102836003)(25786009)(5250100002)(2501003)(99286004)(14454004)(66066001)(6246003)(229853002)(101416001)(6506006)(9686003)(55016002)(6436002)(53936002)(5660300001)(316002)(8676002)(305945005)(478600001)(86362001)(81166006)(8936002)(81156014)(7736002)(3280700002)(3660700001)(7696005)(110136005)(74316002)(76176011)(2906002)(68736007)(2900100001)(97736004);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CS1PR8401MB0840;
	H:CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: hpe.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 311d3c8c-f097-4eda-063d-08d53cb384a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Dec 2017 14:13:26.3319 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CS1PR8401MB0840
X-OriginatorOrg: hpe.com
Subject: Re: externalsrc + sstate why is not compatible?
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
X-List-Received-Date: Wed, 06 Dec 2017 14:13:38 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

When you say "subdirs", are you referring to submodules or something along =
those line?  We have used attempted to use submodules and it still required=
 20 + 1 repo and the overhead is similar to yocto + 20 repo but then you ha=
ve yocto + 20 repos + 1 main repos, as such, this is not acceptable for us.=
  We also looked at other combination of multiple repos supported or in wor=
k for git and none are satisfying or supported in a way I could propose to =
use it in our project.

If you mean 1 repo, which subdirs representing each package, I would be int=
erested, but how would it work with yocto SRC_URI?

In regards to file fetcher, I will go check the code, I thought the unpack =
would only occurs for tarball, not subdir.

--
Yannick Koehler

-----Message d'origine-----
De=A0: Alexander Kanavin [mailto:alexander.kanavin@linux.intel.com]=20
Envoy=E9=A0: 6 d=E9cembre 2017 03:47
=C0=A0: Koehler, Yannick <yannick.koehler@hpe.com>; yocto@yoctoproject.org
Objet=A0: Re: [yocto] externalsrc + sstate why is not compatible?

On 12/06/2017 04:15 AM, Koehler, Yannick wrote:
> In our situation, we have many packages that are in-house, as such we =20
> use a local folder for the several in-house modules.  To do so, we=20
> need to use externalsrc to point to the local code so that the git=20
> repo contains both the code + recipe, instead of 20 repos (1 per
> packages) and 1 more for yocto recipe which complicates things when=20
> you want to submit a change.

You don't have to have 20 repos. You can place the modules into a single re=
po with subdirs.

> Yet, the externalsrc disable the setscene tasks and set the=20
> BB_DONTCACHE variable.  I altered the script to remove those but then=20
> a change to the externalsrc folder is not detected. I wonder if it is=20
> because the S variable is set past the sstate algorithm and is then=20
> unable to consider the externalsrc folder as the real source location. =20
> Any expert on this matter that can guide me to either make sstate=20
> works for external src or teach me how to have code + recipe in a=20
> single git repo.  I am certainly not the only case using such a=20
> pattern.

The bitbake documentation claims you can specify a directory in the
file: fetcher, and then all of it will be unpacked to workdir. I've never s=
een or tried it myself, but maybe you can investigate in that direction, an=
d make it work if it doesn't.

Alex

