Return-Path: <zhenhua.luo@freescale.com>
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1lp0156.outbound.protection.outlook.com [207.46.163.156])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDA1FE00288
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2013 01:41:38 -0800 (PST)
Received: from DM2PR03MB399.namprd03.prod.outlook.com (10.141.84.148) by
	DM2PR03MB398.namprd03.prod.outlook.com (10.141.84.140) with Microsoft
	SMTP Server (TLS) id 15.0.842.7; Tue, 17 Dec 2013 09:41:34 +0000
Received: from DM2PR03MB399.namprd03.prod.outlook.com ([10.141.84.148]) by
	DM2PR03MB399.namprd03.prod.outlook.com ([10.141.84.148]) with mapi id
	15.00.0842.003; Tue, 17 Dec 2013 09:41:34 +0000
From: "zhenhua.luo@freescale.com" <zhenhua.luo@freescale.com>
To: Brad Litterell <brad@evidence.com>
Thread-Topic: Setting PV dynamically in a recipe
Thread-Index: Ac77ABx4gKdRGDzAQM+tn2QPKyJSdwADABHA
Date: Tue, 17 Dec 2013 09:41:33 +0000
Message-ID: <ad9adfd66f224dd98d4ec05596eaaa8e@DM2PR03MB399.namprd03.prod.outlook.com>
References: <E51394554A503C4E852F9BEE46B03E8D019AC4B3@TI-THOR.tasernet.com>
In-Reply-To: <E51394554A503C4E852F9BEE46B03E8D019AC4B3@TI-THOR.tasernet.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.88.158.215]
x-forefront-prvs: 006339698F
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009001)(51704005)(13464003)(377454003)(199002)(189002)(164054003)(19580395003)(63696002)(81816001)(47976001)(19580405001)(83322001)(50986001)(51856001)(76482001)(90146001)(85306002)(56816005)(80976001)(79102001)(83072002)(2656002)(47736001)(81686001)(49866001)(4396001)(53806001)(74316001)(69226001)(54356001)(46102001)(59766001)(87936001)(85852003)(56776001)(87266001)(54316002)(65816001)(77982001)(66066001)(76786001)(74366001)(15975445006)(76576001)(80022001)(74662001)(81542001)(31966008)(74502001)(47446002)(81342001)(15202345003)(74706001)(76796001)(33646001)(74876001)(24736002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM2PR03MB398;
	H:DM2PR03MB399.namprd03.prod.outlook.com; CLIP:192.88.158.215;
	FPR:; RD:InfoNoRecords; A:1; MX:1; LANG:en; 
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Setting PV dynamically in a recipe
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
X-List-Received-Date: Tue, 17 Dec 2013 09:41:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

AUTOREV might be what you are looking for.

http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-AUT=
OREV


Best Regards,

Zhenhua

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Brad Litterell
> Sent: Tuesday, December 17, 2013 4:17 PM
> To: yocto@yoctoproject.org
> Subject: [yocto] Setting PV dynamically in a recipe
>=20
> Hi,
>=20
> I have a few recipes in my image that represent my own custom code.  I
> would like to generate PV dynamically from my source code, but since the
> recipe is parsed before the code is extracted from the tarball, that's
> not easy to do.
>=20
> The Poky reference manual implies this is possible:
> PV is generally not overridden within a recipe unless it is building an
> unstable (i.e. development) version from a source code repository (e.g.
> Git or Subversion).
>=20
> However, I have not found an actual example. Is there a recommended way
> to do this?
>=20
> Thanks,
> Brad
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=20


