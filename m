Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B432FE00CE0; Thu, 26 Jul 2018 11:12:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 103D4E00CDD
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2018 11:12:27 -0700 (PDT)
Received: by mail-wm0-f48.google.com with SMTP id n11-v6so2920541wmc.2
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2018 11:12:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=oUPPG6eVW1OD2Y3m4Nb9V/heZTWEgfLB0iXX0yf9ByE=;
	b=qn6OrGUmd3u3CTheU61WOKp7O+50kmpwbvSExg6GoxwBcDZLXpFp6meWvHOqGBoUCT
	ph//+u7L0D5YWHdGN5nwkVZ8m1QrymDdfVa5MB6k/1qC1l7eBr1BY4lBsKQ3JhqZ7DKh
	WJhWqRut8wVJQvzhijvJKREWTxcz1dhqfPapbq6rEnJZBrkgELVbjWYPYgVqc0/BLdOo
	XXn2auD6ItJXP3+lKJa30KxhJPZ+Ae5pEPWV2m9hBi2sedyiTQLr22JzuIq2aX5XhA8c
	sZR0CeuDho9hT16gDfF2dmLIfyg3nGLcWnUyuvCf1ruEF/H/OT6W80s/t+iDnCbJlbnp
	1Bmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=oUPPG6eVW1OD2Y3m4Nb9V/heZTWEgfLB0iXX0yf9ByE=;
	b=Ed8WxkaPRXbF7aD0EB/JQBUQg+lB7l8No+E4dJNXr8QCIaa6i9sv8Kiaehpu80FMCk
	ar0WtMvniQZCGCFnFr4+ZfwwetHmP6b6yL7c3YeKX6/c6UMLLTEUKShT2JVRGjffujK6
	hST2v2lleVLLjYh177hFTWKccdhRvpNgIaGZuKSLm51d0uFOZuEVewMm2sM9btRZRFzx
	mgbUcvvV+kRt0O9QOeP3MMUyVpeG8+g6cWMS7KnRs4AnrWxUhxqgrSFdH+wUSfIQUva/
	z5nY9re0iEQBCd2pXhzwvzoiE4LEnhdhUvJpGqNSXNx9vj0DbSMb5CWqpN14HTZ07lrk
	7+7A==
X-Gm-Message-State: AOUpUlF5QTU82UOH1mnVwv6Km6IYClXXjkOacFIFXn3NBvMsK5a5fDZp
	H7XUOpBPDAooaCYTUpXagTnddZAH1p8b+lAeQ+s=
X-Google-Smtp-Source: AAOMgpcelZPUwE75usIepu749o6WnMiC3mnBpKzkZ/rQ/dkqVJC/TfHxtvDOlWrGKQXvEIQwHGb1S9Z4FyO/o5SHq70=
X-Received: by 2002:a1c:f46:: with SMTP id 67-v6mr2104305wmp.122.1532628746918;
	Thu, 26 Jul 2018 11:12:26 -0700 (PDT)
MIME-Version: 1.0
References: <CA+-BmJY3L5ur9MWSG4G-+T_5zd3H+8Wo0-cPD7qONimtoXfjUg@mail.gmail.com>
	<CANNYZj8uUuZeLB-ij=towgBEuhxKrLxgxK+XrKpGhCnZtPgECA@mail.gmail.com>
	<5e27708f-be93-08cf-13c3-9d0e494723a5@windriver.com>
In-Reply-To: <5e27708f-be93-08cf-13c3-9d0e494723a5@windriver.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 26 Jul 2018 20:12:15 +0200
Message-ID: <CA+chaQeBRWX+vKPskEju6h2+BGt=h4Y1vfVKJFxTo6CY8+jP0Q@mail.gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Intel machine with 64 Bit kernel and 32 Bit user space
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
X-List-Received-Date: Thu, 26 Jul 2018 18:12:30 -0000
Content-Type: multipart/alternative; boundary="000000000000087a360571eaf0fc"

