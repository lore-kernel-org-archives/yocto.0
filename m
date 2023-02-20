Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB5E3C05027
	for <webhook@archiver.kernel.org>; Mon, 20 Feb 2023 12:33:59 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web10.11517.1676896436679082400
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Feb 2023 04:33:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=CUKiDVEZ;
 spf=pass (domain: gmail.com, ip: 209.85.167.53, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f53.google.com with SMTP id f18so1512575lfa.3
        for <yocto@lists.yoctoproject.org>; Mon, 20 Feb 2023 04:33:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=E/Y9ls5W3+cwkqF87UVF4k0D60F6x1Bri65el3uUoe8=;
        b=CUKiDVEZVzicDLohw1om3NNCjPiPrr9IvmHaDe7IPJ8jLX5AVPWlfa+yduganIv4dS
         bxildf22TNRhTiq1r9+V6rzSQEy4DPp0HiW1vxsXOuu8o1qATvyMAkwptlOEon2yGMcK
         tnp0ohzmyZLgYPFBolIXQ30ipeNik+XnKH2OWCfDGGA0iFpMuNORsz4VkkbKZ1qUIHpu
         HI4XdPqD7dbBnQNs1yy3GutN+nu87faebB4iEb6v+EudVBTC5TqowDPC1jzNNe45OLCm
         5Cj28cL62k33byKi5CJCVf6bbZyF7AErSkK9sWV/HGUepbRqrfqOp+1kdd3fpAPqR0Ly
         2uxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E/Y9ls5W3+cwkqF87UVF4k0D60F6x1Bri65el3uUoe8=;
        b=KbVSFK5kLK9BU4XCe0yeJnYItWZ+lit8ZtAj13Oq2t4lxsqsfeBfESAsgbgBrnWz42
         YqgWKhiJ9UM4SFEe1Pu/LYDeamAghSxSN8xUFGrmO6wVZ/zXNYCIJkw2hUq5kl03ac+q
         A3HAOl7apCqqDv4ovXjRZzL13sxmORiWdQPRMqVoooEjQDydUYGtzCOMnahUH5OPAQbw
         EFiV3jCBiRc1YIoHTkmIePmsVSdEQW7XS3aOB8KW10VDjgKoDRItOQgzLlcZdJJZ2gcv
         ygR5DyFM6DaHVDDTMDJi/Bs45ED0haOcoA2Y4JrS1d9fLFgrTSasPxzhNrQjphwuaJbM
         0MQg==
X-Gm-Message-State: AO0yUKWlivZQ18XTQ6iroC2zHplV4bSBsXgpCz7/pqriKCR8qUCL871H
	1w5qam3fLxoz1h7501dQzQkbCWN5gHAcLFZqnwg=
X-Google-Smtp-Source: AK7set9X3ZqDkqas5Xckt00glASGn6aUPKb5sDvlHk4oMNYi7aCQ/skv8LhTh//eyQANaoAjjxjGwXm2pnFLJTHcXZA=
X-Received: by 2002:ac2:544c:0:b0:4db:4604:6328 with SMTP id
 d12-20020ac2544c000000b004db46046328mr641935lfn.11.1676896434771; Mon, 20 Feb
 2023 04:33:54 -0800 (PST)
MIME-Version: 1.0
References: <6f655eb6-f8f1-f8c8-9c8f-0c600e28f2f0@amd.com>
In-Reply-To: <6f655eb6-f8f1-f8c8-9c8f-0c600e28f2f0@amd.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 20 Feb 2023 13:33:43 +0100
Message-ID: <CANNYZj8wxntD9XZxqrd5HYGkK5nKb=+VuqOUj1cGsUmE5ivWLQ@mail.gmail.com>
Subject: Re: [yocto] AlmaLinux 8.5 support in Langdale
To: Kris.Chaplin@amd.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 20 Feb 2023 12:33:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59252

Note that the list of supported host distros is set only for the poky
reference distro with a weak assignment, and not for oe-core or yocto
as a whole. If you do your own tests, and they don't show issues, you
can mark any distro as compatible, or install buildtools tarball to
insulate your build from problematic host tools (such as native gcc
compiler).

AlmaLinux in particular is a spinoff of RHEL and thus extremely
conservative within the same major version.

Alex

On Mon, 20 Feb 2023 at 12:58, Chaplin, Kris via lists.yoctoproject.org
<Kris.Chaplin=amd.com@lists.yoctoproject.org> wrote:
>
> Hello,
>
> I'm working with our team to test supported development OS for our
> AMD/Xilinx PetaLinux distribution built on top of Langdale. The official
> supported Linux distributions are Ubuntu, Fedora, AlmaLinux, Debian and
> OpenSUSE, so we regtest our flow on each of these prior to advertising
> support.
>
> However, the supported version of AlmaLinux for Langdale is 8.5, and
> this is not available for download any more
> (https://mirrors.almalinux.org/isos.html).  The earliest version is 8.6,
> with 8.7 being most current.  The 8.5 isos are stripped from the
> mirrors, so url-games dont work here either.
>
> What is the recommended verison of AlmaLinux to test against Langdale?
> Is there a plan to update the Yocto release notes to reflect this?
>
> Many thanks
> Kris
>
>
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59250): https://lists.yoctoproject.org/g/yocto/message/59250
> Mute This Topic: https://lists.yoctoproject.org/mt/97084127/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

