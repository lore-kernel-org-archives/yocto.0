Return-Path: <yannick.koehler@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E0EAE00D62; Wed,  6 Dec 2017 10:51:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [15.233.44.26 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from g2t2353.austin.hpe.com (g2t2353.austin.hpe.com [15.233.44.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5C2AE00D5D
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 10:51:36 -0800 (PST)
Received: from G9W9210.americas.hpqcorp.net (g9w9210.houston.hpecorp.net
	[16.220.66.155])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g2t2353.austin.hpe.com (Postfix) with ESMTPS id EB7279D;
	Wed,  6 Dec 2017 18:51:35 +0000 (UTC)
Received: from G9W9209.americas.hpqcorp.net (2002:10dc:429c::10dc:429c) by
	G9W9210.americas.hpqcorp.net (2002:10dc:429b::10dc:429b) with Microsoft
	SMTP Server (TLS) id 15.0.1178.4; Wed, 6 Dec 2017 18:51:35 +0000
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (15.241.52.12) by
	G9W9209.americas.hpqcorp.net (16.220.66.156) with Microsoft SMTP
	Server (TLS)
	id 15.0.1178.4 via Frontend Transport; Wed, 6 Dec 2017 18:51:35 +0000
Received: from CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM (10.169.16.20) by
	DF4PR84MB0298.NAMPRD84.PROD.OUTLOOK.COM (10.162.193.24) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.282.5; Wed, 6 Dec 2017 18:51:34 +0000
Received: from CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM
	([fe80::34ce:188c:7a83:f2fd]) by
	CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM
	([fe80::34ce:188c:7a83:f2fd%18]) with mapi id 15.20.0282.012;
	Wed, 6 Dec 2017 18:51:34 +0000
From: "Koehler, Yannick" <yannick.koehler@hpe.com>
To: "Magallon, Marcelo" <marcelo.magallon@hpe.com>
Thread-Topic: [yocto] externalsrc + sstate why is not compatible?
Thread-Index: AQHTbjedWgwnr0N2hk+XqKAyNmw3B6M2AS+AgABZ9+CAAAqxgIAAJHgAgAAeK4CAAADDIA==
Date: Wed, 6 Dec 2017 18:51:34 +0000
Message-ID: <CS1PR8401MB0840A3CA04C87855C169A455ED320@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
References: <CS1PR8401MB0840E46EE333163758C5D9B3ED320@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
	<d7cac90e-b07c-fe83-945f-82725ceeda81@linux.intel.com>
	<CS1PR8401MB08404303F44A38D6603DE3B3ED320@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
	<20171206144616.zlfpkmqgz2wsexol@nyx.americas.hpqcorp.net>
	<CS1PR8401MB0840A114AD0B63DF969D818BED320@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
	<20171206184557.3mxnbq6h6x4hebqh@nyx.americas.hpqcorp.net>
In-Reply-To: <20171206184557.3mxnbq6h6x4hebqh@nyx.americas.hpqcorp.net>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=yannick.koehler@hpe.com; 
x-originating-ip: [15.219.163.10]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DF4PR84MB0298;
	6:dnL9sPuHrBPxyeFM7MxHwKgrEjPBNwCXig7MzP6d95m7bmYbCPIcwKo78JvUEeaJ7L7c3Z43uRUi8D6wVPCWs7iit+uroqVKHWCwURJllhiwYN2MVtdCTkfY3H8uTrqXdsRFlUuAYBsDap7eRqGQwyKYPRodUb9xYmMBN5i7ti/HqQOT6Uequk8az5tQ1x9QqG25KeS7UNpw6/Yyfn8nC1pXq7xb/VkLRo0xLIw0Gd2gBO8X+snwDDo2PTD3Jopx4fw3Mi8WcoxAelBDgktmNkaPUt9rQRNfsRuwHCCOrFPRZt5QlaKW2oblZP4j00KZPwc57Qw4/Hewt0+ORtZufvBpP9jsgXHNfHPwJ/GRpSQ=;
	5:RlSqP50PhIeO5mIROnZLdHXKiKzKzC1fTId3jhfiCLkkhVQ3aigt1pazCb3ZcDtvTyNbPCDNQ0h683WRra0AQxcDSZdK4TnAyINjc/wcf4nkWKVIgvoUWd/nl9x+EabF5awiB15yLC8CTxRvKGROi+AbXj4vMiIaxK1XYzqV1vI=;
	24:VFlgj9VI9pxMF9rvXAZxZ4Mc70itwIfJE1FQgSrkEdCc/xf6OWE4sm8PesagOwBBsXSMLrmONChTf0ncvpvukFvO8+1quDJjqqxzwCEjVps=;
	7:U/zrKjM7LdMaS6i8tIs2bn37M4Fh4heMSDLGdjYmeY57YgcFKNbxiM1OBmsoT1YWoE4vVzCcOTIbWT7IF09PpxBOCjp9qWyp4lVORCI4kPdNRqedX83OVy4BKZOa5tzcX0g/lWgbEKLHiX6jDMRcvh3K6huewVjs+mEekf/v4O/yBLdnFMzvUzO+VUwGSexplTDGWEs9vaRLLIpqZHryU0Bp0lCb9kWNd+PyGwRZyvFzzqYq1tqiAPknEfqeKv/A
x-ms-exchange-antispam-srfa-diagnostics: SSOS;SSOR;
x-forefront-antispam-report: SFV:SKI; SCL:-1; SFV:NSPM;
	SFS:(10019020)(376002)(346002)(39860400002)(366004)(55784002)(24454002)(199004)(189003)(101416001)(4326008)(53936002)(6246003)(6862004)(5660300001)(478600001)(97736004)(305945005)(3846002)(9686003)(68736007)(81156014)(6116002)(25786009)(2906002)(86362001)(6636002)(8936002)(2950100002)(8676002)(6506006)(5250100002)(81166006)(102836003)(105586002)(7736002)(14454004)(54906003)(316002)(76176011)(3280700002)(55016002)(33656002)(229853002)(66066001)(93886005)(74316002)(99286004)(6436002)(7696005)(2900100001)(106356001)(3660700001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DF4PR84MB0298;
	H:CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
x-ms-office365-filtering-correlation-id: 2c3518b1-f672-4eee-72a0-08d53cda5f48
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:(222181515654134); BCL:0; PCL:0;
	RULEID:(5600026)(4604075)(4534020)(4602075)(4627115)(8989060)(201703031133081)(201702281549075)(8990040)(48565401081)(2017052603286);
	SRVR:DF4PR84MB0298; 
x-ms-traffictypediagnostic: DF4PR84MB0298:
x-microsoft-antispam-prvs: <DF4PR84MB029874FC9763426542EB9D98ED320@DF4PR84MB0298.NAMPRD84.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(227479698468861)(788757137089)(222181515654134)(228905959029699);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040450)(2401047)(8121501046)(5005006)(3231022)(10201501046)(3002001)(93006095)(93001095)(6055026)(6041248)(20161123562025)(20161123564025)(20161123555025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123560025)(20161123558100)(6072148)(201708071742011);
	SRVR:DF4PR84MB0298; BCL:0; PCL:0;
	RULEID:(100000803101)(100110400095); SRVR:DF4PR84MB0298; 
x-forefront-prvs: 05134F8B4F
received-spf: None (protection.outlook.com: hpe.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c3518b1-f672-4eee-72a0-08d53cda5f48
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Dec 2017 18:51:34.1132 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DF4PR84MB0298
X-OriginatorOrg: hpe.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 06 Dec 2017 18:51:38 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Ok, will try this...

In our case, we are using CMake for most user space app, and when developin=
g purely app related stuff we can use cmake directly thru command-line or e=
clipse without actually having a need for yocto.  Yocto in this context onl=
y serve to build the final image artefact.  As such, CMake ensure that only=
 the correct files gets generated and use its own build folder as well.  We=
 also get the nice benefit of Live Debug with eclipse using the yocto sdk.

Based on that, the file fetcher copy (if recursive) may be enough for us, e=
ven more so when combining with ccache, which we also uses.

--
Yannick Koehler

-----Message d'origine-----
De=A0: Magallon, Marcelo=20
Envoy=E9=A0: 6 d=E9cembre 2017 13:46
=C0=A0: Koehler, Yannick <yannick.koehler@hpe.com>
Cc=A0: Alexander Kanavin <alexander.kanavin@linux.intel.com>; yocto@yoctopr=
oject.org
Objet=A0: Re: [yocto] externalsrc + sstate why is not compatible?

On Wed, Dec 06, 2017 at 10:59:37AM -0600, Koehler, Yannick wrote:
> Ok, will try that.  If that works, I may see if I can alter the file=20
> fetcher to use symlinks, not sure if sstate subsystem will like that=20
> or not.

That was my idea, but I've never tried it. I'm sure the devil is in the det=
ails. If you can elide the copy and simply replace it with a symlink, you'd=
 get faster builds.

> If we do so, and someone change the file in /src/somedir will yocto=20
> redo the fetch/unpack pattern to recopy over the original content by=20
> itself?

Yes, it does. You change a file, and the fetcher runs again. This means S a=
nd B are deleted (if split), do_fetch runs again and S is populated fresh. =
do_configure and do_compile populate B again.

Once you get that working, people will complain as to why the system is reb=
uilding everything instead of just the file that changed :-) It might work =
"as expected" if S =3D B, and your build system in the module is smart enou=
gh to produce the correct dependencies (e.g. cmake or bazel).

Marcelo

