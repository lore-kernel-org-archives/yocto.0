Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
 by mx.groups.io with SMTP id smtpd.web10.16249.1607097793298953896
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Dec 2020 08:03:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=0dQiqcBv;
 spf=softfail (domain: sakoman.com, ip: 209.85.218.47, mailfrom: steve@sakoman.com)
Received: by mail-ej1-f47.google.com with SMTP id ce23so5623542ejb.8
        for <yocto@lists.yoctoproject.org>; Fri, 04 Dec 2020 08:03:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=y1CyD25mawFjuzKhgcDjyLbrFI5K9ndusZNsOhrZcOA=;
        b=0dQiqcBvZ+QlRFFmvRe67NJcsB3IqHDFwK5WPffCjT95p7hV9H30y5anl79awA/IQ5
         QBhRnkpau8kCe43Pu6lk1uLJEGSn6aLMnDd/y7E5pGSVeRMLwuqDlmbrcUTl5YYbUBir
         LTKiyREEPdnMuJEASxAql+zz2VnJtqdaS+mgji7RH6cZUzV5SAkA/LBLQNb6sKIytVI7
         Gv44GQyKYNIRS2Lb37wFe+wEWKWO2xc4MbQKtCGq7ozyNMxSTcaPUow6crcBlM9DH0pM
         eBm0+KBe26XG0rYf56JcISUrMa11zNXFyr7RUX3kMgBgqjEAsY9GpE+oSATBDBkvG9Nw
         x39A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=y1CyD25mawFjuzKhgcDjyLbrFI5K9ndusZNsOhrZcOA=;
        b=f1wWkIp17f843sDmNWspWtREyVGRMQ1aaHqCtxzbc6vHlYP1mHgrE3mPFzejXARDNx
         FMn/VqHRSOB6ZSM/mDxnsb4Z6BifsDaf2KPEPLDYNzRaSduNhIYJ6iiycQYa/52OF5J0
         LP6vcnyXEmTkUp6Po7lEzAtghGzNFc/+Ga/T/eBZlF9posFozV2Wlu2hQO0PiiBX1txe
         Z80IIgu9gXI4tshNHwwTgVGtkgTFvBezH2yKVzGbaMG/VJR7bz2jLKzlLOydyaMuk+8t
         XxRkgkk85InjRxzMTL3Ql0Kn+/bj68JF32W6EVYX4B+bKxHHjxlYN0wgPw3i/edhh5Zf
         Fkeg==
X-Gm-Message-State: AOAM531d6Y3CPuy4fC7G7M3Tlj5WiuwlBWt++qr4VLquJk44aUyZl/qo
	vGkjlwrzQ0k6bpu+lVWQPolvy8HGUPr+vs5YYdhWjA==
X-Google-Smtp-Source: ABdhPJwEM7SnqmoKWVdV4UKIb3gWEoXC8L6jeHsa1cCgKnRUGJkhEaKZSAn+QF0K3rnrMR1PDGz7ls1BqFXHyZXs9ac=
X-Received: by 2002:a17:906:391b:: with SMTP id f27mr7529354eje.195.1607097791777;
 Fri, 04 Dec 2020 08:03:11 -0800 (PST)
MIME-Version: 1.0
References: <PpJd.1607087318943513250.7TTi@lists.yoctoproject.org>
In-Reply-To: <PpJd.1607087318943513250.7TTi@lists.yoctoproject.org>
From: "Steve Sakoman" <steve@sakoman.com>
Date: Fri, 4 Dec 2020 06:03:00 -1000
Message-ID: <CAOSpxdZyojkcP_LVU_88muZ+rcRfccVEiJu8-nr37_AiwKM5yQ@mail.gmail.com>
Subject: Re: [yocto] perl5 do_install() fails (libperl.so: No such file or directory) #dunfell
To: frank.wolff@smile.fr
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Fri, Dec 4, 2020 at 3:08 AM <frank.wolff@smile.fr> wrote:
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

Just tried this on Ubuntu 18.04: fresh clone of dunfell branch, source
oe-init-build-env, then bitbake perl

The build was completed successfully, so I am confused too!  I do
regular autobuilder runs on debian workers and haven't seen this issue
there either.

Sorry I can't be of more help :-(

Steve

> Regards,
>
> Frank.
>
> 
>
