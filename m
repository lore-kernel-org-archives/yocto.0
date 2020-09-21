Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
 by mx.groups.io with SMTP id smtpd.web10.52166.1600723296109824095
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Sep 2020 14:21:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jORs7O9U;
 spf=pass (domain: gmail.com, ip: 209.85.219.49, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f49.google.com with SMTP id p15so8281901qvk.5
        for <yocto@lists.yoctoproject.org>; Mon, 21 Sep 2020 14:21:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uE5dMRON1sos1ZVoukPjRrFxlaVPEB12QhmoZsW8ZMI=;
        b=jORs7O9UwWf6ycJg/X7kuW8BpJJwqA02i192el9z57Wb8U605lf7cYtZpHVkbhT7LM
         iFt4zcKIcxuisHsqKQfphkLNLs6JhmANfQ9gvMK76dFqXTe4Wlnufk8iMxr82thESpFo
         WyuTJgMOj4c6FUXlXflss0Kf92DpaG2TQJM2mDKTFJrtscm0nSiJq16Bf2oIk8FQVjXp
         MEeFxlX19ejdkU/YYz0fn2ld53w5pquxyUGydJpcE8mJBjoNkhf5zYG0qMn1F/fPMVcH
         Pc7rEah7KjsP3PKRyIbs6Iy0s6/sJHGAMw46vJp9fLJ0wBNXlB1zpBjetWtQg1UEl2nP
         p8+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uE5dMRON1sos1ZVoukPjRrFxlaVPEB12QhmoZsW8ZMI=;
        b=K6pF5Vlmn/uoY4OtMqrBduF4azFc0uR+UMIVxdK5dA/awWby/t2hPCPmMjPK6YbSSQ
         Bop0jmTABVh+DbGi3ez8OqcNDeotSwIGHMwcW0Qh/1r25mHiKieAPpGgUdHA3rZbWSsF
         4EvM1Ej1+Ig2O2bP76FhqcCGBroyO8+ZUFcKnRCcWk3iahMfw8JJbVPqlgVg+saG/6FD
         Dgflj2/iFxan4yXRcckf0Qrr5Tygs9kj/ijOdiQccdztA9kQCFu19pFGTACyq/86lMSZ
         YO8SZ/IEezpcrSzsfv+R02/DdpC24/rrGd9eZuxUr2ltbZu6tgWoKgeGegocnwShB93W
         lb8Q==
X-Gm-Message-State: AOAM533caAmmC3MhfbDGmFJGsoMIuXPCz5jlqyQZFbA5dcIYO6N4TADP
	H2YBvtNN58RQ/rKJ6ohgZ8sYPR9c7IkJFfEYIlM=
X-Google-Smtp-Source: ABdhPJwLWHcsUht6ymYWu/vFty2nFk7OYvMRdtU+FFE9SoTupy9oOkI41iGuCoxJd8U0yCkNuEPpjiSIVb83R3Ix9i0=
X-Received: by 2002:a0c:e892:: with SMTP id b18mr2202020qvo.5.1600723295178;
 Mon, 21 Sep 2020 14:21:35 -0700 (PDT)
MIME-Version: 1.0
References: <x65f.1600674040918174696.8JJ1@lists.yoctoproject.org>
In-Reply-To: <x65f.1600674040918174696.8JJ1@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Mon, 21 Sep 2020 14:21:09 -0700
Message-ID: <CAMKF1soKZu-bmmwtBeA0-zsGJfSSS6nk=PXE=x1=wBWee8RtAQ@mail.gmail.com>
Subject: Re: [yocto] Can't found the zip.h during bitbake #yocto #devtool
To: jaymin.dabhi@vivaldi.net
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Add

DEPENDS += "libzip"

in failing recipe ( .bb) file.

On Mon, Sep 21, 2020 at 12:40 AM Jaymin Dabhi via
lists.yoctoproject.org
<jaymin.dabhi=vivaldi.net@lists.yoctoproject.org> wrote:
>
> Team,
>
> I need to include zip.h header file in one of my C code (#include <zip.h>).
> I have created a .bb file and added following command for compilation:
>
> ${CC} -Wall -I/usr/include/libxml2 -o my_code my_code.c -lxml2 -lzip -lz
>
> But, during bitbake it says:
>
> | In file included from fota_update.c:1:0:
> | fota_update.h:5:17: fatal error: zip.h: No such file or directory
> |  #include <zip.h>
> |                  ^
> | compilation terminated.
>
> Using the same compilation command, I am able to compile the code on my PC. But, can't compile with Yocto.
>
> I have tried with lzip and zip packages by adding into local.conf, but didn't work.
>
> Which zip package I need to use for including the zip.h header file?
>
> 
>
