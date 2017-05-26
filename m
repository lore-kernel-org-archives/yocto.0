Return-Path: <droid.baner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB3D6E00B93; Fri, 26 May 2017 03:37:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (droid.baner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.182 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.182 listed in list.dnswl.org]
Received: from mail-yb0-f182.google.com (mail-yb0-f182.google.com
	[209.85.213.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2D6AE00AE4
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 03:37:49 -0700 (PDT)
Received: by mail-yb0-f182.google.com with SMTP id 130so1406537ybl.3
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 03:37:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=WXJHFUnvNfFHUHNN7l9JxbJAQ/3pcfov5bDkzi3frlU=;
	b=t3R4s2sXoba/H5Rz0UQwZn98oYgmJA8jdTxa1aCSb3POMSrk7m9QDm6K7tmpBzESos
	zJFamM03X1vUXsdno9wzKTxmWZVn/9D+RK5x3wqD5RaKfwqWflBlXEgeNIiroeo9G4tk
	4CmY5/u/fBP/n7mcWgsOWmsiakMsYLofZcs4WCl5BD4xHiQgk9v+iD4JApUhUkF3t00g
	5CJhP87Cl5n+yfFMFScVo5qlSgjz71HxtGrNJQ4yrvVd09uKmxLGYSm24/ZIsrtWehHR
	hIxFMYHG048psP72E5bgKtlqN2Or+XEbNowOwjSxznetL/UwAcU/R0EeoWvQUVy/9Tl7
	eM2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=WXJHFUnvNfFHUHNN7l9JxbJAQ/3pcfov5bDkzi3frlU=;
	b=Iw7NiAM36Rs17ZJfBtPz2g0O8gsmRTUHpdzYDCcC7Tc6QfozoBlD+p2IBRc+5uNcLD
	El3RqiChZDANKqdvAtcWbJPx5Ihi0+RQ8xi/DMtzLsp43H9fdYlJmZgWHQQ0pWChqMvq
	DzNT0aO8TeDK6itxGAaCRQipMw8A+TePQ/b3+WosSuOT0uQtYMBHjY1gtDxErsqdhSJN
	40JkAk7kN6L5F9gGjFM/s9tPiRUNXZA5PSDZ/LKJIKE/cOCv48+iwrSHHUEAkwBVO94b
	xdpoQV+rxJcVfesI5YN5z+sR0r1a8nIVkvt1fhwjI7o0J+mP7W8XaRh9rEDmzShqa9Sm
	oQYQ==
X-Gm-Message-State: AODbwcBriEztBB9wsDafl1ykumZvffnX3K4KWUNeveq33WGBijPpx8Bu
	yYle19bTbnQoEYBHKOdHzvVwLApAOQyu
X-Received: by 10.37.77.138 with SMTP id a132mr35061103ybb.170.1495795068949; 
	Fri, 26 May 2017 03:37:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.129.12.213 with HTTP; Fri, 26 May 2017 03:37:48 -0700 (PDT)
In-Reply-To: <CANmFEgs6v-uVX4PtAcptL7qUNYqBqW_UY2aeBySQgEjPg=wn=A@mail.gmail.com>
References: <CANmFEgs6v-uVX4PtAcptL7qUNYqBqW_UY2aeBySQgEjPg=wn=A@mail.gmail.com>
From: sourabh banerjee <droid.baner@gmail.com>
Date: Fri, 26 May 2017 16:07:48 +0530
Message-ID: <CANmFEgvowLdUXGyjQxic+ObX7XyUFiDsW2WgJywdjVvB3pC7ag@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: yocto-jethro: how to define a machine which builds kernel in 64-bit whereas user space in 32bit
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
X-List-Received-Date: Fri, 26 May 2017 10:37:51 -0000
Content-Type: multipart/alternative; boundary="001a113c2e54bdde5205506aed2e"

--001a113c2e54bdde5205506aed2e
Content-Type: text/plain; charset="UTF-8"

On Fri, May 26, 2017 at 9:18 AM, sourabh banerjee <droid.baner@gmail.com>
wrote:

> For reference I looked up the default provided machine conf files inside
> poky/meta.
>
> Following seems to build qemuarm for 32bit, i.e. both kernel and user
> space 32bit
> * http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/
> conf/machine/qemuarm.conf?h=jethro
>
> And following seems to build qemuarm64 for 64 bit, i.e. both kernel and
> user space 64bit
> * http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/
> conf/machine/qemuarm64.conf?h=jethro
>
> Please guide me how can I define a machine where kernel is built 64bit but
> the user space is 32bit.
> I attempted a few things by trying to override the TUNE flags but I am not
> able to get it right.
>
> I left the tune parameters alone.  I am trying to multilib now
Setting MULTILIBS = "multilib:lib64" in machine.conf
DEFAULTTUNE_virtclass-multilib-lib64 = "aarch64"

and

DEFAULTTUNE ?= "armv7a-neon"

Is this the right approach?


> Regards,
> Sourabh
>

--001a113c2e54bdde5205506aed2e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Fri, May 26, 2017 at 9:18 AM, sourabh banerjee <span dir=3D"ltr">&lt=
;<a href=3D"mailto:droid.baner@gmail.com" target=3D"_blank">droid.baner@gma=
il.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr"><div>For reference I looked up the default provided=
 machine conf files inside poky/meta.</div><div><br></div><div>Following se=
ems to build qemuarm for 32bit, i.e. both kernel and user space 32bit</div>=
<div>* <a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/=
conf/machine/qemuarm.conf?h=3Djethro" target=3D"_blank">http://git.yoctopro=
ject.org/<wbr>cgit/cgit.cgi/poky/tree/meta/<wbr>conf/machine/qemuarm.conf?h=
=3D<wbr>jethro</a></div><div><br></div><div>And following seems to build qe=
muarm64 for 64 bit, i.e. both kernel and user space 64bit</div><div>* <a hr=
ef=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/conf/machine=
/qemuarm64.conf?h=3Djethro" target=3D"_blank">http://git.yoctoproject.org/<=
wbr>cgit/cgit.cgi/poky/tree/meta/<wbr>conf/machine/qemuarm64.conf?h=3D<wbr>=
jethro</a><br></div><div><br></div><div>Please guide me how can I define a =
machine where kernel is built 64bit but the user space is 32bit.</div><div>=
I attempted a few things by trying to override the TUNE flags but I am not =
able to get it right.</div><div><br></div></div></blockquote><div>I left th=
e tune parameters alone.=C2=A0 I am trying to multilib now</div><div>Settin=
g=C2=A0MULTILIBS =3D &quot;multilib:lib64&quot; in machine.conf</div><div><=
div>DEFAULTTUNE_virtclass-multilib-lib64 =3D &quot;aarch64&quot;</div></div=
><div><br></div><div>and=C2=A0</div><div><br></div><div>DEFAULTTUNE ?=3D &q=
uot;armv7a-neon&quot;<br></div><div><br></div><div>Is this the right approa=
ch?</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr"><div></div><div>Regards,</div><div>Sourabh</div></div>
</blockquote></div><br></div></div>

--001a113c2e54bdde5205506aed2e--
