Received: from mail-vs1-f67.google.com (mail-vs1-f67.google.com [209.85.217.67])
 by mx.groups.io with SMTP id smtpd.web12.1247.1584468162118179881
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Mar 2020 11:02:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@soccasys-com.20150623.gappssmtp.com header.s=20150623 header.b=i90glRGi;
 spf=pass (domain: soccasys.com, ip: 209.85.217.67, mailfrom: laurent.gauthier@soccasys.com)
Received: by mail-vs1-f67.google.com with SMTP id 7so14496325vsr.10
        for <yocto@lists.yoctoproject.org>; Tue, 17 Mar 2020 11:02:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soccasys-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FEl/19OD5cKbsG66xNkn5yeLE/g50/1iZq378tjhB1o=;
        b=i90glRGiaLFAoAs3FpcHs2Zl2bDOQyFzKyr0QJ+8dMGUmG2hGEDUZ5ZtV6nwGg6dVQ
         324L53uwFKVr1WbghYbVd88+iqpxJLAkdtd4cSt4M7rccJSBt5IfQD5xfO2PCbNioNcA
         OENZrYppOjJbMiZroM4+4uTd0dR7uRngiVW7BhOWCwmr0EXNjkkWXi0t+YDsFBvM8Ryt
         v88dYudMBzY3HoGbuV8duG04BhwsQnpnxnN06E+PRTJ3i0ySNDQTWEQ56+cy5Aof/3yA
         KORC/etkofqKd5etetoatkuOMnhctdDPJiXrgJa8dwT9R96Tsii+QDJOvWOQ7EdfoJ+4
         uvbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FEl/19OD5cKbsG66xNkn5yeLE/g50/1iZq378tjhB1o=;
        b=hpg/OV/byOMbJtgZBBL7LVv6hHAw+to5yI1Fo7Naq+bSYuscmltAKLK3a/vc7t1J1y
         7tHAT6WA9n5ML/QeqYGIDpzWM+154+Cc444zxdLzX+0a53tSDFhBGgtQxS1tSFJOmFQT
         kTZihWL3LLzPmO767U2MV7rvEYmhoHJEm383NQxzwd2zRY5guO0RTpqYsdaberno8/dk
         LRqgFpjze2SgVtlJyS6q5+t3exdbl0xdzLPD3T8y+KKHrVfqGtqVtu3UnPAzkTmC/dsK
         EU8LgbwOW5FIUwS9HSUQXbz8dh+HShIl0xfg+xM3hTP2dsNq+RZFmOeLJIrSMCt1UBs1
         lqYw==
X-Gm-Message-State: ANhLgQ2aC97Aj0GYbBwkXPU5cTaK2c4hS9S0k66RhBomA06xPTRdiO8I
	Zatl7/XxNwUnKseIauATtnRSrU3jzHx1UVTY000+gIwwcvvT6Q==
X-Google-Smtp-Source: ADFU+vukkKJ4dYNLRXi9TsAhGYS15rJDf6Isqi0z2e+dBMV2GNMMz1BRdP/ktEOy4XadxgB+leuzPr4j3rX+3GCmWDg=
X-Received: by 2002:a67:a409:: with SMTP id n9mr189655vse.18.1584468160922;
 Tue, 17 Mar 2020 11:02:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAAV2bM0B6pWK3ypKip+NJ4XzJbgqFNNXRrfHtiKMuAORUt+PCg@mail.gmail.com>
 <20200317160443.6pyp7zuonargxrux@qschulz> <CAAV2bM2PT0YTq8+Q9vf5aLMeoRnw72NauTuiF8myGroAu1DC=A@mail.gmail.com>
In-Reply-To: <CAAV2bM2PT0YTq8+Q9vf5aLMeoRnw72NauTuiF8myGroAu1DC=A@mail.gmail.com>
From: "Laurent Gauthier" <laurent.gauthier@soccasys.com>
Date: Tue, 17 Mar 2020 19:02:02 +0100
Message-ID: <CAGbd71QqDTLU0nAz1aV0FuXQtArCeV2Z65RaTQ3Q7wE2daNE9w@mail.gmail.com>
Subject: Re: [yocto] How to PROVIDE boost-python
To: Emily <easmith5555@gmail.com>
Cc: Quentin Schulz <quentin.schulz@streamunlimited.com>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hi Emily,

