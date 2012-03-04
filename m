Return-Path: <david.c.stewart@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A65DE0044C
	for <yocto@yoctoproject.org>; Sun,  4 Mar 2012 08:14:03 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 04 Mar 2012 08:14:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="114496622"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by azsmga001.ch.intel.com with ESMTP; 04 Mar 2012 08:14:02 -0800
Received: from orsmsx101.amr.corp.intel.com (10.22.225.128) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Sun, 4 Mar 2012 08:14:01 -0800
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.233]) by
	ORSMSX101.amr.corp.intel.com ([169.254.8.188]) with mapi id
	14.01.0355.002; Sun, 4 Mar 2012 08:14:01 -0800
From: "Stewart, David C" <david.c.stewart@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] some observations about yocto wiki page, "from git
	checkout to meta-intel BSP"
Thread-Index: AQHM+ggJF++y2+Sic0yNScoaIIGlDZZaT0Kg
Date: Sun, 4 Mar 2012 16:14:00 +0000
Message-ID: <CDED78A957032E45B3239CDDA7642D150846F91D@ORSMSX105.amr.corp.intel.com>
References: <alpine.DEB.2.02.1203040759260.2396@oneiric>
In-Reply-To: <alpine.DEB.2.02.1203040759260.2396@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: some observations about yocto wiki page, "from git checkout to meta-intel BSP"
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
X-List-Received-Date: Sun, 04 Mar 2012 16:14:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Yeah, the example is pretty old, dating back to the 1.0 (bernard) release.=
=20

Tom - it might be time to retire it, you think?

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
>Sent: Sunday, March 04, 2012 5:09 AM
>To: Yocto discussion list
>Subject: [yocto] some observations about yocto wiki page, "from git checko=
ut
>to meta-intel BSP"
>
>
>  yes, i know it's an editable wiki but i'd rather someone else make
>the changes just in case i'm misreading something.  it's early, and
>there's only decaf in the place.  this is bad.
>
>  anyway, using this page as grist for discussion:
>
>https://wiki.yoctoproject.org/wiki/Transcript:_from_git_checkout_to_meta-
>intel_BSP
>
>"To build and run a meta-intel BSP, you need to check out a local copy
>of the poky repo ..."
>
>  i think that sentence demonstrates the yocto vs poky confusion koen
>was talking about -- a regular waffling between "yocto" sources and
>"poky" repos.
>
>  below that, there are references to
>git://git.pokylinux.org/poky.git -- should those references be updated
>to refer to the git.yoctoproject.org repos?
>
>  there's a reference to "poky-qemu qemux86" -- change to "runqemu
>qemux86"?  or is that the correct name in the last released version?
>(i rarely look at released versions.)
>
>  and i'm pretty sure that there's a missing reference to the
>meta-yocto layer here:
>
>BBLAYERS =3D " \
>  /usr/local/src/Yocto/meta \
>  /usr/local/src/Yocto/meta-intel/meta-fishriver \
>  "
>
>unless that's also correct for the last released version.
>
>  further down,
>
>  $ bitbake poky-image-sato-live
>
>there's no such bitbake target these days.
>
>  anyway, that was about 60 seconds worth of perusing.  if some
>meta-intel person wants to mess with that page, it's all yours.
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

