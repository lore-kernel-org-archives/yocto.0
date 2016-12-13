Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96421E005B9; Tue, 13 Dec 2016 09:18:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EC17E00519
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2016 09:18:25 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 13 Dec 2016 09:18:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,342,1477983600"; d="scan'208";a="1098632668"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by fmsmga002.fm.intel.com with ESMTP; 13 Dec 2016 09:18:00 -0800
Received: from orsmsx157.amr.corp.intel.com (10.22.240.23) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Tue, 13 Dec 2016 09:18:00 -0800
Received: from orsmsx112.amr.corp.intel.com ([169.254.3.163]) by
	ORSMSX157.amr.corp.intel.com ([169.254.9.172]) with mapi id
	14.03.0248.002; Tue, 13 Dec 2016 09:17:59 -0800
From: "Bystricky, Juro" <juro.bystricky@intel.com>
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] meta-zephyr layer
Thread-Index: AdJUwsGpugg9Pmu/QsqjzuAXZM7o+wAyENYAAAnJYDA=
Date: Tue, 13 Dec 2016 17:17:58 +0000
Message-ID: <6E51916E4A1F32428260031F4C7CD2B6118C6C8D@ORSMSX112.amr.corp.intel.com>
References: <6E51916E4A1F32428260031F4C7CD2B6118C682A@ORSMSX112.amr.corp.intel.com>
	<a382fb05-0510-e3e5-6480-3fd56a5f8f31@rsi-elektrotechnik.de>
In-Reply-To: <a382fb05-0510-e3e5-6480-3fd56a5f8f31@rsi-elektrotechnik.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: meta-zephyr layer
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
X-List-Received-Date: Tue, 13 Dec 2016 17:18:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Josef,
I will find a better place for the meta-zephyr repository eventually.
As for your patches, I would definitely like to see them.
I added the cortex-m3 tune as one of the last steps, just to get
the Zephyr ARM test suite to pass. It works well, but probably=20
not an optimal implementation.=20

> -----Original Message-----
> From: Josef Holzmayr [mailto:holzmayr@rsi-elektrotechnik.de]
> Sent: Tuesday, December 13, 2016 5:51 AM
> To: yocto@yoctoproject.org; Bystricky, Juro <juro.bystricky@intel.com>
> Subject: Re: [yocto] meta-zephyr layer
>=20
> Hello Juro,
>=20
> first off, thanks for taking the kick, whatever its count is.
>=20
> On 12.12.2016 23:15, Bystricky, Juro wrote:
> > Building of Zephyr images in Yocto can now be done fairly unobtrusively
> > via a new layer "meta-zephyr" and specifying a new distro in local.conf=
:
> > DISTRO=3D"zephyr"
>=20
> Leaving out the poky/non-poky discussion, zephyr.conf currently contains
> an include for tune-cortexm3.conf which certainly should not be there,
> as it is machine specific. My local fix here is to create a warped
> version of qemuarm.conf named qemuarmm3.conf which fixes that.
>=20
> >
> > The repository for the meta-zephyr is here:
> > http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=3Djuro/me=
ta-
> zephyr.
> >
> > The new meta-zephyr layer contains several recipes to build (and run
> > in QEMUs) various Zephyr tests. There is also a sample recipe to build
> > Zephyr sample "philosophers" with instructions how to run it in QEMU.
>=20
> The instructions seem to be missing that poky-contrib/meta is also
> needed in the bblayers for the tune-cortexm3 include.
>=20
> > The new meta-zephyr is work based on previous original work by
> > Randy Witt and Richard Purdie, so it is actually a second kick at the
> can.
>=20
> Thanks to those too, of course.
>=20
> >
> > This is a work in progress, any feedback is appreciated.
>=20
> Feedback was above - do you also want patches? ;-)
>=20
> Greetz
>=20
> --
> Josef Holzmayr
> Software Developer Embedded Systems
>=20
> Tel: +49 8444 9204-48
> Fax: +49 8444 9204-50
>=20
> R-S-I Elektrotechnik GmbH & Co. KG
> Woelkestrasse 11
> D-85301 Schweitenkirchen
> www.rsi-elektrotechnik.de
> ---------------
> Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170393
> Gesch=E4ftsf=FChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
> Ust-IdNr: DE 128592548
>=20
> _____________________________________________________________
> Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
> Gesch=E4ftsf=FChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
> USt-IdNr.: DE 128592548


