Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22A2EE00CBC; Wed,  3 Apr 2019 09:59:44 -0700 (PDT)
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
	*      [209.85.222.170 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
	[209.85.222.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B853FE00BB7
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2019 09:59:42 -0700 (PDT)
Received: by mail-qk1-f170.google.com with SMTP id c20so10581641qkc.10
	for <yocto@yoctoproject.org>; Wed, 03 Apr 2019 09:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=fs3p5FyoZqTkfPFyQcFeY5AiKf0TG5vwhdhutLKJT14=;
	b=F6ZoRymsiC4DPFD7RCGsxEvkuviDjUuUh5HDi1R+S2L5JRIOlIArhqy8+CEws3AFnL
	4aXKyazq0IY2vh85g+wvjwvoQDn8/IrJHGNwYnRPCgGg9qaVP/uf/0EzPmnfgH5nSn8a
	30jPVXdWHzPD4Oz1ystF1aL1Yc//PJCzTUEtbJRnpy+MgxSFG8Wn3/B8qHbqPPOD8O6l
	RmMhU1v/c4txa81opdSMBaWHfUq1Y9S8+QekGUHE9h6UYEtP4edqMgrwU45XndTC7qOi
	gV6Kywv+IHJqOpintGvjwos1f8QZhlPP2JjM8O59yrdoCRUgjFm1J8AK/LmhJqTh4mS9
	QGPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=fs3p5FyoZqTkfPFyQcFeY5AiKf0TG5vwhdhutLKJT14=;
	b=E+5+WlKXVgoabG+GtWwemZc0KGe1x+ElL35THelY4Vf6L28/NcEyQUny9/Hpu2S7TU
	srakV22s1Ye6RBXQNvCJ0lN51fx4DVEalSji5ffB1hK0JQwKuWI/aVAf+jG3drD48J8g
	TeY+Mp40K6KkS8IaELFJg1u66R/8vGk8SFktEg8dC8tB2Cu54j9uS3jY2uEPr6Ue/GRe
	xzWdIp1/P/wDeOekqYdY1jeNNoTx3idjYG6WhRLsVkrH17sBJdXsjl1fEmpSkGlTMacP
	4vxNA1XsUPBsHR9K/zimCtcbZk9GfLdewNWOzTgsYKsXGj8BsmTJC8CHAjr5qbOz27bh
	l5Mw==
X-Gm-Message-State: APjAAAVehDUr+fAFIIugOM/ctaCAb2gX+oMwxVbViEMo5B14/mM/+yXN
	w4H7n5hf+iAK4+yqojotXDxJFIIiXuYQ1R9o3fI=
X-Google-Smtp-Source: APXvYqy2bgJfDzMZlseYEX0FS18gg3WWfhAMef4HZE+C/bhBo8Fjd0GskOMrnuaVkR+hYrzITf0wWLrRzncI+riaBWQ=
X-Received: by 2002:a37:9fc4:: with SMTP id i187mr923500qke.141.1554310781874; 
	Wed, 03 Apr 2019 09:59:41 -0700 (PDT)
MIME-Version: 1.0
References: <4faf2c04-d2d5-9695-ab8e-d79b73eb55c9@northern.tech>
In-Reply-To: <4faf2c04-d2d5-9695-ab8e-d79b73eb55c9@northern.tech>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 3 Apr 2019 09:59:16 -0700
Message-ID: <CAMKF1sobwgXG1_4UCQumQvtqOmmJ8jdcuyyhagQyf2Gm5GN-nA@mail.gmail.com>
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
X-List-Received-Date: Wed, 03 Apr 2019 16:59:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 2, 2019 at 4:51 AM Lluis Campos <lluis.campos@northern.tech> wr=
ote:
>
> Hi all,
>
> This is my very first question in the Yocto mailing list. Very exited!
> Please let me know if I should use other list for this.
>
>
> I am building an image using musl libc instead of gnu libc. I am not
> using yocto-tiny distro, instead I achieve this by setting on my local.co=
nf:
>
> TCLIBC =3D "musl"
>
>
> My app (mender) got a segfault just starting. See output from strace:
>
> root@raspberrypi3:~# strace mender
> execve("/usr/bin/mender", ["mender"], 0x7ee65e10 /* 13 vars */) =3D 0
> set_tls(0x76f1bffc)                     =3D 0
> set_tid_address(0x76f1bfa0)             =3D 3020
> --- SIGSEGV {si_signo=3DSIGSEGV, si_code=3DSEGV_ACCERR, si_addr=3D0x530bc=
8} ---
> +++ killed by SIGSEGV +++
> Segmentation fault
>
>
> To be able to debug the process, I added gdb to my image adding to my
> local.conf:
>
> CORE_IMAGE_EXTRA_INSTALL +=3D "packagegroup-core-buildessential
> packagegroup-core-tools-debug"
>
>
> Then, ironically, gdb itself also segfaults:
>
> root@raspberrypi3:~# strace gdb 2>&1 | tail
> fcntl64(3, F_SETFD, FD_CLOEXEC)         =3D 0
> getdents64(3, /* 6 entries */, 2048)    =3D 144
> getdents64(3, /* 0 entries */, 2048)    =3D 0
> close(3)                                =3D 0
> ioctl(0, TIOCGWINSZ, {ws_row=3D25, ws_col=3D74, ws_xpixel=3D0, ws_ypixel=
=3D0}) =3D 0
> getcwd("/home/root", 4096)              =3D 11
> access("/usr/local/bin/gdb", X_OK)      =3D -1 ENOENT (No such file or
> directory)
> access("/usr/bin/gdb", X_OK)            =3D 0
> --- SIGSEGV {si_signo=3DSIGSEGV, si_code=3DSEGV_MAPERR, si_addr=3D0x7e35a=
ff0} ---
> +++ killed by SIGSEGV +++
>
>
> So, what is going on here? My guess is that some recipes are being
> wrongly linked with gnu libc instead of musl, and then cannot run in my
> device.
>
> Any ideas on how to debug the issue?
>

We have switched to using PIE by default in last few releases, can you
try master but comment out
require conf/distro/include/security_flags.inc
in your distro conf file.

> Thanks!
>
>
> Llu=C3=ADs Campos
> mender.io
> Northen Tech
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

