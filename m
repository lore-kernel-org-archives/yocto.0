Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C1B8E011AF
	for <yocto@yoctoproject.org>; Tue, 27 Nov 2012 09:24:11 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:41934 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1TdOtF-0006RB-TD; Tue, 27 Nov 2012 12:24:10 -0500
Date: Tue, 27 Nov 2012 12:24:06 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: =?ISO-8859-15?Q?Eren_T=FCrkay?= <eren@hambedded.org>
In-Reply-To: <20121127161136.GA94097@gmail.com>
Message-ID: <alpine.DEB.2.02.1211271203380.4220@oneiric>
References: <CAHUNapSSawC9WwpdoNdg4vHBY6Yh3UycqYgOyX_pbTNw3S0Etg@mail.gmail.com>
	<CAHUNapSVRuxDxn9L=oHg6aO-RKso2VNF6Mczaf2zwgxHn2zzBw@mail.gmail.com>
	<20121126190407.GA69689@gmail.com>
	<CAHUNapRZ2Fg_=G5gv7SGE0__3n7PjKk0R362V_w1nST5AuQpGQ@mail.gmail.com>
	<CAHUNapSUN1iAh1ijxby6XW=DZuXA=_KCFLwfm9nYpgpKuE-V8w@mail.gmail.com>
	<20121127113952.06050a25@eb-e6520>
	<CAHUNapSULHA0kmWi9Qb61kxRJsuvGdbTjm9Wvktxc=PmGfVOSg@mail.gmail.com>
	<20121127161136.GA94097@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: IMAGE_INSTALL_append workflow
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
X-List-Received-Date: Tue, 27 Nov 2012 17:24:11 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-297237268-1354036180=:4220"
Content-ID: <alpine.DEB.2.02.1211271222420.6797@oneiric>

--8323329-297237268-1354036180=:4220
Content-Type: TEXT/PLAIN; CHARSET=ISO-8859-15
Content-Transfer-Encoding: QUOTED-PRINTABLE
Content-ID: <alpine.DEB.2.02.1211271222421.6797@oneiric>

On Tue, 27 Nov 2012, Eren T=FCrkay wrote:

> On Tue, Nov 27, 2012 at 08:40:26AM -0500, Trevor Woerner wrote:
> > Thank you, Eric, for the confirmation.
> >
> > Just to clarify for anyone following along: the problem isn't with
> > bash or trace-cmd themselves. If I perform the same steps but use
> > 'bash' first, then 'trace-cmd', adding 'bash' succeeds but later
> > adding 'trace-cmd' causes 'trace-cmd' to fail in the same way
> > 'bash' did when it was added second.
>
> Since it's confirmed from different people, I think it would be
> better to report it using bugzilla. I guess that it's not an
> intended behaviour/feature of bitbake. Please inform the bug number
> so that anyone who is interested can follow.

  here's a test i made based on nothing but fetching.  using oe-core,
i selected qemuarm, added this line at the bottom of my local.conf:

IMAGE_INSTALL_append =3D " sysfsutils strace"

and ran

$ bitbake -c fetchall core-image-minimal

  when that was done, i checked my downloads directory for the results
of fetching (and patching) those two packages:

$ ls strace*
strace-4.7.tar.xz  strace-4.7.tar.xz.done
$ ls sysfs*
sysfs.sh.done                          sysfsutils-2.1.0.tar.gz
sysfsutils-2.0.0-class-dup.patch.done  sysfsutils-2.1.0.tar.gz.done
$

  so that seemed to work fine.  so i started over with a clean build
and did it in two stages.  first, i reduced the line to:

IMAGE_INSTALL_append =3D " sysfsutils"

ran the same "fetchall" operation again, and verified that that
content had been fetched:

$ ls sysfs*
sysfs.sh.done                          sysfsutils-2.1.0.tar.gz
sysfsutils-2.0.0-class-dup.patch.done  sysfsutils-2.1.0.tar.gz.done
$

  i then *changed* the line in local.conf to:

IMAGE_INSTALL_append =3D " strace sysfsutils"

and ran the fetchall again.  this time, no strace source was fetched,
so it looks like an issue with simple fetching.

rday

--=20

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

--8323329-297237268-1354036180=:4220--
