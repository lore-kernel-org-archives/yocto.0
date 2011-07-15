Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id B5B634C8007E
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 09:44:47 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 15 Jul 2011 07:44:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,535,1304319600"; d="scan'208";a="26272246"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga002.jf.intel.com with ESMTP; 15 Jul 2011 07:44:47 -0700
Received: from orsmsx103.amr.corp.intel.com (10.22.225.130) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 15 Jul 2011 07:44:46 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.138]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.105]) with mapi id
	14.01.0289.001; Fri, 15 Jul 2011 07:44:46 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, "Robert P. J. Day"
	<rpjday@crashcourse.ca>
Thread-Topic: [yocto] couple questions about toolchains from QS manual
Thread-Index: AQHMQvmfxcESSW9S00yNwkX4ONogp5Tt5WgA//+QCyA=
Date: Fri, 15 Jul 2011 14:44:45 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123790316DF@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1107151010270.1923@localhost6.localdomain6>
	<1310739913.20015.1243.camel@rex>
In-Reply-To: <1310739913.20015.1243.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.9.131.214]
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: couple questions about toolchains from QS manual
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
X-List-Received-Date: Fri, 15 Jul 2011 14:44:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Wording change taken care of.

Scott

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Richard Purdie
Sent: Friday, July 15, 2011 7:25 AM
To: Robert P. J. Day
Cc: Yocto discussion list
Subject: Re: [yocto] couple questions about toolchains from QS manual

On Fri, 2011-07-15 at 10:15 -0400, Robert P. J. Day wrote:
> (look on the bright side -- eventually, after many, many patches, i
> will have nothing left to whine about.)

:)

>   from quick start manual, i notice that all toolchain tarballs have
> "sdk" in the filename, whereas the actual downloads have "gmae".  a
> simple textual fix, i'm assuming.  (what means "gmae"?)

GMAE =3D GNOME Mobile and Embedded

think cut down GNOME.

>   more significantly, QS manual states that toolchains "should" be
> installed under /opt/poky.  "should" is a loaded word -- it implies a
> recommendation for some benefit but not an actual requirement.  and
> installing it there requires the reader to have root privilege,
> something to be avoided if at all possible.
>=20
>   can someone clarify the "shouldness" or "mustness" of toolchain
> installation under /opt/poky?

At this point its a requirement, we'd like to relax that but it isn't
possible right now.

Cheers,

Richard

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

