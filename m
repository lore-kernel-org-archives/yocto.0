Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7260FC433F5
	for <webhook@archiver.kernel.org>; Tue, 12 Oct 2021 13:12:49 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
 [209.85.208.42])
 by mx.groups.io with SMTP id smtpd.web11.13693.1634044367808757022
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Oct 2021 06:12:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=XQugdfdp;
 spf=pass (domain: gmail.com, ip: 209.85.208.42,
 mailfrom: bruce.ashfield@gmail.com)
Received: by mail-ed1-f42.google.com with SMTP id z20so80877314edc.13
        for <yocto@lists.yoctoproject.org>;
 Tue, 12 Oct 2021 06:12:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YQMYlia93g3Tu45Fsl6mssaNPG4gSSMfAFhW/F5MhxI=;
        b=XQugdfdpWruIoyVDeuNTw/hRXzvP3kJk/IfXC7pO8MFiYDFWj6lu88CnMns9S/mspC
         JfmWmglHtMF1kDmyuu9exX57a4D7nF1+Pk7B6BTBSe5dOggAeHH8LUEbHZQwHu4NOJpl
         d47FNc/OJ3D/TMbK+jdIg27u+XEZH+vd2fpQjzwGOldLtu8WRE9it3pfKWlnq+N1xb2I
         gCr+wLc+KXIpXnSfp+FTW5Fh4eWtxkYhEIUTU0+xURptHKfGZoQcf/DZMqLlVkyBdtd6
         Q3IMQ/I84idt+UIzoiIKqhCAZzim+QhS91Xc5iz6mUifckBOETAXTxOXiJNvDwpdwXwL
         c12A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YQMYlia93g3Tu45Fsl6mssaNPG4gSSMfAFhW/F5MhxI=;
        b=VTIJg+hPE2iyp3TzLdxfXKjWOMSbFcp8GlSbjaZxzHM3H8Ud8KTeAGs5JUZuv41fsR
         zvjiONlOZ4aiu4XV2ulZ9oOyqjIQ5yT0zZMaZHquwpTK92BoZAfK2iO9mkPB0mOj2SyW
         d27jVDSQ6F6E4NyxAHjghpPUCep2NShg0UIeheVleNZ2EeUDeM+eUtTw2ZCtgSeX2ma7
         ZQvqc2oHlRIDdRfHgncLLWhPGYJkdjcNr1QOj05xQvgnM3AtsvyaKUrQi1iX4cCJAFdh
         rkTM/wb7MudXAonPXOIO/zEFINtmi98k1gunukR4ayN1kbmd9VK6qfyowynQf34YaZIe
         o5Og==
X-Gm-Message-State: AOAM532LJ7MzWO6N0fklSxFlcI/YGU2kKDD2AvjDcPN230K452agY1yZ
	W7HiZBxHRMjUOavOzBPoA2DloWY534mGRdssvAE=
X-Google-Smtp-Source: 
 ABdhPJxJ1W+7XduZf6rnJzU5YiboyCR1WSjjRRQXbn/CkYxMGAdrOeHEu7jq+JOu3HJPpgo3g7KIucFysTGH1lfJWIU=
X-Received: by 2002:aa7:dc4f:: with SMTP id g15mr33697491edu.76.1634044364303;
 Tue, 12 Oct 2021 06:12:44 -0700 (PDT)
MIME-Version: 1.0
References: <71f6581d-6d01-51a8-7c58-3582d57509f9.ref@yahoo.com>
 <71f6581d-6d01-51a8-7c58-3582d57509f9@yahoo.com>
 <CADkTA4OiV40NZNYiUggSGjRQL62qW6gLbp8979ZfwY=8iR9RAg@mail.gmail.com>
 <b90c3301-ca4a-3191-3a85-6084997dc9e0@yahoo.com>
In-Reply-To: <b90c3301-ca4a-3191-3a85-6084997dc9e0@yahoo.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Tue, 12 Oct 2021 09:12:33 -0400
Message-ID: 
 <CADkTA4MCrQRkiGbbWrsgmAhYCrvZryy9ubZTtdxO-qPDG5VvLw@mail.gmail.com>
Subject: Re: [yocto] building the kernel's usbipd daemon
To: chuckkamas@yahoo.com
Cc: yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Oct 2021 13:12:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55037

On Tue, Oct 12, 2021 at 12:33 AM chuck kamas via
lists.yoctoproject.org <chuckkamas=yahoo.com@lists.yoctoproject.org>
wrote:
>
> Thanks for the quick reply. I looked at the perf recipe, and its quite involved. Is there a simpler recipie to use as a template? Perhaps one of these?
>

My intent was just to show how you'd get the source from whatever
kernel you are building,

> meta-openembedded/meta-oe/recipes-kernel/bpftool/bpftool.bb
>
> meta-openembedded/meta-oe/recipes-kernel/spidev-test/spidev-test.bb
>
> meta-openembedded/meta-oe/recipes-kernel/cpupower/cpupower.bb
>
>
> all three of these appear to be basically the same very simple bb file.
>

Assuming that you don't need to patch the sources directly, any of
those would likely work ... depending on the dependencies and options
of what tool you are building.

Bruce

>
> Chuck
>
>
> On 10/11/21 5:46 PM, Bruce Ashfield wrote:
>
> On Mon, Oct 11, 2021 at 6:16 PM chuck kamas via lists.yoctoproject.org
> <chuckkamas=yahoo.com@lists.yoctoproject.org> wrote:
>
> Hi all,
>
>
> I've googled most of the day, but to no avail. How does one compile and
> add to the image the daemon usbipd? Is there a bitbake file already for
> this? The code is part of the kernel found in the kernel tree:
>
> KERNEL_SRC_PATH/tools/usb/usbip/src
>
> and is invoked from the KERNEL_SRC_PATH/tools directory by calling
>
> make usb
>
>
> from:
> https://wiki.st.com/stm32mpu/wiki/How_to_build_Linux_kernel_user_space_tools
>
> PC $> cd <Linux_kernel_source_path>/tools
> PC $> make <tool>
>
>
> I would think that there is a preexisting recipe.
>
> There isn't one that I've ever heard of, and the layerindex
> (http://layers.openembedded.org/) confirms that nothing registered
> with it provides that recipe.
>
> So if you need it, you'd have to create a recipe .. and submit it to
> somewhere like meta-openembedded if appropriate.
>
> Have a look at the perf recipe for one of the ways we build tools out
> of the kernel source. Something similar will work in this case.
>
> Bruce
>
> thanks,
>
> Chuck
>
>
>
>
>
>
>
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55027): https://lists.yoctoproject.org/g/yocto/message/55027
> Mute This Topic: https://lists.yoctoproject.org/mt/86249103/1050810
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [bruce.ashfield@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

