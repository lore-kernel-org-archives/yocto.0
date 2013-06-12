Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 969E3E006C2
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 13:56:01 -0700 (PDT)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Wed, 12 Jun 2013 16:56:00 -0400
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Trevor Woerner <twoerner@gmail.com>
Date: Wed, 12 Jun 2013 16:54:43 -0400
Thread-Topic: [yocto] Problems fetching branch for linux-yocto-custom
Thread-Index: Ac5nrUro3JdPIVK8Tw25mawbaNoizAAANd9Q
Message-ID: <91586D499ADFD74FBCFB8425266A5DE4013B910EC2EA@pluto.melinkcorp.local>
References: <91586D499ADFD74FBCFB8425266A5DE4013B910EC22E@pluto.melinkcorp.local>
	<CADkTA4PkMUc8rzBWewZWwygE=XcXLBAQwHFEXcUPZX6mqzmADA@mail.gmail.com>
	<91586D499ADFD74FBCFB8425266A5DE4013B910EC264@pluto.melinkcorp.local>
	<CAHUNapQeeSN2eD9jG4mmw8hXU1n_vip7gNJ1TPossrOeD==PRw@mail.gmail.com>
In-Reply-To: <CAHUNapQeeSN2eD9jG4mmw8hXU1n_vip7gNJ1TPossrOeD==PRw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 072F53430048D8072F5490
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problems fetching branch for linux-yocto-custom
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
X-List-Received-Date: Wed, 12 Jun 2013 20:56:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: Trevor Woerner [mailto:twoerner@gmail.com]
> Sent: Wednesday, June 12, 2013 4:42 PM
> To: Bryan Evenson
> Cc: Bruce Ashfield; yocto@yoctoproject.org
> Subject: Re: [yocto] Problems fetching branch for linux-yocto-custom
>=20
> On Wed, Jun 12, 2013 at 3:37 PM, Bryan Evenson
> <bevenson@melinkcorp.com> wrote:
> > # Added KBRANCH spec
> > KBRANCH =3D "linux-3.9-at91"
> >> > # Override SRC_URI in a bbappend file to point at a different
> >> > source
> >> #
> >> > tree if you do not want to build from Linus' tree.
> >> > SRC_URI =3D "git://github.com/linux4sam/linux-at91.git;branch=3Dlinu=
x-
> >> 3.9-
> >>
> at91;tag=3Ddcdf169e24c0cb6d7dc69e0a09d2395934e95075;protocol=3Dgit;nochec
> >> ko
> >> ut=3D1"
> >
> > # Changed SRC_URI to following
> > SRC_URI =3D "git://github.com/linux4sam/linux-
> at91.git;branch=3D${KBRANCH};protocol=3Dgit;nocheckout=3D1"
>=20
> It looks like all you did was to define the string "linux-3.9-at91" in
> its own variable, put that in your SRC_URI string, and remove the
> "tag=3D..." field. Would your original recipe have worked if all you did
> was remove the "tag=3D..." field?
>=20
> Is KBRANCH being used somewhere else? Doesn't bitbake's "git" fetcher
> already have a generic way of specifying a branch? Why would a kernel
> recipe need to also define a branch variable? Do non-kernel recipes
> also need to define some kind of branch variable too?

From looking through meta/classes/kernel-yocto.bbclass, I see KBRANCH being=
 used a lot in reference to the specific branch to be checked out.  KBRANCH=
_DEFAULT defines the default branch (which defaults to "master") so if you =
don't specify KBRANCH, then it'll checkout the KBRANCH_DEFAULT branch.

With that said, I'm wondering what would happen if I specified KBRANCH but =
didn't put the "branch=3D${KBRANCH}" in the SRC_URI.  Is this branch=3D var=
iable from the SRC_URI being used for the kernel?

-Bryan

