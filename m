Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
 by mx.groups.io with SMTP id smtpd.web12.90.1607981423934023862
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Dec 2020 13:30:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=MeUdaGHZ;
 spf=pass (domain: gmail.com, ip: 209.85.222.176, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f176.google.com with SMTP id h4so12255628qkk.4
        for <yocto@lists.yoctoproject.org>; Mon, 14 Dec 2020 13:30:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KrV2LEFOLTETpgPJxpNevNxk5dHwgg5/7blwqrTDF60=;
        b=MeUdaGHZ193CrERBs1xDoxTTpKcqixsJZpwIO11ERsbnDosQw6bURjIJJhoSi7+3OS
         Ul9fRjF8WwMaJVweZIUXoKT0eKl+62B8ALWK2NOJF8BoiYtsZC9xUiX+nMrQtbunettN
         5NgAYbQW+WrEYG+Gy2CKI5AThihIhsxnwd6FV/j+i3CgNyPJRPjxYgEkNh2ZH91hPgOh
         GEpLM9PlA/2QPYQwuIZaJPvwgFxUzEdxprBaa1HFRh98ZxhumL1KZMJe8/2p6JbvEXAo
         lm56vKmlxHktfLPkzTA6+hshkfooWow9h9kZ1IIxLMqGFj71velH50YgJEjMZd97HHzN
         bYJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KrV2LEFOLTETpgPJxpNevNxk5dHwgg5/7blwqrTDF60=;
        b=fiIMrgkO4cER9j2ASJhZlv6Jf+ejEf+dPMM+tFg3/fPK6UwEeUW5rcwpINgtsRCGvg
         GqobyAyOCCmX+3e5nUkrZ8Fm87SEIKiz8MCSF2CSNeUG1RlOAKEsa6NWxLhIljvTcioc
         yIl5WGkuKYqSFxlTt0BA4oSzY2bQ0ojZYASS6uuFFNoIzuBf6cC2eKj7ePS5mC5ojLwn
         aA+hiP0mQ97/VoidOa//xiiWoBkU7HIwDucnYBA1AGTAkNTYACvo+JwLAXAedDeseNHS
         MygFfntaW7C5oq5pvtyQw1J3ZtaGTgRkuwnwbz2wz2yk7RscA8ARoFZEPHwZ6mutEPJn
         UgiQ==
X-Gm-Message-State: AOAM532sqfU3ZVZqi40DHMkBPIRiU5CT7n5Yg+zGmXxZ0u8bJ0wPN3EU
	kiyx/Y5ClFppVN1PNKQ37T1yquWyp/L5D/lc2Gg=
X-Google-Smtp-Source: ABdhPJwhBnxXOhdVuJE0EY1ygtCP3jJlk1maeoJkecRm5mn2pA2YE6v0GvEjeOV3soNOscMOuAfNpxFDbH/oUb87Exw=
X-Received: by 2002:a37:744:: with SMTP id 65mr32118311qkh.71.1607981422922;
 Mon, 14 Dec 2020 13:30:22 -0800 (PST)
MIME-Version: 1.0
References: <C41178ED-B6CC-47B3-9404-EAD527422F82@gmail.com> <1317.1607932966528060973@lists.yoctoproject.org>
In-Reply-To: <1317.1607932966528060973@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Mon, 14 Dec 2020 13:29:56 -0800
Message-ID: <CAMKF1srcYFfwxeExY=YEXFG=mJgHMBzT7aUvG_z=LnoE9+AiJQ@mail.gmail.com>
Subject: Re: [yocto] curl_easy_perform() failed: Couldn't connect to server #linux #yocto
To: Vijay Rakesh Munganda <vijayrakeshmunganda@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, Dec 14, 2020 at 12:02 AM Vijay Rakesh Munganda
<vijayrakeshmunganda@gmail.com> wrote:
>
> Hi Khem raj,
>
> Regarding zbar, I found the video option was disabled in the .bb file, so I had changed it to --enable-video and ran the build, but the build failed at do_install. Do I Need to make change anything else?
>
> Log:
> |  /home/bl-docker/rity/bsp/tmp/hosttools/mkdir -p '/home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/zbar/0.10+gitAUTOINC+67003d2a98-r0/image/usr/bin'
> |   ./aarch64-poky-linux-libtool   --mode=install /home/bl-docker/rity/bsp/tmp/hosttools/install -c zbarcam/zbarcam '/home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/zbar/0.10+gitAUTOINC+67003d2a98-r0/image/usr/bin'
> |  /home/bl-docker/rity/bsp/tmp/hosttools/install -c -m 644 ../git/doc/man/zbarcam.1 '/home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/zbar/0.10+gitAUTOINC+67003d2a98-r0/image/usr/share/man/man1'
> | /home/bl-docker/rity/bsp/tmp/hosttools/install: cannot stat '../git/doc/man/zbarcam.1': No such file or directory
> | Makefile:2386: recipe for target 'install-man1' failed
> | make[3]: *** [install-man1] Error 1
> | make[3]: *** Waiting for unfinished jobs....
> | aarch64-poky-linux-libtool: warning: 'zbar/libzbar.la' has not been installed in '/usr/lib'
> | aarch64-poky-linux-libtool: install: /home/bl-docker/rity/bsp/tmp/hosttools/install -c zbarcam/.libs/zbarcam /home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/zbar/0.10+gitAUTOINC+67003d2a98-r0/image/usr/bin/zbarcam
> | make[3]: Leaving directory '/home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/zbar/0.10+gitAUTOINC+67003d2a98-r0/build'
> | Makefile:2850: recipe for target 'install-am' failed
> | make[2]: *** [install-am] Error 2
> | make[2]: Leaving directory '/home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/zbar/0.10+gitAUTOINC+67003d2a98-r0/build'
> | Makefile:2541: recipe for target 'install-recursive' failed
> | make[1]: *** [install-recursive] Error 1
> | make[1]: Leaving directory '/home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/zbar/0.10+gitAUTOINC+67003d2a98-r0/build'
> | Makefile:2844: recipe for target 'install' failed
> | make: *** [install] Error 2
> | WARNING: /home/bl-docker/rity/bsp/tmp/work/aarch64-poky-linux/zbar/0.10+gitAUTOINC+67003d2a98-r0/temp/run.do_install.15449:1 exit 1 from 'exit 1'
>

you might want to check if there is a way to disable
building/installing manpages, most of the times you don't need them on
embedded targets.

> Thanks & Regards,
> Vijay Rakesh.
>
> 
>
