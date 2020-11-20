Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
 by mx.groups.io with SMTP id smtpd.web10.19375.1605836863168914105
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Nov 2020 17:47:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=h7iTQfUA;
 spf=pass (domain: gmail.com, ip: 209.85.222.172, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f172.google.com with SMTP id q5so7555932qkc.12
        for <yocto@lists.yoctoproject.org>; Thu, 19 Nov 2020 17:47:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZHsZVAkR7OBOjh1g0tscshYHFRc2q+qn/L2Iv1b4PLg=;
        b=h7iTQfUArFHzALwqdrfv2X5eRC33AyFMCToo5xoqkfgp0kAlktLOJqX2ND4LYr29l5
         eBnKSe98SpM4Ajx5nT0lcriMX6FMzQjI8l7aLi2Oh9i7ex6dRPKgHOGNaFdOIw9leDU1
         l0nqF7scHqLv1g/Qlm1YiZJjM1mgbXZPJ05AIcUY2FaSc9AXn86AdQgYi4H+lMJyhjv4
         C2S+fH3lHMRr5rlXOG80jPOKINAa+xf6Ka0MjrtLxTPuWhOJWkkVt2AJKO4HxQgI3xWb
         E+P3JLKgufTYtl6wUqaGf9O3Pbajs0Y1ORz6j9ZhpP+/Ync3wg+LZaLeXj4Xxk7S/9yT
         NKtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZHsZVAkR7OBOjh1g0tscshYHFRc2q+qn/L2Iv1b4PLg=;
        b=URwKuGXiALuur5KpUzCnZTvtKrN7urkAOjZXb4FfYLmvJh2NVrNkgoP+39d99f6I9H
         sv8vb1BMzDkq4oxmB4HdmNOYQD6n6EnB0wjN8VEN9OBQDCoBrt1EX3xphsyu6jrD4/Mf
         TJX9czj/fQ5QUssDR1B423+7dEie1vZmer6XWsnMkmdzPkPqCfXD8ag9PzXTx/gZ3o4U
         tKmVgAl4lCMlXP+3meLn0N8UtkCWT+xHg0hfswPzXptiZ4zR9qwBJGKleJl2Upnbnu5Z
         XHPzrwexAqeAeRjV7F4wSEsLBb2A89In78fqg0cqkyZ7hUVw6geeCasaCDnKfS/eJraI
         JthQ==
X-Gm-Message-State: AOAM532UKEKMO/UsbnSc031UxfxpIeoYR+tYl3xHwXNPUctNkGnazkQ2
	e7GGf52w5nXmwsEo95SMaH3T5xsTB6a93naUnlo=
X-Google-Smtp-Source: ABdhPJzO3/64SowR5BTm+IAhPbLhOWQm1Km0i56NnrEOGY7+5mDz01wxHD1yGLzuS8rJpO05oRnQ3VUb4Q9nA/q6Jkw=
X-Received: by 2002:a37:6195:: with SMTP id v143mr13277323qkb.71.1605836862211;
 Thu, 19 Nov 2020 17:47:42 -0800 (PST)
MIME-Version: 1.0
References: <CAJCbrz7=qAmswe-sumk=4E0x_KyFPdRG9UouvgfxwJzyMte=sw@mail.gmail.com>
In-Reply-To: <CAJCbrz7=qAmswe-sumk=4E0x_KyFPdRG9UouvgfxwJzyMte=sw@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 19 Nov 2020 17:47:16 -0800
Message-ID: <CAMKF1so796jC3kifn8KzA_gXi61fL4MpCbTDHuHr=yrJGk=ghQ@mail.gmail.com>
Subject: Re: [yocto] yocto recipt from host ide
To: Sergey Ivanov <icegood1980@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, Nov 19, 2020 at 1:48 PM Sergey Ivanov <icegood1980@gmail.com> wrote:
>
> Hi there.
> Could anyone share a good approach/documentation/etc on how to
> properly configure and use sysroot and sdk for a specific cmake - based c++ receipt
> to be able to build it from IDE (vscode, qtcreator) on linux host i.e.
>
> 1) ide's --sysroot will be taken from
> yocto-root/build/tmp/work/aarch64-poky-linux/<my_recipe>1.0.0-r0/recipe-sysroot
> 2) compilers and cmake (i believe) will be taken from
> yocto-root/build/tmp/work/aarch64-poky-linux/<my_recipe>1.0.0-r0/recipe-sysroot-native
> 3) no mix of includes from host will be taken into account during the compilation
>
> If none of ide above could do this stuff, then please recommend your one
>
> For this moment i don't want run/debug the application right from ide, i just want to have all symbols be correctly resolved from there.
>

does this help ?
https://www.ics.com/blog/configuring-qt-creator-yocto-development

> --
> Kind regards,
> Sergey Ivanov
>
> 
>
