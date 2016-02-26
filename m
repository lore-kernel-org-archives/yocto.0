Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79BC0E00DA6; Fri, 26 Feb 2016 10:05:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8661E00D16
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 10:05:09 -0800 (PST)
Received: by mail-wm0-f47.google.com with SMTP id a4so80185491wme.1
	for <yocto@yoctoproject.org>; Fri, 26 Feb 2016 10:05:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=k5xT2Ef1Cdd82a4Apd/BFkQwC+Kofq19xc0Stb+f6EI=;
	b=AupB1euuoUa4UxCGBFFx12Vv1sYjwnL8/YvW+V+XiWGGIC3hinA5c3liJhi2tjnVej
	AtRfVKNPmjnzS6vEg62+Fnd2ekSZEDCSPcSfRIwk2+ocqQrcYsMpR95fuFOpf610H4TN
	4oHXJSRxjfgXa0cl550JPSKFf7RvWhi9/wrKRPmUwdRucgxzwUAO+a5Na2o8fTFYVfxG
	S/nZzyCsBpPuvmdU0+HxUiZswCwagTkUOaXJcnXK/KiqIevDG5nS2LiFUeaNk+wWzxJq
	2bVyzG9VMuy6zpGO03FF04bh3tP/iUwPwcUgHYdcCXNXWEb/zY3B51m+udtQCJkNFF+s
	cTmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=k5xT2Ef1Cdd82a4Apd/BFkQwC+Kofq19xc0Stb+f6EI=;
	b=GMo6OODThnLIpp80L7008IuIgWfYedc7+n2/2lru8eGC19DIq1uvOK32KzQ1xl8c1E
	0b2kDvPGQENRzB/FGT8IuM/adRS0g+cdez1Og/ogflAFy1AqpkJeggMVxyud2MXFUvxY
	tgHN2C1a+3X6pQIEi+alX0oBbL+KD6x/nhWCj1XmjNBGM2VvBg7E3t+2pKpe5Lo/oQU5
	uCAqX2iJY58jR67C458E8mv4z1brnSneRaGJjAYKqgHBrCrLj/HAEywHwXL9TuvnorO3
	DI6TrQQpE8yzwm4+9f/wUnN+ySCa6rKff9WVE6ThKe4e+o+xIHZpB4SM9TWI/ZgClSUl
	dvHw==
X-Gm-Message-State: AD7BkJIpMmtjzWPjwerflFonTA6W5c4LGVB21h1oK3lX9aGdxCQG1Qfr5VFORIcrkMRcSqE2bXD6i0wCS2XksQ==
X-Received: by 10.28.73.136 with SMTP id w130mr4783387wma.36.1456509908465;
	Fri, 26 Feb 2016 10:05:08 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.126.135 with HTTP; Fri, 26 Feb 2016 10:04:28 -0800 (PST)
X-Originating-IP: [2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d]
In-Reply-To: <876d8b2d6f4549cebde5792d84860bee@technux.se>
References: <1456478817-7221-1-git-send-email-net147@gmail.com>
	<20160226171446.GA4154@resin.home>
	<876d8b2d6f4549cebde5792d84860bee@technux.se>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 26 Feb 2016 19:04:28 +0100
Message-ID: <CAK18fxGKNWMUh=SmKe+3=GF3ttayvm_DyhtzFztBxvfzdj64sg@mail.gmail.com>
To: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi: fix path to mkknlimg
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
X-List-Received-Date: Fri, 26 Feb 2016 18:05:12 -0000
Content-Type: multipart/alternative; boundary=001a114b7e0cb4d46f052cb023a4

--001a114b7e0cb4d46f052cb023a4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

--
Andrei Gherzan

On Fri, Feb 26, 2016 at 6:48 PM, Petter Mab=C3=A4cker <petter@technux.se> w=
rote:

> 2016-02-26 18:14 skrev Andrei Gherzan:
>
> On Fri, Feb 26, 2016 at 08:26:57PM +1100, Jonathan Liu wrote:
>
> The path had libexecdir hardcoded so it was no longer correct when
> libexecdir was changed in meta/conf/bitbake.conf from ${libdir}/${BPN} to
> ${prefix_native}/libexec for nativesdk recipes. Fixes "No such file or
> directory" error when executing do_rpiboot_mkimage. Signed-off-by: Jonath=
an
> Liu <net147@gmail.com> --- recipes-kernel/linux/linux-raspberrypi.inc | 2
> +- 1 file changed, 1 insertion(+), 1 deletion(-) diff --git
> a/recipes-kernel/linux/linux-raspberrypi.inc
> b/recipes-kernel/linux/linux-raspberrypi.inc index 70e8bfe..8c7c46c 10064=
4
> --- a/recipes-kernel/linux/linux-raspberrypi.inc +++
> b/recipes-kernel/linux/linux-raspberrypi.inc @@ -60,7 +60,7 @@
> do_rpiboot_mkimage() { if test "x${KERNEL_IMAGETYPE}" !=3D "xuImage" ; th=
en
> if test -n "${KERNEL_DEVICETREE}"; then # Add RPi bootloader trailer to
> kernel image to enable DeviceTree support -
> ${STAGING_DIR_NATIVE}/usr/lib/rpi-mkimage/mkknlimg --dtok ${KERNEL_OUTPUT=
}
> ${KERNEL_OUTPUT} + ${STAGING_LIBEXECDIR_NATIVE}/mkknlimg --dtok
> ${KERNEL_OUTPUT} ${KERNEL_OUTPUT} fi fi } -- 2.7.1
>
> Back alive. testing this.
> --
> Andrei Gherzan
>
>
>  Hi,
>
> I think we should use the older patchset from *Maciej Borzecki * (that
> solves this and some other minor stuffs) instead. It also keeps the
> rpi-mkimage structure:
>
>
> https://lists.yoctoproject.org/pipermail/yocto/2016-February/028271.html
>
> BR Petter
>
Very good catch Petter. I'll test that PR.

--001a114b7e0cb4d46f052cb023a4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br clear=3D"all"><div><div cla=
ss=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div>--</div>=
Andrei Gherzan</div></div></div></div></div>
<br><div class=3D"gmail_quote">On Fri, Feb 26, 2016 at 6:48 PM, Petter Mab=
=C3=A4cker <span dir=3D"ltr">&lt;<a href=3D"mailto:petter@technux.se" targe=
t=3D"_blank">petter@technux.se</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;bo=
rder-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">=
<u></u>
<div style=3D"font-family:Helvetica,Arial,sans-serif"><div><div class=3D"h5=
">
<p>2016-02-26 18:14 skrev Andrei Gherzan:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px;border-left-color:rgb(1=
6,16,255);border-left-width:2px;border-left-style:solid;margin-left:5px;wid=
th:100%">
<pre>On Fri, Feb 26, 2016 at 08:26:57PM +1100, Jonathan Liu wrote:</pre>
<blockquote type=3D"cite" style=3D"padding-left:5px;border-left-color:rgb(1=
6,16,255);border-left-width:2px;border-left-style:solid;margin-left:5px;wid=
th:100%">The path had libexecdir hardcoded so it was no longer correct when=
 libexecdir was changed in meta/conf/bitbake.conf from ${libdir}/${BPN} to =
${prefix_native}/libexec for nativesdk recipes. Fixes &quot;No such file or=
 directory&quot; error when executing do_rpiboot_mkimage. Signed-off-by: Jo=
nathan Liu &lt;<a href=3D"mailto:net147@gmail.com" target=3D"_blank">net147=
@gmail.com</a>&gt; --- recipes-kernel/linux/linux-raspberrypi.inc | 2 +- 1 =
file changed, 1 insertion(+), 1 deletion(-) diff --git a/recipes-kernel/lin=
ux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc index=
 70e8bfe..8c7c46c 100644 --- a/recipes-kernel/linux/linux-raspberrypi.inc +=
++ b/recipes-kernel/linux/linux-raspberrypi.inc @@ -60,7 +60,7 @@ do_rpiboo=
t_mkimage() { if test &quot;x${KERNEL_IMAGETYPE}&quot; !=3D &quot;xuImage&q=
uot; ; then if test -n &quot;${KERNEL_DEVICETREE}&quot;; then # Add RPi boo=
tloader trailer to kernel image to enable DeviceTree support - ${STAGING_DI=
R_NATIVE}/usr/lib/rpi-mkimage/mkknlimg --dtok ${KERNEL_OUTPUT} ${KERNEL_OUT=
PUT} + ${STAGING_LIBEXECDIR_NATIVE}/mkknlimg --dtok ${KERNEL_OUTPUT} ${KERN=
EL_OUTPUT} fi fi } -- 2.7.1</blockquote>
<pre>Back alive. testing this.

<span>--=20
Andrei Gherzan<br><br><br>
</span></pre>
</blockquote>
</div></div><p>Hi,<br><br>I think we should use the older patchset from <em=
>Maciej Borzecki </em> (that solves this and some other minor stuffs) inste=
ad. It also keeps the rpi-mkimage structure:<br><br><br><a href=3D"https://=
lists.yoctoproject.org/pipermail/yocto/2016-February/028271.html" target=3D=
"_blank">https://lists.yoctoproject.org/pipermail/yocto/2016-February/02827=
1.html</a><br><br>BR Petter</p>
</div>
</blockquote></div>Very good catch Petter. I&#39;ll test that PR.<br></div>=
</div>

--001a114b7e0cb4d46f052cb023a4--
