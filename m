Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B594E00294
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 11:33:28 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 12 Dec 2012 11:33:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,268,1355126400"; d="scan'208";a="230655510"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by azsmga001.ch.intel.com with ESMTP; 12 Dec 2012 11:33:01 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.81]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.132]) with mapi id
	14.01.0355.002; Wed, 12 Dec 2012 11:32:21 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] might it be worth explaining BBMASK more comprehensively?
Thread-Index: AQHN2J7hlrGq4ZV/LEajwTpWAh3mXpgVjVfA
Date: Wed, 12 Dec 2012 19:32:20 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946ACC98F@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1212121421340.13445@oneiric>
In-Reply-To: <alpine.DEB.2.02.1212121421340.13445@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: might it be worth explaining BBMASK more comprehensively?
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
X-List-Received-Date: Wed, 12 Dec 2012 19:33:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Please feel free (anyone) to provide some useful examples and a bit of expl=
anation for each and I will be happy to get them in the manual(s).

Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
>Sent: Wednesday, December 12, 2012 11:27 AM
>To: Yocto discussion list
>Subject: [yocto] might it be worth explaining BBMASK more
>comprehensively?
>
>
>  a bit more pedantry, but is there a more complete example of the use
>of BBMASK than the trivial example in the ref and dev manuals?
>
>  the ref manual provides this example by way of explanation:
>
>BBMASK =3D ".*/meta-ti/recipes-misc/"
>
>well, ok, except you occasinally find slight variations like:
>
>BBMASK =3D "meta-ti/recipes-misc/"
>
>or
>
>BBMASK =3D "meta-ti/recipes-misc"
>
>  given that there are places where a trailing slash is significant,
>are all of the above exactly equivalent?  if so, that's worth noting.
>
>  also, what about an example showing masking out a couple
>directories, or perhaps a single recipe from a layer, and so on?  at
>the moment, the manuals suggest you can mask multiple recipes but
>nowhere do i see the reader being given an actual example of how to do
>that.
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