--000000000000087a360571eaf0fc
Content-Type: text/plain; charset="UTF-8"

It's not as simple as that in some cases, there are some components which
are pulled in 64bit version even when building lib32-foo-image.

Some are easy to override from the config e.g.:
ROOTFS_PKGMANAGE = "${LIB32_PREFIX}opkg"
SPLASH = "${LIB32_PREFIX}psplash"

but to prevent building e.g. syslinux in 64bit version is a bit more tricky.

syslinux.bbclass was fixed long time ago:
commit c8dc421ea18bb7a810501ab6d07efa9c8f6d6eb9
Author: Ming Liu <ming.liu@windriver.com>
Date:   Thu Jun 19 16:42:58 2014 +0800

    syslinux.bbclass: Ensure MLPREFIX is applied to depends flag

    Add MLPREFIX to depends flag to ensure the correct syslinux is
    dependended upon.

-do_bootimg[depends] += "syslinux:do_populate_sysroot \
+do_bootimg[depends] += "${MLPREFIX}syslinux:do_populate_sysroot \

but wic still depends on syslinux without MLPREFIX:

meta/conf/machine/qemux86-64.conf:do_image_wic[depends] +=
"syslinux:do_populate_sysroot syslinux-native:do_populate_sysroot
mtools-native:do_populate_sysroot dosfstools-nat...
meta/conf/machine/qemux86.conf:do_image_wic[depends] +=
"syslinux:do_populate_sysroot syslinux-native:do_populate_sysroot
mtools-native:do_populate_sysroot dosfstools-native...

similarly opkg-utils and some other components are pulled in the
not-prefixed version even when building image with a prefix. I've
eventually got it working with morty (that it was really building only
couple 64bit recipes, mostly kernel and recipes providing external modules
and e.g. depmodwrapper-cross), but it's kind of shaky and error prone, I'll
send fixes for some of these issues, but as we're using morty it's more
complicated to find out what is still needed and what was resolved in newer
OE already.

And there are the issues with allarch recipes mentioned in the other
multilib thread.

Regards,


On Thu, Jul 26, 2018 at 5:59 PM Mark Hatle <mark.hatle@windriver.com> wrote:

