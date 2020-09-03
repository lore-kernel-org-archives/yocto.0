Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.9381.1599266138341892240
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Sep 2020 17:35:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=IGbnaOVF;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: marek.belisko@gmail.com)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 35FE038C1194
	for <yocto@yoctoproject.org>; Fri,  4 Sep 2020 17:35:38 -0700 (PDT)
Received: by mail-ej1-f43.google.com with SMTP id nw23so10793661ejb.4
        for <yocto@yoctoproject.org>; Fri, 04 Sep 2020 17:35:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VjQ86qbXil/IlO19XU0/oHJDHtbIlu/WPn+D/quETnE=;
        b=IGbnaOVFxa84p+1mlnFHe0Ti3BF375yf+U0Wfk1yeKHRFNI31TkNHlNlr8UTF0Y+x3
         jt4cBVEbxl4nz9L/F+i24w4RsukZFtcXVJ45jvU1Lp5kT3Ypl8ao0VGX9sxb8XKAlqeB
         pOrM+M4eyc0Y8A73KYtqfD95b9H2OakbFVG3s3gnlYqpVxR65HXqVunMGaBYx1Yc3y2f
         aRE5jFvyX9DANkuI9CL0ap5Fo9+ZSLUJCR3EHRMCHluCWKonP+2jY8VuUFQ5p2+Wjeaj
         hoLeBzj0c49w8ST406FWdOXTXfYVruxEMprglzNkGe0XmyTWBQLM1B58PWvy/WkbmMJE
         8xoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VjQ86qbXil/IlO19XU0/oHJDHtbIlu/WPn+D/quETnE=;
        b=WaR/zgr18lAugalXWl4RnCn3MxaSqO1dczvJJtpqNlbIGUH+emnDzN4BE14TQFmEl5
         Cfc7wemBJ2AMWd54pZvmDev4Yn0otKUF3yA0tPUcGUM0JvOW043EtQZ2bgOtQb8WJaaq
         I4hqc2sLcCjbdgUfNGzf6fMOSf5yDMnUakifK1D20b7vMB2Sh6wllQt9JYwAx2TRvmUj
         ZldAcFBupsX9PyTO31IABZjTlymjQV75H1Bvu0l+vmBPQUP9iwngcl9dS5Q/cOzmNFkv
         IZmvTbj22xlAVAcJT04RvVBL3q5hHi7A1GfDNChFCabwJ1a/4YWlEmlOnW6pAFCAnbAd
         zIzw==
X-Gm-Message-State: AOAM531hifCel3gAoAyj7EIlnx+UOsIBg+1l3WuOuWo0+2iOfUOARbdb
	TRtmkNh88blxqc6otTox6LFmqBTzLvIEWGbqV/k5Vu7tBBoG9g==
X-Google-Smtp-Source: ABdhPJxNK0KZRePFquU655mMLC00Un/pzxUdig3LBsptDFrVGgDrJyNc1m2KULS/QMhVVD4qoxqSlIoXWDSfoQcTEpU=
X-Received: by 2002:a17:906:b086:: with SMTP id x6mr988575ejy.204.1599120699601;
 Thu, 03 Sep 2020 01:11:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv34xDEpe=dhY2DGLfA9RHcFLVBcuESKnwAEYumfgbKE_4g@mail.gmail.com>
In-Reply-To: <CAAfyv34xDEpe=dhY2DGLfA9RHcFLVBcuESKnwAEYumfgbKE_4g@mail.gmail.com>
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Thu, 3 Sep 2020 10:11:28 +0200
Message-ID: <CAAfyv36Fa3M-tCcSzEOtvguCeWaisopH5JrycAqjUULPWo-HhA@mail.gmail.com>
Subject: overide glib-2.0 meson.cross.d
To: yocto <yocto@yoctoproject.org>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Content-Type: text/plain; charset="UTF-8"

Hello,

we're using dunfell poky release and we need to bump meson from 0.53.2
to 0.55 because of cuda cross compilation issues in 0.53.2. After bump
we start seeing build problem in glib-2.0 which was fixed in poky by
commit:

85d3e045bdec5c3649c55ea334969641382d7758 - glib-2.0: correct build
with latest meson

O overtook patch to my local meta layer but this is not simply working
cos meson.cross.d is referenced in python function. Is there a way how
I can override this file in my layer. Thanks.

BR,

marek
