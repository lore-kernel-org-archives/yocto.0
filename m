Return-Path: <zhenhua.luo@freescale.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08C43E00B5D; Tue, 16 Dec 2014 18:52:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [65.55.169.143 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0143.outbound.protection.outlook.com [65.55.169.143])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81529E00ABE;
	Tue, 16 Dec 2014 18:51:53 -0800 (PST)
Received: from CY1PR0301MB0617.namprd03.prod.outlook.com (25.160.142.24) by
	CY1PR0301MB0844.namprd03.prod.outlook.com (25.160.163.150) with
	Microsoft
	SMTP Server (TLS) id 15.1.31.17; Wed, 17 Dec 2014 02:51:50 +0000
Received: from CY1PR0301MB0715.namprd03.prod.outlook.com (25.160.159.145) by
	CY1PR0301MB0617.namprd03.prod.outlook.com (25.160.142.24) with
	Microsoft SMTP
	Server (TLS) id 15.1.31.17; Wed, 17 Dec 2014 02:51:49 +0000
Received: from CY1PR0301MB0715.namprd03.prod.outlook.com ([25.160.159.145]) by
	CY1PR0301MB0715.namprd03.prod.outlook.com ([25.160.159.145]) with
	mapi id 15.01.0031.000; Wed, 17 Dec 2014 02:51:49 +0000
From: "zhenhua.luo@freescale.com" <zhenhua.luo@freescale.com>
To: Fabio Estevam <festevam@gmail.com>, VIVEK VERMA <VIVEK.VERMA@kpit.com>
Thread-Topic: [meta-freescale] meta-fsl-ppc uses Openssl 1.0.1g in master
Thread-Index: AdAZN1Z4a+Q6OnPDSp63F686y6cGpgAAkGqAAAIgfYAAAHiNAAABkNgAABZm8qA=
Date: Wed, 17 Dec 2014 02:51:48 +0000
Message-ID: <CY1PR0301MB071586D90FD095452F5EE653E46D0@CY1PR0301MB0715.namprd03.prod.outlook.com>
References: <3230301C09DEF9499B442BBE162C5E48257EA92F@SESTOEX04.enea.se>
	<CAP9ODKq2d-rOH3Ud5MXNuxxZPjKKwpZ295j8be+_WHV6GomhCw@mail.gmail.com>
	<3230301C09DEF9499B442BBE162C5E48257EAAEC@SESTOEX04.enea.se>
	<7fefff1d862f4e9d8039fe81909a2de2@KCHJEXMBX02.kpit.com>
	<CAOMZO5AS26p6MFm3vcVDs66QWpfUv=zgcZ0tbFRPWC_2U5xrxQ@mail.gmail.com>
In-Reply-To: <CAOMZO5AS26p6MFm3vcVDs66QWpfUv=zgcZ0tbFRPWC_2U5xrxQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.88.158.211]
authentication-results: gmail.com; dkim=none (message not signed)
	header.d=none; gmail.com; dkim=none (message not signed) header.d=none; 
x-microsoft-antispam: BCL:0;PCL:0;RULEID:;SRVR:CY1PR0301MB0617;UriScan:;
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0301MB0617; 
x-forefront-prvs: 042857DBB5
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(199003)(13464003)(288314003)(189002)(24454002)(377454003)(53754006)(51704005)(2656002)(101416001)(120916001)(50986999)(40100003)(122556002)(54356999)(76176999)(74316001)(102836002)(66066001)(99286002)(20776003)(21056001)(2950100001)(62966003)(105586002)(2900100001)(54606007)(77156002)(230783001)(99396003)(64706001)(97736003)(93886004)(68736005)(19580405001)(92566001)(19580395003)(46102003)(87936001)(106356001)(33656002)(86362001)(4396001)(107046002)(15975445007)(54206007)(76576001)(31966008)(7059030);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY1PR0301MB0617;
	H:CY1PR0301MB0715.namprd03.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
