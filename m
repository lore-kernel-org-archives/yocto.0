Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
 by mx.groups.io with SMTP id smtpd.web12.7040.1595919694532436174
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jul 2020 00:01:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20150623.gappssmtp.com header.s=20150623 header.b=I+1zoXkF;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.208.180, mailfrom: jester@theyoctojester.info)
Received: by mail-lj1-f180.google.com with SMTP id t6so7006174ljk.9
        for <yocto@lists.yoctoproject.org>; Tue, 28 Jul 2020 00:01:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=x6r+DWR9TilBEEah/0s/RTqnA5UtHoBNfjM3Qf33J9E=;
        b=I+1zoXkFVmKgfNpbGeCOqw8UXkClDYUv4i6RaO6nFir/4Jxwd1+LkslHoEqcXm4KVI
         F5+s3fiu5ZDZi8NfXKzfkK+XoRSPWjzWAUp/p9/NEExt+QjAIJL8uu3Dr73wjpza+dEQ
         +4X3cj8/l8YAsKPIvqf/KaWbBcRPMSUG6dIM7EarvnctTm0NCYFyOqyTORbXcSNX7y53
         B9XarM4G4/OJUaAUgWhgqhSl9EjqTpp4FXELzuu9y5CHgpM8T5VGDn+iYs7zEJuc7Qql
         AR+1In8QOYbygN8JIaLvCEtCSESp4HXv4Y6f6yS5Y9UgjVHnsowBdATUq0dlkHUn8L6G
         DAsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=x6r+DWR9TilBEEah/0s/RTqnA5UtHoBNfjM3Qf33J9E=;
        b=o2h7QijX+bv/pcBdHk6/K8fdpPVYisD8ZxwmKUnC1Wzbt8Ij7Gp2Ku9IUR91due/9t
         5JtxLMXjY5S/y4rpfvl1VHttQ0pd5TGXwa5gYWv+HhNYe9IGc46ToCr7k++Fh3dn/2XL
         2Q3qHgk8AK8jqqIa1KU39FOP0ij7ycb4y4Qx9Bmv4O+Ar9+Oa/pTmcoIyx33Rt8aJ32i
         U6i8hmBo99Z7xMp2MmvOTzm7TCkZ0lPwy1pgN9Eok3FFDB2K26589JYHE+OpJtZzUxz4
         AfWkWj3LuRWEhDavmnNJEkr57Hp1jAG5R/bfNzQfl52KfJPo4Ki4/AmdC0P86ehW/X3d
         /J9Q==
X-Gm-Message-State: AOAM5336bii7Lnn70dU4fVBwXGQ7i/x+IyE76ncBSfkXdflvaAYBPaLr
	sc5S1HRLTlrkUXw+06wbpon++AHuibjH5WGH1yT/AQ==
X-Google-Smtp-Source: ABdhPJzvzikJua6y9c/EnZjVCnmQC1S1+VG9n1rXeLkZStyxTE3OlZEEnG6WQ07FbqoCIrdg+MsGNnZm3w3vXSvk8aM=
X-Received: by 2002:a05:651c:30c:: with SMTP id a12mr11424779ljp.410.1595919692665;
 Tue, 28 Jul 2020 00:01:32 -0700 (PDT)
MIME-Version: 1.0
References: <qEDV.1595912993747746816.6I57@lists.yoctoproject.org>
In-Reply-To: <qEDV.1595912993747746816.6I57@lists.yoctoproject.org>
From: "Josef Holzmayr-Khosh Amoz" <jester@theyoctojester.info>
Date: Tue, 28 Jul 2020 09:01:05 +0200
Message-ID: <CAEt6NwqpzpaUnhfcDcvSvOnwOqWZNxWFNAap=jdEFF7_xYci4Q@mail.gmail.com>
Subject: Re: [yocto] #toolchain #yocto #devtool #linux
To: andymishra97@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Howdy!

Am Di., 28. Juli 2020 um 07:09 Uhr schrieb <andymishra97@gmail.com>:
>
> Hi,
> I am trying to build a yocto demo-coreip-cli image for my custom RISC-V S=
OC which only supports imafd instructions. For the compilation of cross too=
lchain that is used by Bitbake, I tried changing cross-binutils.inc recipe =
and cross-gcc.inc recipe in openembedded-core layer by including =E2=80=9C=
=E2=80=93with-arch=3Drv64imafd=E2=80=9D in "EXTRA_OECONF " variable. Is the=
re anything else I am missing or doing wrong? Thank You.

Patching the cross toolchain should be the last resort. First, you
should create a MACHINE definition that suits your needs and adjust
the tune flags there.

Greetz
