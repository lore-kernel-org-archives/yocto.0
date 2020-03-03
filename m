Received: from mail-ua1-f68.google.com (mail-ua1-f68.google.com [209.85.222.68])
 by mx.groups.io with SMTP id smtpd.web11.4773.1583246813461207095
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Mar 2020 06:46:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gY7nvEUM;
 spf=pass (domain: gmail.com, ip: 209.85.222.68, mailfrom: kent.dorfman766@gmail.com)
Received: by mail-ua1-f68.google.com with SMTP id q17so1182655uao.12
        for <yocto@lists.yoctoproject.org>; Tue, 03 Mar 2020 06:46:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=Jtg/pv4yKUBbeMQt2+6befOD2x1xlpG2pXHw/XEMtUI=;
        b=gY7nvEUMuszogENiRGgYRfYE959YkBaoG6yhZK/MmLc0qRh7+1h0fL9wmkAOZo1Mja
         thzE4XHT3dPvCIQWUagbqBAbanLrYpTRK3y90YMA2T+iilii7yZ69rSlCRRIm2mMw5ho
         xJlMd8ecF4C4M1SEFy/jCtJmdMNhkEpcJ/NQ9y9HZroEb1UIyd8u8mW0y2HGrqX3yqoc
         DFujxtGc2NMgDQV1vxDOAjHVcIFyQb6QaPGtAaB+tTiUg1ntSNH4f127mTOVxXP0MyBS
         zoy5L5zDMmMHkQTORkQirnhGiOLJY/uIBAM9JnNEH1gjFhmsp+EYD3j0iW6yciJDpTwx
         u9BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=Jtg/pv4yKUBbeMQt2+6befOD2x1xlpG2pXHw/XEMtUI=;
        b=iwZ3mScF/3y8tix2/f4LrlzjX1zen2sckp88AWkIdBu7opPegbRM6N19eao9jht+qn
         GiLBWJyoJ62OVaLJC5JPDl4yQZ32xwweuCIgL8r7/H23WfiG9lPaBRw+RY0ORhR2Qio2
         1+trQmixwTVFcpnzSisL9s4ZDj2L7Wf8IjKlMTCvvtdns1+liCEMxei3KZVtiI/FPSsK
         HDjjn8LBiup1QSthRXqWAuvSCtSTvHjGDhTEd4rmQhzqQR1qUEL+iIMsPPioPjub4SDD
         oNAwTT+IEy1+cllMOGSKYgSwXFmmVVLgBkXARvW0oL/J+JUr48Nk/R/Kj8OG8yFEGPZS
         R8xw==
X-Gm-Message-State: ANhLgQ1Gzqyw7a49DW3xsUktbGda6z1lTAo1Tb9k2uVG1WlYTMam4VtH
	U1xZ9vHm6O62Dn2I3NQMZ5cZ+ahXzpOMcukqM+I=
X-Google-Smtp-Source: ADFU+vsBm4/f7epnqvSwJT99nIrZCzwXKG/LCRE3N1Q54KgA8aE28uiRACJ031GUOu5KVIxPtym1BZWPf/Vyk6e0VJQ=
X-Received: by 2002:ab0:23c6:: with SMTP id c6mr586669uan.49.1583246812410;
 Tue, 03 Mar 2020 06:46:52 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ab0:7455:0:0:0:0:0 with HTTP; Tue, 3 Mar 2020 06:46:52 -0800 (PST)
In-Reply-To: <20200303143906.6z6afmlw4dhksa7t@qschulz>
References: <CAK4PFCXGx7zHT31_bMT4GXzWnvWZ2O_9tOwAC5hOPOqPMznTUA@mail.gmail.com>
 <20200303143906.6z6afmlw4dhksa7t@qschulz>
From: "Kent Dorfman" <kent.dorfman766@gmail.com>
Date: Tue, 3 Mar 2020 09:46:52 -0500
Message-ID: <CAK4PFCVeUctJ4fPxmgc9T+C=xYiePx4dw41QDrQCfKWWD0sfwg@mail.gmail.com>
Subject: Re: [yocto] proper way to create an out-of-tree kernel modules
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On 3/3/20, Quentin Schulz <quentin.schulz@streamunlimited.com> wrote:
> Hi Kent,
>
> On Tue, Mar 03, 2020 at 09:32:55AM -0500, Kent Dorfman wrote:
>> What is the proper way to create a recipe to build a kernel module
>> outside of the normal kernel tree?
>>
>> The kernel sources need to be expanded and configured for the typical
>> kernel makefile line
>>
>> make -C $(KERNEL_SRC) M=$(PWD) V=1 ARCH=$(ARCH) \
>> CROSS_COMPILE=$(CROSS_COMPILE) modules
>>
>> to work.
>>
>> Are there any sample/stubs available that demonstrate building and
>> deploying a simple kernel module?
>>
>
> inherit module should usually be enough in the recipe AFAICT.
>
> There might be some fixes to do in Makefiles but nothing crazy.
>
> c.f.
> https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#incorporating-out-of-tree-modules
> http://git.yoctoproject.org/cgit.cgi/poky/tree/meta-skeleton/recipes-kernel/hello-mod/hello-mod_0.1.bb
>
> Quentin
>

THANKS!  Will give this a try once my software raid is done resyncing.

I'm replacing the mainline slip driver with a custom one that tightly
binds the sl link name to the owned tty so that we know which sl
device is assigned to each slip connection.  Slip interface name is
normally assigned dynamically, which poses a problem trying to
identify 16 static tty slip connections.
