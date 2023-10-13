Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65ABCCDB482
	for <webhook@archiver.kernel.org>; Fri, 13 Oct 2023 16:15:21 +0000 (UTC)
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
 by mx.groups.io with SMTP id smtpd.web10.43029.1697213713000959077
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Oct 2023 09:15:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=L9zJVZEQ;
 spf=pass (domain: gmail.com, ip: 209.85.167.171, mailfrom: twoerner@gmail.com)
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-3b2b1af964dso460427b6e.1
        for <yocto@lists.yoctoproject.org>; Fri, 13 Oct 2023 09:15:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697213712; x=1697818512; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XIt9Z7M6QpbJz9yPrMa/CoInEb7z3cDSysiaNFeTaTw=;
        b=L9zJVZEQSHjGf3GRAGfdGlk7KJ9Wn1TPYXr4QbKJt2qrCgDN71Ua4ZZ9yy5EiZ7lOX
         Ekm+Y/pbpN6Kmn5IYanixFbqR25wBFCmVrZ9AkPbl6T4skUHmaVXg4NcB++F4HAEmDuy
         7AJPl1tAxOi/jcHyWFO7ieZ7uQqfhL+vz/Op0R1q2eZC6wZaW5dbHHOZUZwal8/OWarF
         sgcef9lRQJHnGa8UCEsEDM+YrDIHJGlZka/yyVkUg2KP1Y4OVNZCdi/rNXCf5cox+HYi
         0rySY9jI17CnG0FzFSbK31SrTBHa8wn5e8AHLfOFRYUgzldGm7ERuKtjz1PIfV1y7uhF
         zxfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697213712; x=1697818512;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XIt9Z7M6QpbJz9yPrMa/CoInEb7z3cDSysiaNFeTaTw=;
        b=ooJRPP+zSZtSugGnVOo311b0IrXtYJxcrEmQmnvS8i5+uhrI8M6rhpyMcB56nfK3I9
         RWBFUvtN/z/o6Im3TzdWEGCmagpUPmYriZ80q+AuucLJj3NGrtqhvD6sziowrHtTqsN+
         B5QIgTO1PJ6ebFUK8gJJHf8igiI4k2sHv2+7b/Kd3cWmantm5TaRpQo3f3WAXk2tNn2k
         s3pwYfQYoeM9JQMv7VnPkagTrBygsOcjY+H8amsXoS6os8jak2g9SOmcfDx+4MoiYuec
         Bea/TmeaUDpcEnYOyMHHiNy6ROk+LVvPx4Iyf2bBD89NHZ+45NT++W/QRb8ETYUA9Nmn
         s/Dg==
X-Gm-Message-State: AOJu0YzNe9fFMwXj+4SQuebIs9xUg16xXLGbRERLInDHTVcxd9gKLq4L
	PmqQvkLoUaMj3aNwIqe0noE=
X-Google-Smtp-Source: AGHT+IH0G2JrMTwudByeJGHBA4KHwo3G+u9wS2RheToLvICYZQa6FMgbz5Le+8XI7GCpEkAZk6BLqA==
X-Received: by 2002:a05:6808:8fb:b0:3af:7ac8:c413 with SMTP id d27-20020a05680808fb00b003af7ac8c413mr27646302oic.40.1697213712173;
        Fri, 13 Oct 2023 09:15:12 -0700 (PDT)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id h28-20020ac8777c000000b0041977932fc6sm715760qtu.18.2023.10.13.09.15.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Oct 2023 09:15:11 -0700 (PDT)
Date: Fri, 13 Oct 2023 12:15:09 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Quentin Schulz <foss@0leil.net>
Cc: yocto@lists.yoctoproject.org,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>
Subject: Re: [yocto] [meta-rockchip][kirkstone][PATCH] rk3588(s): add
Message-ID: <20231013161509.GA37097@localhost>
References: <20231005090016.82398-1-foss+yocto@0leil.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231005090016.82398-1-foss+yocto@0leil.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 Oct 2023 16:15:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61340

On Thu 2023-10-05 @ 11:00:16 AM, Quentin Schulz wrote:
> From: Trevor Woerner <twoerner@gmail.com>
> 
> Unfortunately the TF-A project does not currently have support for
> the rk3588. Therefore, for the time-being, the only way to supply a
> TPL/DDR-init for the rk3588 is to use the closed-source rkbin binaries
> from Rockchip. If/when TF-A adds support for the rk3588 we can investigate
> switching.
> 
> The rk3588 comes in two variants: rk3588 and rk3588s. The "s" option is a
> stripped-down version of the rk3588. In the Linux kernel these two SoCs are
> kept separate, with the rk3588 building on the rk3588s, so we've mimicked that
> same behaviour here.
> 
> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> [backported from f8af59dd7cd7 ("rock-5b: add")]
> [removed support for rock-5b since no decent linux-yocto support in kirkstone]
> [removed KERNEL_FEATURES and kmeta since no decent linux-yocto support in kirkstone]
> [renamed INIT_FIRMWARE_DEPENDS to ATF_DEPENDS]
> [tested on downstream board with downstream kernel and u-boot]
> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> ---
>  conf/machine/include/rk3588.inc         |  6 ++++
>  conf/machine/include/rk3588s.inc        | 16 +++++++++++
>  recipes-bsp/rkbin/rockchip-rkbin_git.bb | 37 +++++++++++++++++++++++++
>  recipes-bsp/u-boot/u-boot%.bbappend     |  6 ++++
>  4 files changed, 65 insertions(+)
>  create mode 100644 conf/machine/include/rk3588.inc
>  create mode 100644 conf/machine/include/rk3588s.inc
>  create mode 100644 recipes-bsp/rkbin/rockchip-rkbin_git.bb

Applied to meta-rockchip, kirkstone branch.
Thanks!

