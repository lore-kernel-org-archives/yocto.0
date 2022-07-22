Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 47E6CC43334
	for <webhook@archiver.kernel.org>; Fri, 22 Jul 2022 16:47:57 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
 [209.85.222.173])
 by mx.groups.io with SMTP id smtpd.web10.10169.1658508469322481462
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Jul 2022 09:47:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=bCBTvShp;
 spf=pass (domain: gmail.com, ip: 209.85.222.173,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f173.google.com with SMTP id b25so4009548qka.11
        for <yocto@lists.yoctoproject.org>;
 Fri, 22 Jul 2022 09:47:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lFXebtBabhNQAjwOFawWb6pmn33zJtv0ORnVaI21LLQ=;
        b=bCBTvShpoGu48Vx2Max6kOuMOgLSvLOaPzIW2ypUV1lhLXVwZQBReVnsxirzBoKDVe
         VgZYcLhWgWoXmbilmdqoHxA6FRdmwvb9OWR5Gef8gf+1RV/kN31+Bfx0GdfJ/ZOQHxG/
         DGFQVuLuWTTgh4d7ESbplfo/gYXYjBBRJuRVjw+p2m7NV9WmEdaGSDpLoIpUk6I4NBaf
         EmH8w4Cb3WY19uUcS5cdep0chmRC6ZWoYhTH+c7O/aBkE/gXBNHCl+7WrmJrNZSq47mM
         K9X3I0XPGnx0kPSz4A5xCLfVxJ1Qlx8u0+jrQRF86JbI90J85ZgD95tMRlDmZRASq1DF
         VV7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lFXebtBabhNQAjwOFawWb6pmn33zJtv0ORnVaI21LLQ=;
        b=s7GHDkSoxAi5wPIUIQS4OScHZfakyKzo0WIiAdSHnKELumKHcpYdYthAlHPt+ofHpA
         EpqC6UI1UX/QRgHCAdLbmr2AFbwU61A3VcNzUMekk8Jh6pOpsUrZyZukE+15RCbdiWwg
         b02VsZUiTeJ8xRXWhggwjcteZ5zP7jXMp3VWPl/sc6y3wplPekoki653p3zd0kE6UTtV
         kl/NPfxO4sCVeaGf0I9Eg6eSAJPCKg/wXjD6yFjJLB6d47H0gFkhek+rWmCn2s54P3VC
         KmM+mGqCMcqs2lHVY3flp9pJrJj+Vheg83VVKrRtZ4jUOnxJpQG2K5e29Ha8LsqXOvgI
         edeA==
X-Gm-Message-State: AJIora9YAIiIXkovvZyGGWFTaCelEBR/x3fuzcwcbRAP5gaVIqdbgr3T
	XbY029JB5em4dI+gAUS6/dDv9MWcfY7tpToyk60=
X-Google-Smtp-Source: 
 AGRyM1tHapMYs30WInSG3YkSnTKBSp69In1gpHteGn3tpEaQtwX8WbWMnzEOk/fzLsi9OgjLfLaGyCGbhbG4STPXtnY=
X-Received: by 2002:a05:620a:17a3:b0:6b5:fc1e:40e1 with SMTP id
 ay35-20020a05620a17a300b006b5fc1e40e1mr617327qkb.227.1658508468303; Fri, 22
 Jul 2022 09:47:48 -0700 (PDT)
MIME-Version: 1.0
References: <20220722163510.2229149-1-jebr@google.com>
In-Reply-To: <20220722163510.2229149-1-jebr@google.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 22 Jul 2022 12:47:22 -0400
Message-ID: 
 <CAMKF1soOAEsH85zVp+QUdktbmpNiwax5A7kDinVg87=ZtObK5A@mail.gmail.com>
Subject: Re: [yocto] [meta-security][PATCH V3] meta-security: Add recipe for
 libhoth
To: John Broadbent <jebr@google.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Jul 2022 16:47:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57625

On Fri, Jul 22, 2022 at 12:35 PM John Broadbent via
lists.yoctoproject.org <jebr=google.com@lists.yoctoproject.org> wrote:
>
> From: John Edward Broadbent <jebr@google.com>
>
> Libhoth is usb protocol implementation which is required for hoth class
> devices
>
> Signed-off-by: John Edward Broadbent <jebr@google.com>
> ---
>  meta-tpm/recipes-tpm/hoth/libhoth_git.bb | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>  create mode 100644 meta-tpm/recipes-tpm/hoth/libhoth_git.bb
>
> diff --git a/meta-tpm/recipes-tpm/hoth/libhoth_git.bb b/meta-tpm/recipes-tpm/hoth/libhoth_git.bb
> new file mode 100644
> index 0000000..a3ebce7
> --- /dev/null
> +++ b/meta-tpm/recipes-tpm/hoth/libhoth_git.bb
> @@ -0,0 +1,17 @@
> +SUMMARY = "Google Hoth USB library"
> +DESCRIPTION = "Libraries and example programs for interacting with a \
> +               hoth-class root of trust."
> +HOMEPAGE = "https://github.com/google/libhoth"
> +
> +LICENSE = "Apache-2.0"
> +LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
> +
> +SRC_URI = "git://github.com/google/libhoth;protocol=https;branch=main"
> +SRCREV = "1622e8a040d21dd564fdc1cb4df5eda01688c197"

it still has the musl related issue, that I pointed out

> +
> +DEPENDS += "libusb1"
> +
> +S = "${WORKDIR}/git"
> +
> +inherit pkgconfig meson
> +
> --
> 2.37.1.359.gd136c6c3e2-goog
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#57624): https://lists.yoctoproject.org/g/yocto/message/57624
> Mute This Topic: https://lists.yoctoproject.org/mt/92551443/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

