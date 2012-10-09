Return-Path: <nitin.a.kamble@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38AD0E002AB
	for <yocto@yoctoproject.org>; Tue,  9 Oct 2012 16:01:26 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 09 Oct 2012 16:01:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,562,1344236400"; d="scan'208";a="202546986"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by azsmga001.ch.intel.com with ESMTP; 09 Oct 2012 16:01:12 -0700
Received: from orsmsx108.amr.corp.intel.com (10.22.225.41) by
	ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 9 Oct 2012 16:01:11 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.60]) by
	ORSMSX108.amr.corp.intel.com ([169.254.9.202]) with mapi id
	14.01.0355.002; Tue, 9 Oct 2012 16:01:11 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "Hart, Darren" <darren.hart@intel.com>
Thread-Topic: [PATCH 1/5] xf86-video-intel: Bring 2.20.0 version to match
	released graphics stack
Thread-Index: AQHNpmsEwQDI9CAWbU2gaJ6LudNvspeyBqiA//+PcoA=
Date: Tue, 9 Oct 2012 23:01:10 +0000
Message-ID: <ADD6A3980E8C39419A432FF422031B4C15730EF4@ORSMSX106.amr.corp.intel.com>
References: <cover.1349820369.git.nitin.a.kamble@intel.com>
	<3259734fca50f6ffd7e70ed7829c0a398d4795b0.1349820369.git.nitin.a.kamble@intel.com>
	<5074A7D9.9080906@intel.com>
In-Reply-To: <5074A7D9.9080906@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/5] xf86-video-intel: Bring 2.20.0 version to match released graphics stack
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 09 Oct 2012 23:01:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


> > --- /dev/null
> > +++ b/common/recipes-graphics/xorg-driver/xf86-video-intel_2.20.0.bb
> > @@ -0,0 +1,26 @@
> > +require xorg-driver-video.inc
> > +
> > +SUMMARY =3D "X.Org X server -- Intel integrated graphics chipsets driv=
er"
> > +
> > +DESCRIPTION =3D "intel is an Xorg driver for Intel integrated graphics
> > +\ chipsets. The driver supports depths 8, 15, 16 and 24. On some
> > +chipsets, \ the driver supports hardware accelerated 3D via the
> > +Direct Rendering \ Infrastructure (DRI)."
> > +
> > +LIC_FILES_CHKSUM =3D
> "file://COPYING;md5=3D8730ad58d11c7bbad9a7066d69f7808e"
> > +
> > +PR =3D "${INC_PR}.0"
> > +
> > +DEPENDS +=3D "virtual/libx11 drm xf86driproto glproto \
> > +	    virtual/libgl xineramaproto xf86driproto libpciaccess"
> > +
> > +
> > +EXTRA_OECONF +=3D "--disable-xvmc"
>=20
> I think Ross's version enables xvmc. Any reason to disable it?

I basically took the recipe from oecore, and updated to the desired version=
. That way it is very close to what is in oecore, and all the testing of oe=
core is on our side.

>=20
> Is the new method to use PACKAGECONF instead of EXTRA_OECONF now?
> Again, this is what I saw in Ross's layer.
>=20
Not sure, I will see the differences with Ross's recipe, and test it out he=
re.

Thanks,
Nitin


> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel

