Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DC3DE00C5C; Fri,  4 Oct 2019 10:43:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.51 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com
	[209.85.167.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 636D4E00B1B
	for <yocto@yoctoproject.org>; Fri,  4 Oct 2019 10:42:56 -0700 (PDT)
Received: by mail-lf1-f51.google.com with SMTP id y127so5085567lfc.0
	for <yocto@yoctoproject.org>; Fri, 04 Oct 2019 10:42:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=TqHhOm0bKyseXkKT2tE0MIpSg0arJmMLKdhUbonBNLY=;
	b=hbdi/6tGBjec4BGzP/GhN4BTGvvCqprPak1fLmwYc+zOl/Oj7L3VEj3PwtCdHLZ4sg
	j6YJ3C+NEfIaabCjFwm27OYFT20pmqUTD6BSBxKB6r13/u5SoMhgfcM/EzmwxfmrLgqB
	l2FPW3FTAUoi3/99y2PNbn23Wnz/yimhHCYcyhxdj+xuuUahP6OPU86H7ZwKouTWSt2g
	z4BiFLiJQLFAhIzk1HcGZ6xPHM7ylqUbNXU4xuGph6Qe9sR218vnD7BnvuTq+K4qNcwE
	tdL6+8A5pZ6Tc885a0m2w6lQVQgCfINg5QMUBg/GLQCebZKYVkPjctwfXZCtVkhr1VBu
	l4Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=TqHhOm0bKyseXkKT2tE0MIpSg0arJmMLKdhUbonBNLY=;
	b=cV5gtcoJE5wK5WPx+SJf64G94eQm/hSyWr/gNrGEHd5TvltzQJwv0sSqG3Y3hUl/W0
	m5UBBEDcI/c8UB2f8PxWrfymR2X72T8I0GxCEFBspHR+EFD54FEnFhzjCAjvtSHd3noN
	WvDxMmEAo+l4GpiT6BJYwAHOy3tyTbi2jCcVrrSIRrJnSdL7XnLFA6+WfWImwsZnya/g
	DCXpyPEpCzXy8VWFM4UN/i6d9sjYXBHdfNEsyH5zYtq/wXFXwTBsJL/FAvAUxnuUmBk0
	XhsdFYbareYwDdAT0mRaBccN/1DPT3DtlNQal2D+8aEs7H+A/YplPm73d0I2rfFJvrSY
	Ze/A==
X-Gm-Message-State: APjAAAXVyixS6aoMJb/Q572+gEeag6bvwrfbNbNacZq/BMoanLp+8/dk
	MIcgx/I5e5+p2/1jmBOC4qKyyHGLwP3PykX03VBn3Anq
X-Google-Smtp-Source: APXvYqzdVWDm/FWnil6d8eaqMNknbCr5ITY6jqT7afDSU5DeVEeHCl1mT/tVLGmdzBQUq4Spq/nzMBJNx5hVK+sDIBc=
X-Received: by 2002:ac2:46d2:: with SMTP id p18mr9726639lfo.140.1570210975029; 
	Fri, 04 Oct 2019 10:42:55 -0700 (PDT)
MIME-Version: 1.0
References: <CABjzrPTAFGE8nua4ONh0S_6zrFL38LSojCpFyR_ELp6p3Lcx5w@mail.gmail.com>
In-Reply-To: <CABjzrPTAFGE8nua4ONh0S_6zrFL38LSojCpFyR_ELp6p3Lcx5w@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Fri, 4 Oct 2019 13:42:43 -0400
Message-ID: <CADkTA4M0gW+bRdRLEp8nZ4nS6Z9_q6G3SjBir5+FOOxe3_8BfA@mail.gmail.com>
To: Shravan Singh <shravan@bluesparq.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Building a out of tree kernel module on target system
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
X-List-Received-Date: Fri, 04 Oct 2019 17:43:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 4, 2019 at 11:40 AM Shravan Singh <shravan@bluesparq.com> wrote=
:
>
> Hello,
>
> I am trying to build an out of tree service module on a yocto raspberry p=
i image(target system).
> I am using yocto version warrior
> and my machine is Raspberrypi-cm3
> Kernel version is 4.19.58
>
> I was able to get the build directory by including
>
> IMAGE_INSTALL_append =3D " kernel-modules kernel-dev kernel-devsrc"
> After that, I saw a build directory on raspberrypi-image
>
> Now I am trying to compile my source file with the command
>
> make ARCH=3Darm CROSS_COMPILE=3Darm-poky-linux-gnueabi- KSRC=3D"/lib/modu=
les/4.19.58/source" -C /lib/modules/$(shell uname -r)/build M=3D/home/root/=
tsDriver modules
>
> After that I get an error saying asm/bitsperlong.h: no such file or direc=
tory
>
> Am I missing something in my make command?

You need to rebuild/regenerate some file on target (they can't be packaged)=
.
So have you gone to /usr/src/kernel and done a "make scripts prepare" ?

Bruce

>
>
> Regards,
> Shravan Singh
> (239) 243-0838
>
> Blue Sparq, Inc.
> 928 NE 24th Lane unit 4 and 5.
> Cape Coral, FL 33993
>
> IMPORTANT: The contents of this email and any attachments are confidentia=
l. They are intended for the named recipient(s) only. If you have received =
this email by mistake, please notify the sender immediately and do not disc=
lose the contents to anyone or make copies thereof.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

