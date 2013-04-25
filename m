Return-Path: <Diego.SantaCruz@spinetix.com>
Received: from smtp4.infomaniak.ch (smtp4.infomaniak.ch [84.16.68.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1018E014F3
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 05:27:42 -0700 (PDT)
Received: from inmail.spinetix.com (inmail.spinetix.com [212.147.27.179])
	(authenticated bits=0)
	by smtp4.infomaniak.ch (8.14.5/8.14.5) with ESMTP id r3PCRYHx006441
	(version=TLSv1/SSLv3 cipher=RC4-MD5 bits=128 verify=NO);
	Thu, 25 Apr 2013 14:27:35 +0200
X-MimeOLE: Produced By Microsoft Exchange V6.5
MIME-Version: 1.0
Date: Thu, 25 Apr 2013 14:27:33 +0200
Message-ID: <364D31930BDB974AB40E22C5C2E584ED011E6214@asterix.SPINETIX.local>
In-reply-to: <3875695.6MzV3H4rrf@helios>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [yocto] About running old kernels with Yoctoo 1.2 or 1.3
thread-index: Ac5A8J76CKn4qmLST1S191WD0D0x3wAvAGlQ
References: <364D31930BDB974AB40E22C5C2E584ED011E6155@asterix.SPINETIX.local>
	<5177D5CB.8060706@windriver.com> <3875695.6MzV3H4rrf@helios>
From: "Diego Santa Cruz" <Diego.SantaCruz@spinetix.com>
To: "Paul Eggleton" <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: About running old kernels with Yoctoo 1.2 or 1.3
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
X-List-Received-Date: Thu, 25 Apr 2013 12:27:43 -0000
Content-class: urn:content-classes:message
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> Sent: 24 April 2013 15:36
> To: Diego Santa Cruz
> Cc: yocto@yoctoproject.org; Bruce Ashfield
> Subject: Re: [yocto] About running old kernels with Yoctoo 1.2 or 1.3
>=20
> On Wednesday 24 April 2013 08:53:31 Bruce Ashfield wrote:
> >
> > Each Yocto release uses a sliding set of kernel's that have had at =
least
> > some level of testing with the associated userspace of the release.
> >
> >   1.4 is: 3.2, 3.4 and 3.8
> >   1.3 was: 3.4, 3.2 and 3.0
> >   1.2 was: 3.2, 3.0 and 2.6.37
> >
> > But obviously, the linux kernel has a very stable userspace ABI, so =
there
> > shouldn't be any big compatibility issues with other kernel =
versions.
> > It's just that we don't know for sure.
> >
> > It is true that each of these releases with have a =
linux-libc-headers
> > that is newer than the 2.6.x kernel you are talking about, which =
could
> > expose syscalls or other interfaces to userspace that aren't =
supported
> > in your kernel, but this typically degrades gracefully and the issue
> > detected when you try your applications.
>=20
> The usual problematic components are those that rely heavily upon the
kernel
> e.g. udev and systemd. For such components you may find you need to
downgrade
> or avoid them altogether; most of userspace should work just fine with =
an
> older
> kernel though.

Many thanks for the valuable input. Is the traditional init system still
supported, or is Yocto using systemd exclusively?

Best,

Diego

--
Diego Santa Cruz, PhD
Technology Architect
_________________________________
SpinetiX S.A.
Rue des Terreaux 17
1003, Lausanne, Switzerland
T +41 21 341 15 50
F +41 21 311 19 56
diego.santacruz@spinetix.com
http://www.spinetix.com
http://www.youtube.com/SpinetiXTeam
_________________________________





