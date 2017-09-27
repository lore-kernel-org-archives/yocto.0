Return-Path: <MANJUKUM@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41D76E00CD4; Wed, 27 Sep 2017 16:24:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.34.89 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 10494 seconds by postgrey-1.32 at yocto-www;
	Wed, 27 Sep 2017 16:24:27 PDT
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0089.outbound.protection.outlook.com [104.47.34.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 409F5E00CA2
	for <yocto@lists.yoctoproject.org>;
	Wed, 27 Sep 2017 16:24:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=kmx4OYwpT5II3LOOBmri1VgsPpTw0YIMH7osEAgkkmI=;
	b=p89VrKmXAA/Owlxwsh1lfajvCMYTgkcoZQDNveG0stKZn8arq4BEnZOEwngQzenqow1nmFaz0njN5Dj6zIHcZDegLarVIip5Amz53zcXpq7mNLorC5Lqq7uV+gfUq1zeNS1uOz18Q3ixo+8A5BdNlp91owNvtCoQdk8LbvMguPM=
Received: from BL2PR02MB2163.namprd02.prod.outlook.com (10.167.97.25) by
	BL2PR02MB2162.namprd02.prod.outlook.com (10.167.97.24) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.77.7; Wed, 27 Sep 2017 18:53:08 +0000
Received: from BL2PR02MB2163.namprd02.prod.outlook.com
	([fe80::4ef:27af:14e7:a903]) by BL2PR02MB2163.namprd02.prod.outlook.com
	([fe80::4ef:27af:14e7:a903%14]) with mapi id 15.20.0077.011;
	Wed, 27 Sep 2017 18:53:08 +0000
From: Manjukumar Harthikote Matha <MANJUKUM@xilinx.com>
To: Otavio Salvador <otavio.salvador@ossystems.com.br>, Khem Raj
	<raj.khem@gmail.com>
Thread-Topic: [yocto] [meta-raspberrypi][PATCH] Revert "qtbase: Enable EGLFS
	support"
Thread-Index: AQHTN6RAnzOioyTw10aXLwbGvcpMWaLI+KOAgAAB8QCAAAJDAIAAF1ow
Date: Wed, 27 Sep 2017 18:53:08 +0000
Message-ID: <BL2PR02MB2163605452880372FE03671BB9780@BL2PR02MB2163.namprd02.prod.outlook.com>
References: <1506525799-219-1-git-send-email-Martin.Jansa@gmail.com>
	<CAK18fxE0LZZE0tZ=R_f1e=ACixGjE=KRbq1K7c+NzUE7Q10Fvg@mail.gmail.com>
	<CAMKF1sp4NnABqktpOHtRuaZ3QEsfrY1xWKpHyVfGguHr20pTAw@mail.gmail.com>
	<CAP9ODKpOBsDoOiHnzXiYOMUBU+yEsHBF+6dUjPTTkoyuMPeqXA@mail.gmail.com>
In-Reply-To: <CAP9ODKpOBsDoOiHnzXiYOMUBU+yEsHBF+6dUjPTTkoyuMPeqXA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=MANJUKUM@xilinx.com; 
x-originating-ip: [149.199.62.254]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BL2PR02MB2162;
	6:kK7tWNl1doO/o3NEFL7YZAkoTRYgOzemTh3yI/N03w2R+3/YPAma4ki5ZlovTOLjcNkznQD1iYQFH6h0yKuWO5EIbWG1YXQ3r2GR447PFKdk1snF0o/N25dtoJvz0xOOpP7pkogB7RRIT1/Ad4S1ntFHI+NlHtJBWdYq4uG78gNzFvh42m8alIWcQG4xo/2a8N2cilhBjkXRN1fw0joqlz3Y9uAvic4SOVRMilN2s6jrvkd5IdgIvFbTYoA2VaQTj96cRhSm6HEDtI4fe1xVN9Tc4HnLHs9W+jRfN7P2Z9416FNeVHSWP3phVcoZlj1JlBUPanQOkTv+k2Cto3Xg/w==;
	5:6Vo3NpIbJ5yoNGfmquMI+2OS7plAeRLTpkxNLuxGwDJx8Zq+ResMCOcVoCXSEHkBHaeDgynDEKj9wr7erevxkjIme3IcoCFLcfXdTnv6y+SsOlSz/Lma/8oEsRnDKiHltlB4KYkzkYeHJ4XL16bBfA==;
	24:aKXu6KpBudtVd2DaMtvpRu75B1NbMFQiFbm4QpxhZt2vIV3mdrkze5r26HIqq2z8iw0W6O9JZAXbwOnp5F/nQw7BrH1m9iGx+LRcr5eopSo=;
	7:r4S5vjTrXWougeAb0BGwMw/tUiWO74gloBS0qE2RfNuCtSSA81/HLm6V6iZkhZ7YKtTbzc1MMAVLsBT70b8F+oondXBh46JJ5HwOXnY98Y58/BQaHCX9/GmSomcRm7Eb7/4KCnZgyxye2y8mjNlDwltMWmj/GA/YaPTWtL51a5Iiyr7nvJLdTOONwck0PfT3A12kt0zsbpaRz2pu4GD/JIwbLOiMiX8yjfIlJkZxSGE=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 22c2ebef-1392-42c0-cd5d-08d505d8fecd
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254152)(48565401081)(2017052603199)(201703131423075)(201703031133081)(201702281549075);
	SRVR:BL2PR02MB2162; 
