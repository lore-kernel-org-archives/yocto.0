Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
 by mx.groups.io with SMTP id smtpd.web10.2325.1616616681852382618
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Mar 2021 13:11:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=PipPgCx8;
 spf=pass (domain: gmail.com, ip: 209.85.219.44, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f44.google.com with SMTP id q12so12328qvc.8
        for <yocto@lists.yoctoproject.org>; Wed, 24 Mar 2021 13:11:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=zvcgcftAN/eZR8Iuz5W7RVrwXs5Z+HGVIhIAPsTNXPo=;
        b=PipPgCx8qeFks+IlWhXrnWGTSq4Zt2LqEYn+DSlRxa/01s3bupfJV2npGo/3X2f1b3
         rfnjdGo4YWfNsiK3gh1LL/lKw84Ew/9IBJhVYQsta7E90ULljNvFGPvdBljSTZQ9UluH
         kT1AgcLjiIWd0gVm8k5A29ed3xOu7wqewsegWNelNwfI6a1Y1g+vo0LqElE8GtpKVFaV
         R5A1O9qjTsL7uGuDoNgZ5EMAFgNTIDtF49/8+pnBIVyyoUKsu1MiCFAPpsmvDQPy5GVB
         k5D/gQWwq+wPIEiSbtY5ktd3T6xVVXf3bHDAG3fUp4fGBqRIj9I5nUpRgDFueWzRDi9T
         Bv7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=zvcgcftAN/eZR8Iuz5W7RVrwXs5Z+HGVIhIAPsTNXPo=;
        b=oYEgtROjnkSgv6JAQI4acBXZmrT4xAe/zGBCbWISTO3geUlUMP5OtkXwdyF570zGp/
         Wwpx0EddufK2zgJQLaSFSXaAy4GVbyy1BIx/wHOBQSlK9gsq08r/v8PGA/tVa2MvrUwx
         igNMeRz7P7+iVPDp7ZPZ6jBe619Bq0XA6mMasMYim4D5dgnfkAh7yC985n9BuCsgCqvv
         u7hcBoAMfEIyr4k/xycl1RKHIzdIEZPm9DeKd2hWGrDFEoyH4/2Mj3VdxV1bDc3XYKZN
         BXRC/7JVQ7EPXdoZFvAcH15+LKCyco/Dl4J82tKZVbg655OYvG1HfNFST2UKoqWdZDDU
         rGGA==
X-Gm-Message-State: AOAM531j5diZExOFIrGZXeDENebIbOwBY+22KPRUyw8+4XUNDRYabUBx
	PADFitOAlfughez862Df1hJRRHRDl7qRTBUtIiU=
X-Google-Smtp-Source: ABdhPJxol7lkbUoj2O1r+WHtF43eMrPiAR112BxndNwAwhEkI+7hxXu9/UALYvS6bxz4RyhmLFJ7EQMgKfwEk0uYOsg=
X-Received: by 2002:a05:6214:80d:: with SMTP id df13mr5083675qvb.55.1616616680782;
 Wed, 24 Mar 2021 13:11:20 -0700 (PDT)
MIME-Version: 1.0
References: <1bf54cb4-31c0-863c-ead4-c02431ba1c36@gmail.com> <12874.1616616288995699304@lists.yoctoproject.org>
In-Reply-To: <12874.1616616288995699304@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 24 Mar 2021 13:10:54 -0700
Message-ID: <CAMKF1srkxBEhG0uHqo218AGiLmeqSAC83kkwb4wJa98HJQ9CZA@mail.gmail.com>
Subject: Re: Private: Re: [poky] Weird Compilation issue with a c++ recipe
To: arunlee@gmail.com, Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Adding yp mailing list back.

On Wed, Mar 24, 2021 at 1:04 PM <arunlee@gmail.com> wrote:
>
> This what i see:
>
> /build$ bitbake -e rs-oem-kit-server | grep -e "CXX=3D"
> export BUILD_CXX=3D"g++ "
> export CXX=3D"aarch64-poky-linux-g++  -mcpu=3Dcortex-a72+crc+crypto -fsta=
ck-protector-strong  -D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -Werr=
or=3Dformat-security --sysroot=3D/home/aravind2/work/mevolve-yocto/mvdevice=
/build/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1.8.2.0-r0/recipe-sysr=
oot"

but the logs you posted doesn't show this as CXX, so somewhere its
being overwritten. Are there more CMakeFiles that are in play ?
