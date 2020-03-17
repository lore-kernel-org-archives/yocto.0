Received: from mail-vk1-f195.google.com (mail-vk1-f195.google.com [209.85.221.195])
 by mx.groups.io with SMTP id smtpd.web11.2605.1584483470767929565
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Mar 2020 15:17:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@soccasys-com.20150623.gappssmtp.com header.s=20150623 header.b=IsNTqfMj;
 spf=pass (domain: soccasys.com, ip: 209.85.221.195, mailfrom: laurent.gauthier@soccasys.com)
Received: by mail-vk1-f195.google.com with SMTP id w67so6501008vkf.1
        for <yocto@lists.yoctoproject.org>; Tue, 17 Mar 2020 15:17:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soccasys-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EBcC9AImQgEpYTEoH0bi0cOAfxvxiDWUW337NuY8fn4=;
        b=IsNTqfMjAbH/wAQJxKrj1ejPR0xOYpILbkVKQk1zzc4r4k5yo7tSXsF7MIU6RrfsKV
         fPYYUqpmw+N3oa8dhoImvqHpkn0diDFyMJTVnavvG063jVaoT0vf1NULMVpVd33wIhRN
         SUcGF8Y494DY89hXrp89PIP+b3z/auHtv1YeWx5dywWdlvfBhlnM84ng/l9B7shkkPf6
         QZRAPBGTcnb1ZubBGg0CZS7mhwl82tNLGPgrIw8jKlIUOjwn7sgHCUuzp2z/eQq69NiF
         PqvCgO+lF3TTlHzKPx/JMi8+QfVtyxvQc8nNss9l+pbme4Ql3aaDvjx5FBAWuTMsfzdw
         AWaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EBcC9AImQgEpYTEoH0bi0cOAfxvxiDWUW337NuY8fn4=;
        b=ImfSHrqI1DVA0uYKwJdoxViR/yAnS4zT+vYAr5V1BmUiKf/80IYpZvppPzhi19oVqq
         UXuyfnaY9+TTra9MxisT4krp0OlJrKkQuEa7idxaAoaRY0H6lpi8gpzZrLFsr1QYm7dP
         NWwDyRmW+kaPxW1muqEeBgEJQHaKBFBIRHpI4SFT2ZkohDnaVmgk8OdXfN1XfhfUc/6H
         ff+9wUbJL7+lMsx5VVBDat6WURKiD0wuIvsNeEFuRg1OTHk3awsvpa5q2In6v1Fw7mO4
         hrmUq0EVmVilamDl8eiR71KHyYd0MEDD8NZFxlx6niFJ9M7VJcewHygYOgxSS3gPBebI
         YNEw==
X-Gm-Message-State: ANhLgQ36ij2muwlmH1xt2ZmcJWyL/4Hn72DCPQIm39FAyLCFC+zrVWIi
	NymxcHa0xivIAk3yFVFxyC2UMfO84iNXn3wChV8sGA==
X-Google-Smtp-Source: ADFU+vvpyREALC/Ec1C3YEb2FoqnVCoJ0XyPXK5iP++yyizWeP6/HuYtcNsb8HIqxw6OdBVjLjAG0NnibwU2sUFDLkw=
X-Received: by 2002:a1f:2c58:: with SMTP id s85mr1228333vks.93.1584483469621;
 Tue, 17 Mar 2020 15:17:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAAV2bM0B6pWK3ypKip+NJ4XzJbgqFNNXRrfHtiKMuAORUt+PCg@mail.gmail.com>
 <20200317160443.6pyp7zuonargxrux@qschulz> <CAAV2bM2PT0YTq8+Q9vf5aLMeoRnw72NauTuiF8myGroAu1DC=A@mail.gmail.com>
 <CAGbd71QqDTLU0nAz1aV0FuXQtArCeV2Z65RaTQ3Q7wE2daNE9w@mail.gmail.com> <CAAV2bM0ExWhQx8hmnxbCc9jvpM5UHUY0pdqCbsyZQTt3w2KEAA@mail.gmail.com>
In-Reply-To: <CAAV2bM0ExWhQx8hmnxbCc9jvpM5UHUY0pdqCbsyZQTt3w2KEAA@mail.gmail.com>
From: "Laurent Gauthier" <laurent.gauthier@soccasys.com>
Date: Tue, 17 Mar 2020 23:17:12 +0100
Message-ID: <CAGbd71RLYk6TA1iU-bAdkzXZsF+-yaHNhu3VABcSyP6PuPbE7g@mail.gmail.com>
Subject: Re: [yocto] How to PROVIDE boost-python
To: Emily S <easmith5555@gmail.com>
Cc: Quentin Schulz <quentin.schulz@streamunlimited.com>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hi again Emily,

You have put your finger on the core issue there.

The name of the boost python library which is linked in your
"opc-ua-server-gfex" recipe is "boost_python-mt" where it seems that
it should be "boost_python3-mt".

I guess you should have a look at the CMakeLists.txt of the
"opc-ua-server-gfex" software package to see how to switch to linking
with "boost_python3-mt" instead as a quick review of the boost recipe
seems to reveal no python2 support.

Kind Regards, Laurent.


