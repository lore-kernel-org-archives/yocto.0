Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35D24E006B0
	for <yocto@yoctoproject.org>; Sat, 28 Jan 2012 19:59:15 -0800 (PST)
Received: by dakj40 with SMTP id j40so3182497dak.35
	for <yocto@yoctoproject.org>; Sat, 28 Jan 2012 19:59:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=pfOBEWfmqWi8SnR+nhVz50Tb/n5vAU7/s783dSfxn40=;
	b=rDbAH7yfo1VW7dFdE0HvGEIZnalVW5YCKxMtbWtsSbgCKPd6RxA5gHAxY2JckeUSey
	WECdSOSWKp4GblRPHt53zS4XddI7dVy1TENe3PO/hKIhKDMmz3d9AH8BMnnUiCdhnZ+o
	OH3IhBuisYhoM0+LBSuAhxxVZL2r6DKETiCLI=
MIME-Version: 1.0
Received: by 10.68.189.69 with SMTP id gg5mr28583179pbc.41.1327809554870; Sat,
	28 Jan 2012 19:59:14 -0800 (PST)
Received: by 10.143.77.17 with HTTP; Sat, 28 Jan 2012 19:59:14 -0800 (PST)
In-Reply-To: <b1d88029c51bf867d145588972e5938882058b50.1326792067.git.jingdong.lu@windriver.com>
References: <cover.1326792067.git.jingdong.lu@windriver.com>
	<b1d88029c51bf867d145588972e5938882058b50.1326792067.git.jingdong.lu@windriver.com>
Date: Sat, 28 Jan 2012 22:59:14 -0500
Message-ID: <CADkTA4NLqR2JFiYfgOFNksgP3c-fmh5Roas4S37r07TxHM1Vxw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Jingdong.Lu@windriver.com
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] meta/beagleboard: Using CONFIG_PANEL_GENERIC_DPI=y
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 29 Jan 2012 03:59:15 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Sat, Jan 28, 2012 at 8:57 PM,  <Jingdong.Lu@windriver.com> wrote:
> From: Jingdong Lu <jingdong.lu@windriver.com>
>
> Using CONFIG_PANEL_GENERIC_DPI=3Dy instead of CONFIG_PANEL_GENERIC=3Dy
> for beagleboard.

I've got this one queued in the next 3.0 update.

Cheers,

Bruce

>
> Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
> ---
> =A0.../kernel-cache/bsp/beagleboard/beagleboard.cfg =A0 | =A0 =A02 +-
> =A01 files changed, 1 insertions(+), 1 deletions(-)
>
> diff --git a/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard.cfg b/meta=
/cfg/kernel-cache/bsp/beagleboard/beagleboard.cfg
> index 994e034..8bb9d87 100644
> --- a/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard.cfg
> +++ b/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard.cfg
> @@ -216,7 +216,7 @@ CONFIG_FB_OMAP2_NUM_FBS=3D2
> =A0#
> =A0# OMAP2/3 Display Device Drivers
> =A0#
> -CONFIG_PANEL_GENERIC=3Dy
> +CONFIG_PANEL_GENERIC_DPI=3Dy
> =A0CONFIG_PANEL_SHARP_LS037V7DW01=3Dy
> =A0# CONFIG_PANEL_LGPHILIPS_LB035Q02 is not set
> =A0# CONFIG_PANEL_SAMSUNG_LTE430WQ_F0C is not set
> --
> 1.7.0.4
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

