Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38CD9E00D85; Mon, 26 Sep 2016 01:19:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f172.google.com (mail-yb0-f172.google.com
	[209.85.213.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D188AE00C17
	for <yocto@yoctoproject.org>; Mon, 26 Sep 2016 01:19:27 -0700 (PDT)
Received: by mail-yb0-f172.google.com with SMTP id x93so88330564ybh.1
	for <yocto@yoctoproject.org>; Mon, 26 Sep 2016 01:19:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=O7uHBKqjz2rnT3U5y4Q3KQa3Dmc7JPepLNaY4FGUivw=;
	b=r1OATj1znhRv8ONExUDy0AlFdHnSqh8SYOWhfKqHxCwQ+2Zs9hbYKKO6w2Dh7+0Z+z
	d5jNb7tYRPoDlfJfSXAqIQn4nFV9A+i4BflzoVvqni0q0u+2LGVe1vaoBjtIqqOt7Nx0
	HMZNSkyez+VXqdZ+U0E7UJGZMZQhF9ulN/9ppoS+bCChByAyf97TQ10l6NFTdICPuuzi
	1Q0F2yC4bU5QpLQ0w9NdpjJciWnaG2aGGHw0BFfatNCjt8rx/oxLP6V4pp97GFM+kfjd
	5ykkNeDsCSZrN6e2t89kWVY9OeELnL5JPmXSHI8V76S4GpDYwvZHaahp7HO+Cl8OorTd
	MLOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=O7uHBKqjz2rnT3U5y4Q3KQa3Dmc7JPepLNaY4FGUivw=;
	b=Eoj/QNoFM7DlcPW+sbrM2i/uZVE6rcjlWJ9bJytJAz3MBLCLDGXWQCVUbcIXp43mjx
	+fmGa1q/XPgcR7XqTsJu+r7e7psDjEq4kYr5N3l6vPQ2cRwqyQSy0yQvnZij/xbwVxLv
	B4G2CCLf2YFvZOZLBdChRgudO5F6ORpwq6zcZZUPhr1czU7vbS3tV4UpwOtDFHn/qs6t
	RhNHXRVSMGs+Vc9xCfsttpmgsjUMkCA/h0h1Rq+hCUre6iXTY7X24fntpez92vxyfeYm
	ySRWDByvmsMPugmxP3Utrc0YFYVXOznlU99tqjQFVWnMOddF+xg7IFU0xjWOCi7ZArcE
	78CA==
X-Gm-Message-State: AE9vXwOTfNhGBfXYt2CQXNKtDUqv+uyN8CdnX+RL1M0s4doWHbr3cqoNkugbDELjfOjNC+cdyvF8/ganEf/VColv
X-Received: by 10.37.78.70 with SMTP id c67mr15026964ybb.99.1474877966562;
	Mon, 26 Sep 2016 01:19:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.13.206.3 with HTTP; Mon, 26 Sep 2016 01:18:56 -0700 (PDT)
In-Reply-To: <HE1PR01MB18834F369C7B2C7149C9A56592CA0@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
References: <HE1PR01MB18834F369C7B2C7149C9A56592CA0@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Mon, 26 Sep 2016 11:18:56 +0300
Message-ID: <CAHiDW_GJ1cJaX7ehQqoUCySk5renSb6oLnaY9ziERRjQSNH8PQ@mail.gmail.com>
To: Karim ATIKI <karim_atiki@hotmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [meta-toraxdex] unrecoverable build error
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
X-List-Received-Date: Mon, 26 Sep 2016 08:19:31 -0000
Content-Type: multipart/alternative; boundary=001a113e839449056b053d64c96b

--001a113e839449056b053d64c96b
Content-Type: text/plain; charset=UTF-8

On 25 September 2016 at 09:10, Karim ATIKI <karim_atiki@hotmail.com> wrote:
>
> hi,
>
> During a core-image-x11  build   (yocto krogoth, meta-toradex) , I got
the following error I never encountered with Yocto:
>
> ERROR: xf86-input-evdev-2_2.10.1-r0 do_populate_sysroot: The recipe
xf86-input-evdev is trying to install files into a shared area when those
files already exist. Those files and their manifest location are:
>
 /home/kai/yocto/colibri-t20-kts/tmp/sysroots/colibri-t20/usr/share/X11/xorg.conf.d/10-evdev.conf
>  Matched in manifest-colibri-t20-xserver-xorg.populate_sysroot
> Please verify which recipe should provide the above files.

10-evdev.conf was moved from xserver-xorg to to the driver. If you are
using krogoth, xserver-xorg really should be new enough (>=1.18.0) to not
install the file. Does meta-toradex maybe provide an older xorg?


 - Jussi


> The build has stopped as continuing in this scenario WILL break things,
if not now, possibly in the future (we've seen builds fail several months
later). If the system knew how to recover from this automatically it would
however there are several different scenarios which can result in this and
we don't know which one this is. It may be you have switched providers of
something like virtual/kernel (e.g. from linux-yocto to linux-yocto-dev),
in that case you need to execute the clean task for both recipes and it
will resolve this error. It may be you changed DISTRO_FEATURES from systemd
to udev or vice versa. Cleaning those recipes should again resolve this
error however switching DISTRO_FEATURES on an existing build directory is
not supported, you should really clean out tmp and rebuild (reusing sstate
should be safe). It could be the overlapping files detected are harmless in
which case adding them to SSTATE_DUPWHITELIST may be the correct solution.
It could also be your build is including two different conflicting versions
of things (e.g. bluez 4 and bluez 5 and the correct solution for that would
be to resolve the conflict. If in doubt, please ask on the mailing list,
sharing the error and filelist above.
> ERROR: xf86-input-evdev-2_2.10.1-r0 do_populate_sysroot: If the above
message is too much, the simpler version is you're advised to wipe out tmp
and rebuild (reusing sstate is fine). That will likely fix things in most
(but not all) cases.
> ERROR: xf86-input-evdev-2_2.10.1-r0 do_populate_sysroot: Function failed:
sstate_task_postfunc
> ERROR: Logfile of failure stored in:
/home/kai/yocto/colibri-t20-kts/tmp/work/armv7ahf-vfp-poky-linux-gnueabi/xf86-input-evdev/2_2.10.1-r0/temp/log.do_populate_sysroot.639
> ERROR: Task 2181
(/home/kai/yocto/poky-toradex/meta/recipes-graphics/xorg-driver/
xf86-input-evdev_2.10.1.bb, do_populate_sysroot) failed with exit code '1'
>
>
> I cant' get rid of this error. I have deleted the tmp and
sstate-cache...nothing. it always occurs again.
>
>
> Any idea?
>
>
> Z.
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a113e839449056b053d64c96b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 25 September 2016 at 09:10, Karim ATIKI &lt;<a href=3D"=
mailto:karim_atiki@hotmail.com">karim_atiki@hotmail.com</a>&gt; wrote:<br>&=
gt;<br>&gt; hi,<br>&gt;<br>&gt; During a core-image-x11 =C2=A0build =C2=A0 =
(yocto krogoth, meta-toradex) , I got the following error I never encounter=
ed with Yocto:<br>&gt;<br>&gt; ERROR: xf86-input-evdev-2_2.10.1-r0 do_popul=
ate_sysroot: The recipe xf86-input-evdev is trying to install files into a =
shared area when those files already exist. Those files and their manifest =
location are:<br>&gt; =C2=A0 =C2=A0/home/kai/yocto/colibri-t20-kts/tmp/sysr=
oots/colibri-t20/usr/share/X11/xorg.conf.d/10-evdev.conf<br>&gt; =C2=A0Matc=
hed in manifest-colibri-t20-xserver-xorg.populate_sysroot<br>&gt; Please ve=
rify which recipe should provide the above files.<br><br>10-evdev.conf was =
moved from xserver-xorg to to the driver. If you are using krogoth, xserver=
-xorg really should be new enough (&gt;=3D1.18.0) to not install the file. =
Does meta-toradex maybe provide an older xorg?<div><br></div><div><br></div=
><div>=C2=A0- Jussi=C2=A0<br><br></div><div><br></div><div>&gt; The build h=
as stopped as continuing in this scenario WILL break things, if not now, po=
ssibly in the future (we&#39;ve seen builds fail several months later). If =
the system knew how to recover from this automatically it would however the=
re are several different scenarios which can result in this and we don&#39;=
t know which one this is. It may be you have switched providers of somethin=
g like virtual/kernel (e.g. from linux-yocto to linux-yocto-dev), in that c=
ase you need to execute the clean task for both recipes and it will resolve=
 this error. It may be you changed DISTRO_FEATURES from systemd to udev or =
vice versa. Cleaning those recipes should again resolve this error however =
switching DISTRO_FEATURES on an existing build directory is not supported, =
you should really clean out tmp and rebuild (reusing sstate should be safe)=
. It could be the overlapping files detected are harmless in which case add=
ing them to SSTATE_DUPWHITELIST may be the correct solution. It could also =
be your build is including two different conflicting versions of things (e.=
g. bluez 4 and bluez 5 and the correct solution for that would be to resolv=
e the conflict. If in doubt, please ask on the mailing list, sharing the er=
ror and filelist above.<br>&gt; ERROR: xf86-input-evdev-2_2.10.1-r0 do_popu=
late_sysroot: If the above message is too much, the simpler version is you&=
#39;re advised to wipe out tmp and rebuild (reusing sstate is fine). That w=
ill likely fix things in most (but not all) cases.<br>&gt; ERROR: xf86-inpu=
t-evdev-2_2.10.1-r0 do_populate_sysroot: Function failed: sstate_task_postf=
unc<br>&gt; ERROR: Logfile of failure stored in: /home/kai/yocto/colibri-t2=
0-kts/tmp/work/armv7ahf-vfp-poky-linux-gnueabi/xf86-input-evdev/2_2.10.1-r0=
/temp/log.do_populate_sysroot.639<br>&gt; ERROR: Task 2181 (/home/kai/yocto=
/poky-toradex/meta/recipes-graphics/xorg-driver/<a href=3D"http://xf86-inpu=
t-evdev_2.10.1.bb">xf86-input-evdev_2.10.1.bb</a>, do_populate_sysroot) fai=
led with exit code &#39;1&#39;<br>&gt;<br>&gt;<br>&gt; I cant&#39; get rid =
of this error. I have deleted the tmp and sstate-cache...nothing. it always=
 occurs again.<br>&gt;<br>&gt;<br>&gt; Any idea?<br>&gt;<br>&gt;<br>&gt; Z.=
<br>&gt;<br>&gt;<br>&gt; --<br>&gt; _______________________________________=
________<br>&gt; yocto mailing list<br>&gt; <a href=3D"mailto:yocto@yoctopr=
oject.org">yocto@yoctoproject.org</a><br>&gt; <a href=3D"https://lists.yoct=
oproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto<=
/a><br>&gt;<br></div></div>

--001a113e839449056b053d64c96b--
