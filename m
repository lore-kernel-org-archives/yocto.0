Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C03F2C433F5
	for <webhook@archiver.kernel.org>; Fri, 30 Sep 2022 05:24:56 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com
 [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web11.2438.1664515490593882846
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Sep 2022 22:24:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=eKuxyryT;
 spf=pass (domain: gmail.com, ip: 209.85.208.169,
 mailfrom: marek.belisko@gmail.com)
Received: by mail-lj1-f169.google.com with SMTP id b6so3647284ljr.10
        for <yocto@lists.yoctoproject.org>;
 Thu, 29 Sep 2022 22:24:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date;
        bh=hmB7bWG1Zu4lKd2Y55gosN9eQb9F17+V/RtsZ1Mm0vY=;
        b=eKuxyryTGPek7BxXHDsTn3E03Zu/UHs/87uB1U/wWAJxch9qca+GjlF77tInYMh4h9
         F0dmpvtwgettGSvMQ6Cl8Y2nWTdQFISOT4EkGHvmKcSgBqETRAd3At2HpFtQA3MX8CnA
         +uqEQdjyAMJANor960jkZzDi1h+/O3vocuY/UIGVHlNnV6X9ePSxV+kjPtzY1YqON4+D
         D2xKLJlXNai+sKRrKCqpCmwRVqu4W3LKsPeDWDaxN3HQNVxktpf2jR7fhg5wcDjtE7oO
         5LCAiVBenjEIMGAJ+mXgjX0P3TiOyenlXnYj36UIonwlHAd9nwi5j12BmutCVPdsVe11
         0nXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=hmB7bWG1Zu4lKd2Y55gosN9eQb9F17+V/RtsZ1Mm0vY=;
        b=MdJyNjN5yJtO4+qQPKgunsa/78//1UY69P3cqczJC1AQhEE7rU6NznSy12lNMkxAl0
         V9BEYBkVuTstyazRxVuznJKYgp7cCYf0YjQie/6bDfLF9k8kKGIZOiAjcoIHm6mEFD4D
         YU4IFcQq+ZiiZAhqydbmlanu4+D6sNCVqZebUT+8wrYSkgHxhBktB1ImOXzY4zspylgi
         wfxJl2wrF92BJ3c+AjKNLic5TYBP0wiGTQecBK9Z6qSHUAHU3InXQu8PWZ1ap4/Pu671
         lRz4XQOt565A+Wb5+4phxJZc17zxdarTi1YxwLOlCnqFzmGgC9LgoQ6MYCqQALPMGjtL
         1KFQ==
X-Gm-Message-State: ACrzQf1TUgHB/2B64kH9hGrFNuwcgvJVjvEnlmpoKC//S+mqS/l75BVZ
	beK4j/rotVLyUsvaXcvN3j4P3DWGg3eLO+w1yrE=
X-Google-Smtp-Source: 
 AMsMyM4djb58W/8p0QWWDeeNScPnLS/8GHWT3lHNPtfbP1K86ylyVkjSL8NwSNiKtZb0ZY2YX7gDgnBzIrU090de3jI=
X-Received: by 2002:a2e:988a:0:b0:26c:171f:1ecb with SMTP id
 b10-20020a2e988a000000b0026c171f1ecbmr2232798ljj.105.1664515488544; Thu, 29
 Sep 2022 22:24:48 -0700 (PDT)
MIME-Version: 1.0
References: <nsxC.1664479553618392952.I9qN@lists.yoctoproject.org>
In-Reply-To: <nsxC.1664479553618392952.I9qN@lists.yoctoproject.org>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Fri, 30 Sep 2022 07:24:36 +0200
Message-ID: 
 <CAAfyv34jdVfSbJ20BFcbNqwMCsjyv-Z_D8g9UFRcD4yhFS6NXQ@mail.gmail.com>
Subject: Re: [yocto] Boost and LibSocketCan Errors #bitbake
To: michaelb.miner@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 30 Sep 2022 05:24:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58227

Hi Michael,

On Thu, Sep 29, 2022 at 10:27 PM <michaelb.miner@gmail.com> wrote:
>
> Hello,
>
> I have an application that is comprised of C++ and C code modules. I have=
 two bitbake builds, prod and dev. The dev image builds 100% of the time. T=
he difference between prod and dev, dev has debug tools, prod build the mai=
n application and attempts to include it in the image. I cannot build the p=
rod image. I am getting two errors that I cannot resolve. Note that my buil=
d script works on the target hardware as well as the development Ubnuntu pl=
atform.
>
> I am using autotools, autogen.sh, configure.ac and makefile.am to build m=
y application. The files are uploaded to this question.
google link doesn't work.
>
> I have uploaded my file to my google drive here. The files are
>
> build_project.sh
> configure.ac
> autogen.sh
> makefile.am
> mainapplication_0.0.bb
> mainapplication.inc
> mainapplication-dev.bb
> myapplication.bb
>
>
> The following two errors come from boost:
>
> arm-poky-linux-gnueabi-gcc  -mthumb -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=
=3Dcortex-a7 -fstack-protector-strong  -O2 -D_FORTIFY_SOURCE=3D2 -Wformat -=
Wformat-security -Werror=3Dformat-security --sysroot=3D/home/michael/Docume=
nts/MAIN_Application/build-fb/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi=
/mainapplication/0.0-r0/recipe-sysroot -DPACKAGE_NAME=3D\"MAIN_Application\=
" -DPACKAGE_TARNAME=3D\"main_application\" -DPACKAGE_VERSION=3D\"0.0.1\" -D=
PACKAGE_STRING=3D\"MAIN_Application\ 0.0.1\" -DPACKAGE_BUGREPORT=3D\"michae=
lminer@smartrendmfg.com\" -DPACKAGE_URL=3D\"\" -DPACKAGE=3D\"main_applicati=
on\" -DVERSION=3D\"0.0.1\" -I. -I../MAIN_Application  -D_REENTRANT -D__X86_=
VERSION__ -DLINUX -I../MAIN_Application/include -I../MAIN_Application/inclu=
de/comms/CAN -I../MAIN_Application/include/comms/PLC -I../MAIN_Application/=
include/comms/UART -I../MAIN_Application/include/CML_Integration -I../MAIN_=
Application/include/config_parsing -I../MAIN_Application/include/utilities =
-I../MAIN_Application/vendor/carmedialab/SMG/trunk/ISO15118_Stack/include -=
I../MAIN_Application/vendor/carmedialab/SMG/trunk/ISO15118_Stack/sources/EV=
 -I../MAIN_Application/vendor/carmedialab/SMG/trunk/ISO15118_Stack/sources/=
EV/model/Generic -I../MAIN_Application/vendor/carmedialab/SMG/trunk/ISO1511=
8_Stack/sources/EV/net -I../MAIN_Application/vendor/carmedialab/SMG/trunk/I=
SO15118_Stack/sources/EV/state -I../MAIN_Application/vendor/carmedialab/SMG=
/trunk/ISO15118_Stack/sources/EVVisitor -I../MAIN_Application/vendor/carmed=
ialab/SMG/trunk/ISO15118_Stack/sources/common -I../MAIN_Application/vendor/=
carmedialab/SMG/trunk/ISO15118_Stack/sources/common/configuration -I../MAIN=
_Application/vendor/carmedialab/SMG/trunk/ISO15118_Stack/sources/common/con=
figuration/ev -I../MAIN_Application/vendor/carmedialab/SMG/trunk/ISO15118_S=
tack/sources/common/msg -I../MAIN_Application/vendor/carmedialab/SMG/trunk/=
ISO15118_Stack/sources/common/net -I../MAIN_Application/vendor/carmedialab/=
SMG/trunk/ISO15118_Stack/sources/common/states -I../MAIN_Application/vendor=
/carmedialab/SMG/trunk/ISO15118_Stack/sources/v2g/ApiV2g/ev -I../MAIN_Appli=
cation/vendor/carmedialab/SMG/trunk/ISO15118_Stack/sources/v2g/appHandshake=
 -I../MAIN_Application/vendor/carmedialab/SMG/trunk/ISO15118_Stack/sources/=
v2g/codec -I../MAIN_Application/vendor/carmedialab/SMG/trunk/ISO15118_Stack=
/sources/v2g/iso1 -I../MAIN_Application/vendor/carmedialab/SMG/trunk/ISO151=
18_Stack/sources/v2g/iso2 -I../MAIN_Application/vendor/carmedialab/SMG/trun=
k/ISO15118_Stack/sources/v2g/xmldsig -I../MAIN_Application/vendor/carmedial=
ab/SMG/trunk/TmCommon/sources/CmlCommon -I../MAIN_Application/vendor/carmed=
ialab/SMG/trunk/TmCommon/sources/DccCommon   -O2 -pipe -g -feliminate-unuse=
d-debug-types -fmacro-prefix-map=3D/home/michael/Documents/MAIN_Application=
/build-fb/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/mainapplication/0.0=
-r0=3D/usr/src/debug/mainapplication/0.0-r0                      -fdebug-pr=
efix-map=3D/home/michael/Documents/MAIN_Application/build-fb/tmp/work/corte=
xa7t2hf-neon-poky-linux-gnueabi/mainapplication/0.0-r0=3D/usr/src/debug/mai=
napplication/0.0-r0                      -fdebug-prefix-map=3D/home/michael=
/Documents/MAIN_Application/build-fb/tmp/work/cortexa7t2hf-neon-poky-linux-=
gnueabi/mainapplication/0.0-r0/recipe-sysroot=3D                      -fdeb=
ug-prefix-map=3D/home/michael/Documents/MAIN_Application/build-fb/tmp/work/=
cortexa7t2hf-neon-poky-linux-gnueabi/mainapplication/0.0-r0/recipe-sysroot-=
native=3D  -c -o src/utilities/dictionary.o ../MAIN_Application/src/utiliti=
es/dictionary.c
> In file included from /home/michael/Documents/MAIN_Application/build-fb/t=
mp/work/cortexa7t2hf-neon-poky-linux-gnueabi/mainapplication/0.0-r0/recipe-=
sysroot/usr/include/boost/config/detail/select_stdlib_config.hpp:24,
>                  from /home/michael/Documents/MAIN_Application/build-fb/t=
mp/work/cortexa7t2hf-neon-poky-linux-gnueabi/mainapplication/0.0-r0/recipe-=
sysroot/usr/include/boost/config.hpp:44,
>                  from /home/michael/Documents/MAIN_Application/build-fb/t=
mp/work/cortexa7t2hf-neon-poky-linux-gnueabi/mainapplication/0.0-r0/recipe-=
sysroot/usr/include/boost/smart_ptr/bad_weak_ptr.hpp:20,
>                  from /home/michael/Documents/MAIN_Application/build-fb/t=
mp/work/cortexa7t2hf-neon-poky-linux-gnueabi/mainapplication/0.0-r0/recipe-=
sysroot/usr/include/boost/smart_ptr/detail/shared_count.hpp:25,
>                  from /home/michael/Documents/MAIN_Application/build-fb/t=
mp/work/cortexa7t2hf-neon-poky-linux-gnueabi/mainapplication/0.0-r0/recipe-=
sysroot/usr/include/boost/smart_ptr/shared_ptr.hpp:17,
>                  from /home/michael/Documents/MAIN_Application/build-fb/t=
mp/work/cortexa7t2hf-neon-poky-linux-gnueabi/mainapplication/0.0-r0/recipe-=
sysroot/usr/include/boost/shared_ptr.hpp:17,
>                  from ../MAIN_Application/vendor/carmedialab/SMG/trunk/IS=
O15118_Stack/sources/EV/state/IsoStatesMachine.h:6,
>                  from ../MAIN_Application/include/CML_Integration/cml_int=
egration.hpp:18,
>                  from ../MAIN_Application/src/main.cpp:13:
> ../MAIN_Application/version:1:1: error: too many decimal points in number
>     1 | 0.0.0
>       | ^~~~~
>
> version:1:1: error: expected unqualified-id before numeric constant
Without seeing source hard to say what it can be but it looks like
typo or so as float numbers use only one '.' ;)
>
>
> The final error comes from can-untils.
>
> In file included from /home/michael/Documents/MAIN_Application/build-fb/t=
mp/work/cortexa7t2hf-neon-poky-linux-gnueabi/mainapplication/0.0-r0/recipe-=
sysroot/usr/include/sys/socket.h:33,
>                  from /home/michael/Documents/MAIN_Application/build-fb/t=
mp/work/cortexa7t2hf-neon-poky-linux-gnueabi/mainapplication/0.0-r0/recipe-=
sysroot/usr/include/netinet/in.h:23,
>                  from ../MAIN_Application/vendor/carmedialab/SMG/trunk/IS=
O15118_Stack/sources/common/net/v2gtp.h:34,
>                  from ../MAIN_Application/src/CML_Integration/sources/EV/=
state/dc/SMG_EvStateImpl.cpp:7:
> /home/michael/Documents/MAIN_Application/build-fb/tmp/work/cortexa7t2hf-n=
eon-poky-linux-gnueabi/mainapplication/0.0-r0/recipe-sysroot/usr/include/bi=
ts/socket.h:260:5: error: 'socklen_t' does not name a type; did you mean 'l=
ocale_t'?
>
> socklen_t is defined in unistd.h which is present in my recipe-sysroot fo=
lder under usr/include. Is there a clear issue with my build files? I have =
been searching for an answer for a few days now and I have come up empty ha=
nded. Hoping someone here can assist.
Which poky version do you use? Do you use a custom kernel/libc? Can
you please ellaborate?
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58221): https://lists.yoctoproject.org/g/yocto/messag=
e/58221
> Mute This Topic: https://lists.yoctoproject.org/mt/94003473/900721
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [marek.belisko@=
gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

BR,

marek
--=20
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