MIME-Version: 1.0
X-Microsoft-Antispam: BCL:0;PCL:0;RULEID:;SRVR:CY1PR0301MB0844;
X-OriginatorOrg: freescale.com
Cc: Otavio Salvador <otavio@ossystems.com.br>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"Paul Eggleton \(paul.eggleton@linux.intel.com\)"
	<paul.eggleton@linux.intel.com>,
	"meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"B18196@freescale.com" <B18196@freescale.com>
Subject: Re: [meta-freescale] meta-fsl-ppc uses Openssl 1.0.1g in master
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
X-List-Received-Date: Wed, 17 Dec 2014 02:52:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,=20

Regarding the openssl version in fsl-ppc layer, as I commented in another e=
mail, the openssl recipes in current master branch of fsl-ppc layer include=
s some FSL specific patches, to ensure the package works on FSL PPC targets=
, the recipes should be reserved currently. The FSL QorIQ SDK 1.7 will be r=
eleased soon, openssl will be upgraded to 1.0.1i, the update of recipes wil=
l be upstreamed to fsl-ppc layer after the SDK 1.7 release.  If there are s=
ecurity fixes in 1.0.1j, but not in 1.0.1i, those patches should be backpor=
ted to fsl-ppc layer.

With regard to the gstreamer usage for imx platforms, I don't know how the =
openssl in fsl-ppc layer has influence for it? Since the PREFERRED_VERSION_=
openssl =3D "1.0.1g" is defined for FSL QorIQ PPC targets only.=20


Best Regards,

Zhenhua

> -----Original Message-----
> From: meta-freescale-bounces@yoctoproject.org [mailto:meta-freescale-
> bounces@yoctoproject.org] On Behalf Of Fabio Estevam
> Sent: Wednesday, December 17, 2014 12:06 AM
> To: VIVEK VERMA
> Cc: Otavio Salvador; yocto@yoctoproject.org; Paul Eggleton
> (paul.eggleton@linux.intel.com); Saul Wold (sgw@linux.intel.com); meta-
> freescale@yoctoproject.org
> Subject: Re: [meta-freescale] meta-fsl-ppc uses Openssl 1.0.1g in master
>=20
> On Tue, Dec 16, 2014 at 1:21 PM, VIVEK VERMA <VIVEK.VERMA@kpit.com>
> wrote:
> > Hi All,
> >
> > I am using gstreamer to play wma files but  I am getting the error as f=
ollows.
>=20
> You should have created a new thread about this issue.
>=20
>=20
> > root@imx6dlsabresd:~# gst-launch -v playbin2 uri=3Dfile:///ano.wma
> > Setting pipeline to PAUSED ...
> > /GstPlayBin2:playbin20/GstURIDecodeBin:uridecodebin0:
> > ring-buffer-max-size =3D 0
> > /GstPlayBin2:playbin20/GstURIDecodeBin:uridecodebin0: buffer-size =3D -=
1
> > /GstPlayBin2:playbin20/GstURIDecodeBin:uridecodebin0: buffer-duration
> > =3D -1
> > /GstPlayBin2:playbin20/GstURIDecodeBin:uridecodebin0: use-buffering =3D
> > FALSE
> > /GstPlayBin2:playbin20/GstURIDecodeBin:uridecodebin0: download =3D FALS=
E
> > /GstPlayBin2:playbin20/GstURIDecodeBin:uridecodebin0: uri =3D
> "file:///ano.wma"
> > /GstPlayBin2:playbin20/GstURIDecodeBin:uridecodebin0: connection-speed
> > =3D 0
> > /GstPlayBin2:playbin20/GstURIDecodeBin:uridecodebin0: source =3D
> > (GstFileSrc) source
> > ERROR: Pipeline doesn't want to pause.
> > ERROR: from element /GstURIDecodeBin:uridecodebin0/GstFileSrc:source:
> Resource not found.
>=20
> It can not find the file. You need to pass the full path, such as
> uri=3Dfile:///home/user/ano.wma
> --
> _______________________________________________
> meta-freescale mailing list
> meta-freescale@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/meta-freescale

