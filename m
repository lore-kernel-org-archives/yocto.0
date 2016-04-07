Return-Path: <mbroadst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E0B6E00C75; Thu,  7 Apr 2016 07:38:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mbroadst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 181A9E007C5
	for <yocto@yoctoproject.org>; Thu,  7 Apr 2016 07:38:23 -0700 (PDT)
Received: by mail-oi0-f49.google.com with SMTP id p188so100982976oih.2
	for <yocto@yoctoproject.org>; Thu, 07 Apr 2016 07:38:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to; 
	bh=Gwt5zmY7Qnoxx83c60bYDRGB6nCX09e+JjJwAPsR7bk=;
	b=eJ0mu+wBIAV+3udiF66zexvsAhRXjlARtr2MDji4DrU0cia7t65ex8rzJjFz8ieBER
	S+nCOMPm+EwYO3cCOIf++DoWeTuH+eLCLi2ZBTcI4aGtFfzKjGBS9WcgjhXmhv11gQyv
	lHCrEnAjUavXdGk7ZunyMX+hZvSolThYRcT24XYibQFr9RH8WGz7NeVQ27qQFfFhQBkZ
	wHAMOYtfOMEUWuRfuE88mvZ8A3nWLOztMZj38+xKEylcqE+4MGGjx5W0xlSCxIdz3ujs
	c/TS/U9x6q2sOZf4LvH2M8RSr6dHGHsd+eXN+UW7FZaiQRH89eji634pDsh7rDp853wf
	HCMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to;
	bh=Gwt5zmY7Qnoxx83c60bYDRGB6nCX09e+JjJwAPsR7bk=;
	b=IYs2iPzQwYefSWveQ9FfH+xe1t5JjIkeHmSbTGxWG+54VT2/bytP+9ePb4WJM5oN5u
	kmMt+N8hXneiI93v7RJdL5rEM5Dy4m9hEY6ckWNxnRlhVKlzefQmjGhfHW7VvWnrgTaK
	HC8DWYIEOfRMpwh1AHCrTttiKPcGxkP35bkWKE6Nq3l4mqXPztkmPkcHYAH7AMPHY4PO
	FKz5Mv6OniLBU+TY/MiFB3PFotuMyiTM6VToxNDzuY66PSArl2adnXqnzGnmW1nnwLit
	ohdpUto07hh/ISBaxHwhU6CPwuUDDVVdsna3lNPcmC7LDIOc6F1K8GOhYvDpq040gZ+B
	UmKQ==
X-Gm-Message-State: AD7BkJIUvvoggZKMWTQY/2yWCENhMuVQyaP8mAMxe9AdJVKhLqhdXdEKT5tBc7fDDJRGg5KBSS4iElNTUpPzcg==
MIME-Version: 1.0
X-Received: by 10.157.5.106 with SMTP id 97mr1510308otw.127.1460039902910;
	Thu, 07 Apr 2016 07:38:22 -0700 (PDT)
Received: by 10.202.69.215 with HTTP; Thu, 7 Apr 2016 07:38:22 -0700 (PDT)
In-Reply-To: <CAMsD-yD2njxx9DBTfnEivFUmzUVWQn19+F7pPLsr7HHcVq1Ayw@mail.gmail.com>
References: <CAMsD-yD2njxx9DBTfnEivFUmzUVWQn19+F7pPLsr7HHcVq1Ayw@mail.gmail.com>
Date: Thu, 7 Apr 2016 10:38:22 -0400
Message-ID: <CAMsD-yA5gC3V=bwomF2RKFx30-0T9B4A3i2=53v2sMyawdN+3Q@mail.gmail.com>
From: Matt Broadstone <mbroadst@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: out of tree kernel modules using autotools
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
X-List-Received-Date: Thu, 07 Apr 2016 14:38:26 -0000
Content-Type: multipart/alternative; boundary=94eb2c0479a4c55fd0052fe60704

--94eb2c0479a4c55fd0052fe60704
Content-Type: text/plain; charset=UTF-8

On Thu, Apr 7, 2016 at 10:05 AM, Matt Broadstone <mbroadst@gmail.com> wrote:

