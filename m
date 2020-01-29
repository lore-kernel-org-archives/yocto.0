Received: from mail-vk1-f195.google.com (mail-vk1-f195.google.com [209.85.221.195])
 by mx.groups.io with SMTP id smtpd.web10.3851.1580302420349392794
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Jan 2020 04:53:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=eHNSBl3G;
 spf=pass (domain: gmail.com, ip: 209.85.221.195, mailfrom: kent.dorfman766@gmail.com)
Received: by mail-vk1-f195.google.com with SMTP id i4so4726972vkc.3
        for <yocto@lists.yoctoproject.org>; Wed, 29 Jan 2020 04:53:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=OB7XW9wQX31dzdk5Ka70NWDH44Ot75fNpJUaFnlbp3c=;
        b=eHNSBl3G+A7ezdCKw6pMnsWh+u2EmoI2GQBZqrzgf9yI2tIvwa4Zo1XjKHTUSy0WmU
         PCFjxyq6rxQ394g/KHfKumrnk9v46LbqZQhPpFeyeHe2Qo7xb9ilWRLbhVxULyo/Rd4j
         nA31RgApcLYSCfaIwgfdG+YVTd7oewVni1LBPVu4GCiQzmEkca3Dg0SlX50Lkz5ug+Yx
         m7iMPbyh4JRdlqtXtWdI9GPt5ZVglYYsx8bY3i/7IRiKAjKUu8gUqX6/ikAqy/K44aBF
         +sTa1quNirzYtKqTwxTPm1LBDe8B/jKu8F5CLSUxq96pjlgn5E32kY4qOR61+oytTnFk
         QkxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=OB7XW9wQX31dzdk5Ka70NWDH44Ot75fNpJUaFnlbp3c=;
        b=CdeTZa4DpRCl6O5hYzr2pu6eFPp1a61iKScfJDvW8PFGcS+e2vFsgDAgtkfdHNY4m1
         3K/SCvcjn0UdiFZb7NanDdgWlS19Dx6mtUsqlvuKu43cPu3EJn9HzHg1sEJvNDuN7hUP
         xIb3TTeOwJKgmqNRGTfTctT8UJiTaMt4Y4elQG0Fah5Qc+0KrJ2aK9yhUE985BFHsUE+
         KuJM2w/Dyh6n7qmClNmKiKIey/67D+wfruvlkuve5a4p4KIRWBmNs0M7Qq58O1nW8/Vs
         4iCCeWuQZQ5t46m/aP78Y/XcVtLl/LOn36Xj0x4ei5qARvwW3Y9rvbL6oMv5DtRIMHwm
         dHPQ==
X-Gm-Message-State: APjAAAXGrg1cmkmsEzAnV6BCYB81itToxV4RDAi+iYI+f6EPGS/nHOmS
	G6INOYk6ytMadk4gk+51Wai1AsVXl7INNvHNvTw=
X-Google-Smtp-Source: APXvYqznUC8E/QzfmQD4QcYKjwkW+i2jhca2wG5SPg3ypb0OepbG/C52omIxWl5A3pf8c4r/bETZH3ymE9XipreilWA=
X-Received: by 2002:a1f:e784:: with SMTP id e126mr16874653vkh.102.1580302419192;
 Wed, 29 Jan 2020 04:53:39 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ab0:4186:0:0:0:0:0 with HTTP; Wed, 29 Jan 2020 04:53:38
 -0800 (PST)
In-Reply-To: <6c10cbb5-f8df-4c8a-c8eb-e14d29b75599@ibeeto.com>
References: <CAK4PFCXXZS3ZbU8PWXUX2b_Pw661SVfj8dO0CQ-GjNM3Zo+k=A@mail.gmail.com>
 <6c10cbb5-f8df-4c8a-c8eb-e14d29b75599@ibeeto.com>
From: "Kent Dorfman" <kent.dorfman766@gmail.com>
Date: Wed, 29 Jan 2020 07:53:38 -0500
Message-ID: <CAK4PFCXsnem2CnNsHrFJmXDE4LeyU6xt8mBRzV0HiLCqivZPOw@mail.gmail.com>
Subject: Re: [yocto] permanently supercede kernel config with one of my own creation
To: Rudolf J Streif <rudolf.streif@ibeeto.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I'd prefer to not go that route.    It's a modified "vendor supplied"
kernel from an internal tarball source, and for IA/QA reasons we're
NOT going to refer to any external GIT repos.

Can someone tell me how to just replace the config in an existing
recipe and make it permanent without creating/replacing the whole
package?

I'ts a single file that has to be inserted/used at the correct point
in the build.  I'd say it's not rocket science but that's exactly what
it is for. LOL

On 1/28/20, Rudolf J Streif <rudolf.streif@ibeeto.com> wrote:
> Hi Kent,
>
> Create your own kernel recipe and provide a defconfig for it:
>
> SRC_URI +=3D "file://defconfig"
>
> For example to build a bleeding kernel directly from Linus' repo:
>
>>>>>>
> DESCRIPTION =3D "Linux Kernel from kernel.org Git Repository"
> SECTION =3D "kernel"
>
> LICENSE =3D "GPLv2"
>
> require recipes-kernel/linux/linux-yocto.inc
>
> LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dd7810fab7487fb0aad327b76f1be7=
cd7"
>
> LINUX_VERSION ?=3D "5.5"
>
> LINUX_VERSION_EXTENSION ?=3D "-mykernel"
>
> PV =3D "${LINUX_VERSION}+git${SRCPV}"
>
> SRC_URI =3D
> =E2=80=9Cgit://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.gi=
t;protocol=3Dgit;nocheckout=3D1"
>
> SRC_URI +=3D "file://defconfig"
>
> SRCREV =3D "d5226fa6dbae0569ee43ecfc08bdcd6770fc4755"
>
> COMPATIBLE_MACHINE =3D "qemux86|qemux86-64"
> <<<<<
>
> :rjs
>
> On 1/28/20 7:15 PM, Kent Dorfman wrote:
>> I have a yocto generated sdk that includes a customized kernel.  I do
>> NOT want to play with incremental config files.  What I want is to
>> insert a .config file of my own choosing (generated outside of yocto)
>> into the kernel build, have it use only my .config, and then have that
>> .config remain as the persistent authoritative config as part of the
>> yocto layer.
>>
>> I have tried a variety of different approaches:
>> * using devtool, then loading my .config into the expanded source, but
>> "devtool finish" throws out my changes!
>>
>> * doing "bitbake menuconfig", can build a kernel using my config, but
>> it doesn't stay persistent in yocto
>>
>> * doing elaborate sort/merges on the yocto .config and my prefered
>> one...undefined behaviour
>>
>> and the build always seems to revert to either the original yocto
>> config, or a kludge of my options with a bunch of defaults I did not
>> specify.
>>
>> How can I take my existing .config and force yocto to use it, and it
>> only, forevermore?
>>
>>=20
>
> --
> -----
> Rudolf J Streif
> CEO/CTO ibeeto
> +1.855.442.3386 x700
>
>
