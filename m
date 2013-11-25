Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F673E006AD
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 09:45:18 -0800 (PST)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Mon, 25 Nov 2013 12:45:14 -0500
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Mon, 25 Nov 2013 12:41:58 -0500
Thread-Topic: stupid question about post-installation scripts
Thread-Index: Ac7qA9t6cuEgrSeMS3iswD5qqg8gEAAAFJ0A
Message-ID: <91586D499ADFD74FBCFB8425266A5DE40153C115614F@pluto.melinkcorp.local>
References: <alpine.DEB.2.02.1311240533220.32547@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983F511F7@ORSMSX101.amr.corp.intel.com>
	<91586D499ADFD74FBCFB8425266A5DE40153C1156096@pluto.melinkcorp.local>
	<alpine.DEB.2.02.1311251227140.6887@oneiric>
In-Reply-To: <alpine.DEB.2.02.1311251227140.6887@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: stupid question about post-installation scripts
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
X-List-Received-Date: Mon, 25 Nov 2013 17:45:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Robert,

> -----Original Message-----
> From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
> Sent: Monday, November 25, 2013 12:29 PM
> To: Bryan Evenson
> Cc: Rifenbark, Scott M; Yocto discussion list
> Subject: RE: stupid question about post-installation scripts
>=20
> On Mon, 25 Nov 2013, Bryan Evenson wrote:
>=20
> > Robert,
> >
> > That's how it works in my experience.  I have some packages for my
> > system that have a postinst piece that needs to run during image
> > creation, and other pieces that need to run only on a package
> upgrade.
> > By checking whether "x${D}" =3D "${D}", I am filtering out whether the
> > postinst script is running during image creation or on the actual
> > hardware.  Been working great so far.
>=20
>   right, but what i was trying to clarify is (and i think you answer
> it) that postint scripts will be invoked *both* at image creation time
> and boot time, and it's your responsibility to identify which parts run
> at which times.

Everyone else please correct me if I'm wrong, but I believe that the packag=
e management tool checks if postinst completed successfully.  The postinst =
script for a package can run either 1) during image creation, 2) during boo=
tup or 3) during package installation/upgrade.  If postinst for a package h=
as not yet completed successfully, then the package management tool will tr=
y to run the postinst script for that package at the next triggerable event=
.=20

-Bryan=20

>=20
> rday
>=20
> --
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =3D
> Robert P. J. Day                                 Ottawa, Ontario,
> CANADA
>                         http://crashcourse.ca
>=20
> Twitter:
> http://twitter.com/rpjday
> LinkedIn:
> http://ca.linkedin.com/in/rpjday
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =3D

