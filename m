Return-Path: <autif.mlist@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF16EE004D2
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2012 09:23:36 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vbbfc21 with SMTP id fc21so1676382vbb.35
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2012 09:23:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type
	:content-transfer-encoding;
	bh=XlEW/UT2oQQ8W5MCXARXSSVuuLcYifhYTghEpUXtYzo=;
	b=UrBYVQXa8qvhuYysrDtvmAwP59p/vfRxQGG7spvrI0FmkLU2HBWTGzLMyxtBM4uMy9
	cq9PesqoxYx9gOkE8zpSocXfHIFe3UOZayboL3sQy9IkYJ87/nqpBsn+SAQTayUhqHLh
	GrCSvgLykhdg+kiER1j7+FDQS97hnVrGOVIqo=
MIME-Version: 1.0
Received: by 10.52.71.178 with SMTP id w18mr11020712vdu.119.1326907416390;
	Wed, 18 Jan 2012 09:23:36 -0800 (PST)
Received: by 10.52.108.37 with HTTP; Wed, 18 Jan 2012 09:23:36 -0800 (PST)
Date: Wed, 18 Jan 2012 12:23:36 -0500
Message-ID: <CADzUK1Jr+V=ATY-OjY3n2dhLDp=D-QWRVd4bY5vVX757OeOsVg@mail.gmail.com>
From: autif khan <autif.mlist@gmail.com>
To: yocto@yoctoproject.org
Subject: auto tools tagged configuration
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
X-List-Received-Date: Wed, 18 Jan 2012 17:23:37 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

So, I have been trying to cross compile mono and having some luck with it.

When the configure script runs, it creates a libtool script which does
not work well with yocto's cross compilation setup.

Step 1: So, I rename this libtool as libtool.orig and

Step 2: copy the libtool from
tmp/sysroots/crownbay/usr/bin/crossscripts/i586-poky-linux-libtool

This errors out as follows:

...
...
CC	debug-debugger.lo
debug-debugger.c: In function =91debugger_get_boxed_object=92:
debug-debugger.c:211:21: warning: variable =91last_boxed_object=92 set but
not used [-Wunused-but-set-variable]
../../doltlibtool --quiet   --mode=3Dcompile i586-poky-linux-gcc  -m32
 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfpmath=3Dsse -c -o
mdb-debug-info32.lo mdb-debug-info32.s
libtool: compile: unable to infer tagged configuration
libtool: compile: specify a tag with `--tag'
make[4]: *** [mdb-debug-info32.lo] Error 1
make[4]: Leaving directory
`/home/autif/data2/nosync/dev/yocto/apps/mono/mono-2.6.3/mono/mini'
...
...

At this point, if I delete the cross libtool and rename libtool.orig
(from Step 1) back to libtool, make continues beyond this step and
fails further.

Again, copying yocto's libtool as done is Step 2, allows make to
continue creates all the binaries and libraries. At this point the
binaries can be manually copied to the target and seem to pass a lot
of mono's runtime and library tests. This is great!

(make install fails, but, resolution for it can wait)

So, what is this "tagged  information" can can not be "infered" and
what can I do to mono's autoconf script to fix this?

