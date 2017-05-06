Return-Path: <romain.perier@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECBCDE00826; Sat,  6 May 2017 04:41:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (romain.perier[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.193 listed in list.dnswl.org]
Received: from mail-io0-f193.google.com (mail-io0-f193.google.com
	[209.85.223.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 853E5E00724
	for <yocto@yoctoproject.org>; Sat,  6 May 2017 04:41:12 -0700 (PDT)
Received: by mail-io0-f193.google.com with SMTP id v34so5066849iov.2
	for <yocto@yoctoproject.org>; Sat, 06 May 2017 04:41:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=v7i9Lp6p1b5sYGIUHaaYDo+XAVgCUtbyNdhC7/R/nWU=;
	b=DsAKFLpe4ukedU9EvJhQ6uypG7Cud0tl+eUGN7CIv7OKJ+bz+J0sjjmBWHextfnmE3
	2fR6briORJoI12UkJvzQ6U2GyRzRGelp2C+BUZaFJmMlvwHdarcdKIv4zsWuGeVI6myC
	FHPNf008lvyvE2mDR8yHI/8BLeRKLiKl/qAZAkBnd910oqCLUTFHbncc4IZ3OSEwLvP9
	h2TpaONVRVru2VMII+rsJp3hQNzabh/NfvbbRO5EsyOjl9rAhHzWSsuwcn4MXeifo+gT
	zWOdiv9M7SvC/kwI5G7xBr6zerj8pwXzZDfgX4ODAhNy3ExaXlng9oJbq3UgxTNCFnuM
	5gkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=v7i9Lp6p1b5sYGIUHaaYDo+XAVgCUtbyNdhC7/R/nWU=;
	b=DMkOEYy5FCg+lnR9LKxm76JfWcGGC9hbQ8oG+GEkcmW5ibr1wigJtoDFG8DzG7Mbvn
	83XZSJD6mbF864MBvVXUNBReWb+oS5Di8AgVcG07oOMI64rJIDZgsrNi3TR3MnNOGnq3
	6qTUgrmsrdaLgukjzJ28zuHy/eOO4KE25jTjXHIFIkqCQfsombtgLwOzM1zIaZH5ZaxC
	ZTTzkn4O3CylAp4aGyX62yY3CQPfZpAP6rMRZaQN0BkucPSzftQOX5ZCwuhPBJklB7kg
	oF3qqBq3nMeg+EOEokeKTIC9HWiWAeUVN2QGt2/aVFqbdOlsj++C2uL97e4IVrZnDIMF
	SicA==
X-Gm-Message-State: AN3rC/4c0VL4vEqM0LgyER5rap5Dl9qH+RX1Hykih6LGpfwNrmRxA2pA
	ItmESBEZrqEyuFH8QRTXcwg2Ocq8ig==
X-Received: by 10.107.190.193 with SMTP id o184mr23687658iof.95.1494070871644; 
	Sat, 06 May 2017 04:41:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.27.145 with HTTP; Sat, 6 May 2017 04:41:11 -0700 (PDT)
In-Reply-To: <20170430022345.23508-1-twoerner@gmail.com>
References: <20170430022345.23508-1-twoerner@gmail.com>
From: Romain Perier <romain.perier@gmail.com>
Date: Sat, 6 May 2017 13:41:11 +0200
Message-ID: <CABgxDoKxp6RVb0oXpMr6Lui671ZT1qio1bkvCZLU4PhGuUeF6A@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-rockchip][PATCH] README: remove irrelevant information
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
X-List-Received-Date: Sat, 06 May 2017 11:41:19 -0000
Content-Type: multipart/alternative; boundary=001a114f3b3092e27b054ed97b25

--001a114f3b3092e27b054ed97b25
Content-Type: text/plain; charset=UTF-8

Hello,

Even if I agree with the reason of why you want to remove this section. I
think , it might be a good point to keep a note about this in the README.
Just explain that this is not up to the bsp layer to do this, but to the
distro (a short sentence).

What do you think ?
Romain


2017-04-30 4:23 GMT+02:00 Trevor Woerner <twoerner@gmail.com>:

> As of openembedded-core commit 2b3ae58f5eaecc8474761c543ff5347aa0e3c4c8
> hardfp
> is enabled by default.
>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  README | 16 ----------------
>  1 file changed, 16 deletions(-)
>
> diff --git a/README b/README
> index b2e89f3..7f4a499 100644
> --- a/README
> +++ b/README
> @@ -49,7 +49,6 @@ Table of Contents
>    I. Configure yocto/oe environment
>   II. Building a second level bootloader based on kexec
>  III. Booting your device
> - IV. Performance
>
>  I. Configure yocto/oe environment
>  ========================================
> @@ -127,18 +126,3 @@ linux-next from tftp='tftp://192.168.0.5/zImage
> dtb=tftp://192.168.0.5/<MACHINE>
>  Then, plug your SDCARD into your Rockchip device and power on the board.
> If
>  everything worked fine, Petitboot should be started automatically and
> list all
>  entries found in the configuration file.
> -
> -IV. Performance
> -===============
> -
> -By default a BSP layer should not be tuning a build, this is a
> DISTRO-level
> -decision. As such the default machine settings are meant to be the lowest
> -common denominator in order to maximize generality. If you are interested
> in
> -tweaking your build to maximize performance you can either use a DISTRO
> that
> -has these same goals, or you can add settings in your configuration files
> -(e.g. local.conf) as follows:
> -
> -       for rk3288:
> -               DEFAULTTUNE = "cortexa17hf-neon-vfpv4"
> -       for rk3066:
> -               DEFAULTTUNE = "cortexa9-neon"
> --
> 2.12.0.rc1.48.g076c053
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a114f3b3092e27b054ed97b25
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>Even if I agree with the reason =
of why you want to remove this section. I think , it might be a good point =
to keep a note about this in the README. Just explain that this is not up t=
o the bsp layer to do this, but to the distro (a short sentence).</div><div=
><br></div><div>What do you think ?</div><div>Romain</div><div><br></div></=
div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2017-04-30 4:=
23 GMT+02:00 Trevor Woerner <span dir=3D"ltr">&lt;<a href=3D"mailto:twoerne=
r@gmail.com" target=3D"_blank">twoerner@gmail.com</a>&gt;</span>:<br><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex">As of openembedded-core commit 2b3ae58f5eaecc84747=
61c543ff534<wbr>7aa0e3c4c8 hardfp<br>
is enabled by default.<br>
<br>
Signed-off-by: Trevor Woerner &lt;<a href=3D"mailto:twoerner@gmail.com">two=
erner@gmail.com</a>&gt;<br>
---<br>
=C2=A0README | 16 ----------------<br>
=C2=A01 file changed, 16 deletions(-)<br>
<br>
diff --git a/README b/README<br>
index b2e89f3..7f4a499 100644<br>
--- a/README<br>
+++ b/README<br>
@@ -49,7 +49,6 @@ Table of Contents<br>
=C2=A0 =C2=A0I. Configure yocto/oe environment<br>
=C2=A0 II. Building a second level bootloader based on kexec<br>
=C2=A0III. Booting your device<br>
- IV. Performance<br>
<br>
=C2=A0I. Configure yocto/oe environment<br>
=C2=A0=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
@@ -127,18 +126,3 @@ linux-next from tftp=3D&#39;tftp://<a href=3D"http://1=
92.168.0.5/zImage" rel=3D"noreferrer" target=3D"_blank">192.168.0.5/<wbr>zI=
mage</a> dtb=3Dtftp://<a href=3D"http://192.168.0.5/" rel=3D"noreferrer" ta=
rget=3D"_blank">192.168.0.5/</a>&lt;<wbr>MACHINE&gt;<br>
=C2=A0Then, plug your SDCARD into your Rockchip device and power on the boa=
rd. If<br>
=C2=A0everything worked fine, Petitboot should be started automatically and=
 list all<br>
=C2=A0entries found in the configuration file.<br>
-<br>
-IV. Performance<br>
-=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
-<br>
-By default a BSP layer should not be tuning a build, this is a DISTRO-leve=
l<br>
-decision. As such the default machine settings are meant to be the lowest<=
br>
-common denominator in order to maximize generality. If you are interested =
in<br>
-tweaking your build to maximize performance you can either use a DISTRO th=
at<br>
-has these same goals, or you can add settings in your configuration files<=
br>
-(e.g. local.conf) as follows:<br>
-<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0for rk3288:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0DEFAULTTUNE =3D &qu=
ot;cortexa17hf-neon-vfpv4&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0for rk3066:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0DEFAULTTUNE =3D &qu=
ot;cortexa9-neon&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.12.0.rc1.48.g076c053<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--001a114f3b3092e27b054ed97b25--
