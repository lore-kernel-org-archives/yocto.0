Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.web09.2610.1616618006105525015
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Mar 2021 13:33:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=g2GlNeeE;
 spf=pass (domain: gmail.com, ip: 209.85.167.50, mailfrom: arunlee@gmail.com)
Received: by mail-lf1-f50.google.com with SMTP id v15so3773546lfq.5
        for <yocto@lists.yoctoproject.org>; Wed, 24 Mar 2021 13:33:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=khxGqFfyNbP45TCVlGITOih8vBZYFbp/uwU5BphM8+A=;
        b=g2GlNeeEH83FqrhZXMRo40LSxFYeWyKkcnF0kLH3kG38eSlS7cxSdL/5wN9pNEvJTM
         E+hBXNuTxd/V7PqWXz6sJkEmSfJHDgB1RUKB/PfAl6Ds5r7g9NQRZKfgzLI0ZFyks/LN
         6uAy1xjucvyJqS4RpWJZsUVWtMFYF6Vev50ZpguN5Zj3wYv3I5F8JEi+26z06tbmJMxi
         nmR65OHUg8cU0mEuREA80Md49kJ7PFl5R56K0P669r48ASITa9xrQjFkHOu7aTl8RuqX
         DbqX/sIXI9MINAbaImrpx+q+hsKfok2gGlkXmG/KnAa0EGfCFOowRHk8aLoiJ9AarvM0
         WWJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=khxGqFfyNbP45TCVlGITOih8vBZYFbp/uwU5BphM8+A=;
        b=MegyDIZi+FbOFym0c2DUZ50OoRszi1qTBSr85DUSVGdeaGlFL3rPIABhPBGh57HgDD
         G+OOj0btUhT2Jxb0Sg1jhZhW+RjxTdCglC5VSYrWumzWy7NDpf80b/cVBuSM1C5EPHmu
         dcRJCJcqg/T7XYBHeTt6XAB4joPNMsU5aXoKRD96lwN+YZ7H6F7etRrDNE+auh+2wxcz
         5oTz0XxtSSip8jFAKWN1ZAxRhYiKNEvY03guxd+F+hjhZxM5ei0RBVkPf2ORCNrhigvR
         GJyrqTmnID03SGO1taR8ODSa4HfeSfhYt8rV/NScKPZJWXAOaxpzb6yqerXT/yMeZa0H
         Y6Jg==
X-Gm-Message-State: AOAM531Gf1VDud0WG7+07cA35iNgAcKHBYRNo6J9Xq6BzY07Au2S1tXz
	y6/KFY+lZ5O4uBbbnI2g2EMNiX+1i53MMGmDZNo=
X-Google-Smtp-Source: ABdhPJxPKh2wepvk9119WL62qxYg6Z4ejRgUsdhltNvnhbek7bB7JRxbqwynPySe83w4H2LzPxvJNDUxLMd+SmK9IAM=
X-Received: by 2002:ac2:5937:: with SMTP id v23mr2973472lfi.82.1616618004304;
 Wed, 24 Mar 2021 13:33:24 -0700 (PDT)
MIME-Version: 1.0
References: <1bf54cb4-31c0-863c-ead4-c02431ba1c36@gmail.com>
 <12874.1616616288995699304@lists.yoctoproject.org> <CAMKF1srkxBEhG0uHqo218AGiLmeqSAC83kkwb4wJa98HJQ9CZA@mail.gmail.com>
In-Reply-To: <CAMKF1srkxBEhG0uHqo218AGiLmeqSAC83kkwb4wJa98HJQ9CZA@mail.gmail.com>
From: arunlee@gmail.com
Date: Wed, 24 Mar 2021 22:33:13 +0200
Message-ID: <CAFDdYFgeeEZjDY0N6ZQvuEOrzYeiNkz1R8CLz9O04WF29nhVzg@mail.gmail.com>
Subject: Re: Private: Re: [poky] Weird Compilation issue with a c++ recipe
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

>
> Adding yp mailing list back.
>
> On Wed, Mar 24, 2021 at 1:04 PM <arunlee@gmail.com> wrote:
> >
> > This what i see:
> >
> > /build$ bitbake -e rs-oem-kit-server | grep -e "CXX=3D"
> > export BUILD_CXX=3D"g++ "
> > export CXX=3D"aarch64-poky-linux-g++  -mcpu=3Dcortex-a72+crc+crypto -fs=
tack-protector-strong  -D_FORTIFY_SOURCE=3D2 -Wformat -Wformat-security -We=
rror=3Dformat-security --sysroot=3D/home/aravind2/work/mevolve-yocto/mvdevi=
ce/build/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1.8.2.0-r0/recipe-sy=
sroot"
>
> but the logs you posted doesn't show this as CXX, so somewhere its
> being overwritten. Are there more CMakeFiles that are in play ?

I have posted the top level CMakeList.txt in the first post, which
added a sub directory

INCLUDE_DIRECTORIES(include)

# Add the sources to the target
add_subdirectory(src)


that has one CMakeList.txt.


# Set minimum required CMake version
cmake_minimum_required(VERSION 3.5.1)

# Name the project
project (sources)

add_subdirectory(calsimple)
add_subdirectory(calibinfo)
add_subdirectory(writer)
add_subdirectory(converter)
add_subdirectory(server)

regards
Arun
