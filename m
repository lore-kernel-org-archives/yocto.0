Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7ED7FE011AF
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2012 17:00:55 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 16 Oct 2012 17:00:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,595,1344236400"; d="scan'208";a="236064700"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by fmsmga002.fm.intel.com with ESMTP; 16 Oct 2012 17:00:54 -0700
Received: from orsmsx106.amr.corp.intel.com ([169.254.5.130]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.167]) with mapi id
	14.01.0355.002; Tue, 16 Oct 2012 17:00:54 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "Hart, Darren" <darren.hart@intel.com>
Thread-Topic: [PATCHv4 6/8] mesa-dri.bbappend: avoid conflict with
	emgd-driver-bin
Thread-Index: AQHNqAjChNxZIOZCK0KNiW5ogUryd5e7BGgAgAGDNBCAAHapAP//phqQ
Date: Wed, 17 Oct 2012 00:00:53 +0000
Message-ID: <ADD6A3980E8C39419A432FF422031B4C2D905635@ORSMSX106.amr.corp.intel.com>
References: <cover.1349998086.git.nitin.a.kamble@intel.com>
	<0ef1ee65497461228a3b9da87ba40e120ab9818e.1349998086.git.nitin.a.kamble@intel.com>
	<507C3568.1010302@intel.com>
	<ADD6A3980E8C39419A432FF422031B4C2D90558E@ORSMSX106.amr.corp.intel.com>
	<507DDDC2.6030708@intel.com>
In-Reply-To: <507DDDC2.6030708@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCHv4 6/8] mesa-dri.bbappend: avoid conflict with emgd-driver-bin
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
X-List-Received-Date: Wed, 17 Oct 2012 00:00:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> >>>
> >>> diff --git a/common/recipes-graphics/mesa/mesa-dri_8.0.4.bbappend
> >>> b/common/recipes-graphics/mesa/mesa-dri_8.0.4.bbappend
> >>> new file mode 100644
> >>> index 0000000..6bfa968
> >>> --- /dev/null
> >>> +++ b/common/recipes-graphics/mesa/mesa-dri_8.0.4.bbappend
> >>> @@ -0,0 +1,24 @@
> >>> +
> >>> +# The emgd binary driver also provides egl, gles1, gles2 library &
> headers.
> >>> +# To avoid conflict disable egl, gles1, gles2 from meta-dri if the
> >>> +BSP image # is bundling the emgd driver.
> >>> +
> >>> +python __anonymous () {
> >>> +    import re
> >>> +    xserver =3D d.getVar('XSERVER', True)
> >>> +    if 'emgd-driver-bin' in xserver.split(' '):
> >>> +        extra_oeconf =3D d.getVar('EXTRA_OECONF', True).split()
> >>> +	take_out =3D ["--enable-egl", "--enable-gles1", "--enable-gles2"]
> >>> +	put_in =3D ["--disable-egl", "--disable-gles1", "--disable-gles2"]
> >>> +        pattern =3D re.compile("--with-egl-platforms")
> >>> +        new_extra_oeconf =3D [ ]
> >>> +	for i in extra_oeconf:
> >>> +            if ( i not in take_out ) and ( not pattern.match(i)):
> >>> +                new_extra_oeconf.append(i)
> >>> +        for i in put_in:
> >>> +            new_extra_oeconf.append(i)
> >>> +
> >>> +        d.setVar('EXTRA_OECONF', ' '.join(new_extra_oeconf))
> >>> +        depends =3D d.getVar('DEPENDS', True)
> >>> +        d.setVar('DEPENDS', depends + " emgd-driver-bin")
> >>
> >> Odd mix of whitespace and tabs above.
> >>
> >> Also, I have to agree with Ross. This places very specific knowledge
> >> of an external package in the general purpose recipe. This is
> >> opposite of how these things should be built up.
> >>
> >
> > Whitespace issues can be solved easily. But if this solution is not
> acceptable, then I am not sure how to solve the issue. Do we push the iss=
ue
> to 1.4?
>=20
> Can you define a variable that EXTRA_OECONF includes which can be
> manipulated in a bbappend in the meta-intel? This would keep this complex
> logic out of the core recipe and move into the place that actually needs =
it.

If we can modify the recipe in poky, then this method is not needed to achi=
eve same thing. But because of release we may not be able to do it.

Nitin


>=20
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel

