Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28CC0E0162E
	for <yocto@yoctoproject.org>; Fri, 15 Nov 2013 14:10:11 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 15 Nov 2013 14:10:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,710,1378882800"; d="scan'208";a="434293219"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
	by fmsmga002.fm.intel.com with ESMTP; 15 Nov 2013 14:10:10 -0800
Received: from orsmsx157.amr.corp.intel.com (10.22.240.23) by
	ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Fri, 15 Nov 2013 14:10:10 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.94]) by
	ORSMSX157.amr.corp.intel.com ([169.254.9.67]) with mapi id
	14.03.0123.003; Fri, 15 Nov 2013 14:10:10 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] dev manual explanation for "additional software" seems
	misleading
Thread-Index: AQHO3f9dkq0rATkLX0OeyIzJ+ORI2pom4s5A
Date: Fri, 15 Nov 2013 22:10:09 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F4F576@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1311100523570.30038@oneiric>
In-Reply-To: <alpine.DEB.2.02.1311100523570.30038@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: dev manual explanation for "additional software" seems	misleading
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
X-List-Received-Date: Fri, 15 Nov 2013 22:10:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Reworded to better describe this.=20

Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
>Sent: Sunday, November 10, 2013 2:26 AM
>To: Yocto discussion list
>Subject: [yocto] dev manual explanation for "additional software" seems
>misleading
>
>
>  here:
>
>http://www.yoctoproject.org/docs/latest/dev-manual/dev-
>manual.html#usingpoky-extend-customimage-custombb
>
>one reads:
>
>"One way to get additional software into an image is to create a custom
>image. The following example shows the form for the two lines you need:
>
>     IMAGE_INSTALL =3D "packagegroup-core-x11-base package1 package2"
>
>     inherit core-image
>
>  but that's not really *adding* software to an image, is it? it's totally
>redefining the contents of an image through the use of setting
>IMAGE_INSTALL to *exactly* what you want the image to have, is it not?
>it seems like that explanation has the potential for misunderstanding.
>
>rday
>
>--
>
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                        http://crashcourse.ca
>
>Twitter:                                       http://twitter.com/rpjday
>LinkedIn:                               http://ca.linkedin.com/in/rpjday
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

