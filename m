Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0DE5C3DA78
	for <webhook@archiver.kernel.org>; Fri, 13 Jan 2023 17:12:16 +0000 (UTC)
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
 by mx.groups.io with SMTP id smtpd.web11.93805.1673629929580894471
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Jan 2023 09:12:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Ykdd5YtY;
 spf=pass (domain: gmail.com, ip: 209.85.167.171, mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f171.google.com with SMTP id h185so18182664oif.5
        for <yocto@lists.yoctoproject.org>; Fri, 13 Jan 2023 09:12:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yhKGKaSoVeg7GolmX6cjSqqKO8hEHagz5oCiKBJ0ohc=;
        b=Ykdd5YtYHFbgW4Lutxh8uJVqHwW/byAuUUAiVUrQSd8PbHxVdno5QlFbENcZj+sERc
         jP0tnRTcwKlGg56xevyJ0jIlNXfrK81k6RdwyrG3b1YQQSqiqrjgi3hF4ZxmE8cN6Xdg
         4KzVCRUbc1/vMHtk7z7BnAWfJbwoqvLE3kjJS+I4IBrxJq/rvVFEaziKIwiVgplDAOe0
         xfKThGU+ZHFEcWBGsM1S5h+ALJuI5Ue11tPt7PbftuTNhsVzufZxa6M+rm4wOtbtFrpA
         ItvxJvRSyGj0A+OcybeLemBVZdTRTkdwBOeY1Kv0pzzyMVSVN82ut/yak/bLeCStasGp
         6dmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yhKGKaSoVeg7GolmX6cjSqqKO8hEHagz5oCiKBJ0ohc=;
        b=JNzlByP8XKf1tYDHw6x74T10TsLAGimb8jnP6Jz9Fr4cODU0nadnp8S9tk7TZEJiGl
         eb0lfqWk1oR5tPQkby3je/7L2gQc9CnYeLgK72FlasUnD3Xu7RXWn3frRrvrQvZVxh5+
         XuW7RDaSSa/QgGLCF2Xpb+rC/b/fLAaijyupjVcNpRpHw2FwmeWyiDN8BdWKDFr4O3Pk
         IVEFx/qSevDGS7HedubaqES7APGLrTUmEHdG9uV8o096EfrgWBKJuY9nXg+7nxuR50Q+
         zfecghx7HDpvy9Ha1wcymo97ECV6e2cyfw9M1D9b74aTr0SlC40VloICght2C5tLfnRu
         ikUA==
X-Gm-Message-State: AFqh2kpvsAjFkfoG8WO85Gx3RXeIi6lwHc26BcoXi0bGa7LYe+lamxfm
	ZftlmmsYRpa/+6lRwBQt4EE7YYO1r0PsvnkO/yg=
X-Google-Smtp-Source: AMrXdXsIfFfzWS1PV8UdGxh/ZYEWOFQdukTTEn1cdfxhh6nr678NCu5Ya2LFILbfCt+ldMlUA61cdciBzDeiutjeljE=
X-Received: by 2002:a05:6808:7c1:b0:364:bd84:ca34 with SMTP id
 f1-20020a05680807c100b00364bd84ca34mr95033oij.262.1673629928669; Fri, 13 Jan
 2023 09:12:08 -0800 (PST)
MIME-Version: 1.0
References: <a91c44ce-038e-f36a-d831-59c659008b35@cybernetics.com>
In-Reply-To: <a91c44ce-038e-f36a-d831-59c659008b35@cybernetics.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 13 Jan 2023 09:11:42 -0800
Message-ID: <CAMKF1socccTJ4p+vn9CUfw5PNkb6d3dXO8pOMHsRt2+pomz8xQ@mail.gmail.com>
Subject: Re: [yocto][langdale] dropbear recipe fails to parse without pam in DISTRO_FEATURES
To: Claude Bing <cbing@cybernetics.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 Jan 2023 17:12:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58980

On Fri, Jan 13, 2023 at 6:26 AM Claude Bing <cbing@cybernetics.com> wrote:
>
> Good day everyone.
>
> We are in the process of upgrading to langdale, and I ran across a small
> problem when building dropbear. The order of external assets in SRC_URI
> seems to cause an issue when PAM is not available in DISTRO_FEATURES.
>
> ERROR:
> /home/****/yocto/poky-next/build-cyber-v/../meta/recipes-core/dropbear/dropbear_2022.82.bb:
> Unable to get checksum for dropbear SRC_URI entry
> 0007-Fix-X11-build-failure-use-DROPBEAR_PRIO_LOWDELAY.patchfile: file
> could not be found
>
> When we move the following entry to the bottom of SRC_URI in
> meta/recipes-core/dropbear/dropbear_2022.82.bb, the recipe parses
> successfully:
>
> ${@bb.utils.contains('DISTRO_FEATURES', 'pam', '${PAM_SRC_URI}', '', d)}
>
> Is this a good fix? Am I missing a larger issue?

try something like below it will remove the positional requirement.

--- a/meta/recipes-core/dropbear/dropbear_2022.83.bb
+++ b/meta/recipes-core/dropbear/dropbear_2022.83.bb
@@ -27,7 +27,8 @@ SRC_URI[sha256sum] =
"bc5a121ffbc94b5171ad5ebe01be42746d50aa797c9549a4639894a167

 PAM_SRC_URI = "file://0005-dropbear-enable-pam.patch \
                file://0006-dropbear-configuration-file.patch \
-               file://dropbear"
+               file://dropbear \
+               "

 PAM_PLUGINS = "libpam-runtime \
    pam-plugin-deny \

>
> --
> Regards,
>
> Claude Bing
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#58974): https://lists.yoctoproject.org/g/yocto/message/58974
> Mute This Topic: https://lists.yoctoproject.org/mt/96246470/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

