Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
 by mx.groups.io with SMTP id smtpd.web12.14747.1595319858934531183
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jul 2020 01:24:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=bmR/crUR;
 spf=pass (domain: gmail.com, ip: 209.85.208.49, mailfrom: martin.jansa@gmail.com)
Received: by mail-ed1-f49.google.com with SMTP id h28so14686007edz.0
        for <yocto@lists.yoctoproject.org>; Tue, 21 Jul 2020 01:24:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=t/C5NAUAnF3NbwNyXuv3nUtVCulLmoQVF1MlKmCR8f0=;
        b=bmR/crUR3kf5xbkfwjNfHHCnY/P5YtuxcZaBhzdEskTIVIns0AtzbMFNxrOItJsb2W
         bzhFB2701dP8rWDsVvRonyanh+xV6IYuaTM5SbK70bh9E/cX6hXrLepLl8KEB+hIqTe6
         9aw3cb1MdSc41TNmtokKvboeFu6Jpe1wDlTBcF0ZPsyZGMU0PVaZAb0IFSGJSvEpcRiU
         MywpyNQY8QZDR3VxN+kDnEuSWhSItUqXNxQGx9lVh2T3ZYOwBQBrti/whgfZP1kj93X/
         05mz1v2MXWU7KWyOM2Dgvw2AZIIVCqfjlugsCjppzOFYqgR41xZMUsfbUzGnPNOfIEUE
         r8Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=t/C5NAUAnF3NbwNyXuv3nUtVCulLmoQVF1MlKmCR8f0=;
        b=VwvXZRyYfuAc7NeDfnOpSioZwR11iEnGAai/fhrUbsj04hA9Z7ViW6ntLIgddZf9/1
         kWMkzhab7/QeVD+uwxore2pdpmaPF4+uc3iHxcFET3ghuvyoEyGUQN+rxQGTpMA7LiNj
         pHFJNJ0Z1AXOGxOpZbH9LTpY1p97Ch6yN78mdZpwQiD0pmMmiUZt8aDW6o/TWC6bvwb8
         LXXI8SFwfcIOn3NI9DDokfwU2aen5XW6RUMbOBownxRqU4EADuoLkj2jXKxbWF30njJ9
         gtKQw1HDz9YBnFvDLKZYuyWlPGQyBYWjFWbBl/4mXKcv/Tt1zAkxGZKoiLbb2hN1plgY
         cAEg==
X-Gm-Message-State: AOAM531kaXI9U1lkI89dSob4ud7eKd4+klsFE+2EU3SAh5K2K4cOIn0y
	mjNf3NKVIEV/g2QDu2gV/FNwPYt2Aj1VGOv5dtA=
X-Google-Smtp-Source: ABdhPJykpIKMNCF4zUwf6pqRNzXuEDjVUQ7J3qpMXL9sdAd+tNbn/WUIls4HqyeYGF0BQ5rIZXYUvxzF9OSo7c6ko/k=
X-Received: by 2002:a50:ee01:: with SMTP id g1mr24074788eds.264.1595319857498;
 Tue, 21 Jul 2020 01:24:17 -0700 (PDT)
MIME-Version: 1.0
References: <vwp4.1595315227497297738.rdls@lists.yoctoproject.org>
In-Reply-To: <vwp4.1595315227497297738.rdls@lists.yoctoproject.org>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Tue, 21 Jul 2020 10:24:06 +0200
Message-ID: <CA+chaQc3mCMf5wmbE_=hF3pN8-Znxz4ksA0L1nUF=BpEFJvzOA@mail.gmail.com>
Subject: Re: [yocto] Building of warrior branch fails when building with Ubuntu 20.04 LTS #qemu #yocto #linux
To: Bernd <bsp@swissqprint.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000068ceb805aaef5951"

--00000000000068ceb805aaef5951
Content-Type: text/plain; charset="UTF-8"

You can backport
https://git.openembedded.org/openembedded-core/commit/?h=dunfell&id=2cca75155baec8358939e2aae822e256bed4cfe0

On Tue, Jul 21, 2020 at 9:07 AM Bernd <bsp@swissqprint.com> wrote:

> Hello,
>
> we are using the warrior branch for our embedded Linux project. Since
> Ubuntu 20.04 LTS has been released we would like to switch from 18.04 to
> 20.04. However, Ubuntu 20.04 now uses glibc-2.31 where the stime function
> has been replaced. Therefore the build process of qmu-native-3.1.1.1 fails
> with the following error code:
>
> /opt/ti/tq-yocto/build/tmp/hosttools/ld.bfd: linux-user/syscall.o: in
> function `do_syscall1': |
> /opt/ti/tq-yocto/build/tmp/work/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-3.1.1.1/linux-user/syscall.c:7404:
> undefined reference to `stime'
>
> Is there a work around?
>
> Thanks a lot for your help,
> Bernd
> 
>

--00000000000068ceb805aaef5951
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You can backport=C2=A0<a href=3D"https://git.openembedded.=
org/openembedded-core/commit/?h=3Ddunfell&amp;id=3D2cca75155baec8358939e2aa=
e822e256bed4cfe0">https://git.openembedded.org/openembedded-core/commit/?h=
=3Ddunfell&amp;id=3D2cca75155baec8358939e2aae822e256bed4cfe0</a></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Ju=
l 21, 2020 at 9:07 AM Bernd &lt;<a href=3D"mailto:bsp@swissqprint.com">bsp@=
swissqprint.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><p style=3D"margin-left:30px"><span>Hello</span><span></span=
>,<br><br>we are using the warrior branch for our embedded Linux project. S=
ince Ubuntu 20.04 LTS has been released we would like to switch from 18.04 =
to 20.04. However, Ubuntu 20.04 now uses glibc-2.31 where the stime functio=
n has been replaced. Therefore the build process of qmu-native-3.1.1.1 fail=
s with the following error code:<br><br>/opt/ti/tq-yocto/build/tmp/hosttool=
s/ld.bfd: linux-user/syscall.o: in function `do_syscall1&#39;: | /opt/ti/tq=
-yocto/build/tmp/work/x86_64-linux/qemu-native/3.1.1.1-r0/qemu-3.1.1.1/linu=
x-user/syscall.c:7404: undefined reference to `stime&#39;<br><br>Is there a=
 work around?<br><br>Thanks a lot for your help,<br>Bernd</p>
<br>
</blockquote></div>

--00000000000068ceb805aaef5951--
