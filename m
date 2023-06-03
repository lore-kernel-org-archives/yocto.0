Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E1D8C77B7A
	for <webhook@archiver.kernel.org>; Sat,  3 Jun 2023 13:26:15 +0000 (UTC)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
 by mx.groups.io with SMTP id smtpd.web10.11783.1685798773018093190
 for <yocto@lists.yoctoproject.org>;
 Sat, 03 Jun 2023 06:26:13 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=Z5AnlY45;
 spf=pass (domain: gmail.com, ip: 209.85.208.179, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2b1bf74e080so2810431fa.1
        for <yocto@lists.yoctoproject.org>; Sat, 03 Jun 2023 06:26:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685798771; x=1688390771;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=AeIIo7I50Dgocwu8Xb7AmqAJl18bmEk1b8l9DwIQF94=;
        b=Z5AnlY45GXhqOUjxN3UPgoPSPMuvK1yHsF8kLsCozSWOIemuVytLdKQOwdJDuVPMhc
         kpJYaHaQmDetLOsdeKICwBOB/Df//qTUe8XLIhvHGvgogt6h0U4wcU/4N+PDQpYaht6L
         4Qh7dlUyYLYG3lwTz5oroHoZku4qWuBCwbWpoWToc6wwX0CAX+og5pcFOJXWHxHlhrm4
         LwTw6AznxgsiIjGufMPwpjXI+lwCcHOLN4vQO/Rmd3sj7oAk7CWGPf9bgpf5U8cCI88k
         RoE23vE4VkC7jP2BrbY4gh30Ex6ywiHcmwnvZvZXvAeeK/GjHqvA3qNmLOkfgFhuO0bn
         aLSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685798771; x=1688390771;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AeIIo7I50Dgocwu8Xb7AmqAJl18bmEk1b8l9DwIQF94=;
        b=j/fnIiX3WpEMCI8oHUGz7FG9RhYo4Xrdu7ZfXpD61sQGMJcyJTq/KWAy0kHA/m9ZCW
         pscFbKZipjcZAIdLn2QMg2oos7SjFipp7HC8zvFLhnRPtg3bGuYiAXtdTSbCXf5bow4z
         Y8papaX7sW/3UOQS6jylzou2PjDGK6hLRSmIjT+z+9sMUM1bpFXbufZFPY8zrP5mPG26
         ZYJBORFd/q47Qsc8c2Chw0lcKHlVpkI7FV5kkq7+g4js030tcXl6CP5UlaDoDQu2Zp4+
         i6PsSlxi4NwxqvVgny+tTMaEeZGjuGRx2pdM63Ip5GafC85C1XAOZL3lbXuCa5BN7Mgl
         jfQw==
X-Gm-Message-State: AC+VfDx96CPxwz26c3PFHXHP7UAGLqAIt78xdkJ54tEfhgmMTVbcqMoO
	nZwCEm6D8HXF54zBo68lVK4meDADwlJ8HmORkTA=
X-Google-Smtp-Source: ACHHUZ5LBJv1c18UhuaCjRB5/DgKO7wRlqs9u+JRe7sM9zsrP64dsaIbKsV7ooMnh1pAFxziA5QiewFd+tCDLE6bwcQ=
X-Received: by 2002:a2e:90d0:0:b0:2aa:e7cd:69f8 with SMTP id
 o16-20020a2e90d0000000b002aae7cd69f8mr777782ljg.9.1685798770964; Sat, 03 Jun
 2023 06:26:10 -0700 (PDT)
MIME-Version: 1.0
References: <CANx9H-DsS9GObR2+KAuM2pnecvsfpaUVQ2sc3h2Qzb9MWtDeYw@mail.gmail.com>
In-Reply-To: <CANx9H-DsS9GObR2+KAuM2pnecvsfpaUVQ2sc3h2Qzb9MWtDeYw@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sat, 3 Jun 2023 15:25:59 +0200
Message-ID: <CANNYZj9JUKG4dfYPrg6DZuGduCnwmwLMXx8+C32wFvMKvK5Zvw@mail.gmail.com>
Subject: Re: [auto-upgrade-helper] Should AUH send patches in-line instead of
 as attachments?
To: Tim Orling <ticotimo@gmail.com>
Cc: "Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 03 Jun 2023 13:26:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60170

AUH attaches not just the patch (if it was possible to produce), but
also buildhistory and build failure logs (if something failed). It
also provides a bit of explanation/context/apply-resend instructions
in the email text. We can certainly consider options, I'm just not
sure how to arrange all that if patches are sent directly as emails.

Note that the whole patchset is also attached as a tarball to overall
AUH status email, and both the tarballs and their content are also
available online:
https://autobuilder.yocto.io/pub/auh/

Alex

On Sat, 3 Jun 2023 at 01:49, Tim Orling <ticotimo@gmail.com> wrote:
>
> In the `b4 shazaam` workflow, you cannot consume patches from AUH emails because they are sent as attachments. This means a maintainer must first download the patch from an email or wget it from a lore.kernel.org copied url.
>
> Before I go implementing something that might be unwanted, is there a downside to sending AUH generated emails with the patches in the normal `git send-email` type approach?
>
> Regards
> --Tim

