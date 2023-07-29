Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4404CC001DC
	for <webhook@archiver.kernel.org>; Sat, 29 Jul 2023 10:34:03 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web10.51119.1690626833577635832
 for <yocto@lists.yoctoproject.org>;
 Sat, 29 Jul 2023 03:33:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=l7GkgXOM;
 spf=pass (domain: gmail.com, ip: 209.85.167.51, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-4fe2d152f62so175778e87.0
        for <yocto@lists.yoctoproject.org>; Sat, 29 Jul 2023 03:33:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690626832; x=1691231632;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nI33F/jAedSqkinOU0LzZLAdUoqPeJ5MZrjb+e89BMg=;
        b=l7GkgXOMwf5Zbb6tk2iUg/3wwgI8Mv3vPPLKLzbONr0yxEoE4E034X2J62XnUbGDv2
         R1uwxQUanjqSZDsRcNRIzLQE/t/l3I1aKxzmjw3nl92nnmDLJn8zjKQGfaBYjYWRyiQ0
         lPFG8r+MFcVIFnM482pAihNhnAqGw5YlzWWx+dgT25Uz52RF6gReQKWJwEI5dBuApgxI
         rGUYYziXZiqTvASMcHn3qQQIf1pq/RaARVR2+kR3E+ugPpFPi/Sn6SvStPRlHo3RoKJV
         i6gzoy6CJJZ3crC1JCP74KPaf5/T/x8dkB8SHNFsAdoH4sm393jtRHlgJhCGq3pmI270
         NFDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690626832; x=1691231632;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nI33F/jAedSqkinOU0LzZLAdUoqPeJ5MZrjb+e89BMg=;
        b=ZBU+2XwC/km2EYpVz2qdPNAqUozuVlo29rE1F0NWMaVHLHlTHK7xy8YoUZHY8KBmwW
         T7DSP4b39JEZ4ywR2wS3hituuL/GfMKpzquNjIfCgzMdee25sNugXktUSe7UjH3sOq6L
         iOIob+mWucllI0tolcNcBmD97JJ3tZrr4ZuX+EAtqhQV5XFa9LqcR5RsQ/U78JkhmZXR
         YSxE9SWK7wiCfe8uBW8cSPYB4EMYNxxWg+CbFe0dn0jMTJjiFfsq9AYJr2Xn0citSQUN
         QhNi08BSunpR/Gi8nnjDOXnwk+EHZf0w+pNUqXIPdJFa9zwYblkma68Y4xlKEwH1s0h4
         ay2Q==
X-Gm-Message-State: ABy/qLYFldaAPDrf0jaMRtiRVndY6yxsXQzDHbEq2mG/G4WVH1SNWHht
	5buLRBVbg3u3lllM2Szn1/etByWW3uUVqq3pKHI=
X-Google-Smtp-Source: APBJJlGNOUZ4nZWeenh/jnZX/Jf5cSYBWiA6rsL2Wu5sfUkt7yxbogv4jazievtP8V6r/lz34ugZoT80WedLBqlU3JU=
X-Received: by 2002:ac2:523c:0:b0:4fb:9a1e:125c with SMTP id
 i28-20020ac2523c000000b004fb9a1e125cmr3064279lfl.45.1690626831350; Sat, 29
 Jul 2023 03:33:51 -0700 (PDT)
MIME-Version: 1.0
References: <20230728203405.1565852-1-tom.isaacson@teknique.com> <20230728203405.1565852-2-tom.isaacson@teknique.com>
In-Reply-To: <20230728203405.1565852-2-tom.isaacson@teknique.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sat, 29 Jul 2023 12:33:39 +0200
Message-ID: <CANNYZj9NzcVNO1RbQr7VTYD6_LbefrM7eias1BvSm3OZoUiPug@mail.gmail.com>
Subject: Re: [yocto] [PATCH 1/1] Upgrade 9.3p1 to 9.3p2 for CVE-2023-38408
To: Tom Isaacson <tom.isaacson@teknique.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 29 Jul 2023 10:34:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60678

The correct mailing list for changes to meta/ is openembedded-core.
poky is a composite repository.

Alex

On Fri, 28 Jul 2023 at 23:55, Tom Isaacson <tom.isaacson@teknique.com> wrote:
>
> ---
>  .../openssh/{openssh_9.3p1.bb => openssh_9.3p2.bb}              | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>  rename meta/recipes-connectivity/openssh/{openssh_9.3p1.bb => openssh_9.3p2.bb} (98%)
>
> diff --git a/meta/recipes-connectivity/openssh/openssh_9.3p1.bb b/meta/recipes-connectivity/openssh/openssh_9.3p2.bb
> similarity index 98%
> rename from meta/recipes-connectivity/openssh/openssh_9.3p1.bb
> rename to meta/recipes-connectivity/openssh/openssh_9.3p2.bb
> index 3edc123b9a..5fb2dccdfc 100644
> --- a/meta/recipes-connectivity/openssh/openssh_9.3p1.bb
> +++ b/meta/recipes-connectivity/openssh/openssh_9.3p2.bb
> @@ -26,7 +26,7 @@ SRC_URI = "http://ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-${PV}.tar
>             file://add-test-support-for-busybox.patch \
>             file://7280401bdd77ca54be6867a154cc01e0d72612e0.patch \
>             "
> -SRC_URI[sha256sum] = "e9baba7701a76a51f3d85a62c383a3c9dcd97fa900b859bc7db114c1868af8a8"
> +SRC_URI[sha256sum] = "200ebe147f6cb3f101fd0cdf9e02442af7ddca298dffd9f456878e7ccac676e8"
>
>  CVE_STATUS[CVE-2007-2768] = "not-applicable-config: This CVE is specific to OpenSSH with the pam opie which we don't build/use here."
>
> --
> 2.34.1
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60676): https://lists.yoctoproject.org/g/yocto/message/60676
> Mute This Topic: https://lists.yoctoproject.org/mt/100419196/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

