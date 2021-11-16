Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B22DC433F5
	for <webhook@archiver.kernel.org>; Tue, 16 Nov 2021 17:01:11 +0000 (UTC)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
 [209.85.160.180])
 by mx.groups.io with SMTP id smtpd.web09.807.1637082069809847584
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Nov 2021 09:01:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=O566svi7;
 spf=pass (domain: gmail.com, ip: 209.85.160.180,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f180.google.com with SMTP id v22so14943122qtx.8
        for <yocto@lists.yoctoproject.org>;
 Tue, 16 Nov 2021 09:01:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=smpCRIGfWuD4WewbUbshfO4CnkmOsQ/A7w7UQQOyzK8=;
        b=O566svi7RMdD+YpQcnxT8Bv1tIRAKGH0JEwDPEtXPxvwkhF9q/kjMEF9ReZbUdYdlv
         Nzi84qrYAdLsWxpWrfNrNd766rsK2FI5ydJzxX6x6pvO65q8dyjAYlOY6cwp5tR0t0AV
         5xuDsdiJ+wewWC2tXM/Dfchf6SenedoVhtc8QsKroeWeNox2v6Q+51/VCMtsb3W7hFaW
         9J6Ycze0GS2g0ufnZnBt4rW+LiYATFAWbCcOBgUgpgu5q8PqRxiHlVuqDZgebJ/XCCbu
         UdFKc6XG2+w69IgEpnCDt1Fqlw2+IeG7eaZA0Bp7WBPbbeJV+ADvh+dDatNK5ukx4C3z
         vb6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=smpCRIGfWuD4WewbUbshfO4CnkmOsQ/A7w7UQQOyzK8=;
        b=su9p1YANfeWgtWkR0Q7/TuzwkbmWqmTUHMHRDI5/WWI8W22b0Yfm5MgcTaXdnapnin
         Ldn+c3roHzlkrqB1JHaG6gC+vr7pyj3u0RqPwotOyt5v5r/rQabX7FZXjvorE7q/Nqg3
         280FnpWT4UMtJxa3WVEsDk7zbX5aF1xx/fDO5JmJ/MsvTIe0BXMmPT99IWzX4s3MBpKR
         A+U31A0Kby9Fp9kDA7IkHVGbzBRG5BYwL0kpVbmxWZeTe1mUTkOYfCxnQt/orxsJnnPI
         zPmJ6dtTqD4cDUHAObWoTDpZUzST+KliCgLlQGvYUiz0Ew68i1dERKOZpAtFbU83kSOA
         QrNw==
X-Gm-Message-State: AOAM531iUAuFemRLF0IZXfTE0lbn9fAaVBH+zukq77f/7N4xbWMECeEI
	URoRYOraD1PmfMqjkrDQFz4f6TrUqaHLJHPiico=
X-Google-Smtp-Source: 
 ABdhPJyBndufHJHAxSppeU76WNtDEboo9XNvp5qF7Ps9RZ8KSDfDK8gTXY7HpvSxcwGGQR4maKPffX2xFZur9xys4dY=
X-Received: by 2002:a05:622a:15c5:: with SMTP id
 d5mr9328511qty.227.1637082068842;
 Tue, 16 Nov 2021 09:01:08 -0800 (PST)
MIME-Version: 1.0
References: <20211116153256.3639663-1-quentin.schulz@theobroma-systems.com>
In-Reply-To: <20211116153256.3639663-1-quentin.schulz@theobroma-systems.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 16 Nov 2021 09:00:42 -0800
Message-ID: 
 <CAMKF1sq+cj8e31L1ExHSKckEVab-ZdeUCF3_CTSr0VPtZ=_sVQ@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH] kernel: linux-yocto: fix broken
 Ethernet MAC controller on RK3399 on 5.14 >= version <= 5.14.11
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
 Trevor Woerner <twoerner@gmail.com>,
	Quentin Schulz <foss+yocto@0leil.net>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Nov 2021 17:01:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55348

On Tue, Nov 16, 2021 at 7:52 AM Quentin Schulz
<quentin.schulz@theobroma-systems.com> wrote:
>
> From Linux kernel v5.14 to v5.14.11 (both included), the Ethernet MAC
> controller found on RK3399 is not working.
>
> A fix is available in v5.14.12 and later (available also in v5.15)
> which is provided here and applied to linux-yocto source tree if
> linux-yocto version is of the impacted ones.
>
> The conditional patching is unfortunately required because Honister 3.4
> has linux-yocto v5.14.9 and Honister 3.4.1 will have at least
> linux-yocto v5.14.14.

Patching piece below looks quite a bit.
lets just fix v5.14.14 and dont worry about 3.4

>
> Cc: Quentin Schulz <foss+yocto@0leil.net>
> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> ---
>  ...-rk-Fix-ethernet-on-rk3399-based-dev.patch | 63 +++++++++++++++++++
>  .../linux/linux-yocto/5.14-rk3399-mac-fix.scc |  1 +
>  .../linux/linux-yocto_5.14.bbappend           | 11 ++++
>  3 files changed, 75 insertions(+)
>  create mode 100644 recipes-kernel/linux/linux-yocto/0001-net-stmmac-dwmac-rk-Fix-ethernet-on-rk3399-based-dev.patch
>  create mode 100644 recipes-kernel/linux/linux-yocto/5.14-rk3399-mac-fix.scc
>  create mode 100644 recipes-kernel/linux/linux-yocto_5.14.bbappend
>
> diff --git a/recipes-kernel/linux/linux-yocto/0001-net-stmmac-dwmac-rk-Fix-ethernet-on-rk3399-based-dev.patch b/recipes-kernel/linux/linux-yocto/0001-net-stmmac-dwmac-rk-Fix-ethernet-on-rk3399-based-dev.patch
> new file mode 100644
> index 0000000..b2ce7e8
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-yocto/0001-net-stmmac-dwmac-rk-Fix-ethernet-on-rk3399-based-dev.patch
> @@ -0,0 +1,63 @@
> +From 8efe947ea1eace444d78398a31469b30e47ae585 Mon Sep 17 00:00:00 2001
> +From: Punit Agrawal <punitagrawal@gmail.com>
> +Date: Wed, 29 Sep 2021 22:50:49 +0900
> +Subject: [PATCH] net: stmmac: dwmac-rk: Fix ethernet on rk3399 based devices
> +
> +[ Upstream commit aec3f415f7244b7747a7952596971adb0df2f568 ]
> +
> +Commit 2d26f6e39afb ("net: stmmac: dwmac-rk: fix unbalanced pm_runtime_enable warnings")
> +while getting rid of a runtime PM warning ended up breaking ethernet
> +on rk3399 based devices. By dropping an extra reference to the device,
> +the commit ends up enabling suspend / resume of the ethernet device -
> +which appears to be broken.
> +
> +While the issue with runtime pm is being investigated, partially
> +revert commit 2d26f6e39afb to restore the network on rk3399.
> +
> +Fixes: 2d26f6e39afb ("net: stmmac: dwmac-rk: fix unbalanced pm_runtime_enable warnings")
> +Suggested-by: Heiko Stuebner <heiko@sntech.de>
> +Signed-off-by: Punit Agrawal <punitagrawal@gmail.com>
> +Cc: Michael Riesch <michael.riesch@wolfvision.net>
> +Tested-by: Heiko Stuebner <heiko@sntech.de>
> +Link: https://lore.kernel.org/r/20210929135049.3426058-1-punitagrawal@gmail.com
> +Signed-off-by: Jakub Kicinski <kuba@kernel.org>
> +Signed-off-by: Sasha Levin <sashal@kernel.org>
> +
> +Upstream-Status: Backport [8efe947ea1eace444d78398a31469b30e47ae585]
> +---
> + drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 5 +++++
> + 1 file changed, 5 insertions(+)
> +
> +diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> +index ed817011a94a..6924a6aacbd5 100644
> +--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> ++++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> +@@ -21,6 +21,7 @@
> + #include <linux/delay.h>
> + #include <linux/mfd/syscon.h>
> + #include <linux/regmap.h>
> ++#include <linux/pm_runtime.h>
> +
> + #include "stmmac_platform.h"
> +
> +@@ -1528,6 +1529,8 @@ static int rk_gmac_powerup(struct rk_priv_data *bsp_priv)
> +               return ret;
> +       }
> +
> ++      pm_runtime_get_sync(dev);
> ++
> +       if (bsp_priv->integrated_phy)
> +               rk_gmac_integrated_phy_powerup(bsp_priv);
> +
> +@@ -1539,6 +1542,8 @@ static void rk_gmac_powerdown(struct rk_priv_data *gmac)
> +       if (gmac->integrated_phy)
> +               rk_gmac_integrated_phy_powerdown(gmac);
> +
> ++      pm_runtime_put_sync(&gmac->pdev->dev);
> ++
> +       phy_power_on(gmac, false);
> +       gmac_clk_enable(gmac, false);
> + }
> +--
> +2.33.1
> +
> diff --git a/recipes-kernel/linux/linux-yocto/5.14-rk3399-mac-fix.scc b/recipes-kernel/linux/linux-yocto/5.14-rk3399-mac-fix.scc
> new file mode 100644
> index 0000000..1ad2bde
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-yocto/5.14-rk3399-mac-fix.scc
> @@ -0,0 +1 @@
> +patch 0001-net-stmmac-dwmac-rk-Fix-ethernet-on-rk3399-based-dev.patch
> diff --git a/recipes-kernel/linux/linux-yocto_5.14.bbappend b/recipes-kernel/linux/linux-yocto_5.14.bbappend
> new file mode 100644
> index 0000000..5eaa604
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-yocto_5.14.bbappend
> @@ -0,0 +1,11 @@
> +FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
> +
> +# Fix Ethernet on 5.14 until 5.14.11 (included) for RK3399 MAC controller
> +# Conditional patching required because Honister 3.4 has linux-yocto
> +# v5.14.9 and Honister 3.4.1 will have at least linux-yocto v5.14.14.
> +python __anonymous() {
> +    kver = d.getVar('LINUX_VERSION') or ''
> +    if bb.utils.is_semver(kver) \
> +      and bb.utils.vercmp_string(kver, '5.14.11') <= 0:
> +        d.appendVar('SRC_URI', ' file://5.14-rk3399-mac-fix.scc')
> +}
> --
> 2.30.2
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#55345): https://lists.yoctoproject.org/g/yocto/message/55345
> Mute This Topic: https://lists.yoctoproject.org/mt/87097671/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