x-ms-traffictypediagnostic: BL2PR02MB2162:
x-exchange-antispam-report-test: UriScan:(166708455590820)(131327999870524)(69456235874885)(166494164430575);
x-microsoft-antispam-prvs: <BL2PR02MB2162CC73F873BFB5BA7D61A7B9780@BL2PR02MB2162.namprd02.prod.outlook.com>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(5005006)(8121501046)(3002001)(93006095)(93001095)(100000703101)(100105400095)(10201501046)(6055026)(6041248)(20161123555025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123564025)(20161123562025)(20161123558100)(20161123560025)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:BL2PR02MB2162; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:BL2PR02MB2162; 
x-forefront-prvs: 04433051BF
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(39860400002)(376002)(346002)(24454002)(13464003)(189002)(199003)(377454003)(3846002)(105586002)(86362001)(189998001)(53546010)(54906003)(72206003)(3660700001)(2950100002)(110136005)(54356999)(8936002)(3280700002)(33656002)(316002)(5250100002)(14454004)(106356001)(7696004)(305945005)(81166006)(81156014)(76176999)(50986999)(101416001)(25786009)(74316002)(102836003)(97736004)(6246003)(93886005)(4326008)(66066001)(6436002)(7736002)(5660300001)(6116002)(2900100001)(2906002)(6506006)(966005)(55016002)(53936002)(229853002)(9686003)(6306002)(68736007)(99286003)(39060400002)(478600001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BL2PR02MB2162;
	H:BL2PR02MB2163.namprd02.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2017 18:53:08.6424 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL2PR02MB2162
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, Otavio
	Salvador <otavio@ossystems.com.br>
Subject: Re: [meta-raspberrypi][PATCH] Revert "qtbase: Enable EGLFS	support"
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
X-List-Received-Date: Wed, 27 Sep 2017 23:24:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Otavio,

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.o=
rg]
> On Behalf Of Otavio Salvador
> Sent: Wednesday, September 27, 2017 10:29 AM
> To: Khem Raj <raj.khem@gmail.com>
> Cc: yocto@lists.yoctoproject.org; Otavio Salvador <otavio@ossystems.com.b=
r>
> Subject: Re: [yocto] [meta-raspberrypi][PATCH] Revert "qtbase: Enable EGL=
FS
> support"
>=20
> On Wed, Sep 27, 2017 at 2:20 PM, Khem Raj <raj.khem@gmail.com> wrote:
> >
> > On Wed, Sep 27, 2017 at 10:17 AM Andrei Gherzan <andrei@gherzan.ro> wro=
te:
> >>
> >> On Wed, Sep 27, 2017 at 4:23 PM, Martin Jansa
> >> <martin.jansa@gmail.com>
> >> wrote:
> >>>
> >>> * this reverts commit 04b37dbdb79638b17a670280058400ffaf1b6ccb.
> >>> * this makes qtbase and everything which depends on some qt* recipe t=
o
> >>>   be effectivelly MACHINE_ARCH
> >>>
> >>> Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
> >>> ---
> >>>  dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend | 3 ---
> >>>  1 file changed, 3 deletions(-)
> >>>  delete mode 100644
> >>> dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
> >>>
> >>> diff --git
> >>> a/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
> >>> b/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
> >>> deleted file mode 100644
> >>> index ae3f1d3..0000000
> >>> --- a/dynamic-layers/qt5-layer/recipes-qt/qt5/qtbase_%.bbappend
> >>> +++ /dev/null
> >>> @@ -1,3 +0,0 @@
> >>> -# Copyright (C) 2017 O.S. Systems Software LTDA.
> >>> -
> >>> -PACKAGECONFIG_GL_rpi   =3D "gles2 eglfs"
> >>
> >>
> >> What would be the solution though?
> >
> > I think check for OpenGL feature to enable it I think another thing is
> > to also check for X11 in distro features before enabling it
> >
> > Gl support is quite soc specific so I don't think there is an elegant
> > way unless qt components can be built with soc specific elements as
> > plugins or something which then can have independent recipe
>=20
> https://github.com/Freescale/meta-freescale/blob/master/classes/fsl-dynam=
ic-
> packagearch.bbclass
>=20
> Something like this?
>=20

This is very useful, can this concept be upstreamed to OE-Core?

Thanks,
Manju

