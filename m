Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2D24DC433EF
	for <webhook@archiver.kernel.org>; Thu, 21 Jul 2022 22:46:22 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
 [209.85.222.175])
 by mx.groups.io with SMTP id smtpd.web12.1753.1658443577712258783
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Jul 2022 15:46:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=VuqnfYG3;
 spf=pass (domain: gmail.com, ip: 209.85.222.175,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f175.google.com with SMTP id o21so2466758qkm.10
        for <yocto@lists.yoctoproject.org>;
 Thu, 21 Jul 2022 15:46:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9ATXBWQgrzuL9Z3/SAIie7kluVqoDF0o6VHKujGNm00=;
        b=VuqnfYG3B56mJ2Fjtrg99JlER/G36shShYyec5HF6lFulIybT3emr5/f4JXXGHp+AH
         eZh7yngn4aCUPmBnYWr2IM2hGTnWBtHQPOfEUOwwFjs6ANicN3XdLgW2OVQXDlF7ITzr
         gNttWB+Rbp0xfJrxw6r1g+FeYTInVCkYMqgDBL8NcUwcO/y+cgJ5tFlzkE7XzBq1cPZt
         eBYYLXmS2SJlqo+GqTn6ORpoox4wSx2Olllhb7eeuejQWveBCpT7P2mLSCzciXukOmav
         a74/4BQDxqRQBoH5jlKzfWaTfLP+WFLWDAscrtNwtiPSl11drYJBcyRp2N6U5KzKtZHn
         MfvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9ATXBWQgrzuL9Z3/SAIie7kluVqoDF0o6VHKujGNm00=;
        b=qWbRAcbNQzsfAmRDQRLdYUozHq/81+xC8la/htDDJNRZpFeKxQdlVDjltZ9G/ChUpc
         w3AAdG5B1YKpUQJkOmtxF3AGU5HTmJArisHxYt0bhyelPT5iIMry+WV9EdiiSMtb4ZU3
         OhhfynNGVZu99gKvCoyXf001c8VtbBpewVEC6ugM8GHZ4y+T/BgdRnHXQx0ivyMoZu6x
         dd2h86tzC9p6Xfk8axsKKP1eut6Q8osUur3VWUrXPog5FWEkwVN6Mq+wwRr93hJ/joWH
         w4DNc3vI0EHX4vSa+Et8okb5hvSpqFLkh5AgTiMLP6GZ/9VJkx/XfxWdqZ2vdiZcaVkj
         nrmg==
X-Gm-Message-State: AJIora9b3JyJhYi8x5Dpp9h7ltZ3VVw0XgodXR1SDfSBstUzBMhTz0Tg
	QY/1Q89XZo1XrdC8A1tCFxhHozNiP0CktRcWiAg=
X-Google-Smtp-Source: 
 AGRyM1tTLJiY1Tuk2X55XrM+vnwXYqnOHFPlVRaj4Ftyahzq4QdY0JGH35ja49SZRvK4xE8zRZuXy8qaUxLkoeZuwq0=
X-Received: by 2002:a05:620a:17a3:b0:6b5:fc1e:40e1 with SMTP id
 ay35-20020a05620a17a300b006b5fc1e40e1mr559730qkb.227.1658443576758; Thu, 21
 Jul 2022 15:46:16 -0700 (PDT)
MIME-Version: 1.0
References: <20220721223854.2093685-1-jebr@google.com>
In-Reply-To: <20220721223854.2093685-1-jebr@google.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 21 Jul 2022 18:45:50 -0400
Message-ID: 
 <CAMKF1so+Mk7=a1-Mj+UmXv=HqqMtqh6wmKUr4axE6DGkm1fJ+g@mail.gmail.com>
Subject: Re: [yocto] [meta-security][PATCH] meta-security: Add recipe for
 libhoth
To: jebr@google.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Jul 2022 22:46:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57611

On Thu, Jul 21, 2022 at 6:39 PM jebr via lists.yoctoproject.org
<jebr=google.com@lists.yoctoproject.org> wrote:
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
> index 0000000..59f52ad
> --- /dev/null
> +++ b/meta-tpm/recipes-tpm/hoth/libhoth_git.bb
> @@ -0,0 +1,17 @@
> +SUMMARY = "Google Hoth USB library"
> +DESCRIPTION = "Libraries and example programs for interacting with a \
> +               hoth-class root of trust."
> +HOME_PAGE = https://github.com/google/libhoth
> +
> +LICENSE = "Apache-2.0"
> +LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
> +
> +SRC_URI = "git://github.com/google/libhoth;protocol=https;branch=main"
> +SRCREV = "b31307b7bf525efda0164e461fb1e0a5c302d306"
> +
> +DEPENDS += "libusb1"
> +
> +S = "${WORKDIR}/git"
> +
> +inherit pkgconfig meson

Dont we want to package the examples too ? perhaps in a ${PN}-examples
or something ?

> +
> --
> 2.37.1.359.gd136c6c3e2-goog
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#57610): https://lists.yoctoproject.org/g/yocto/message/57610
> Mute This Topic: https://lists.yoctoproject.org/mt/92537492/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

