Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.8301.1580129593833076779
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jan 2020 04:53:14 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 sendgrid.net}: limit exceeded (domain: streamunlimited.com, ip: 140.211.169.56, mailfrom: quentin.schulz@streamunlimited.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE50EE01630; Mon, 27 Jan 2020 04:53:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [213.33.87.17 listed in list.dnswl.org]
X-Greylist: delayed 2788 seconds by postgrey-1.32 at yocto-www; Mon, 27 Jan 2020 04:53:12 PST
Received: from bsmtp3.bon.at (bsmtp3.bon.at [213.33.87.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E6CDE01508
	for <yocto@yoctoproject.org>; Mon, 27 Jan 2020 04:53:12 -0800 (PST)
Received: from bsmtp2.bon.at (unknown [192.168.181.104])
	by bsmtp3.bon.at (Postfix) with ESMTPS id 485pPy0rHHz5vjK
	for <yocto@yoctoproject.org>; Mon, 27 Jan 2020 13:06:46 +0100 (CET)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 485pPr47PZz5tlF;
	Mon, 27 Jan 2020 13:06:40 +0100 (CET)
Date: Mon, 27 Jan 2020 13:06:39 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: JH <jupiter.hce@gmail.com>
Cc: Andy Pont <andy.pont@sdcsystems.com>,
	Yocto discussion list <yocto@yoctoproject.org>,
	linux-mtd <linux-mtd@lists.infradead.org>,
	connman <connman@lists.01.org>
Subject: Re: [yocto] lost busybox mysteriously
Message-ID: <20200127120638.2jpgvedxecwgwz6u@qschulz>
References: <CAA=hcWRQmXa4_hh3KzKmqeaEkGsbdTEimsPjh=tZWribMkM0dA@mail.gmail.com>
 <CAA=hcWRwi_EsMD2OBzVWtyX_SPJf05vqc09zhQzFdguKi0k=FA@mail.gmail.com>
 <emb3e01e23-7511-48c8-9229-85a767ab359c@andys-imac.leeshillfarm.local>
 <CAA=hcWS2ncU4+RkeLydXOnGvswshK-0iDV3cRTdFgoQ4+Oe57w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAA=hcWS2ncU4+RkeLydXOnGvswshK-0iDV3cRTdFgoQ4+Oe57w@mail.gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi JH,

On Mon, Jan 27, 2020 at 10:13:37PM +1100, JH wrote:
> Hi Andy,
>=20
> Thanks for the response.
>=20
> On 1/27/20, Andy Pont <andy.pont@sdcsystems.com> wrote:
> > JH wrote...
> >
> >>That the same problem of missing busybox was not just occurred during
> >>the device running in the middle of operation, it was also occurred
> >>during booting image from NAND, I saw several times that the first an=
d
> >>second cycles of booting image from NAND were working well, then some
> >>following booting process would be crashed by missing busybox, then
> >>could not run whole shell commands. I have been pondering if it could
> >>be caused by NAND issue or network virus / fishy? Appreciate any
> >>clues.
> > The first step is for us to understand what =E2=80=9Cmissing=E2=80=9D=
 means?  Have you
> > got any mechanism (U-Boot, SD card boot, etc.) that will allow you to
> > mount and look at the contents of the NAND file system?
>=20
> Means that busybox was not there anymore, it mysteriously lost, all
> shell commands would no longer available. It cannot to run mount or
> any shell commands. There was two scenarios when that happened:
>=20
> - In the middle of running, the device all of certain could not run
> shell commands and failed mysteriously
>=20
> - During the u-boot booting kernel process, there were full errors of
> failing shell commands. Let me make it clear,  that booting error did
> not occur in the first or second kernel booting after the new image
> installation, it happened in the following kernel booting, but there
> was nothing to delete busybox accidentally, busybox was just
> mysteriously disappeared. Because I could not run ls, I did not know
> if there are other things missing. If you ask how I could know the
> busybox was missing, I ran the zImage-initramfs to boot the linux in
> RAM, then mount the ubi0 to find  out busybox was gone.
>=20
>=20
> > If you look at the /bin directory (ls -la /bin/busy*) what do you see=
?
> > Have the files been deleted? Truncated? Zero length?
>=20
> Could not run ls or any shell commands when the busybox was missing.
>=20

/bin/ls -la /bin/busy* ?

Maybe something is messing with the PATH environment variable. Or
something is removing the symlinks from some binaries to busybox.

> > What file system are you using on the NAND flash?  How are the device=
s
> > being reset during the various boot cycles?  If it is a hardware rese=
t
> > then some file systems are less resilient to it than others but I wou=
ld
> > expect in that case more fundamental boot issues.
>=20
> UBIFS, most device reset or boot cycles were calling halt or reboot,
> but it sometime it could just use power cycle.
>=20

IIRC, UBIFS is safe from power cycles.

Quentin
