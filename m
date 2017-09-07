Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC769E00CB7; Thu,  7 Sep 2017 02:06:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f181.google.com (mail-wr0-f181.google.com
	[209.85.128.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 524D9E00CAA
	for <yocto@yoctoproject.org>; Thu,  7 Sep 2017 02:06:34 -0700 (PDT)
Received: by mail-wr0-f181.google.com with SMTP id a43so18070678wrc.0
	for <yocto@yoctoproject.org>; Thu, 07 Sep 2017 02:06:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=Iv/oRIjiIp2DIcqIRJqXvjGFRw+yVOdOT6SjDnBcsOM=;
	b=EbyvyaKMwUEmEuyNAL2iKh+rlWBjuuCnY7+h0AOrhrvRbPOjTZrYPTiM74udHMqmXh
	CXvrQh71iEskvBv+65sglgTC6pFJet0pkD0rvyB7OD1X6731kW/Icj6xWu0hWRBTfQ6K
	OpOp+zAOXL1xJqZJX/JYcAX0p/OAWvbjMaXFYBFyXGGysZINAyPFYBVj0d6NDI+FDw9u
	m6EY/UgM5SOKz9QLqnEOdHWplYFnanKJoOorY3bIF5fMLIweYmkaqQhTwtv5tFJIxjwY
	GVGxiqxpk4LTiosY+eJedf7L8VJvoh0ekBm5ofsF8XUxGm0HX6Jyee7Sh7FzqwwsCaxf
	3RoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=Iv/oRIjiIp2DIcqIRJqXvjGFRw+yVOdOT6SjDnBcsOM=;
	b=GpvDXOBMn4LibOf9agJFQRXeivvw0sPxQ/CmZ1uHHdTwP///IOUeuvLUW5qxKr+MzY
	0gvp6ruxHX9mgp+FsaTpSRJZ+7+j9vkMrZDlSXy1TbkkSWnTf59KsnPIUVZ1MOqiFt2j
	qV8pzXHizSo5PZLv66QJciiTUsIa0QRLMJO3fh9S91IRnlQNS4Wjb0rAthrzXGyIO4DE
	Azhe2DmcINPipk1I+SddmzI6JelWgVsTyxWnBojockvgKt6bT3KvEgVgU/nwfTCk4ohQ
	Nvicz+hva1++e+lTQX6y4uTm5dG8vtkmcES4Zw8SxDCJcTZP7fGR46DwPNemO8gZPFTt
	s1HQ==
X-Gm-Message-State: AHPjjUj1iqOtlr+oZJ2jN4ZQxVXXKqLEvg1RYid6z7Pi4iM5DbmvJqi1
	J+T5lxBXCbvdAFitCC/AEXjRms0tYg==
X-Google-Smtp-Source: ADKCNb5oLTD/Lh1tiOS9Tt0bfWYoLorC2HLtmFx/ulEbPClnEdHUjHccNey3tvbYg93jdu3xfr0qMqDdJxgDHdVSIeg=
X-Received: by 10.223.150.73 with SMTP id c9mr1408292wra.284.1504775193962;
	Thu, 07 Sep 2017 02:06:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.218.197 with HTTP; Thu, 7 Sep 2017 02:06:33 -0700 (PDT)
In-Reply-To: <CAMKF1sqVUnLXf3AWSLjnnZRg0aiP_m08oAWwEeJJGE91RZ+XMQ@mail.gmail.com>
References: <CAGAf8Lype6p4Dqzab9O0sGfEUhzYUYczjrua49o80baw_OYvpA@mail.gmail.com>
	<CAMKF1sqVUnLXf3AWSLjnnZRg0aiP_m08oAWwEeJJGE91RZ+XMQ@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 7 Sep 2017 11:06:33 +0200
Message-ID: <CAGAf8LypQHdWKO4ka8xFirYs20iAFHEyXH4K6gZGoTmBKjnvtg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>, Yocto Project <yocto@yoctoproject.org>
Subject: Re: The basehash value changed from...
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
X-List-Received-Date: Thu, 07 Sep 2017 09:06:36 -0000
Content-Type: multipart/alternative; boundary="001a11476e44e72f49055895c69a"

--001a11476e44e72f49055895c69a
Content-Type: text/plain; charset="UTF-8"

> If you keep your sstate-cache directory then delete tmp/ dir is what you
need
> to do. Rebuilding from sstate-cache is very quick.

It does not help. Since I'll have at the end/I'll end-up with the same
problem. My best guess. :-(

Since I am building the whole humongous YOCTO build not in one, rather in
two steps, like this:

bitbake meta-toolchain-qt5 (5 hours build on my HP EliteBook 840 G1)
bitbake angstrom-lxde-image (5 hours build on my HP EliteBook 840 G1)

Here, my best guess is that the first build sets its own hash, which
the second sets also its own (very
different), then makes hash checks in deploy/ tree, and fails... !?

Thank you, Zoran


On Thu, Sep 7, 2017 at 9:42 AM, Khem Raj <raj.khem@gmail.com> wrote:

> On Thu, Sep 7, 2017 at 12:37 AM, Zoran Stojsavljevic
> <zoran.stojsavljevic@gmail.com> wrote:
> > While re-compiling the whole YOCTO load for freescale i.MX6, where I have
> > added Qt5 layers (and it failed many times, so I needed to do some tricks
> > there), I encounter the following warning (in ORANGE) and error (in RED)
> > while finishing the build:
> >
> > WARNING: Duplicate inclusion for
> > /home/user/toradex/Qt5-plus-x11/oe-core/build/../layers/
> meta-toradex-bsp-common/conf/tdx_version.conf
> > in
> > /home/user/toradex/Qt5-plus-x11/oe-core/build/../layers/
> meta-toradex-demos/recipes-images/images/tdx-image-fstype.inc
> > ERROR: When reparsing
> > /home/user/toradex/Qt5-plus-x11/oe-core/build/../layers/
> meta-toradex-demos/recipes-images/images/angstrom-lxde-
> image.bb.do_image_teziimg,
> > the basehash value changed from b7b4f312b8b657bfdd068ebd8e2dd104 to
> > 1e71714a9c01964cdc724c52290abee4. The metadata is not deterministic and
> this
> > needs to be fixed.
> > NOTE: Tasks Summary: Attempted 7415 tasks of which 7394 didn't need to be
> > rerun and all succeeded.
> > NOTE: Writing buildhistory
> >
> > It built (after all) complete deploy with all the images. I kind of get
> what
> > is going on here.
> >
> > Question: how to rebuild the complete deploy/images NOT deleting tmp/? It
> > compiled overall (in two steps) > 10h. Do I need to touch some file?
> >
>
> if you keep your sstate-cache directory then delete tmp/ dir is what you
> need
> to do. Rebuilding from sstate-cache is very quick
>
> > Thank you,
> > Zoran
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--001a11476e44e72f49055895c69a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>&gt; If you keep your sstate-cache directory the=
n delete tmp/ dir is what you need<br>&gt; to do. Rebuilding from sstate-ca=
che is very quick.<br><br></div>It does not help. Since I&#39;ll have at th=
e end/I&#39;ll end-up with the same problem. My best guess. :-(<br><br></di=
v>Since I am building the whole humongous YOCTO build not in one, rather in=
 two steps, like this:<br><pre><code>bitbake meta-toolchain-qt5 (5 hours bu=
ild</code><code> on my HP EliteBook 840 G1)<br></code><code>bitbake angstro=
m-lxde-image</code> (5 hours build on my HP EliteBook 840 G1)<br></pre><pre=
><span style=3D"font-family:arial,helvetica,sans-serif"><font size=3D"2">He=
re, my best guess is that the first build sets its own hash, which the seco=
nd sets also its own (very<br>different), then makes hash checks in deploy/=
 tree, and fails... !?<br></font></span></pre><pre><span style=3D"font-fami=
ly:arial,helvetica,sans-serif"><font size=3D"2">Thank you, Zoran<br></font>=
</span></pre></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote=
">On Thu, Sep 7, 2017 at 9:42 AM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D=
"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On Thu, Sep =
7, 2017 at 12:37 AM, Zoran Stojsavljevic<br>
&lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com">zoran.stojsavljevic@gm=
ail.com</a><wbr>&gt; wrote:<br>
&gt; While re-compiling the whole YOCTO load for freescale i.MX6, where I h=
ave<br>
&gt; added Qt5 layers (and it failed many times, so I needed to do some tri=
cks<br>
&gt; there), I encounter the following warning (in ORANGE) and error (in RE=
D)<br>
&gt; while finishing the build:<br>
&gt;<br>
&gt; WARNING: Duplicate inclusion for<br>
&gt; /home/user/toradex/Qt5-plus-<wbr>x11/oe-core/build/../layers/<wbr>meta=
-toradex-bsp-common/conf/<wbr>tdx_version.conf<br>
&gt; in<br>
&gt; /home/user/toradex/Qt5-plus-<wbr>x11/oe-core/build/../layers/<wbr>meta=
-toradex-demos/recipes-<wbr>images/images/tdx-image-<wbr>fstype.inc<br>
&gt; ERROR: When reparsing<br>
&gt; /home/user/toradex/Qt5-plus-<wbr>x11/oe-core/build/../layers/<wbr>meta=
-toradex-demos/recipes-<wbr>images/images/angstrom-lxde-<wbr>image.bb.do_im=
age_teziimg,<br>
&gt; the basehash value changed from b7b4f312b8b657bfdd068ebd8e2dd1<wbr>04 =
to<br>
&gt; 1e71714a9c01964cdc724c52290abe<wbr>e4. The metadata is not determinist=
ic and this<br>
&gt; needs to be fixed.<br>
&gt; NOTE: Tasks Summary: Attempted 7415 tasks of which 7394 didn&#39;t nee=
d to be<br>
&gt; rerun and all succeeded.<br>
&gt; NOTE: Writing buildhistory<br>
&gt;<br>
&gt; It built (after all) complete deploy with all the images. I kind of ge=
t what<br>
&gt; is going on here.<br>
&gt;<br>
&gt; Question: how to rebuild the complete deploy/images NOT deleting tmp/?=
 It<br>
&gt; compiled overall (in two steps) &gt; 10h. Do I need to touch some file=
?<br>
&gt;<br>
<br>
</span>if you keep your sstate-cache directory then delete tmp/ dir is what=
 you need<br>
to do. Rebuilding from sstate-cache is very quick<br>
<br>
&gt; Thank you,<br>
&gt; Zoran<br>
&gt;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">&gt;<br>
&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
&gt;<br>
</font></span></blockquote></div><br></div>

--001a11476e44e72f49055895c69a--
