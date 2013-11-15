Return-Path: <David.Nystrom@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id B84A8E0160B
	for <yocto@yoctoproject.org>; Fri, 15 Nov 2013 11:33:45 -0800 (PST)
Received: from SESTOEX09.enea.se ([fe80::cc12:dcdc:d521:97f8]) by
	SESTOEX08.enea.se ([fe80::1c3:4003:dc47:23c0%11]) with mapi id
	14.03.0158.001; Fri, 15 Nov 2013 20:33:39 +0100
From: =?iso-8859-1?Q?David_Nystr=F6m?= <David.Nystrom@enea.com>
To: "paul.eggleton@linux.intel.com" <paul.eggleton@linux.intel.com>,
	"rpjday@crashcourse.ca" <rpjday@crashcourse.ca>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>
Thread-Topic: [yocto] is the ref manual DISTRO_FEATURES list meant to be
	exhaustive?
Thread-Index: AQHO4e1/Zj1Z8R9SfUKs1eH9UnFj1pomr0/c
Date: Fri, 15 Nov 2013 19:33:38 +0000
Message-ID: <88701C38B5D07249817D428430999C9128D9D16C@sestoex09.enea.se>
References: <alpine.DEB.2.02.1311140901570.24348@oneiric>
	<1733345.i7ehKFuPNv@helios>,
	<alpine.DEB.2.02.1311150505090.30443@oneiric>
In-Reply-To: <alpine.DEB.2.02.1311150505090.30443@oneiric>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: is the ref manual DISTRO_FEATURES list meant to be exhaustive?
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
X-List-Received-Date: Fri, 15 Nov 2013 19:33:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I sent the sdk-pms patch/es, it seems to have been merged to poky-docs but =
not in oe-core.
Richard, how do you want this fixed ?

//DD


Sent from my Android phone using TouchDown (www.nitrodesk.com)


-----Original Message-----
From: Robert P. J. Day [rpjday@crashcourse.ca]
Received: Friday, 15 Nov 2013, 11:29
To: Paul Eggleton [paul.eggleton@linux.intel.com]
CC: yocto@yoctoproject.org [yocto@yoctoproject.org]
Subject: Re: [yocto] is the ref manual DISTRO_FEATURES list meant to be exh=
austive?


On Thu, 14 Nov 2013, Paul Eggleton wrote:

> Hi Robert,
>
> On Thursday 14 November 2013 09:05:09 Robert P. J. Day wrote:
> >   just noticed that the list of DISTRO_FEATURES values listed here:
> >
> > http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#ref-=
featu
> > res-distro
> >
> > is somewhat incomplete. is that deliberate? just from poking
> > around the dora release, i can see tests for DISTRO_FEATURES
> > values of ptest, directfb, pam, zeroconf, acl, xattr, sysvinit and
> > more. should those values also be part of that list, or is the ref
> > manual only attempting to present a subset?
>
> It's meant to be complete. I think as new values have been
> introduced we have neglected to add them to the list, but they
> should be added.

  in case this is helpful, here's the full list i came up with using a
simple grep search looking through the dora 10.0 source tree for
DISTRO_FEATURES tests of values that aren't listed in section 10.1 of
the ref manual:

 3g
 acl
 directfb
 ipv4
 largefile
 libc-posix-clang-wchar
 ld-is-gold
 multiarch
 nfc
 openvg
 pam
 pie
 pulseaudio
 ptest
 sysvinit
 x11
 xattr
 zeroconf

conversely, there *are* a few values listed in section 10.1 of the ref
manual that don't appear to be tested for anywhere (typo? obsolete?)

 ext2
 irda (this is a MACHINE feature but not a DISTRO feature)
 sdk-pms

for what it's worth. i'm about to do the same scan for
MACHINE_FEATURES.

rday

--

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

