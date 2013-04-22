Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A781E013C9
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 11:21:04 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 22 Apr 2013 11:20:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,528,1363158000"; d="scan'208";a="230420268"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by AZSMGA002.ch.intel.com with ESMTP; 22 Apr 2013 11:20:50 -0700
Received: from orsmsx107.amr.corp.intel.com (10.22.240.5) by
	ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Mon, 22 Apr 2013 11:20:49 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.3.124]) by
	ORSMSX107.amr.corp.intel.com ([169.254.1.26]) with mapi id
	14.01.0355.002; Mon, 22 Apr 2013 11:20:49 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] remaining comments on current BSP developers guide
Thread-Index: AQHOP3K5KUHUi4/CTEm4J8t8Gdq+IJjii+Xg
Date: Mon, 22 Apr 2013 18:20:49 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123796FCF7788@ORSMSX104.amr.corp.intel.com>
References: <alpine.DEB.2.02.1304221056510.7236@oneiric>
In-Reply-To: <alpine.DEB.2.02.1304221056510.7236@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: remaining comments on current BSP developers guide
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
X-List-Received-Date: Mon, 22 Apr 2013 18:21:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Robert,=20

Fixed the two points below in the doc.   See http://www.yoctoproject.org/do=
cs/1.4/bsp-guide/bsp-guide.html.

Thanks again,=20
Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
>Sent: Monday, April 22, 2013 9:00 AM
>To: Yocto discussion list
>Subject: [yocto] remaining comments on current BSP developers guide
>
>
>  (again, someone up the food chain can decide what's worth
>processing.)
>
>1.6.1 Common Features
>
>* "Both tools [yocto-bsp and yocto-kernel] reside in the scripts/
>subdirectory of the Source Directory." no, they don't, they're in
>meta-yocto/scripts/, so simply sourcing oe-init-build-env isn't
>sufficient to add them to the search path, is it? (i'm guessing it
>used to be, but no longer.)
>
>1.6.2 Creating a new BSP Layer ...
>
>     $ yocto-bsp list karch
>     Architectures available:
>         qemu
>         x86_64
>         i386
>         powerpc
>         arm
>         mips
>
>  but if you run that, you get the additional arch "layer". where's
>that coming from? is it a holdover from before there was a yocto-layer
>command? i never noticed that before now.
>
>* "Assuming you have sourced the environment ..." Again, you don't get
>these utilities in your PATH by sourcing the environment, you need to
>do that manually.
>
>* "...pressing enter and providing an invalid response..." um, what is
>that supposed to say?

Poor wording - changed to "Pressing enter without supplying anything on the=
 command line or pressing enter with an invalid response causes...."

>
>* Point 6.  Do you actually need to include the meta-yocto and
>meta-yocto-bsp layers in this new layer's bblayers.conf file? I don't
>see why but maybe I'm missing something obvious.
>
>* also, typo "BBLAYERS =3D ?"

Fixed typo.

>
>  i think that's everything.
>
>rday
>
>--
>
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                        http://crashcourse.ca
>
>Twitter:                                       http://twitter.com/rpjday
>LinkedIn:                               http://ca.linkedin.com/in/rpjday
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