To find the solution to your issue in a rational and deterministic way
we need to start from the error message.

What I understand is that while build recipe "opc-ua-server-gfex" you
get an error message that says in short "ld: cannot find
-lboost_python-mt".

Therefore you need to determine which recipe (and which package in
that recipe) provides the "boost_python-mt" library.

One way to determine this is to run something like this:

    find /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/*/*/*/packages-split
-name libboost_python\*

This should show you which recipe, and which package produced by that
recipe has the library you are looking for.

The names of the first-level directories inside "packages-split" are
packages names.

Based on things you have mentioned in your previous e-mail my guess
would be that adding an RDEPENDS = "boost-python" should help, but I
might be wrong.

I hope this will help you move in the right direction.

Kind regards, Laurent.


On Tue, Mar 17, 2020 at 6:07 PM Emily <easmith5555@gmail.com> wrote:
>
> Hi Quentin -
>
> That's what I tried originally! DEPENDS on boost and not boost-python gives me the following error when trying to build my original recipe:
>
> /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/7.3.0/ld:
> cannot find -lboost_python-mt
>
> So I tried a bunch of other this which also didn't seem to work.
>
> Thanks for the response!
> Emily
>
>
> On Tue, Mar 17, 2020 at 11:04 AM Quentin Schulz <quentin.schulz@streamunlimited.com> wrote:
>>
>> Hi Emily,
>>
>> On Tue, Mar 17, 2020 at 10:44:10AM -0500, Emily wrote:
>> > Hi all -
>> >
>> > I'm trying to build an opca recipe (
>> > https://github.com/kratsg/meta-l1calo/blob/add/opcServer/recipes-core/opc-ua/opc-ua-server-gfex_git.bb)
>> > and it's giving me a build error like:
>> >
>> > |
>> > /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/7.3.0/ld:
>> > cannot find -lboost_python-mt
>> >
>> > Which seems to indicated I need to add boost-python to my list of DEPENDS.
>> > When I do that I get the error:
>> >
>> > ERROR: Nothing PROVIDES 'boost-python' (but
>> > /local/d6/easmith5/rocko_bitbake/meta-l1calo/recipes-core/opc-ua/
>> > opc-ua-server-gfex_git.bb DEPENDS on or otherwise requires it). Close
>> > matches:
>> >   boost RPROVIDES boost-python
>> >
>> > I've tried adding PACKAGECONFIG_pn-boost="python" to both my local.conf and
>> > to the image definition as I saw this online, but neither seems to work. It
>> > seems like boost-python is being built (I can see it in the list when I run
>> > oe-pkgdata-utils list-pkgs -p boost) but it doesn't seem to be available at
>> > build for this recipe.
>> >
>> > If I remove boost from my list of DEPENDS I get an error about that, so
>> > obviously boost itself is available at build for the original recipe. I've
>> > also tried adding boost-native to DEPENDS, also did not work.
>> >
>> > Is there something obvious I'm missing, or some trick to making
>> > boost-python available at build for this other recipe?
>> >
>>
>> Ok so two things.
>>
>> Yes, I'd say you need python in PACKAGECONFIG for boost. However, it
>> seems it's already part of the default value of PACKAGECONFIG, c.f.
>> http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-support/boost/boost.inc?h=master#n45
>> so if no bbappend is overriding it, I'd say you're safe. Better check
>> with the version in your layer that it's there.
>> If you don't want to check manually, try `bitbake -e boost | grep -e
>> "^PACKAGECONFIG="`
>>
>> DEPENDS contains only recipes (well, PROVIDES but PROVIDES has the name
>> of the recipe in it at all times) while RDEPENDS_* (usually ${PN}*) contains
>> only packages.
>>
>> So you need to DEPENDS on boost, not boost-python. That should be enough
>> hopefully!
>>
>> Quentin
>
> 



-- 
Laurent Gauthier
Phone: +33 630 483 429
http://soccasys.com
