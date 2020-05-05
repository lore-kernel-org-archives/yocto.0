Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
 by mx.groups.io with SMTP id smtpd.web11.8542.1588687963171510898
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 May 2020 07:12:43 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: vading.se, ip: 209.85.219.178, mailfrom: einar@vading.se)
Received: by mail-yb1-f178.google.com with SMTP id d128so492570ybb.2
        for <yocto@lists.yoctoproject.org>; Tue, 05 May 2020 07:12:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lAZWBsYoCX8GJduiXjrnVXr6xauDht/vXqQUaNkIKsg=;
        b=b7g6viprabREKTcANT4j1mfDrEaYRuYM3UWBKzvB0sxdv2bke75dbUsPeV5zoyvjWU
         w4jvGctFrpNOnRdLYb/+aNW0yJadd8wSt4Npo/D5I6Pa6VWgI5pEv5DigQRMDzaLsmHc
         G6OSrJiTYGBvLy2rjjPxfSu4jkoQ2j6KG7qJ7nhZDIiKXsBJaFWljsBzLJ0fo+tbbi/0
         IA+U7rt0RoqOyeO8Q+IHxEnoc8nxQGp7cn32/oj2h7BSm17Qec2od8+5selg5wFeLEMT
         aN9V8hFNfceMf3zdKsbpRFf6sJ4BGnWxMyPrJuEWy/YMVgVwKF1zAJTRt96LIyH2iC+P
         uw3Q==
X-Gm-Message-State: AGi0PuZ+iFzM8r3StCZUDqnXxVhnr0Yl+apls8QXfeGQNUslFqKj8VMi
	svwvrFZbf+cF24JvDuffHfOIZBLsTI9gjmbdyXyce+u34tOUxw==
X-Google-Smtp-Source: APiQypIi7x0Tt8cvhBgFig4+WlEInk3F3IYOCQ7KpkrjJqw1P3IwUYwyqv/daOxIhxS46WBHRJSdxs9a7Ff8VnWN0mA=
X-Received: by 2002:a25:d901:: with SMTP id q1mr4921241ybg.30.1588687961659;
 Tue, 05 May 2020 07:12:41 -0700 (PDT)
MIME-Version: 1.0
References: <160BD5645542AA2A.9798@lists.yoctoproject.org>
In-Reply-To: <160BD5645542AA2A.9798@lists.yoctoproject.org>
From: "Einar Vading" <yocto-ml@vading.se>
Date: Tue, 5 May 2020 16:12:30 +0200
Message-ID: <CAB6-Vt+A+xK2NnRaBKt7kyHhiE0=WSKbTw1COY4jQMNc+p1hRA@mail.gmail.com>
Subject: Re: [yocto] Building cython based module with numpy dependency in SDK
To: yocto@lists.yoctoproject.org
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Ok, so I think I found the solution to my problem.

In distutils3.bbclass, last line, LDSHARED is set to "${CCLD}
-shared". That environment variable is not set after sourcing the
env-setup script from my SDK.

My workaround is to check for some environment vars that is set and
manually set it in my setup.py since my module will only be used on
this platform and on developer computers anyway. It feels like the
correct thing to do would be to set LDSHARED when sourcing the SDK
setup script.

BR
/Einar

On Mon, May 4, 2020 at 3:12 PM Einar Vading via lists.yoctoproject.org
<yocto-ml=vading.se@lists.yoctoproject.org> wrote:
>
> Hello!
>
> I've been trying to build a python package which has a component
> written in c that is used through cython.
>
> But when I try to build in the SDK I first got:
>
> #error "LONG_BIT definition appears wrong for platform (bad gcc/glibc config?)."
>
> I figured it had to do with
> "-I/home/einar/tmp/sdk/poky/3.0.2/sysroots/x86_64-pokysdk-linux/usr/lib/python3.7/site-packages/numpy/core/include"
> since that points to my native sysroot instead of the target sysroot.
>
> So I added:
>
> numpy_incdir = numpy.get_include()
> python_incdir = '.' # Just some harmeless directory
> try:
>     native = os.environ['OECORE_NATIVE_SYSROOT']
>     target = os.environ['OECORE_TARGET_SYSROOT']
> except KeyError:
>     pass
> else:
>     rel_path = Path(numpy_incdir).relative_to(native)
>     numpy_incdir = target / rel_path
>     python_incdir = target + '/usr/include/python3.7m/'
>
> to my setup.py and got passed the first compiler error.
>
> So now my extension module is built ok but after that there is a step
> that fails:
>
> creating build/lib.linux-x86_64-3.7
> x86_64-pokysdk-linux-gcc -shared -Wl,-O1 -L -Wl,-O1 -Wl,-O1
> -Wl,--hash-style=gnu -Wl,--as-needed -fstack-protector-strong
> -Wl,-z,relro,-z,now -O2 -pipe -g -feliminate-unused-debug-types
> build/temp.linux-x86_64-3.7/myext.o
> build/temp.linux-x86_64-3.7/extlib.o
> build/temp.linux-x86_64-3.7/myextmodule.o
> -L/home/einar/tmp/poky/3.0.2/sysroots/x86_64-pokysdk-linux/usr/lib
> -lpython3.7m -o
> build/lib.linux-x86_64-3.7/bbfit.cpython-37m-x86_64-linux-gnu.so -lm
> unable to execute 'x86_64-pokysdk-linux-gcc': No such file or directory
> error: command 'x86_64-pokysdk-linux-gcc' failed with exit status 1
>
> And I can't get passed this error and I think it's weird that it's
> trying to use x86_64-pokysdk-linux-gcc since my extension module is
> built with
>
> CC=arm-poky-linux-gnueabi-gcc  -mthumb -mfpu=neon-vfpv4
> -mfloat-abi=hard -mcpu=cortex-a7 -fstack-protector-strong
> -D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security
> --sysroot=/home/einar/tmp/poky/3.0.2/sysroots/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi
>
> Should building a cython extension in the SDK work? Any ideas why ming
> won't compile. Or why it's trying to use a compiler for host instead
> of target in the end?
>
> Best regards,
> Einar
> 
