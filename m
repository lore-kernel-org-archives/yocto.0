Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57752E00AD7; Fri,  8 Dec 2017 02:24:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f52.google.com (mail-it0-f52.google.com
	[209.85.214.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96B62E008CA
	for <yocto@yoctoproject.org>; Fri,  8 Dec 2017 02:24:37 -0800 (PST)
Received: by mail-it0-f52.google.com with SMTP id f190so3757094ita.5
	for <yocto@yoctoproject.org>; Fri, 08 Dec 2017 02:24:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=vrLnxJPKfALhFH+eCCyXIHMbPVPmYHx6OZsQalaSBOQ=;
	b=BqEbmJylmZIS1rMRF5U8qWE8D7EXOQitO3K6wNpfsN6Rtk5XMQmzk/8hfVZsPjoBDc
	b61TKNl9GKZmNmgkOXsi7tGxyYGmyHMV9zi9E814mcpIaK6VHzYxkwyKv+KRemdUlu7f
	K38KYQX+Ag9PmHZo77WHMNPAHk1AdhWL1Bn92fzouwYacUtEGT9Bn2WLRNsTcXdwcjS3
	neCHCZQQjuuK7KOVahcTusb39cRlqFJgzP76D5zrJDQS6fR2P0MpmFcy007xUQIi4iaB
	njANciZUthsbsU3xKxAHkIBmPNwqpX7TmAuGn9bsMcpn4RBEcFBT9en54auxpwY6wXGP
	RkrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=vrLnxJPKfALhFH+eCCyXIHMbPVPmYHx6OZsQalaSBOQ=;
	b=tYmLAedeopsdBiMKPgn4XNM8/ABzmEzNci9MK8jWGcgZIiZozay1sHMYrFl3IMMYa2
	j9+ItpwMeuEyTqcMu+OqFpwno7b0PesuB6UyhJ+4eoi3N1exrM3PIvodaOxobLNeLPYU
	CT9n+7K8w8knZia3ly2t3yDk1qAl9ARqgw/5S4dcPO4XNldYsEp+owf0BFab67aj8F/w
	3yjprN8Z28MwqchhSmFwc0BIcqbU6BnlyoNxvUtAVkA+suCDOiDh00z50DNmE3iEnDsx
	JH4cnEYLCqSbUPlmaBNvgwUGcWlsXUkTXti5z70MZnN6Eb438rXYjDsbzZCtmfCiD8AH
	IgjA==
X-Gm-Message-State: AJaThX7XDE0LJjjEdxJx0i4w86zuu5Nm/RAVDmPSKZ5Hn+QZULqNL+8j
	arz8ztalFWZpVh+IxI3Z8oSqnwRtoTn9J7Gh7WdbVA==
X-Google-Smtp-Source: AGs4zMYeDcbyteBG+O3adEh7fn0UVSCL2gyeRbkAC08rHUofAJ7sT5H4Fn39Ax8lDlBR88fLjDFjAS5/OEN24XHnjAI=
X-Received: by 10.107.47.1 with SMTP id j1mr41021103ioo.217.1512728676694;
	Fri, 08 Dec 2017 02:24:36 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.137.195 with HTTP; Fri, 8 Dec 2017 02:24:16 -0800 (PST)
In-Reply-To: <CAPVQe-C2rVAtRNxBTzaoiVCsQiyQJCu2S2Jysgvb=MoYxhE2hQ@mail.gmail.com>
References: <CAPVQe-C2rVAtRNxBTzaoiVCsQiyQJCu2S2Jysgvb=MoYxhE2hQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 8 Dec 2017 10:24:16 +0000
Message-ID: <CAJTo0LY2tT4zbeAfg_JjGDtHTO49XAvHWJ3hgaWekmn3=+iAgw@mail.gmail.com>
To: Gunasekaran Srinivasan <gunasekaran@solitontech.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Morty Branch: Error in building core-image-sato | matchbox-panel recipe
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
X-List-Received-Date: Fri, 08 Dec 2017 10:24:38 -0000
Content-Type: multipart/alternative; boundary="001a11377fbc6a91dd055fd1975c"

--001a11377fbc6a91dd055fd1975c
Content-Type: text/plain; charset="UTF-8"

gdk-x11 is part of the gtk+3 recipe, which is a dependency of
matchbox-desktop.  matchbox-desktop needs X11, so has your BSP disabled X11?

Ross

On 8 December 2017 at 03:02, Gunasekaran Srinivasan <
gunasekaran@solitontech.com> wrote:

> Hi all,
>
> I am trying to build core-image-sato image with poky 2.2.2. I am getting
> following error in matchbox-panel recipe
>
> ............................................................
> ......................................................
>  checking what language compliance flags to pass to the C compiler...
> | checking for arm-poky-linux-gnueabi-pkg-config... no
> | checking for pkg-config... </path/>fsl-community-bsp/matc
> hbox/tmp/sysroots/x86_64-linux/usr/bin/pkg-config
> | checking pkg-config is at least version 0.9.0... yes
> | checking for MATCHBOX_PANEL... no
> | configure: error: Package requirements (glib-2.0
> |                   gmodule-export-2.0
> |                   x11
> |                   gdk-x11-3.0
> |                   gtk+-3.0) were not met:
> |
> | No package 'gdk-x11-3.0' found
> |
> | Consider adjusting the PKG_CONFIG_PATH environment variable if you
> | installed software in a non-standard prefix.
> |
> | Alternatively, you may set the environment variables
> MATCHBOX_PANEL_CFLAGS
> | and MATCHBOX_PANEL_LIBS to avoid the need to call pkg-config.
> | See the pkg-config man page for more details.
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_configure (log file is located at
> <path>/fsl-community-bsp/matchbox/tmp/work/cortexa9hf-neon-
> poky-linux-gnueabi/matchbox-panel-2/2.11-r0/temp/log.do_configure.27179)
> ERROR: Task (<path>/fsl-community-bsp/sources/poky/meta/recipes-sato/
> matchbox-panel-2/matchbox-panel-2_2.11.bb:do_configure) failed with exit
> code '1'
> NOTE: Tasks Summary: Attempted 2607 tasks of which 0 didn't need to be
> rerun and 1 failed.
>
> Summary: 1 task failed:
>   <path>/fsl-community-bsp/sources/poky/meta/recipes-sato/
> matchbox-panel-2/matchbox-panel-2_2.11.bb:do_configure
>
> Is there a recipe for gdk-x11 in yocto?
>
>
> Thanks,
> Guna
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a11377fbc6a91dd055fd1975c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">gdk-x11 is part of the gtk+3 recipe, which is a dependency=
 of matchbox-desktop. =C2=A0matchbox-desktop needs X11, so has your BSP dis=
abled X11?<div><br></div><div>Ross</div></div><div class=3D"gmail_extra"><b=
r><div class=3D"gmail_quote">On 8 December 2017 at 03:02, Gunasekaran Srini=
vasan <span dir=3D"ltr">&lt;<a href=3D"mailto:gunasekaran@solitontech.com" =
target=3D"_blank">gunasekaran@solitontech.com</a>&gt;</span> wrote:<br><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex"><div dir=3D"ltr">Hi all,<br><br>I am trying to b=
uild core-image-sato image with poky 2.2.2. I am getting following error in=
 matchbox-panel recipe<br><br>..............................<wbr>..........=
....................<wbr>..............................<wbr>...............=
.........<br>=C2=A0checking what language compliance flags to pass to the C=
 compiler...<br>| checking for arm-poky-linux-gnueabi-pkg-con<wbr>fig... no=
<br>| checking for pkg-config... &lt;/path/&gt;fsl-community-bsp/matc<wbr>h=
box/tmp/sysroots/x86_64-linux<wbr>/usr/bin/pkg-config<br>| checking pkg-con=
fig is at least version 0.9.0... yes<br>| checking for MATCHBOX_PANEL... no=
<br>| configure: error: Package requirements (glib-2.0<br>|=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 gmodule-export-2.0<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 x11<br>|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 gdk-x11-3.0<br>|=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 gtk+-3.0) were not met:<br>| <br>| No package &#39;gdk-x=
11-3.0&#39; found<br>| <br>| Consider adjusting the PKG_CONFIG_PATH environ=
ment variable if you<br>| installed software in a non-standard prefix.<br>|=
 <br>| Alternatively, you may set the environment variables MATCHBOX_PANEL_=
CFLAGS<br>| and MATCHBOX_PANEL_LIBS to avoid the need to call pkg-config.<b=
r>| See the pkg-config man page for more details.<br>| WARNING: exit code 1=
 from a shell command.<br>| ERROR: Function failed: do_configure (log file =
is located at &lt;path&gt;/fsl-community-bsp/match<wbr>box/tmp/work/cortexa=
9hf-neon-<wbr>poky-linux-gnueabi/matchbox-<wbr>panel-2/2.11-r0/temp/log.do_=
<wbr>configure.27179)<br>ERROR: Task (&lt;path&gt;/fsl-community-bsp/sour<w=
br>ces/poky/meta/recipes-sato/<wbr>matchbox-panel-2/matchbox-<wbr>panel-2_2=
.11.bb:do_configure) failed with exit code &#39;1&#39;<br>NOTE: Tasks Summa=
ry: Attempted 2607 tasks of which 0 didn&#39;t need to be rerun and 1 faile=
d.<br><br>Summary: 1 task failed:<br>=C2=A0 &lt;path&gt;/fsl-community-bsp/=
sourc<wbr>es/poky/meta/recipes-sato/<wbr>matchbox-panel-2/matchbox-<wbr>pan=
el-2_2.11.bb:do_configure<br><div><br></div><div>Is there a recipe for gdk-=
x11 in yocto?<br></div><div><br></div><div><br clear=3D"all"><div><div clas=
s=3D"m_2814480249601150692gmail_signature"><div dir=3D"ltr"><div><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div>Thanks,<br></div><div>Guna<br></div></d=
iv></div></div></div></div></div></div>
</div></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a11377fbc6a91dd055fd1975c--
