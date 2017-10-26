Return-Path: <antonellotartamo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D65D7E00D12; Thu, 26 Oct 2017 00:05:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonellotartamo[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.68 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f68.google.com (mail-oi0-f68.google.com
	[209.85.218.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3751E00D0D
	for <yocto@yoctoproject.org>; Thu, 26 Oct 2017 00:05:42 -0700 (PDT)
Received: by mail-oi0-f68.google.com with SMTP id g125so3986087oib.12
	for <yocto@yoctoproject.org>; Thu, 26 Oct 2017 00:05:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=bckA7s9rJ+rPrORt0Att0sgQF/5zn4pPUgLUrcjXHuA=;
	b=l0g08L/HGtuB6f81QHaIbl4PZGK4tonXxujZxlgctEggWOj9/4bcwaE1WXWtcMUHS/
	4TvqVxFMFJgivsdqQ7BN5xMDLl5B/4Zn/qWIRVnOOUb2YC/3vLiRZaLA8k2Uvj0ITYkX
	yn8h3c1Xbs+/iTl8GupqMWTfHXMTyDz4nV2tccg7r3OlPa8iCZAvMrhG0snDNzf0y0MC
	KhWKNWqtaF057TWUgfZmI65duTmicZbVr/X/YyB52r8jgpE9qQSXehQLBS+QE1SFz+nZ
	PpAuC/q7vcai/R6xJ3Dd2veW6eiK/cxL/o2vWrILN5KAX2SeaXAQW5SV5r/z6p0C36tu
	OirA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=bckA7s9rJ+rPrORt0Att0sgQF/5zn4pPUgLUrcjXHuA=;
	b=faqdVSHse1bTGbACwUPmQyCKEOl7RRngKdsP3Uew8S1U+1Uu+kFMpEkOEyFOMQ4gP6
	xP3c1R6U0YHlQQl2bkoXlU2QbAJxck9JsgylCLjOm+90t4cpahRDd6kAsuxNbQeQD78s
	dhbsiUIgjlSEo9mDhif06PBK2xZPSl1VsBzUNCtPGu5fGQYRt9NwFJhWHapCq39o7e7L
	uxMsAKC49LeNu/mGIGG5mvS8r3QN+hp7hkVcQoZLR3ZB36x72ybG2Dzqd9IW9jBvgreo
	OlNJzdw4xr1KTSBHipfj4b/6rKKGCS3ja+X1ZBuc2lFNPITiQ3VqBru93L6L+9CTMVcg
	CZyg==
X-Gm-Message-State: AMCzsaXACmVymA6u6H8eHm4zu8V3zL0VwV59GsFH3Bot/QntFUI/mFsX
	x305bnaQTswpFA8Mx67HF2rosgEaNW0GwWMSXEA=
X-Google-Smtp-Source: ABhQp+SZRZJ5d02D7uUbR9kjbd2uSQCnXWxkvtja7K+qDUKSFE2kNR/LtV/ICqoEiy046a68RkUO89RANd/fAHuSMbs=
X-Received: by 10.202.235.211 with SMTP id j202mr2209189oih.304.1509001541558; 
	Thu, 26 Oct 2017 00:05:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.168.55.12 with HTTP; Thu, 26 Oct 2017 00:05:41 -0700 (PDT)
In-Reply-To: <CAAWyHBJC30Bna_XhjWZaPPDRaAUHQ1z8_SqwtFiPv5iaQw43Xg@mail.gmail.com>
References: <CAAWyHBJC30Bna_XhjWZaPPDRaAUHQ1z8_SqwtFiPv5iaQw43Xg@mail.gmail.com>
From: Antonello Tartamo <antonellotartamo@gmail.com>
Date: Thu, 26 Oct 2017 09:05:41 +0200
Message-ID: <CAKns=mFU5sTU4-ue6o2eaD0185gDEcsSo2JJjCue-Wshfb4L5w@mail.gmail.com>
To: vishal ashapur <vishalashapur@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: build error on raspberrypi3
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
X-List-Received-Date: Thu, 26 Oct 2017 07:05:44 -0000
Content-Type: multipart/alternative; boundary="001a11c16ff2d9a556055c6dccfc"

--001a11c16ff2d9a556055c6dccfc
Content-Type: text/plain; charset="UTF-8"

Are you under proxy ?

If yes set http_proxy/https_proxy variables.

However, with github the protocol variable must be https.


2017-10-26 5:59 GMT+02:00 vishal ashapur <vishalashapur@gmail.com>:

> hi im buliding linux on rpi3 using yocto pyro branch. after doing
> "bitbake linux-raspberrypi -c menuconfig"  it is downloading all
> sources but at the end it is showing the following error.
>
> ERROR: linux-raspberrypi-1_4.9.30+gitAUTOINC+e54215a9bc-r28 do_fetch:
> Fetcher failure for URL:
> 'git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y'.
> Unable to fetch URL from any source.
> ERROR: linux-raspberrypi-1_4.9.30+gitAUTOINC+e54215a9bc-r28 do_fetch:
> Function failed: base_do_fetch
> ERROR: Logfile of failure stored in:
> /u/rpi2/rpi/build/tmp/work/raspberrypi2-poky-linux-
> gnueabi/linux-raspberrypi/1_4.9.30+gitAUTOINC+e54215a9bc-
> r28/temp/log.do_fetch.30856
> ERROR: Task (/u/rpi2/sources/poky-morty/meta-raspberrypi/recipes-
> kernel/linux/linux-raspberrypi_4.9.bb:do_fetch)
> failed with exit code '1'
>
> so can anybody help with this error.
> my detailed procedure for build is below
> git clone -b pyro git://git.yoctoproject.org/poky
> cd poky
> git clone -b pyro git://git.openembedded.org/meta-openembedded
> git clone -b pyro git://git.yoctoproject.org/meta-raspberrypi
>
> source sources/poky/oe-init-build-env rpi-build
>
> changes in local.conf
> MACHINE = "raspberrypi3"
> PREFERRED_VERSION_linux-raspberrypi = "4.9.%"
> DISTRO_FEATURES_remove = "x11 wayland"
> DISTRO_FEATURES_append = " systemd"
> VIRTUAL-RUNTIME_init_manager = "systemd"
> IMAGE_INSTALL += "packagegroup-core-buildessential"
>
> changes in bblayers.conf
> BBLAYERS ?= " \
>   ${BSPDIR}/sources/poky/meta \
>   ${BSPDIR}/sources/poky/meta-poky \
>   ${BSPDIR}/sources/poky/meta-yocto-bsp \
>   ${BSPDIR}/sources/meta-openembedded/meta-oe \
>   ${BSPDIR}/sources/meta-openembedded/meta-multimedia \
>   ${BSPDIR}/sources/meta-raspberrypi \
>
> bitbake linux-raspberrypi -c menuconfig
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11c16ff2d9a556055c6dccfc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Are you under proxy ?<br></div><div><br></div><div>If=
 yes set http_proxy/https_proxy variables.</div><div><br></div><div>However=
, with github the protocol variable must be https.</div><div><br></div></di=
v><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2017-10-26 5:59=
 GMT+02:00 vishal ashapur <span dir=3D"ltr">&lt;<a href=3D"mailto:vishalash=
apur@gmail.com" target=3D"_blank">vishalashapur@gmail.com</a>&gt;</span>:<b=
r><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex">hi im buliding linux on rpi3 using yocto p=
yro branch. after doing<br>
&quot;bitbake linux-raspberrypi -c menuconfig&quot;=C2=A0 it is downloading=
 all<br>
sources but at the end it is showing the following error.<br>
<br>
ERROR: linux-raspberrypi-1_4.9.30+<wbr>gitAUTOINC+e54215a9bc-r28 do_fetch:<=
br>
Fetcher failure for URL:<br>
&#39;git://<a href=3D"http://github.com/raspberrypi/linux.git;protocol=3Dgi=
t;branch=3Drpi-4.9.y" rel=3D"noreferrer" target=3D"_blank">github.com/raspb=
errypi/<wbr>linux.git;protocol=3Dgit;branch=3D<wbr>rpi-4.9.y</a>&#39;.<br>
Unable to fetch URL from any source.<br>
ERROR: linux-raspberrypi-1_4.9.30+<wbr>gitAUTOINC+e54215a9bc-r28 do_fetch:<=
br>
Function failed: base_do_fetch<br>
ERROR: Logfile of failure stored in:<br>
/u/rpi2/rpi/build/tmp/work/<wbr>raspberrypi2-poky-linux-<wbr>gnueabi/linux-=
raspberrypi/1_4.<wbr>9.30+gitAUTOINC+e54215a9bc-<wbr>r28/temp/log.do_fetch.=
30856<br>
ERROR: Task (/u/rpi2/sources/poky-morty/<wbr>meta-raspberrypi/recipes-<wbr>=
kernel/linux/linux-<wbr>raspberrypi_4.9.bb:do_fetch)<br>
failed with exit code &#39;1&#39;<br>
<br>
so can anybody help with this error.<br>
my detailed procedure for build is below<br>
git clone -b pyro git://<a href=3D"http://git.yoctoproject.org/poky" rel=3D=
"noreferrer" target=3D"_blank">git.yoctoproject.org/<wbr>poky</a><br>
cd poky<br>
git clone -b pyro git://<a href=3D"http://git.openembedded.org/meta-openemb=
edded" rel=3D"noreferrer" target=3D"_blank">git.openembedded.org/<wbr>meta-=
openembedded</a><br>
git clone -b pyro git://<a href=3D"http://git.yoctoproject.org/meta-raspber=
rypi" rel=3D"noreferrer" target=3D"_blank">git.yoctoproject.org/<wbr>meta-r=
aspberrypi</a><br>
<br>
source sources/poky/oe-init-build-env rpi-build<br>
<br>
changes in local.conf<br>
MACHINE =3D &quot;raspberrypi3&quot;<br>
PREFERRED_VERSION_linux-<wbr>raspberrypi =3D &quot;4.9.%&quot;<br>
DISTRO_FEATURES_remove =3D &quot;x11 wayland&quot;<br>
DISTRO_FEATURES_append =3D &quot; systemd&quot;<br>
VIRTUAL-RUNTIME_init_manager =3D &quot;systemd&quot;<br>
IMAGE_INSTALL +=3D &quot;packagegroup-core-<wbr>buildessential&quot;<br>
<br>
changes in bblayers.conf<br>
BBLAYERS ?=3D &quot; \<br>
=C2=A0 ${BSPDIR}/sources/poky/meta \<br>
=C2=A0 ${BSPDIR}/sources/poky/meta-<wbr>poky \<br>
=C2=A0 ${BSPDIR}/sources/poky/meta-<wbr>yocto-bsp \<br>
=C2=A0 ${BSPDIR}/sources/meta-<wbr>openembedded/meta-oe \<br>
=C2=A0 ${BSPDIR}/sources/meta-<wbr>openembedded/meta-multimedia \<br>
=C2=A0 ${BSPDIR}/sources/meta-<wbr>raspberrypi \<br>
<br>
bitbake linux-raspberrypi -c menuconfig<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--001a11c16ff2d9a556055c6dccfc--
