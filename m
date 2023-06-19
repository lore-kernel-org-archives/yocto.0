Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A021FEB64DA
	for <webhook@archiver.kernel.org>; Mon, 19 Jun 2023 09:41:12 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web11.3925.1687167670134438600
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Jun 2023 02:41:10 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=MdgZIQbe;
 spf=pass (domain: gmail.com, ip: 209.85.167.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-4f4b2bc1565so4022251e87.2
        for <yocto@lists.yoctoproject.org>; Mon, 19 Jun 2023 02:41:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687167668; x=1689759668;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8xE0EX8LEUepCOvJ1nzmoqWRMbPs1hs53CYy5LO1nCQ=;
        b=MdgZIQbeKArT2hn1vsC94TUUkxziCaildGJ50ffrbmBm3NWsdWkzce9WvfuMj6lHtq
         TC7DeCUEvCSg+ViLJnRIMDeDPEG1G/00TKcbjn2Oj1jq2WqS9mgsHLJ8uXRIQF6P091f
         /uU7OZINMb4VRlY55VSZMu/NmL5xvnUC7fD7OA1WU+CzSuXUTmZd5SxWk2TNt4UjBlxl
         yOLsU/H7H0IJLw1xVLQPKOXMo0Bzg5tgLuqr72H2hhYof8Z73iPJGuodvaRBYN/AE6Ir
         4guio0v7yv34aEfHa1uUvei83JC4Zc2AV079F4XRd3paE8NDSyaSSdVNszJBk+0r4HFP
         VJ+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687167668; x=1689759668;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8xE0EX8LEUepCOvJ1nzmoqWRMbPs1hs53CYy5LO1nCQ=;
        b=Gd2/UWTqkH7ZLwCxanFBtOhEzhjxs+5vSa1bEg1Wq26FHTdlS0/rnOFs16mK1yl24O
         hijAWNshohwPnyZRSu70qpLTQhbTaF7h1O6mxTi0NMqXZHk/piaZyBKUTdepEtReeCLE
         woYR2RmYunelTUADw7Ja0WZdxkvSXXSjEonOuUIQFmEPldgqQKZF6uVGfClD6GlDgcnL
         aThSopd1IbVICSgqDTirphf1hi/sv+Gy/QMqNIptVg8YcpH3gZ+ZjNikCzbgfUty3GN3
         QQ1x7m6RgNT7rJO0TLhLxEyV4tC3rv/zUNhGEw5sjW3mVMukazgql0zScotcOK4XsbLA
         FuqQ==
X-Gm-Message-State: AC+VfDyRtCm4vg6LIjlKLgZw9bMpAtpVXgeqgWU0DkGno5LaLvfizVRd
	y56FMKmipoKaIcciD94gRsKH4XLdUIFuU7XlGcNGqDm4
X-Google-Smtp-Source: ACHHUZ610/B+roZg5kfuJEfgSUX71T4gYG0rFYtm7Pun87y7C+3t77cqRD74CLzYLFPEWhkrsFyOOwXG7knVGEqUplo=
X-Received: by 2002:a19:6d12:0:b0:4f7:604f:f4c8 with SMTP id
 i18-20020a196d12000000b004f7604ff4c8mr4811299lfc.18.1687167667838; Mon, 19
 Jun 2023 02:41:07 -0700 (PDT)
MIME-Version: 1.0
References: <19697e87-997f-46ff-7017-804e1f344550@bootlin.com>
 <CANNYZj_j57XUfRbALdWSvH5wGOop9ytSk-_niEH24Go0qDCKwg@mail.gmail.com> <9942c50b161b8791a3d9b3352f6988e0aab9bf17.camel@linuxfoundation.org>
In-Reply-To: <9942c50b161b8791a3d9b3352f6988e0aab9bf17.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 19 Jun 2023 11:40:56 +0200
Message-ID: <CANNYZj_of9c3oDiSdZsHnZZOKX=-CdrZZG5xdALq6JG0Rbk-5g@mail.gmail.com>
Subject: Re: [yocto] Going on supporting Ubuntu 18.04?
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: michael.opdenacker@bootlin.com, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Jun 2023 09:41:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60341

On Mon, 19 Jun 2023 at 11:34, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> This isn't as simple as you'd think.
>
> The x86 worker will be dropped when maintenance comes around to that
> point on the autobuilder, it is in the queue.
>
> The ARM worker worries me a lot more. The 1804 worker is currently
> stable but I do worry a bit what will happen when we change the OS on
> that machine. In theory it should be fine and it could well be but that
> hardware was very painful in the past.
>
> I appreciate the idealist "lets drop it ASAP" but there are other
> things to consider. Do we want to lose Michael Halstead and myself for
> a couple of weeks trying to fix a new OS on it? Do we want to lose a
> third of our ARM build power?

But can we ask ARM folks to sort this out, and preferably well ahead
of EOL dates in the future? They had pushed heavily for ARM as the
first class build host, so both hardware and software on the AB is on
them.

Alex

