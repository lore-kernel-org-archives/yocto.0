Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 708DDE003FA; Fri, 18 Jul 2014 09:49:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f174.google.com (mail-lb0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D07CE00342
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 09:49:43 -0700 (PDT)
Received: by mail-lb0-f174.google.com with SMTP id c11so3036492lbj.5
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 09:49:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=QXduVVFLHP5+lqcVIaRHN2mGHzmc+gHKXEYdfqZ1CUU=;
	b=rfYYYeGBiJXlfM2ko6xtlWkX0wmEmAQi5hmgN4ppoCwoheoAZLqXUXMTbLPzaMFwpK
	tuaHdVwtgKk2HxRbwzaFml/AEeGFlQxHEDtVq6kTHKVtuxpjTYaUDzZlKxpDeBPu3Iwx
	zA0HcVOZiCvl8a7d2Rb6XuGtEEOTJqF0OFmlUukBpPJhFfoVTrMsPn7wE56LYPTlLoYu
	HLZYqzhz7mm7U8/m+Wpac25ytCSbEh6xtbnznP+Hs95cRufDfxB7Lik928mWiGKL7BP7
	3IloiTgk27gmGY6Jp1ClbqS2bwj1+NRkwz8MHEz5RhVTtiQUWH89VjVCHsbOPmukrWTG
	Ou2w==
X-Received: by 10.152.20.165 with SMTP id o5mr6500505lae.78.1405702182645;
	Fri, 18 Jul 2014 09:49:42 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.63.72 with HTTP; Fri, 18 Jul 2014 09:49:22 -0700 (PDT)
In-Reply-To: <53C94ACD.6010800@mlbassoc.com>
References: <53C94ACD.6010800@mlbassoc.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Fri, 18 Jul 2014 09:49:22 -0700
X-Google-Sender-Auth: W0cWhhhJLWOQ0bSocLVij_7oN2c
Message-ID: <CABcZAN=B3uNLKrTK4j_G5Ex=9WQw3xHkidhVVR-2E-2oLpOrhw@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Extending images
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
X-List-Received-Date: Fri, 18 Jul 2014 16:49:48 -0000
Content-Type: multipart/alternative; boundary=089e0141a9f641b6a804fe7a8bb6

--089e0141a9f641b6a804fe7a8bb6
Content-Type: text/plain; charset=UTF-8

On Fri, Jul 18, 2014 at 9:26 AM, Gary Thomas <gary@mlbassoc.com> wrote:

> 've always used 'IMAGE_INSTALL += " xyz"' in my local.conf
> to add new packages to a build.  That said, I had a working
> build for qemuarm (probably doesn't matter) and I added:
>   IMAGE_INSTALL += " strace"
> This produced a completely broken image which barely came
> up to a shell, lots of missing programs, etc.
>
> I then tried
>   CORE_IMAGE_EXTRA_INSTALL += " strace"
> which produced a perfectly working build (just as previous)
> with the new package added.
>
> I can see that the images produced are vastly different:
>
> * Original working build
> -rw-r--r-- 1 gthomas gthomas     11719 Jul 18 09:34
> core-image-sato-qemuarm-20140718124453.rootfs.manifest
> -rw-r--r-- 1 gthomas gthomas  87611203 Jul 18 09:34
> core-image-sato-qemuarm-20140718124453.rootfs.tar.bz2
>
> * After 'IMAGE_INSTALL += '
> -rw-r--r-- 1 gthomas gthomas      9986 Jul 18 09:55
> core-image-sato-qemuarm-20140718155134.rootfs.manifest
> -rw-r--r-- 1 gthomas gthomas  37859884 Jul 18 09:56
> core-image-sato-qemuarm-20140718155134.rootfs.tar.bz2
>
> * After 'CORE_IMAGE_EXTRA_INSTALL += '
> -rw-r--r-- 1 gthomas gthomas     11738 Jul 18 10:05
> core-image-sato-qemuarm-20140718160108.rootfs.manifest
> -rw-r--r-- 1 gthomas gthomas  87720106 Jul 18 10:05
> core-image-sato-qemuarm-20140718160108.rootfs.tar.bz2
>
> What's the difference and why did the first attempt fail?
>

Most likely the image defined its own IMAGE_INSTALL using ?=, so defining
it yourself in the configuration data overrode its default definition,
since ?= is "set only if unset". If the recipe didn't use ?=, then your
IMAGE_INSTALL += would have had no effect at all. To append to
IMAGE_INSTALL directly without using CORE_IMAGE_EXTRA_INSTALL you could
have used IMAGE_INSTALL_append, since that's a postponed operation that
happens at the end of the recipe parsing.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--089e0141a9f641b6a804fe7a8bb6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Fri, Jul 18, 2014 at 9:26 AM, Gary Thomas <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</=
span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div id=3D":db" class=3D"a3s" style=3D"overf=
low:hidden">&#39;ve always used &#39;IMAGE_INSTALL +=3D &quot; xyz&quot;&#3=
9; in my local.conf<br>


to add new packages to a build. =C2=A0That said, I had a working<br>
build for qemuarm (probably doesn&#39;t matter) and I added:<br>
=C2=A0 IMAGE_INSTALL +=3D &quot; strace&quot;<br>
This produced a completely broken image which barely came<br>
up to a shell, lots of missing programs, etc.<br>
<br>
I then tried<br>
=C2=A0 CORE_IMAGE_EXTRA_INSTALL +=3D &quot; strace&quot;<br>
which produced a perfectly working build (just as previous)<br>
with the new package added.<br>
<br>
I can see that the images produced are vastly different:<br>
<br>
* Original working build<br>
-rw-r--r-- 1 gthomas gthomas =C2=A0 =C2=A0 11719 Jul 18 09:34 core-image-sa=
to-qemuarm-<u></u>20140718124453.rootfs.manifest<br>
-rw-r--r-- 1 gthomas gthomas =C2=A087611203 Jul 18 09:34 core-image-sato-qe=
muarm-<u></u>20140718124453.rootfs.tar.bz2<br>
<br>
* After &#39;IMAGE_INSTALL +=3D &#39;<br>
-rw-r--r-- 1 gthomas gthomas =C2=A0 =C2=A0 =C2=A09986 Jul 18 <span tabindex=
=3D"0" class=3D"aBn"><span class=3D"aQJ">09:55</span></span> core-image-sat=
o-qemuarm-<u></u>20140718155134.rootfs.manifest<br>
-rw-r--r-- 1 gthomas gthomas =C2=A037859884 <span tabindex=3D"0" class=3D"a=
Bn"><span class=3D"aQJ">Jul 18 09:56</span></span> core-image-sato-qemuarm-=
<u></u>20140718155134.rootfs.tar.bz2<br>
<br>
* After &#39;CORE_IMAGE_EXTRA_INSTALL +=3D &#39;<br>
-rw-r--r-- 1 gthomas gthomas =C2=A0 =C2=A0 11738 <span tabindex=3D"0" class=
=3D"aBn"><span class=3D"aQJ">Jul 18 10:05</span></span> core-image-sato-qem=
uarm-<u></u>20140718160108.rootfs.manifest<br>
-rw-r--r-- 1 gthomas gthomas =C2=A087720106 <span tabindex=3D"0" class=3D"a=
Bn"><span class=3D"aQJ">Jul 18 10:05</span></span> core-image-sato-qemuarm-=
<u></u>20140718160108.rootfs.tar.bz2<br>
<br>
What&#39;s the difference and why did the first attempt fail?</div></blockq=
uote></div><br></div><div class=3D"gmail_extra">Most likely the image defin=
ed its own IMAGE_INSTALL using ?=3D, so defining it yourself in the configu=
ration data overrode its default definition, since ?=3D is &quot;set only i=
f unset&quot;. If the recipe didn&#39;t use ?=3D, then your IMAGE_INSTALL +=
=3D would have had no effect at all. To append to IMAGE_INSTALL directly wi=
thout using CORE_IMAGE_EXTRA_INSTALL you could have used IMAGE_INSTALL_appe=
nd, since that&#39;s a postponed operation that happens at the end of the r=
ecipe parsing.<br>

-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBak=
e, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engine=
er, Mentor Graphics
</div></div>

--089e0141a9f641b6a804fe7a8bb6--
