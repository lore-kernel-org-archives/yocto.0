Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04353C433F5
	for <webhook@archiver.kernel.org>; Thu, 20 Jan 2022 15:30:03 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
 [209.85.208.41])
 by mx.groups.io with SMTP id smtpd.web08.13405.1642692601375393344
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Jan 2022 07:30:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=OC7Mz3zx;
 spf=pass (domain: gmail.com, ip: 209.85.208.41,
 mailfrom: bruce.ashfield@gmail.com)
Received: by mail-ed1-f41.google.com with SMTP id l5so13194839edv.3
        for <yocto@lists.yoctoproject.org>;
 Thu, 20 Jan 2022 07:30:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZqiYE+EvhM140zbJg4xLKtrX2OntPIGdtYOVwLTFT1w=;
        b=OC7Mz3zxSGQVy0uRiOoM3p3YZkajRe9/qmVMVT0ExVAJDClByB8y7mDe99LJmZQsCI
         iOJACobHlFbiiiEohSN7la0ip+egQPUCVi9d7+4wzoeYOryjiyn/kfniMhdPBY+hCjtU
         qrLwEE4gXu8KHrxl/yh7dn2j9qJWRRYlA3GlrPyio8UpfabZBZ022gP1gQ+epvGHZYEu
         jpc8iKY38nFFXwL4iBK3yjgRFlQC/zgyExVjrrpdaUagRv6u9IIL6Y2ZpC0pfdnaXN8I
         J01fn0mmvqiEICU23r4BE8OK65GH2U0fy84eiYLA+6MNltZ12TtYykwfQtAtnXxzSIIX
         OGBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZqiYE+EvhM140zbJg4xLKtrX2OntPIGdtYOVwLTFT1w=;
        b=kQ00u+BTf/nDQ+8VcBGTXkPQqaRtKlgkyvOF8xlFOYC4kKEM7Wc9xDB6lvtZYXjbVM
         lYXF4W1UOLqJJcKwGfUC4qoHYOfkGOHvGjujMG6biYVUlHb7PjD3pSsW1rNivqhK9eq5
         pHj4RZnnJHqxDkxCSmp9gCVMwE67co4kX0hD1clnACpeJI0Sscgy6nQuf3OUGpIT5hsX
         tOI2cj11qyQFSid6kz/wniS1chuomJYRyJspzgionxlIomKA2fzB9ay0Pd4YvW+gwFOQ
         NPsJIgRUwaywQ9giACYfH+5JyXsA9zL7qd78C3/00OmvR8KgFETxFgv3B5lbwR9ZsHVY
         qAuQ==
X-Gm-Message-State: AOAM532z3hEiDgH5j5tPYt0DUjIhQHFcSR1OFRvIhuodN8LdiNPPGv/i
	WnoAzEAZC/Z7oWguVnlyxtMreQXZnpmoB6oULK4=
X-Google-Smtp-Source: 
 ABdhPJwIkB4LHwOJZ4KpdXH3hY9M0oha3s0HjvlBZi7qvnQ/oVEP6pif9UbKm4lr23oFiPW3NxGNC8muuqMT8MRaMZQ=
X-Received: by 2002:a05:6402:405:: with SMTP id
 q5mr36173300edv.62.1642692599665;
 Thu, 20 Jan 2022 07:29:59 -0800 (PST)
MIME-Version: 1.0
References: 
 <AM0PR10MB3107A3C6E22FB1D8AD02ED77995A9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: 
 <AM0PR10MB3107A3C6E22FB1D8AD02ED77995A9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Thu, 20 Jan 2022 10:29:48 -0500
Message-ID: 
 <CADkTA4MHsKjxm2koP5Ho+v85m4=tWtR6+wEMfH2AschO_y1uKg@mail.gmail.com>
Subject: Re: [yocto] bbappend conditional check for advanced metadata
 (yocto-kernel-cache)?
To: Matthias Klein <matthias.klein@optimeas.de>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Jan 2022 15:30:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55933

On Thu, Jan 20, 2022 at 6:20 AM Matthias Klein
<matthias.klein@optimeas.de> wrote:
>
> Hello,
>
>
>
> I would like to create a linux-%.bbappend file and add the following to it, for example:
>
>
>
> KERNEL_FEATURES:append = " features/overlayfs/overlayfs.scc".
>
>
>
> Works also for all kernels which use the advanced metadata. Unfortunately it leads to an error with a kernel which uses a defconfig.
>
> I would only enable the above line if the kernel uses the advanced metadata. Is this possible?
>

Presumably, the kernel recipe you are using inherits kernel-yocto, and
that whatever recipe is using a defconfig isn't also putting the
kernel-cache into the SRC_URI ? (or that kernel_features append
wouldn't be an actual error). So we can run with that assumption.

One option is to allow dangling kernel features, and you'll get a
warning from a the missing feature
(KERNEL_DANGLING_FEATURES_WARN_ONLY). But of course, you'll get a
warning .. which may or may not be a bad thing :)

Another is to make that append conditional based on something you can
test. i.e. test for kernel-cache in the SRC_URI, and if present, do
the append. Or you could test for the defconfig in the SRC_URI and
don't do the append. There may be other options for this, but without
all the details of the recipes, I can't say for sure.

I have a few variations of that theme in meta-virtualization, since
there's a broad range of kernel types supported
(https://git.yoctoproject.org/meta-virtualization/tree/recipes-kernel/linux/linux-yocto_virtualization.inc).

Cheers,

Bruce


>
>
> Many greetings,
>
> Matthias
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55930): https://lists.yoctoproject.org/g/yocto/message/55930
> Mute This Topic: https://lists.yoctoproject.org/mt/88556517/1050810
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [bruce.ashfield@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