On Tue, Mar 17, 2020 at 7:19 PM Emily S <easmith5555@gmail.com> wrote:
>
> Hi Laurent -
>
> Thanks for the suggestion. It looks like there are a few packages that provide libboost_python3:
>
> find tmp/work/*/*/*/packages-split -name libboost_python\*
> tmp/work/aarch64-poky-linux/boost/1.64.0-r0/packages-split/boost-dev/usr/lib/libboost_python3.so
> tmp/work/aarch64-poky-linux/boost/1.64.0-r0/packages-split/boost-python/usr/lib/libboost_python3.so.1.64.0
> tmp/work/aarch64-poky-linux/boost/1.64.0-r0/packages-split/boost-staticdev/usr/lib/libboost_python3.a
> tmp/work/aarch64-poky-linux/boost/1.64.0-r0/packages-split/boost-dbg/usr/lib/.debug/libboost_python3.so.1.64.0
>
> Adding boost-python to RDEPENDS doesn't help, I have tried it before also. This sort of made sense to me as I thought RDEPENDS was for run time dependencies, but perhaps I have misunderstood.
>
> I am working with the rocko branch and python2, so perhaps that's the problem?
>
> Thanks,
> Emily
>
>
> On Tue, Mar 17, 2020 at 1:02 PM Laurent Gauthier <laurent.gauthier@soccasys.com> wrote:
>>
>> Hi Emily,
>>
>> To find the solution to your issue in a rational and deterministic way
>> we need to start from the error message.
>>
>> What I understand is that while build recipe "opc-ua-server-gfex" you
>> get an error message that says in short "ld: cannot find
>> -lboost_python-mt".
>>
>> Therefore you need to determine which recipe (and which package in
>> that recipe) provides the "boost_python-mt" library.
>>
>> One way to determine this is to run something like this:
>>
>>     find /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/*/*/*/packages-split
>> -name libboost_python\*
>>
>> This should show you which recipe, and which package produced by that
>> recipe has the library you are looking for.
>>
>> The names of the first-level directories inside "packages-split" are
>> packages names.
>>
>> Based on things you have mentioned in your previous e-mail my guess
>> would be that adding an RDEPENDS = "boost-python" should help, but I
>> might be wrong.
>>
>> I hope this will help you move in the right direction.
>>
>> Kind regards, Laurent.
>>
>>
>> On Tue, Mar 17, 2020 at 6:07 PM Emily <easmith5555@gmail.com> wrote:
>> >
>> > Hi Quentin -
>> >
>> > That's what I tried originally! DEPENDS on boost and not boost-python gives me the following error when trying to build my original recipe:
>> >
>> > /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/7.3.0/ld:
>> > cannot find -lboost_python-mt
>> >
>> > So I tried a bunch of other this which also didn't seem to work.
>> >
>> > Thanks for the response!
>> > Emily
>> >
>> >
>> > On Tue, Mar 17, 2020 at 11:04 AM Quentin Schulz <quentin.schulz@streamunlimited.com> wrote:
>> >>
>> >> Hi Emily,
>> >>
>> >> On Tue, Mar 17, 2020 at 10:44:10AM -0500, Emily wrote:
>> >> > Hi all -
>> >> >
>> >> > I'm trying to build an opca recipe (
>> >> > https://github.com/kratsg/meta-l1calo/blob/add/opcServer/recipes-core/opc-ua/opc-ua-server-gfex_git.bb)
>> >> > and it's giving me a build error like:
>> >> >
>> >> > |
>> >> > /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/7.3.0/ld:
>> >> > cannot find -lboost_python-mt
>> >> >
>> >> > Which seems to indicated I need to add boost-python to my list of DEPENDS.
>> >> > When I do that I get the error:
>> >> >
>> >> > ERROR: Nothing PROVIDES 'boost-python' (but
>> >> > /local/d6/easmith5/rocko_bitbake/meta-l1calo/recipes-core/opc-ua/
>> >> > opc-ua-server-gfex_git.bb DEPENDS on or otherwise requires it). Close
>> >> > matches:
>> >> >   boost RPROVIDES boost-python
>> >> >
>> >> > I've tried adding PACKAGECONFIG_pn-boost="python" to both my local.conf and
>> >> > to the image definition as I saw this online, but neither seems to work. It
>> >> > seems like boost-python is being built (I can see it in the list when I run
>> >> > oe-pkgdata-utils list-pkgs -p boost) but it doesn't seem to be available at
>> >> > build for this recipe.
>> >> >
>> >> > If I remove boost from my list of DEPENDS I get an error about that, so
>> >> > obviously boost itself is available at build for the original recipe. I've
>> >> > also tried adding boost-native to DEPENDS, also did not work.
>> >> >
>> >> > Is there something obvious I'm missing, or some trick to making
>> >> > boost-python available at build for this other recipe?
>> >> >
>> >>
>> >> Ok so two things.
>> >>
>> >> Yes, I'd say you need python in PACKAGECONFIG for boost. However, it
>> >> seems it's already part of the default value of PACKAGECONFIG, c.f.
>> >> http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-support/boost/boost.inc?h=master#n45
>> >> so if no bbappend is overriding it, I'd say you're safe. Better check
>> >> with the version in your layer that it's there.
>> >> If you don't want to check manually, try `bitbake -e boost | grep -e
>> >> "^PACKAGECONFIG="`
>> >>
>> >> DEPENDS contains only recipes (well, PROVIDES but PROVIDES has the name
>> >> of the recipe in it at all times) while RDEPENDS_* (usually ${PN}*) contains
>> >> only packages.
>> >>
>> >> So you need to DEPENDS on boost, not boost-python. That should be enough
>> >> hopefully!
>> >>
>> >> Quentin
>> >
>> > 
>>
>>
>>
>> --
>> Laurent Gauthier
>> Phone: +33 630 483 429
>> http://soccasys.com



-- 
Laurent Gauthier
Phone: +33 630 483 429
http://soccasys.com
