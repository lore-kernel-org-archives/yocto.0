Return-Path: <nitin.a.kamble@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24C84E002AB
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2012 21:00:35 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 26 Jul 2012 21:00:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="173781212"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by azsmga001.ch.intel.com with ESMTP; 26 Jul 2012 21:00:33 -0700
Received: from orsmsx101.amr.corp.intel.com (10.22.225.128) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 26 Jul 2012 21:00:33 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.44]) by
	ORSMSX101.amr.corp.intel.com ([169.254.8.93]) with mapi id
	14.01.0355.002; Thu, 26 Jul 2012 21:00:32 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Thread-Topic: [yocto] [PATCH 2/6] crownbay: customize the xorg.conf for the
	flat panel on the corwnbay kit
Thread-Index: AQHNa2r9XwwvdBFLnUeifBa0FZ6xkpc8gU0w
Date: Fri, 27 Jul 2012 04:00:32 +0000
Message-ID: <ADD6A3980E8C39419A432FF422031B4C0318E9CE@ORSMSX106.amr.corp.intel.com>
References: <c24a8e51027f36cb1c0395ca0c90cbd54b685100.1343037893.git.nitin.a.kamble@intel.com>
	<118e9c4c78b61e5debac285efa420486c145993b.1343037893.git.nitin.a.kamble@intel.com>
	<5011A43F.50904@linux.intel.com>
In-Reply-To: <5011A43F.50904@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 2/6] crownbay: customize the xorg.conf for the flat panel on the corwnbay kit
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
X-List-Received-Date: Fri, 27 Jul 2012 04:00:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: Darren Hart [mailto:dvhart@linux.intel.com]
> Sent: Friday, July 27, 2012 1:41 AM
> To: Kamble, Nitin A
> Cc: yocto@yoctoproject.org; bruce.ashfield@windriver.com; Zanussi, Tom
> Subject: Re: [yocto] [PATCH 2/6] crownbay: customize the xorg.conf for th=
e
> flat panel on the corwnbay kit
>=20
> On 07/23/2012 03:06 AM, nitin.a.kamble@intel.com wrote:
> > From: Nitin A Kamble <nitin.a.kamble@intel.com>
> >
> > The kit has Auo 800x600 LCD screen. Configuring Xorg for it.
>=20
> I presume the crownbay has additional display options? how does this impa=
ct
> those?
>=20
This change sets the resolution of the screen to 800x600. And this is appli=
cable to=20
LCD screen on the kit as well as external monitor.
  I will add a note about it in the log.

Thanks,
Nitin


> --
> Darren
>=20
> >
> > Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
> > ---
> >  .../xserver-xf86-config/crownbay/xorg.conf         |   14 ++++++++++++=
++
> >  1 files changed, 14 insertions(+), 0 deletions(-)
> >
> > diff --git
> > a/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-
> config/crow
> > nbay/xorg.conf
> > b/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-
> config/crow
> > nbay/xorg.conf
> > index 662f60f..d71173c 100644
> > ---
> > a/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-
> config/crow
> > nbay/xorg.conf
> > +++ b/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/
> > +++ crownbay/xorg.conf
> > @@ -4,12 +4,26 @@
> >  ## DriverVer=3D
> >  ##
> >
> > +# AUO G084SN05 V8 lcd flat panel
> > +Section "Monitor"
> > +    Identifier     "Monitor0"
> > +    VendorName     "Auo"
> > +#    HorizSync       33.6 - 48.3
> > +#    VertRefresh     60.0 - 60.0
> > +    Option         "DPMS"
> > +EndSection
> > +
> >  Section "Screen"
> >      Identifier    "Screen0"
> >      Device        "IntelEMGD-0"
> >      Monitor       "Monitor0"
> > +
> > +    # for the AUO flat screen
> >      SubSection    "Display"
> > +        Depth      24
> > +        Modes      "800x600"
> >      EndSubSection
> > +
> >  EndSection
> >
> >  # Primary (First/only) display
> >
>=20
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Technical Lead - Linux Kernel

