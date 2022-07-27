Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 205C3C04A68
	for <webhook@archiver.kernel.org>; Wed, 27 Jul 2022 14:56:51 +0000 (UTC)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com
 [209.85.208.176])
 by mx.groups.io with SMTP id smtpd.web12.20625.1658933801577449093
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Jul 2022 07:56:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=fsbtmhiT;
 spf=pass (domain: gmail.com, ip: 209.85.208.176,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f176.google.com with SMTP id q7so4665453ljp.13
        for <yocto@lists.yoctoproject.org>;
 Wed, 27 Jul 2022 07:56:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TmDpR+YYIwRadvYrRDhXoN/ocVWNt55qJUjEMFLChnM=;
        b=fsbtmhiT7WKLGb5EPfepX7uzTqA4EIv+5UbtsTLOtuByd45FawKTQbO5lIKTZcJBIy
         xR0TfGZiAoAnPY5VfLyFzFtauHivZglZmsrkIzo+nu3pIyscwXV7qwB9TCzfR7L06a7+
         h2vw6cUMwt2iWtQWjTuqwAcA+LHa271Rq0wQbvrgEXsVK7P2Lt2u6p0O1HLGqC/FOFUK
         fGUbJddvcbNf1IZNUoAknqhyR1VLX3pDX99cB2FL7x6DAIs7qM7TYPdSntl7wnnI0aqH
         vKAFO158AXs/pIDvJjblhUgqyJYA4WnDjTd9j20KxCwwr7T4AGxhLCFm4rldIepMTjFi
         DUsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TmDpR+YYIwRadvYrRDhXoN/ocVWNt55qJUjEMFLChnM=;
        b=FjyRAKbkshZcP65uU6ebVw/zP8nh3+kvhiuHk4gIxSimbvAZxMvOiG8KqRnIndLhut
         ByXk8SepyH/ih+9G+W5F+loru7JC7UTFfDg7A/myvQn4UvosV3EQsZvttFCLgbmQGsGB
         7gniRtm+3FMTjhHVXcrMh4A+OKtfFq/Z/UPMp+px9u6ojdgZHFqcLCpqU865kQW1F7rZ
         0TNb38COg1uRGXRpZbXT9b3kxTU+HLBIzvvZo6ku3gbzM/X+qrVhbEax3oVIFQf5kNjE
         rVfWjYNLGMtJ7VzFLrVL7Sz/bMC+g/dgXlczw/s91CbcFW9juxMzSOoKzTbSMJ0K2bG2
         1LHw==
X-Gm-Message-State: AJIora80ugcRJLdlCvrT8jDnaYtO77ayFxYA+PChcTt4dguWo2kziboI
	c1PNp3GLzO23I2903JMUsrksCSPi2TKmnSfo8yo=
X-Google-Smtp-Source: 
 AGRyM1tAU4ok8amKwCkf3hQtfFOuDtcSwQzpy9S/tgIYh+jBUF74U/P8Qac2xTaIQ5Svek0x0RVhiS2eK8Yh1rE1K2A=
X-Received: by 2002:a2e:721a:0:b0:25d:eaf8:6a5b with SMTP id
 n26-20020a2e721a000000b0025deaf86a5bmr7643141ljc.257.1658933799091; Wed, 27
 Jul 2022 07:56:39 -0700 (PDT)
MIME-Version: 1.0
References: <20220720084442.2940187-1-alex@linutronix.de>
 <17037D268C38CE83.21682@lists.openembedded.org>
 <CANNYZj9KKfqK8fH6HB3mLP8Vhi=U-VCMOus1uAq9kUQ7+6D74A@mail.gmail.com>
 <ee397d3552782e6fd969a497e55396ff474fee92.camel@linuxfoundation.org>
 <CANNYZj8EVF79=r4agVTa_5rfqtsU_mdBu2bD8eLv9TbD8U3fHw@mail.gmail.com>
 <0A7591F9-3D0D-49E2-A067-67485A8B3B0D@arm.com>
 <CANNYZj_kuU9GQMYwQyPjvqv47PYq=o8LXNbHzAVWdOwN7DFeNQ@mail.gmail.com>
 <7092d96e020932ff7c32a78b7862502bb0faddcc.camel@intel.com>
 <1703942CAA78C370.2228@lists.yoctoproject.org>
In-Reply-To: <1703942CAA78C370.2228@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 27 Jul 2022 16:56:27 +0200
Message-ID: 
 <CANNYZj9w-bHhHYrbo2Nmf1rh2e=Q68Vo=mU8ykB_LYz4rEt4Mw@mail.gmail.com>
Subject: Re: [yocto] [Openembedded-architecture] Let's drop x86-x32 (was Re:
 [OE-core] [PATCH 05/51] rpm: update 4.17.0 -> 4.17.1)
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: "Mittal, Anuj" <anuj.mittal@intel.com>,
 "Ross.Burton@arm.com" <Ross.Burton@arm.com>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
	"openembedded-core@lists.openembedded.org"
 <openembedded-core@lists.openembedded.org>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"openembedded-architecture@lists.openembedded.org"
 <openembedded-architecture@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Jul 2022 14:56:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57654

On Wed, 20 Jul 2022 at 17:46, Alexander Kanavin via
lists.yoctoproject.org <alex.kanavin=gmail.com@lists.yoctoproject.org>
wrote:
>
> On Wed, 20 Jul 2022 at 17:41, Mittal, Anuj <anuj.mittal@intel.com> wrote:
> > I don't know if there are any Yocto users of it who might notice.
> >
> > Instead of dropping the testing completely, may be we should switch to
> > building/testing just the core-image-minimal image on autobuilder and
> > keep at least some minimal support for now.
>
> There's actually already a patch for that :)
> https://lists.yoctoproject.org/g/yocto/message/56880

Which I just resent. Now we have confirmation from Intel that nobody
minds reducing the scope of the AB test.

Alex

