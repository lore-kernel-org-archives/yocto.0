Return-Path: <nitin.a.kamble@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4145E00294
	for <yocto@yoctoproject.org>; Fri,  5 Oct 2012 19:07:54 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 05 Oct 2012 19:07:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,543,1344236400"; d="scan'208";a="231266328"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by fmsmga002.fm.intel.com with ESMTP; 05 Oct 2012 19:07:53 -0700
Received: from orsmsx108.amr.corp.intel.com (10.22.225.41) by
	ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Fri, 5 Oct 2012 19:07:53 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.60]) by
	ORSMSX108.amr.corp.intel.com ([169.254.9.202]) with mapi id
	14.01.0355.002; Fri, 5 Oct 2012 19:07:53 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "Hart, Darren" <darren.hart@intel.com>
Thread-Topic: [PATCHv2 1/1] crownbay.conf: add kernel parameters for EMGD
	video acceleration
Thread-Index: AQHNon8UCzDlAj5GTkqrJZ/RcIEKnpeqMQuAgAEwkvA=
Date: Sat, 6 Oct 2012 02:07:52 +0000
Message-ID: <ADD6A3980E8C39419A432FF422031B4C15730026@ORSMSX106.amr.corp.intel.com>
References: <cover.1349389359.git.nitin.a.kamble@intel.com>
	<94b05e28840e2846998ff8c5ea161dfe69a5b88d.1349389359.git.nitin.a.kamble@intel.com>
	<506E0ED7.1050500@intel.com>
In-Reply-To: <506E0ED7.1050500@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCHv2 1/1] crownbay.conf: add kernel parameters for EMGD video acceleration
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
X-List-Received-Date: Sat, 06 Oct 2012 02:07:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: Hart, Darren
> Sent: Thursday, October 04, 2012 3:34 PM
> To: Kamble, Nitin A
> Cc: Zanussi, Tom; yocto@yoctoproject.org
> Subject: Re: [PATCHv2 1/1] crownbay.conf: add kernel parameters for EMGD
> video acceleration
>=20
> On 10/04/2012 03:23 PM, nitin.a.kamble@intel.com wrote:
> > From: Nitin A Kamble <nitin.a.kamble@intel.com>
> >
> > This is recommended in the EMGD User Guide.
> >
> > My understanding is the emgd kernel driver need to allocate memory
> > dynamically, and the "vmalloc=3D256MB" parameter ensures enough will be
> > available for the driver.
>=20
> OK, this explains the change to vmalloc.
>=20
> Why the change of vga=3Dcurrent and the drop of video=3Dvesafb ?

Darren,
   Good catch. I changed this for cleanup, but now I see that it affects th=
e splash screen. So I will resend the commit by dropping these extra change=
s.

Thanks,
Nitin


>=20
> --
> Darren
>=20
> >
> > Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
> > ---
> >  meta-crownbay/conf/machine/crownbay.conf |    2 +-
> >  1 files changed, 1 insertions(+), 1 deletions(-)
> >
> > diff --git a/meta-crownbay/conf/machine/crownbay.conf
> > b/meta-crownbay/conf/machine/crownbay.conf
> > index 40dbd1d..f02615e 100644
> > --- a/meta-crownbay/conf/machine/crownbay.conf
> > +++ b/meta-crownbay/conf/machine/crownbay.conf
> > @@ -21,7 +21,7 @@ PREFERRED_VERSION_xserver-xorg ?=3D "1.9.3"
> >  PREFERRED_VERSION_mesa-dri ?=3D "7.11"
> >  PREFERRED_VERSION_xf86-input-evdev ?=3D "2.6.0"
> >
> > -APPEND +=3D "video=3Dvesafb vga=3D0x318"
> > +APPEND +=3D "vga=3Dcurrent vmalloc=3D256MB"
> >
> >  VA_FEATURES =3D "${@bb.utils.contains("LICENSE_FLAGS_WHITELIST", \
> >  	    "commercial", "gst-va-intel va-intel", "va-intel", d)}"
> >
>=20
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel

