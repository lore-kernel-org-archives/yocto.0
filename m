Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web09.10306.1619608800920204720
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Apr 2021 04:20:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=LFwYkZuj;
 spf=pass (domain: burtonini.com, ip: 209.85.221.42, mailfrom: ross@burtonini.com)
Received: by mail-wr1-f42.google.com with SMTP id t18so5024162wry.1
        for <yocto@lists.yoctoproject.org>; Wed, 28 Apr 2021 04:20:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=y4OKzr0O18NeMRbLoHx72N+fz2YIkOqQpugMlLRuHy0=;
        b=LFwYkZujvju9FvIyNoVXdHIyz9fJy6XTQzOk2v/9MrAfJjij7lWCkWhdAXgGoGKkL+
         6RKahAPeCAaWQ4N3aYxv2YbRpOR0wvNaLd1FYt3Hze2WYiiYUuDP9nwKXRKJKc97gQJA
         mVNHfDTRVM/pmIqxbreQUgmRUbJSWHdM/u1r10VNRshHKld0O0ln6vWd9CDwZwb+sOal
         DfAuOOgrlVJNXjfLW/iqqn3MbCY9Si5tpZjcTkJ0mbz7VHY1fDzOXmJffH4t35iePTRy
         6gXZX0nKGMwxg98XtU00OpXWjMYRUeHjZcmj67ILLmn2DjSkYqET4PD/+Azps429DiHC
         SZ2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=y4OKzr0O18NeMRbLoHx72N+fz2YIkOqQpugMlLRuHy0=;
        b=Psa/T3tKKoT2swhrDZcmDKYqLqioxcAcQBmJRrmDRnIOJShGcuPrRSqAIwydQi6gYo
         54q6phrD7QxnMK4iaK3HB55UKL7F9SUSLEVaBCnnvdkfEicf1raT4/sobNl8JcZ0VTiT
         AR8D8Ybnct8yueUJw1VQb15WHlhJ1KYJ5Lk2fNQebVilZ/sZVa5b2bwC+V2Klvjv/+sO
         aglgQ4DdJtBgMNIBJD87tHEVJK6ojbf5Eo3oGMmw14L9y/NEGVNV/+Jl1m8ThI/qUAlo
         s/cpd2AtsvGK/Dxh6O9BdpORTqbvtr6U+qRzMlEU3gGvJRcxVO9W7Dt5trTlHwcnFa/y
         SIrQ==
X-Gm-Message-State: AOAM530a7PSXfoZeBggJGOGzpKbVX8H351Ly/Bw61jNb6Ivtj99mNtH6
	1dmVDPgytmi2ScoGdnog+osZ03dkuowmwU3DelhvLw==
X-Google-Smtp-Source: ABdhPJylj2vhXcuLLPpJ03Vo6/dNPIGQtGycfePIP2cCdsqr19IhoEeJncxTIGNuf3Vrr96BvtUiI4uZnzH+b370Rv4=
X-Received: by 2002:adf:f508:: with SMTP id q8mr9916011wro.109.1619608799126;
 Wed, 28 Apr 2021 04:19:59 -0700 (PDT)
MIME-Version: 1.0
References: <77c8136227cb22a1fcaf247799f1ca70@vivaldi.net>
In-Reply-To: <77c8136227cb22a1fcaf247799f1ca70@vivaldi.net>
From: "Ross Burton" <ross@burtonini.com>
Date: Wed, 28 Apr 2021 12:19:48 +0100
Message-ID: <CAAnfSTuE9+BiAoGJ-whvfgeyigLzRUZczw0Y7dePFunJ0CSMoQ@mail.gmail.com>
Subject: Re: [yocto] Bitbake build failures?
To: jchludzinski@vivaldi.net
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Because your networking is broken in some way and you cannot fetch
from downloads.yoctoproject.org.

Outside of bitbake, try:

wget http://downloads.yoctoproject.org/releases/uninative/3.0/x86_64-nativ=
esdk-libc.tar.xz

Ross

On Tue, 27 Apr 2021 at 23:01, jchludzinski via lists.yoctoproject.org
<jchludzinski=3Dvivaldi.net@lists.yoctoproject.org> wrote:
>
> When I trying using bitbake to build openembedded Linux kernel, it dies =
with these download failures:
>
> NOTE: Fetching uninative binary shim http://downloads.yoctoproject.org/r=
eleases/uninative/3.0/x86_64-nativesdk-libc.tar.xz;sha256sum=3D5ec5a9276046=
e7eceeac749a18b175667384e1f445cd4526300a41404d985a5b (will check PREMIRRORS=
 first)
> WARNING: Failed to fetch URL http://downloads.yoctoproject.org/releases/=
uninative/3.0/x86_64-nativesdk-libc.tar.xz;sha256sum=3D5ec5a9276046e7eceeac=
749a18b175667384e1f445cd4526300a41404d985a5b, attempting MIRRORS if availab=
le
> ERROR: Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; export=
 DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1000/bus"; export SSH_AU=
TH_SOCK=3D"/run/user/1000/keyring/ssh"; export PATH=3D"/home/jski/poky/scri=
pts:/home/jski/poky/build/tmp/work/core2-64-poky-linux/defaultpkgname/1.0-r=
0/recipe-sysroot-native/usr/bin/x86_64-poky-linux:/home/jski/poky/build/tmp=
/work/core2-64-poky-linux/defaultpkgname/1.0-r0/recipe-sysroot/usr/bin/cros=
sscripts:/home/jski/poky/build/tmp/work/core2-64-poky-linux/defaultpkgname/=
1.0-r0/recipe-sysroot-native/usr/sbin:/home/jski/poky/build/tmp/work/core2-=
64-poky-linux/defaultpkgname/1.0-r0/recipe-sysroot-native/usr/bin:/home/jsk=
i/poky/build/tmp/work/core2-64-poky-linux/defaultpkgname/1.0-r0/recipe-sysr=
oot-native/sbin:/home/jski/poky/build/tmp/work/core2-64-poky-linux/defaultp=
kgname/1.0-r0/recipe-sysroot-native/bin:/home/jski/poky/bitbake/bin:/home/j=
ski/poky/build/tmp/hosttools"; export HOME=3D"/home/jski"; /usr/bin/env wge=
t -t 2 -T 30 --passive-ftp --no-check-certificate -P /home/jski/poky/build/=
downloads/uninative/5ec5a9276046e7eceeac749a18b175667384e1f445cd4526300a414=
04d985a5b 'http://downloads.yoctoproject.org/releases/uninative/3.0/x86_64-=
nativesdk-libc.tar.xz' --progress=3Ddot -v failed with exit code 4, output:
> --2021-04-27 01:49:09--  http://downloads.yoctoproject.org/releases/unin=
ative/3.0/x86_64-nativesdk-libc.tar.xz
> Resolving downloads.yoctoproject.org (downloads.yoctoproject.org)... fai=
led: Connection timed out.
> wget: unable to resolve host address =E2=80=98downloads.yoctoproject.org=
=
=E2=80=99
>
> WARNING: Disabling uninative as unable to fetch uninative tarball: Fetch=
er failure for URL: 'http://downloads.yoctoproject.org/releases/uninative/3=
.0/x86_64-nativesdk-libc.tar.xz;sha256sum=3D5ec5a9276046e7eceeac749a18b1756=
67384e1f445cd4526300a41404d985a5b'. Unable to fetch URL from any source.
> WARNING: To build your own uninative loader, please bitbake uninative-ta=
rball and set UNINATIVE_TARBALL appropriately.
>
> Why do I ALWAYS get these download failures?
>
>
>=20
>
