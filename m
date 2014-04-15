Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FC64E00B8B
	for <yocto@yoctoproject.org>; Tue, 15 Apr 2014 08:16:00 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 15 Apr 2014 08:15:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,864,1389772800"; d="scan'208";a="493576268"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by orsmga001.jf.intel.com with ESMTP; 15 Apr 2014 08:15:16 -0700
Received: from irsmsx153.ger.corp.intel.com (163.33.192.75) by
	IRSMSX102.ger.corp.intel.com (163.33.3.155) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 15 Apr 2014 16:15:15 +0100
Received: from irsmsx103.ger.corp.intel.com ([169.254.3.172]) by
	IRSMSX153.ger.corp.intel.com ([169.254.9.200]) with mapi id
	14.03.0123.003; Tue, 15 Apr 2014 16:15:15 +0100
From: "Stoicescu, CorneliuX" <corneliux.stoicescu@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] BBB doesn't boot
Thread-Index: AQHPVvi7UCGMRFXr7EqKinYwKPRwGZsQVSAAgACEAYCAAFmtgIAAAWGAgAACeICAAAEggIAAARsAgABDvYCAACrEgIAAGsuAgAAV/wCAADPFAIAABooAgAACyQCAAD8tgIAAL0uAgAAxbACAABePoA==
Date: Tue, 15 Apr 2014 15:15:14 +0000
Message-ID: <33115ABC4887814E8A92A08FBC93416B0A247E43@IRSMSX103.ger.corp.intel.com>
References: <534C0415.20701@mlbassoc.com>
	<1397552645.2977.0.camel@firebird.rb.intel.com>
	<1397562801.2977.2.camel@firebird.rb.intel.com>
	<3130526.9zUpmp9SKQ@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <3130526.9zUpmp9SKQ@peggleto-mobl5.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Re: BBB doesn't boot
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
X-List-Received-Date: Tue, 15 Apr 2014 15:16:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Paul Eggleton
> Sent: Tuesday, April 15, 2014 5:50 PM
> To: yocto@yoctoproject.org
> Subject: Re: [yocto] BBB doesn't boot
>=20
> On Tuesday 15 April 2014 11:52:49 Stanacar, StefanX wrote:
> > On Tue, 2014-04-15 at 09:03 +0000, Stanacar, StefanX wrote:
> > > On Tue, 2014-04-15 at 01:17 -0400, Denys Dmytriyenko wrote:
> > > > On Tue, Apr 15, 2014 at 01:07:28AM -0400, Denys Dmytriyenko wrote:
> > > > > On Tue, Apr 15, 2014 at 05:44:04AM +0100, Richard Purdie wrote:
> > > > > > On Mon, 2014-04-14 at 21:38 -0400, Denys Dmytriyenko wrote:
> > > > > > > On Tue, Apr 15, 2014 at 01:20:03AM +0100, Richard Purdie wrot=
e:
> > > > > > > > On Mon, 2014-04-14 at 18:44 -0400, Denys Dmytriyenko wrote:
> > > > > > > > > On Mon, Apr 14, 2014 at 02:11:05PM -0600, Gary Thomas
> wrote:
> > > > > > > > > > Very interesting results!  These are the results from
> > > > > > > > > > the
> build hosts I have:
> > > > > > > > > >   Fedora 13 (i686) - fails
> > > > > > > > > >   Fedora 17 (i686) - fails
> > > > > > > > > >   Ubuntu 12.04 (x86_64) - boots
> > > > > > > > >
> > > > > > > > > Interesting indeed. I have no idea what's so special
> > > > > > > > > about Fedora host - this is the first time I hear about
> > > > > > > > > issues with it. I may try experimenting with different
> > > > > > > > > VMs once I have more time...
> > > > > > > >
> > > > > > > > I've been having a look at this. The biggest differences I
> > > > > > > > can find between working and non working builds is the
> > > > > > > > path length to the build directory for the kernel. This is
> > > > > > > > from comparing vmlinux files from working and non working
> > > > > > > > builds.
> > > > > > > >
> > > > > > > > Works:
> > > > > > > > /home/paul/poky/build/tmp/work/beaglebone-poky-linux-
> gnuea
> > > > > > > > bi
> > > > > > > >
> > > > > > > > Doesn't Work:
> > > > > > > > /media/data1/build1/poky/build/tmp/work/beaglebone-poky-li
> > > > > > > > nux-gn
> > > > > > > > ueabi
> > > > > > > >
> > > > > > > > I also have been wondering if the version strings may be
> > > > > > > > making a difference.
> > > > > > > >
> > > > > > > > http://dan.rpsys.net/uImage-rp2 is a uImage from a broken
> > > > > > > > build where I truncated the path length to a "working"
> > > > > > > > build path length and patched in the same version strings:
> > > > > > > >
> > > > > > > > const char linux_banner[] =3D
> > > > > > > >
> > > > > > > >        "Linux version 3.14.0-yocto-standard
> > > > > > > >        (paul@ubuntu-build01) (gcc
> > > > > > > >
> > > > > > > > version 4.8.2 (GCC) ) #1 PREEMPT Mon Apr 14 16:00:52 BST
> > > > > > > > 2014\n";
> > > > > > > >
> > > > > > > > const char linux_proc_banner[] =3D "%s version %s
> > > > > > > > (paul@ubuntu-build01)
> > > > > > > > (gcc version 4.8.2 (GCC) ) %s\n";
> > > > > > > >
> > > > > > > > to init/version.c.
> > > > > > > >
> > > > > > > > I don't have hardware and would be interested to know if
> > > > > > > > the kernel linked to above works or not. If it doesn't, it
> > > > > > > > rules out these path and string lengths, if it does work,
> > > > > > > > it points to a problem there.
> > > > > > >
> > > > > > > Richard,
> > > > > >
> > > > > > > Good catch! It boots:
> > > > > > Thanks Denys, this helps narrow down the issue. I've shared
> > > > > > http://dan.rpsys.net/uImage-rp3 which is the same as the last
> > > > > > one but with my changes to version.c reverted. The one should
> > > > > > tell us if its the paths or the strings.
> > > > >
> > > > > This one also boots for me:
> > > > >
> > > > > Linux version 3.14.0-yocto-standard (richard@ted) (gcc version
> > > > > 4.8.2
> > > > > (GCC) ) #2 PREEMPT Tue Apr 15 05:40:19 IST 2014> > >
> > > > > > I'm guessing the path problem is more likely but anything is
> > > > > > possible.
> > > > > > This is starting to look like some kind of compiler or linker i=
ssue.
> > > > > > If
> > > > > > it is that, it would help to have more data points about what
> > > > > > works and what doesn't. With that in mind could people who
> > > > > > have good or bad builds please share the paths they built the
> > > > > > kernels in so we can see if we can spot some kind of pattern.
> > > >
> > > > BTW, my path is
> > > > /OE/RAM/poky/tmp/work/beaglebone-poky-linux-gnueabi and it
> works.
> > >
> > > I can confirm:
> > >  build dir in /home/stefans/b1  works,
> > >
> > > but /home/stefans/yocto/poky/build doesn't.
> >
> > But this works
> > [stefans@firebird bu]$ pwd
> > /home/stefans/yocto/poky/bu
> > [stefans@firebird bu]$ echo `pwd`| wc -c
> > 28
> >
> >
> > But 29 doesn't.
> > So, what now?
>=20
> Some other things I tried with a "long" TMPDIR path (note that it's the
> TMPDIR path that makes the difference - in my tests I've been using
> /home/paul/poky/build2/much/longer/path/to/tmp). None of this helped:
>=20
> * kernel built with gcc 4.7.2 and binutils 2.23.2
> * u-boot built with gcc 4.7.2 and binutils 2.23.2
> * u-boot from http://downloads.angstrom-
> distribution.org/demo/beaglebone/
> * earlyprintk and CONFIG_DEBUG_LL - no additional output printed
>=20
> I think we're now at the point where we'd benefit from someone with bette=
r
> knowledge debugging the issue.
>=20
> Cheers,
> Paul
>=20

I don't know if this is helpful but this TMPDIR path size issue reminded me=
 of a bug I verified some time ago:=20
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3989

Regards,
Corneliu

