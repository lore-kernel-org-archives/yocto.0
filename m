Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0E75C433FE
	for <webhook@archiver.kernel.org>; Thu,  6 Oct 2022 13:46:48 +0000 (UTC)
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com
 [209.85.166.48])
 by mx.groups.io with SMTP id smtpd.web12.5997.1665063998795792605
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Oct 2022 06:46:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=TK/vCrCL;
 spf=pass (domain: gmail.com, ip: 209.85.166.48,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-io1-f48.google.com with SMTP id q200so881935iod.7
        for <yocto@lists.yoctoproject.org>;
 Thu, 06 Oct 2022 06:46:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=5QgoAtq50t5rJ+85TOs36giNIE2EiaHzCfBU9R5nuEI=;
        b=TK/vCrCLY+Z7wrvX7hfcf/TJWjltAbY04/I1zl5oYRCobAmNhIPvfmXNyinnP325w1
         KsZ3+nXMsrJAqdfe3qJemnspfUXliK37jPbkDBE+r8/JUDet5HViuBO3y0ALVqxgmPou
         1beJqaMMPz+xuHdPNN1D/y8QH1Z6j+nKscVPVBpkUrUnMk5KLzkYJeKvXUg3RmW3XyiL
         vrBY4nT1JUJVDYkuZy6d6kivkzhCzgzjzC81DwIUf5vDA/isXHprIqcj977h/lyXahm5
         VjuXNAKM9Nr+xDVryhZc1EHZwVsku6JslENJC5y4m6k2Pg3URNc/OezvXQJQLudPIWYS
         ms1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=5QgoAtq50t5rJ+85TOs36giNIE2EiaHzCfBU9R5nuEI=;
        b=yM3qcogJj35bWGq24sYCYImi79bE3Ybh91Xz+f9KDUCC7DSAcTRJwQqM5VXpvvS9xB
         ljI81wUYlcTJYNxXRfeh/P/UPRFymln/q/ctrHH9uv8AokxFnDbYYNfDz1+E3535uz6P
         Uh8yuERzB2xXLWNkprmhhLQ6RbkIUYzeGMT+KXuAFotBPbZlCoHytrKkR0Nmoa8iiOdA
         F1cCPgwTtyrULGhOyfW7Atzbw29AUUgpjR0BYRApOEl2vEVOpiPpUQymbfJI0qpGLozS
         hlMFgI/zhnmS5ecvlmZwD0LFQrk9+4zeiET4MnC9/1JLu/3f44ArYNtiLxx886E+XIqE
         loDQ==
X-Gm-Message-State: ACrzQf1ObthKWdsb5EqghRR5dg9LXDRgTgYheiuLHE5ziBt7stfU80eY
	VEfkrUQXQ1TIMu9Sn1iw9y2mCd70GR8yQl1WNDc=
X-Google-Smtp-Source: 
 AMsMyM47CTmXAT0vYdp9OYd+2aKL87+Dp6oEIFTtG17eXv5BGAw5y5M/IukNc+IKO3LY1SFonbqTfQjQkEBf6zTtZWc=
X-Received: by 2002:a6b:ba55:0:b0:6b4:de08:ee55 with SMTP id
 k82-20020a6bba55000000b006b4de08ee55mr2287891iof.148.1665063998186; Thu, 06
 Oct 2022 06:46:38 -0700 (PDT)
MIME-Version: 1.0
References: <dh6q.1665062865199915963.1z69@lists.yoctoproject.org>
In-Reply-To: <dh6q.1665062865199915963.1z69@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 6 Oct 2022 15:46:26 +0200
Message-ID: 
 <CANNYZj-nXUaw9PVQ-3E1xAxLxJp6bwjw6v3UvhEUxFNMz0084Q@mail.gmail.com>
Subject: Re: [yocto] other ways of removing GPLv3 components (than meta-gplv2)
 #GPLv3
To: poberauer@yahoo.co.uk
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Oct 2022 13:46:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58274

On Thu, 6 Oct 2022 at 15:27, Peter via lists.yoctoproject.org
<poberauer=yahoo.co.uk@lists.yoctoproject.org> wrote:
> "It is over. There are no excuses left if you are still using meta-gplv2."
> -- https://twitter.com/yoctoproject/status/1552209990148145153
> "There are other ways of removing GPLv3 components from modern OE/YP builds and we'd like to focus people's attention onto those."
> -- https://git.yoctoproject.org/meta-gplv2/commit/?id=43bf0e8d5985945d19d01f94bfbbda420c4435f3
>
> Where can we find more details re the best ways of removing GPLv3 components please?
>
> Or, starting with a clean slate and adding back only what we actually need (for i.MX 8X and Qt Commercial).
>
> Have tried searching, but going round in circles, as all the results so far still point back to meta-gplv2.
> Including the "How do I":
> "If you use INCOMPATIBLE_LICENSE to exclude GPLv3 or set PREFERRED_VERSION to substitute a GPLv2 version of a GPLv3 recipe, then you must add the meta-gplv2 layer to your configuration."
> -- https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_build_an_image_without_GPLv3_Licensed_packages_.3F
>
> The context is that some of our customers require Secure Boot and Chain of Trust (in an embedded environment).
> If we keep GPLv3 components, then we need to provide "any methods, procedures, authorization keys, or other information required to install and execute modified versions of a covered work".

The suggested way nowadays is to set INCOMPATIBLE_LICENSE only for the
image that is actually going to ship in a product, then work your way
throgh specific gpl3 dependencies that get pulled in, and eliminate
them one by one - precisely how is impossible to tell beforehands, but
typical problems are bash scripts (which you need to package
separately and not include into the product, or rewrite in posix shell
and use #!/bin/sh), or optional dependencies on things like readline,
which can be switched off via PACKAGECONFIG tweaks.

Alex