> On 7/26/18 10:19 AM, Alexander Kanavin wrote:
> > 2018-07-26 14:56 GMT+02:00 Ayoub Zaki <ayoub.zaki@googlemail.com>:
> >> Is it possible to define a MACHINE configuration with a 64 Bit kernel
> and 32
> >> Bit user space ?
> >>
> >> The user space should not be using a  x32 ABI.
> >
> > I think (but I am not sure), that you can do it with multilib. Define
> > a configuration like this:
> >
> https://github.com/openembedded/openembedded-core/blob/master/meta-skeleton/conf/multilib-example.conf
> >
> > Then build lib32-core-image-minimal. That image should include only 32
> > bit user space, but the kernel will be 64 bit.
>
> Yes this is the typical approach.  Enable multilibs, and then build the
> image
> you you want with the approach multilib prefix.
>
> This works in any multilib configurations, 64-bit, 32-bit, x32, etc..
>
> --Mark
>
> > Alex
> >
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000087a360571eaf0fc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">It&#39;s not as simple as that in some cases, there are so=
me components which are pulled in 64bit version even when building lib32-fo=
o-image.<div><br></div><div>Some are easy to override from the config e.g.:=
</div><div><div>ROOTFS_PKGMANAGE =3D &quot;${LIB32_PREFIX}opkg&quot;</div><=
div>SPLASH =3D &quot;${LIB32_PREFIX}psplash&quot;</div></div><div><br></div=
><div>but to prevent building e.g. syslinux in 64bit version is a bit more =
tricky.</div><div><br></div><div>syslinux.bbclass was fixed long time ago:<=
/div><div><div>commit c8dc421ea18bb7a810501ab6d07efa9c8f6d6eb9</div><div>Au=
thor: Ming Liu &lt;<a href=3D"mailto:ming.liu@windriver.com">ming.liu@windr=
iver.com</a>&gt;</div><div>Date:=C2=A0 =C2=A0Thu Jun 19 16:42:58 2014 +0800=
</div><div><br></div><div>=C2=A0 =C2=A0 syslinux.bbclass: Ensure MLPREFIX i=
s applied to depends flag</div><div>=C2=A0 =C2=A0=C2=A0</div><div>=C2=A0 =
=C2=A0 Add MLPREFIX to depends flag to ensure the correct syslinux is</div>=
<div>=C2=A0 =C2=A0 dependended upon.</div></div><div><br></div><div><div>-d=
o_bootimg[depends] +=3D &quot;syslinux:do_populate_sysroot \</div><div>+do_=
bootimg[depends] +=3D &quot;${MLPREFIX}syslinux:do_populate_sysroot \</div>=
</div><div><br></div><div>but wic still depends on syslinux without MLPREFI=
X:</div><div><br></div><div><div>meta/conf/machine/qemux86-64.conf:do_image=
_wic[depends] +=3D &quot;syslinux:do_populate_sysroot syslinux-native:do_po=
pulate_sysroot mtools-native:do_populate_sysroot dosfstools-nat...</div><di=
v>meta/conf/machine/qemux86.conf:do_image_wic[depends] +=3D &quot;syslinux:=
do_populate_sysroot syslinux-native:do_populate_sysroot mtools-native:do_po=
pulate_sysroot dosfstools-native...</div></div><div><br></div><div>similarl=
y=C2=A0opkg-utils and some other components are pulled in the not-prefixed =
version even when building image with a prefix. I&#39;ve eventually got it =
working with morty (that it was really building only couple 64bit recipes, =
mostly kernel and recipes providing external modules and e.g.=C2=A0depmodwr=
apper-cross), but it&#39;s kind of shaky and error prone, I&#39;ll send fix=
es for some of these issues, but as we&#39;re using morty it&#39;s more com=
plicated to find out what is still needed and what was resolved in newer OE=
 already.</div><div><br></div><div>And there are the issues with allarch re=
cipes mentioned in the other multilib thread.</div><div><br></div><div>Rega=
rds,</div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr">On Thu, Jul 26, 2018 at 5:59 PM Mark Hatle &lt;<a href=3D"mailto:mark.h=
atle@windriver.com">mark.hatle@windriver.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex">On 7/26/18 10:19 AM, Alexander Kanavin wrote:<br>
&gt; 2018-07-26 14:56 GMT+02:00 Ayoub Zaki &lt;<a href=3D"mailto:ayoub.zaki=
@googlemail.com" target=3D"_blank">ayoub.zaki@googlemail.com</a>&gt;:<br>
&gt;&gt; Is it possible to define a MACHINE configuration with a 64 Bit ker=
nel and 32<br>
&gt;&gt; Bit user space ?<br>
&gt;&gt;<br>
&gt;&gt; The user space should not be using a=C2=A0 x32 ABI.<br>
&gt; <br>
&gt; I think (but I am not sure), that you can do it with multilib. Define<=
br>
&gt; a configuration like this:<br>
&gt; <a href=3D"https://github.com/openembedded/openembedded-core/blob/mast=
er/meta-skeleton/conf/multilib-example.conf" rel=3D"noreferrer" target=3D"_=
blank">https://github.com/openembedded/openembedded-core/blob/master/meta-s=
keleton/conf/multilib-example.conf</a><br>
&gt; <br>
&gt; Then build lib32-core-image-minimal. That image should include only 32=
<br>
&gt; bit user space, but the kernel will be 64 bit.<br>
<br>
Yes this is the typical approach.=C2=A0 Enable multilibs, and then build th=
e image<br>
you you want with the approach multilib prefix.<br>
<br>
This works in any multilib configurations, 64-bit, 32-bit, x32, etc..<br>
<br>
--Mark<br>
<br>
&gt; Alex<br>
&gt; <br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000087a360571eaf0fc--