> Hello,
> I'm beginning a process to try to build zfs-on-linux for my image (as I
> have yet to find any existing work in this area), and am running into some
> trouble building out of tree kernel modules with autotools.
>
> I've been loosely basing my recipe off of the one over here:
> https://github.com/Freescale/meta-freescale/blob/master/recipes-kernel/kernel-modules/kernel-module-perf-qoriq_0.8.2.bb
>
> Here is the current recipe:
>
> <snip>
> inherit module autotools
> SRC_URI = "
> http://archive.zfsonlinux.org/downloads/zfsonlinux/spl/spl-0.6.5.6.tar.gz"
> SRC_URI[md5sum] = "4544b80018ddc5c39ed395363a582228"
> SRC_URI[sha256sum] =
> "167595fe76eb5497c3a1ffe396b6300155d0cbe46d06824a710099ca1ae1b8bd"
> EXTRA_OECONF += "--with-config=kernel --with-linux=${KERNEL_PATH}"
> <snip>
>
> This recipe builds fine, except that it's using the installed kernel
> sources for the base ubuntu system rather than those build by yocto. I can
> confirm that the kernel has already been built, and sources are available,
> however when entering into the devshell for this package neither KERNEL_SRC
> nor KERNEL_PATH are defined (they are simply empty), despite what the
> documentation for the module bbclass indicates.
>
> It seems I'm missing something important here?  Also any other references
> to examples of building these types of modules would be greatly appreciated.
>
> Regards,
> Matt
>

It looks like the variable is indeed defined, however not in a way where I
could have seen it via the devshell. I fixed the build by adding an
additional `--with-linux-obj=${STAGING_KERNEL_BUILDDIR}`, apologies for the
noise!

Matt

--94eb2c0479a4c55fd0052fe60704
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Apr 7, 2016 at 10:05 AM, Matt Broadstone <span dir=3D"ltr">&lt;=
<a href=3D"mailto:mbroadst@gmail.com" target=3D"_blank">mbroadst@gmail.com<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);=
border-left-style:solid;padding-left:1ex"><div dir=3D"ltr">Hello,<div>I&#39=
;m beginning a process to try to build zfs-on-linux for my image (as I have=
 yet to find any existing work in this area), and am running into some trou=
ble building out of tree kernel modules with autotools.</div><div><br></div=
><div>I&#39;ve been loosely basing my recipe off of the one over here:=C2=
=A0<a href=3D"https://github.com/Freescale/meta-freescale/blob/master/recip=
es-kernel/kernel-modules/kernel-module-perf-qoriq_0.8.2.bb" target=3D"_blan=
k">https://github.com/Freescale/meta-freescale/blob/master/recipes-kernel/k=
ernel-modules/kernel-module-perf-qoriq_0.8.2.bb</a></div><div><br></div><di=
v>Here is the current recipe:</div><div><br></div><div>&lt;snip&gt;</div><d=
iv><div>inherit module autotools</div><div>SRC_URI =3D &quot;<a href=3D"htt=
p://archive.zfsonlinux.org/downloads/zfsonlinux/spl/spl-0.6.5.6.tar.gz" tar=
get=3D"_blank">http://archive.zfsonlinux.org/downloads/zfsonlinux/spl/spl-0=
.6.5.6.tar.gz</a>&quot;</div><div>SRC_URI[md5sum] =3D &quot;4544b80018ddc5c=
39ed395363a582228&quot;</div><div>SRC_URI[sha256sum] =3D &quot;167595fe76eb=
5497c3a1ffe396b6300155d0cbe46d06824a710099ca1ae1b8bd&quot;</div><div>EXTRA_=
OECONF +=3D &quot;--with-config=3Dkernel --with-linux=3D${KERNEL_PATH}&quot=
;</div></div><div>&lt;snip&gt;</div><div><br></div><div>This recipe builds =
fine, except that it&#39;s using the installed kernel sources for the base =
ubuntu system rather than those build by yocto. I can confirm that the kern=
el has already been built, and sources are available, however when entering=
 into the devshell for this package neither KERNEL_SRC nor KERNEL_PATH are =
defined (they are simply empty), despite what the documentation for the mod=
ule bbclass indicates.=C2=A0</div><div><br></div><div>It seems I&#39;m miss=
ing something important here?=C2=A0 Also any other references to examples o=
f building these types of modules would be greatly appreciated.</div><div><=
br></div><div>Regards,</div><div>Matt</div></div>
</blockquote></div><br></div><div class=3D"gmail_extra">It looks like the v=
ariable is indeed defined, however not in a way where I could have seen it =
via the devshell. I fixed the build by adding an additional `--with-linux-o=
bj=3D${STAGING_KERNEL_BUILDDIR}`, apologies for the noise!</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Matt</div><div class=
=3D"gmail_extra"><br></div></div>

--94eb2c0479a4c55fd0052fe60704--
