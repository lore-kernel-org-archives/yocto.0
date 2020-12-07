Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
 by mx.groups.io with SMTP id smtpd.web09.152.1607303897267555357
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Dec 2020 17:18:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@nathanrossi.com header.s=google header.b=fkQvQIWI;
 spf=pass (domain: nathanrossi.com, ip: 209.85.167.181, mailfrom: nathan@nathanrossi.com)
Received: by mail-oi1-f181.google.com with SMTP id o25so13698221oie.5
        for <yocto@lists.yoctoproject.org>; Sun, 06 Dec 2020 17:18:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nathanrossi.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=icYJPfwBMhjnb6wJuWjTkc6V3HiVUhb0JEJUJPcP5pM=;
        b=fkQvQIWIlLUMj5YHQKROlDx04dRshfV7iHmetJKu2u65dZnp1LhzpjxzKIigNkR8RO
         C39eFm83S+wPoljakx/XMUbUaFibw6Pil5N7p/QMRga9bxLgIKUSoYWWBkXrNTbTDyWi
         18IzunhjqjC0r67GM1g4z45g31BI54iv7VNRckzzM9SsuXo5A9OsosBuHlLd3qxYFOmC
         T1d8l/t97oNCwIJClELtu4hqi4/BzhTOzzYh84kxgnalrJbNGpAGfaJU+8HkveayOVxv
         2G1eiGgM9ITq5VX+fcKyEE/3/IT5wJw/R/RjtBIysgtRASPNpJcnAhsUJHiSIICV0a+v
         7hSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=icYJPfwBMhjnb6wJuWjTkc6V3HiVUhb0JEJUJPcP5pM=;
        b=GGju3LinvhVw0QoQH7j2aYraqmLYVgl6N2lQmRyvwJRDNVHtngCTC3vOGDimIZ+X4N
         Kw+lUlz9Gc7qwE3p91zmJX2x//c1lMs6YrgV7J4Z+NjPEfUGigzr5LDWX+TWAdQx6MTm
         IkzJzDPH1rhEDA5XbArS8ViDmBE2pkr9ytDFejA6Db5leM55fjr4+Xa6sDJ2QZ2+Zlh1
         R3RseTLslcup30nIcX9/4jJigHZjKs6IfIR0DwvXSi+sJ/3aaI8lEbxq00p7X7lXfbf3
         YYnSisCx/EjDfCmtPuAxDqEpwhxPVuBjoxl+Dy2WCmQybBUpsQx6FMF3z/Vuhm2fUgxh
         rBDA==
X-Gm-Message-State: AOAM533AOcN+nT6F63fEaZ0M75b+0E72d0O1+asCWJdUQA8WnZHdk6CA
	jadNT/S7FF2d79h7m/3cfuxNULTYrxN26U1qObsn9w==
X-Google-Smtp-Source: ABdhPJwyhULqLOQsOGUGNjszX1DT13h5UEcfRDI3pKRTRx8ZNM2krcw2pK9LIHTPSTRJN5Cz/vooOJpzTb82dgFSOJg=
X-Received: by 2002:a54:4817:: with SMTP id j23mr2312194oij.158.1607303896568;
 Sun, 06 Dec 2020 17:18:16 -0800 (PST)
MIME-Version: 1.0
References: <PpJd.1607087318943513250.7TTi@lists.yoctoproject.org>
In-Reply-To: <PpJd.1607087318943513250.7TTi@lists.yoctoproject.org>
From: "Nathan Rossi" <nathan@nathanrossi.com>
Date: Mon, 7 Dec 2020 11:18:05 +1000
Message-ID: <CA+aJhH1tZ_RFf71XXg0Ht27NHLAQOksFkU3MweZxbLw5qNX1iQ@mail.gmail.com>
Subject: Re: [yocto] perl5 do_install() fails (libperl.so: No such file or directory) #dunfell
To: frank.wolff@smile.fr
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 4 Dec 2020 at 23:08, <frank.wolff@smile.fr> wrote:
>
> Hi,
>
> I've got a weird problem when trying to build perl5 (from perl_5.30.1.bb, "dunfell" branch): the do_install() fails :
>
> rm: cannot remove '/home/frwol/Sources/yocto/build/tmp/work/core2-64-poky-linux/perl/5.30.1-r0/image//usr/lib/perl5/5.30.1/*/CORE/libperl.so': No such file or directory'
>
> The thing is, there IS a 'libperl.so', which is a symlink, in a "x86_64-linux" subfolder :
>
> $ ls -la /home/frwol/Sources/yocto/build/tmp/work/core2-64-poky-linux/perl/5.30.1-r0/image//usr/lib/perl5/5.30.1/*/CORE/libperl.so
>
> lrwxrwxrwx 1 frank frank 26 2020-12-04 12:23 /home/frwol/Sources/yocto/build/tmp/work/core2-64-poky-linux/perl/5.30.1-r0/image//usr/lib/perl5/5.30.1/x86_64-linux/CORE/libperl.so -> /usr/lib/libperl.so.5.30.0
>
> And if I try to manually delete it using the same command it works :
>
> & rm /home/frwol/Sources/yocto/build/tmp/work/core2-64-poky-linux/perl/5.30.1-r0/image//usr/lib/perl5/5.30.1/*/CORE/libperl.so
> & ls -la /home/frwol/Sources/yocto/build/tmp/work/core2-64-poky-linux/perl/5.30.1-r0/image//usr/lib/perl5/5.30.1/*/CORE/libperl.so
>
> zsh: no matches found: /home/frwol/Sources/yocto/build/tmp/work/core2-64-poky-linux/perl/5.30.1-r0/image//usr/lib/perl5/5.30.1/*/CORE/libperl.so
>
> So... I'm kind of confused to tell the truth. My guess is it's related to my setup (or PEBCAK) or else everybody would have encountered this.
>
> $ uname -a
> Linux laptop-frwol 5.9.0-3-amd64 #1 SMP Debian 5.9.9-1 (2020-11-19) x86_64 GNU/Linux
>
> I've made absolutely no modification whatsoever. I've just cloned the "dunfell" branch from poky and launched a "bitbake perl".
> Thanks in advance for your help.

I hit this recently too, on master though. Same distro Debian, likely
similar package versions (testing/unstable).

Just with some preliminary testing this looks like an issue caused by
pseudo, maybe something to do with path length? as I only see the
failure when building nativesdk-perl but not target/native.

Regards,
Nathan

>
> Regards,
>
> Frank.
>
> 
>
