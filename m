Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFD71E00CD6; Wed,  3 Apr 2019 13:21:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B4A8E00994
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2019 13:21:54 -0700 (PDT)
Received: by mail-qt1-f176.google.com with SMTP id w5so547838qtb.11
	for <yocto@yoctoproject.org>; Wed, 03 Apr 2019 13:21:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=pJT3xOnqewitksgDigHQuTJb469VGm1sE/I45+Lmg04=;
	b=kP1Fguj0ZN3nHH6PKJ5zJoGuxCHIMWSU8jspoxN+PWdNOnPaK29oasWeTi2oQJihe/
	JMTaSzlw50L812pk/Jy0bL0eYTV3qx6dHbFtqdWhKU2g2s3Q9AWBP9Yw1/qrDhO1bKsB
	E7Zbv5jd3qygyMrBQQFJ2LDCM1za4drFWGyYitPzDd3cdHGO8W3Lr80dYVBOHQVsrDDl
	Bw6/lnqOeDejzjFgykJxuuf0Vbt4Zb4EvDJPzdeKtWmCbY9aFlbnPsRkEiBFuQZDlKeG
	fo+yGYvkA/VyimQtaFUjCKg112Yga7YxjxATl8ZsW6XcDL9MISplBSDVOdQOLd2zPETh
	PzGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=pJT3xOnqewitksgDigHQuTJb469VGm1sE/I45+Lmg04=;
	b=QUbR1VUc3wvzFJSXpVLqOfrScPkfX9MVVGhM/AbXapt3VkHtgOHVZhArp0cjtK8BYM
	Le2+lkfjUuXW24ifQW+ySJ+LUeGtWZS1VLxryC8GntfBHHkLA5GG+Slpm7BYdM1ehR4k
	nrEK4lYtNTwLqIjPQJhSjUAFaTgtWa5eAfHNz/ipghD2Q282e1f/3TJpPH/o1go8Rvsz
	gBC/2DdO9ykfyl+68n3wnY/9RdLWLTuX09WoSkwL7rczX2FNn3vncfDdacQkMwt1OHZj
	GDIvxt9TtmmEdvH+CCHzhMVWJsL5un49u7kKJgRWIYgfx/QSaEfuvAiTRDOcuSpEYEob
	7WNA==
X-Gm-Message-State: APjAAAUTV4GdkKpgk7xC8LIQ9Fpz/uq6Aj4rs0x2ls4jS4JGdc7RtsgI
	ZkCo6E2YmjqK/jyVz0rxY+i4rbU0cHaAWwqwGHU=
X-Google-Smtp-Source: APXvYqypA1IeQUFdqtuw46htQ7Iz7g1TLnAqp4GFUZVkmvA8oxOIDwos8GI7wlLMslk1h2NjoD9QYZKcZ4I5FILbJwk=
X-Received: by 2002:ac8:262c:: with SMTP id u41mr1930828qtu.198.1554322913235; 
	Wed, 03 Apr 2019 13:21:53 -0700 (PDT)
MIME-Version: 1.0
References: <4faf2c04-d2d5-9695-ab8e-d79b73eb55c9@northern.tech>
	<CAMKF1sobwgXG1_4UCQumQvtqOmmJ8jdcuyyhagQyf2Gm5GN-nA@mail.gmail.com>
In-Reply-To: <CAMKF1sobwgXG1_4UCQumQvtqOmmJ8jdcuyyhagQyf2Gm5GN-nA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 3 Apr 2019 13:21:27 -0700
Message-ID: <CAMKF1soA5=rsbtYMyAga0mnrOGY+H0rknoNO3-CO_orBjwxx4w@mail.gmail.com>
To: Lluis Campos <lluis.campos@northern.tech>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: gdb built with musl libc segfault
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
X-List-Received-Date: Wed, 03 Apr 2019 20:21:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 3, 2019 at 9:59 AM Khem Raj <raj.khem@gmail.com> wrote:
>
> On Tue, Apr 2, 2019 at 4:51 AM Lluis Campos <lluis.campos@northern.tech> =
wrote:
> >
> > Hi all,
> >
> > This is my very first question in the Yocto mailing list. Very exited!
> > Please let me know if I should use other list for this.
> >
> >
> > I am building an image using musl libc instead of gnu libc. I am not
> > using yocto-tiny distro, instead I achieve this by setting on my local.=
conf:
> >
> > TCLIBC =3D "musl"
> >
> >
> > My app (mender) got a segfault just starting. See output from strace:
> >
> > root@raspberrypi3:~# strace mender
> > execve("/usr/bin/mender", ["mender"], 0x7ee65e10 /* 13 vars */) =3D 0
> > set_tls(0x76f1bffc)                     =3D 0
> > set_tid_address(0x76f1bfa0)             =3D 3020
> > --- SIGSEGV {si_signo=3DSIGSEGV, si_code=3DSEGV_ACCERR, si_addr=3D0x530=
bc8} ---
> > +++ killed by SIGSEGV +++
> > Segmentation fault
> >
> >
> > To be able to debug the process, I added gdb to my image adding to my
> > local.conf:
> >
> > CORE_IMAGE_EXTRA_INSTALL +=3D "packagegroup-core-buildessential
> > packagegroup-core-tools-debug"
> >
> >
> > Then, ironically, gdb itself also segfaults:
> >
> > root@raspberrypi3:~# strace gdb 2>&1 | tail
> > fcntl64(3, F_SETFD, FD_CLOEXEC)         =3D 0
> > getdents64(3, /* 6 entries */, 2048)    =3D 144
> > getdents64(3, /* 0 entries */, 2048)    =3D 0
> > close(3)                                =3D 0
> > ioctl(0, TIOCGWINSZ, {ws_row=3D25, ws_col=3D74, ws_xpixel=3D0, ws_ypixe=
l=3D0}) =3D 0
> > getcwd("/home/root", 4096)              =3D 11
> > access("/usr/local/bin/gdb", X_OK)      =3D -1 ENOENT (No such file or
> > directory)
> > access("/usr/bin/gdb", X_OK)            =3D 0
> > --- SIGSEGV {si_signo=3DSIGSEGV, si_code=3DSEGV_MAPERR, si_addr=3D0x7e3=
5aff0} ---
> > +++ killed by SIGSEGV +++
> >
> >
> > So, what is going on here? My guess is that some recipes are being
> > wrongly linked with gnu libc instead of musl, and then cannot run in my
> > device.
> >
> > Any ideas on how to debug the issue?
> >
>
> We have switched to using PIE by default in last few releases, can you
> try master but comment out
> require conf/distro/include/security_flags.inc
> in your distro conf file.
>

I built a fresh image using yoe distro master today and gdb seems to
work fine on rpi3/musl
https://github.com/YoeDistro/yoe-distro


> > Thanks!
> >
> >
> > Llu=C3=ADs Campos
> > mender.io
> > Northen Tech
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto

