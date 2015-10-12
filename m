Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 524F9E00B63; Mon, 12 Oct 2015 12:30:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03805E009F3
	for <yocto@yoctoproject.org>; Mon, 12 Oct 2015 12:30:20 -0700 (PDT)
Received: by iow1 with SMTP id 1so161547688iow.1
	for <yocto@yoctoproject.org>; Mon, 12 Oct 2015 12:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=e5YRsaRuOelbAovmzJK+DXU5afSpOjL8gCmUX8xg/RQ=;
	b=InUkICpHbhKZEVtLj+j/qfSBMLq4HqkFchnF+vNCMVE/k/Lnz6GqSmq/MQLgwKDJEw
	AYo7+W626bOuQFTszD8QBLtlIzThDuYSrrZ0+o78rI+glrICAPlyridzIeFFp2LqH0SK
	+b3iS72xBq2gQs7LZBqB9JNjkpg9gp4OWvGDG31PM6hgwr5uS2sOx87Ylfn040/j4E2O
	pVLU5XBL8ecfrBftGHBM4wNeRTx3u0+ziIiCMn//ywby15LGkg4LL7uJlkxextgTKXjR
	WORsnIRt63L7uhWEhdzvBjEDeGySFsPRgnPb77vpy5huDZdLGWmOxs5PCfe83kEAlWzR
	UTLQ==
X-Received: by 10.107.128.41 with SMTP id b41mr28814880iod.74.1444678219838;
	Mon, 12 Oct 2015 12:30:19 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.79.65.204 with HTTP; Mon, 12 Oct 2015 12:30:00 -0700 (PDT)
In-Reply-To: <DUB128-W75D018E784AB715F2EE5C798310@phx.gbl>
References: <DUB128-W3890E99CA3478F4E8A991D98310@phx.gbl>
	<DUB128-W14F5A73F31F2C4FA1E3DB798310@phx.gbl>
	<CABcZANmyWji+iYZ8zoBBEbQ9c=t0xBUd0fgGXGE_1kU5i4xXJA@mail.gmail.com>
	<DUB128-W75D018E784AB715F2EE5C798310@phx.gbl>
From: Christopher Larson <clarson@kergoth.com>
Date: Mon, 12 Oct 2015 12:30:00 -0700
X-Google-Sender-Auth: tE9-zhc6tAjsvU3mKe1kChyz6IE
Message-ID: <CABcZANmvMZ4eTm47Hd-50vq-yiPhjqj0HsJXUDxi+Sums9QL-A@mail.gmail.com>
To: Thanassis Silis <djnass_18@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: FW: packages are compiled but not included in the final image
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
X-List-Received-Date: Mon, 12 Oct 2015 19:30:23 -0000
Content-Type: multipart/alternative; boundary=001a113f8bf01bbb610521ed5c75

--001a113f8bf01bbb610521ed5c75
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 12, 2015 at 12:02 PM, Thanassis Silis <djnass_18@hotmail.com>
wrote:

> Hi Christopher,
> thank you for the quick response. may I ask the following as well:
>
> i am attempting to include "lmsensors"  as well as a
> CORE_IMAGE_EXTRA_INSTALL.
> I get errors while do_rootfs() runs
>
> Error: lmsensors not found in the base feeds (imx6qsabrelite
> armv7a-vfp-neon armv7a-vfp armv7a armv6-vfp armv6 armv5e-vfp armv5e
> armv5-vfp armv5 armv4 arm noarch any all).
> | ERROR: Function failed: do_rootfs (see
> /mnt/hd/nassdata/yocto/fsl-community-bsp/build/tmp/work/imx6qsabrelite-poky-linux-gnueabi/fsl-image-test/1.0-r0/temp/log.do_rootfs.16989
> for further information)
> ERROR: Task 7
> (/mnt/hd/nassdata/yocto/fsl-community-bsp/sources/meta-fsl-demos/recipes-fsl/images/
> fsl-image-test.bb, do_rootfs) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 5692 tasks of which 5690 didn't need to be
> rerun and 1 failed.
> No currently running tasks (5691 of 5693)
>
> it doesn't seem to be accepted but the log is not particularly
> informative.
> In other cases that i googled it seemed that setting
>
> ALLOW_EMPTY_${PN}-dbg = "1"
> ALLOW_EMPTY_${PN}-dev = "1"
>
> in sources/poky/meta/conf/bitbake.conf solved their issues. But these are
> already set in my case.
>

lmsensors emits a ton of binary packages, you'll have to see which ones you
need. Read meta-oe/recipes-support/lm_sensors/lmsensors_3.4.0.bb, the
PACKAGES lines.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a113f8bf01bbb610521ed5c75
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Mon, Oct 12, 2015 at 12:02 PM, Thanassis Silis <span dir=3D"ltr">&lt;<a =
href=3D"mailto:djnass_18@hotmail.com" target=3D"_blank">djnass_18@hotmail.c=
om</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,20=
4);border-left-style:solid;padding-left:1ex"><div dir=3D"ltr">Hi Christophe=
r,<br>thank you for the quick response. may I ask the following as well:<br=
><br>i am attempting to include &quot;lmsensors&quot;=C2=A0 as well as a CO=
RE_IMAGE_EXTRA_INSTALL. <br>I get errors while do_rootfs() runs<br><br>Erro=
r: lmsensors not found in the base feeds (imx6qsabrelite armv7a-vfp-neon ar=
mv7a-vfp armv7a armv6-vfp armv6 armv5e-vfp armv5e armv5-vfp armv5 armv4 arm=
 noarch any all).<br>| ERROR: Function failed: do_rootfs (see /mnt/hd/nassd=
ata/yocto/fsl-community-bsp/build/tmp/work/imx6qsabrelite-poky-linux-gnueab=
i/fsl-image-test/1.0-r0/temp/log.do_rootfs.16989 for further information)<b=
r>ERROR: Task 7 (/mnt/hd/nassdata/yocto/fsl-community-bsp/sources/meta-fsl-=
demos/recipes-fsl/images/<a href=3D"http://fsl-image-test.bb" target=3D"_bl=
ank">fsl-image-test.bb</a>, do_rootfs) failed with exit code &#39;1&#39;<br=
>NOTE: Tasks Summary: Attempted 5692 tasks of which 5690 didn&#39;t need to=
 be rerun and 1 failed.<br>No currently running tasks (5691 of 5693)<br><br=
>it doesn&#39;t seem to be accepted but the log is not particularly informa=
tive. <br>In other cases that i googled it seemed that setting<br><br>ALLOW=
_EMPTY_${PN}-dbg =3D &quot;1&quot;<br>ALLOW_EMPTY_${PN}-dev =3D &quot;1&quo=
t;<br><br>in sources/poky/meta/conf/bitbake.conf solved their issues. But t=
hese are already set in my case.</div></blockquote></div><br>lmsensors emit=
s a ton of binary packages, you&#39;ll have to see which ones you need. Rea=
d=C2=A0meta-oe/recipes-support/lm_sensors/<a href=3D"http://lmsensors_3.4.0=
.bb">lmsensors_3.4.0.bb</a>, the PACKAGES lines.<br>-- <br><div class=3D"gm=
ail_signature">Christopher Larson<br>clarson at kergoth dot com<br>Founder =
- BitBake, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Softwar=
e Engineer, Mentor Graphics</div>
</div></div>

--001a113f8bf01bbb610521ed5c75--
