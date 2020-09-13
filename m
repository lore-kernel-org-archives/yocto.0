Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
 by mx.groups.io with SMTP id smtpd.web12.30769.1599964107991700034
 for <yocto@lists.yoctoproject.org>;
 Sat, 12 Sep 2020 19:28:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rJzaSeQx;
 spf=pass (domain: gmail.com, ip: 209.85.166.49, mailfrom: raj.khem@gmail.com)
Received: by mail-io1-f49.google.com with SMTP id y13so15135616iow.4
        for <yocto@lists.yoctoproject.org>; Sat, 12 Sep 2020 19:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HsLueaQ++e4lFDYo7fTf6y/uMng7Qsj2GWTHasSMHnw=;
        b=rJzaSeQxojq3tazpTwz3y7l+D2LZnXc1awH8IjHOf2c72bileuxdpxf+jSgPfl1vKN
         dN8hilYu/qn3aTfRJvou6OB75RPumtATGqEs9//bbD+GNcVlzWYiSIQb8Kh+4O8cx1VE
         yfntJ1KLht9SyPg37EE6tcbt/kyTBdUZV8FNYWll4Gn5K/5ML+g6nV5RXmm3ACFjMmSE
         IeCK0USQM4VvP4/GVceIy6HIKvB7/jx9tBnRC8yzKJEgKjoNZviWQmOgSq+n4xyblJep
         Wx8ohjeYbY/wMWiqraG3nBtCgw9N9NYMT1mtnH7Bu5Nm2UEl1gYXqvzM77exXHqf775F
         wbKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HsLueaQ++e4lFDYo7fTf6y/uMng7Qsj2GWTHasSMHnw=;
        b=TaVz/hETAi/y9ZTUQDc51vPOEMx/o9S05lbTvDaphdTK1sHgWKAtI8ZLlYGW5tt3Xl
         nikb4xaSmQO4ZyILVntMnaJQOCjlds9r9dTRPCmnGsCQ3K/gyFWVEyRGA8y9vaRS9sDR
         AYkTUcHlCbXaS6V3qXxVyGxqFR1Zp0S9ZrZFDdbCtBD2rgZkCGhzoLiskDGWPGLt7OPV
         Ak2f1FTKHL/0U0uddJ5ZYtUR1ekUleRyP61WH5h7S14f0cLTbyLTP83J2am4CRHMc/76
         w0cr6uPR/33nCBWzk0CifbqinQj5bZn8ycF7jiXbqiicVdmUt/4Fm9wOFU1BYtIRTk9B
         sgdg==
X-Gm-Message-State: AOAM533v4dJOSyyQJczx5Ir4rSGFLco+AOtXluJSs0RkSGgivWuWA2zP
	4psNARh+RBLFw/hg8By4VNPuPXVvyVE5b8Ywltg=
X-Google-Smtp-Source: ABdhPJzNQxXwgbBIfG7KO4oGnMUIoz34LEoCiyRtYgrhGfgLNoYz0U28s7PhGbTUfb/bDN4UFrDyAXq5PJzNDXYCwz4=
X-Received: by 2002:a6b:bc82:: with SMTP id m124mr6980148iof.172.1599964107258;
 Sat, 12 Sep 2020 19:28:27 -0700 (PDT)
MIME-Version: 1.0
References: <S7DH.1599904684034190186.Nbaq@lists.yoctoproject.org>
In-Reply-To: <S7DH.1599904684034190186.Nbaq@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Sat, 12 Sep 2020 19:28:01 -0700
Message-ID: <CAMKF1srONm-k0z_cga9POS-RK9bfq=bMqHzUWWH155NTo7Vbxg@mail.gmail.com>
Subject: Re: [yocto] Install headers to /usr/include/
To: majid.nasiry65@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

headers should be in the devel package  ( PN-dev ) please install that
in your image

On Sat, Sep 12, 2020 at 2:58 AM <majid.nasiry65@gmail.com> wrote:
>
> Hi
> I have a recipe for a library. It install .so files correctly but headers not installed. It can install files any where except /usr/inclue/ directory.
>
> SUMMARY = "An open source library for DNP3"
> HOMEPAGE = "http://dnp3.github.io/"
> SECTION = "libs"
> DEPENDS = ""
> LICENSE = "Apache-2.0"
> LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
>
>
> SRCREV = "639edaf1a5d2d74bc04efdd9ddf165bc14a06390"
> SRC_URI = "git://github.com/dnp3/opendnp3.git;branch=release"
>
> S = "${WORKDIR}/git"
>
> EXTRA_OECMAKE += "-DNP3_TLS=ON"
>
> do_install_append(){
>     install -d ${D}${includedir}
>     cp -r ${S}/cpp/lib/include/opendnp3 ${D}${includedir}
> }
>
> FILES_${PN} += "${includedir}"
>
> inherit cmake
>
> Where is my mistake?
> Thanks.
>
>
>
> 
