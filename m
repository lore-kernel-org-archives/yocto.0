Received: from mail-vs1-f68.google.com (mail-vs1-f68.google.com [209.85.217.68])
 by mx.groups.io with SMTP id smtpd.web09.346.1583268854649842095
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Mar 2020 12:54:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=e6ZB9xFZ;
 spf=pass (domain: gmail.com, ip: 209.85.217.68, mailfrom: kent.dorfman766@gmail.com)
Received: by mail-vs1-f68.google.com with SMTP id t12so3340126vso.13
        for <yocto@lists.yoctoproject.org>; Tue, 03 Mar 2020 12:54:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=uX/oocUHa/BVZ1EsU2Gf4JuofgkDg/z/i2eAM/oW/eE=;
        b=e6ZB9xFZM2GzfrxqhEkU409HeoJ8XARgtD0pkVt9r7a6M2kaNFsQvY0GaikWMQ5Pzo
         FgmPpI5tiA177RkbQ1JAsj9FpwP/+/f5k59mvfvDlr198GzfWHldO3Ccxc0yks520l+j
         UZb6x8OSoj2gNQP7g6T8hhcgiNqvl26k30J5OSVCXh68UnpY+nYmyV/gEhbFgY7aptTt
         153LFRMU/rBf/MU90Nr8p2LnePEei5OPiP6woFFoF/aXx9qm1pDrX1425pHmjnQeCuAS
         NY8kkwRR1qDD8ck9iaW1WoL2pBXlQEUY7C+PBFGvSqfpd8rlrI80O+zec07mbkNXnUwM
         A8gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=uX/oocUHa/BVZ1EsU2Gf4JuofgkDg/z/i2eAM/oW/eE=;
        b=qM0yfx+DnDDnCDvqSaG4PJxJozqRGoTDvwhZ/bSML72iZBDrfMMRRlPzdXw1jfcK+Y
         HHeUGluh1zlsMUHhcqUak6kiAv4bAZGqohIGhuPSwaljwSpKGDBenXDE2Um7QNntK+Gb
         l3LERkx6YPjdvqeHLsWRN6/BmpmSBBXKY/M0b2Jveu2F8SWKVRLq4FnKxxOQus+ddIHu
         6A5AhdYd1W2Hh/QjPI0Ge3plP/XZ1cAoyBwlJDsqQHOUybmOTVVs112VpCv4W92yonsz
         HXP/XCKppFvGBJVbEWkco1MQ46ae8X7alzLDqgvLCwm7tYx4RYoG8obJnRC4HhrdPIcj
         3Itg==
X-Gm-Message-State: ANhLgQ1jYq4uZ7rVcWB7cUZkgQT1hQW6SiLwRIAE3dLf4zAZu3Vj/LEc
	zq8gQVmlCODkunvP/pLwyago6Lj5z8S7OnSLgnU=
X-Google-Smtp-Source: ADFU+vs4M7GHRXAPqzHqwUeLD0UVdXlxT7TtReoyT/7rzZabKME9zrMDGfspfI8wJsDPTwi5b50fNdL13y7SbLaMNMU=
X-Received: by 2002:a67:fc14:: with SMTP id o20mr3795027vsq.230.1583268853530;
 Tue, 03 Mar 2020 12:54:13 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ab0:7455:0:0:0:0:0 with HTTP; Tue, 3 Mar 2020 12:54:12 -0800 (PST)
In-Reply-To: <15F8D296B73C234A.31276@lists.yoctoproject.org>
References: <CAK4PFCXGx7zHT31_bMT4GXzWnvWZ2O_9tOwAC5hOPOqPMznTUA@mail.gmail.com>
 <20200303143906.6z6afmlw4dhksa7t@qschulz> <15F8D296B73C234A.31276@lists.yoctoproject.org>
From: "Kent Dorfman" <kent.dorfman766@gmail.com>
Date: Tue, 3 Mar 2020 15:54:12 -0500
Message-ID: <CAK4PFCV-Y+Ou-L9cLZgVqOXOBY4HdNsyrCmXZLgi6OU=cj=SJg@mail.gmail.com>
Subject: Re: [yocto] proper way to create an out-of-tree kernel modules
To: kent.dorfman766@gmail.com
Cc: Quentin Schulz <quentin.schulz@streamunlimited.com>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On 3/3/20, Kent Dorfman via Lists.Yoctoproject.Org
<kent.dorfman766=gmail.com@lists.yoctoproject.org> wrote:
> On 3/3/20, Quentin Schulz <quentin.schulz@streamunlimited.com> wrote:
>> Hi Kent,
>>
>> On Tue, Mar 03, 2020 at 09:32:55AM -0500, Kent Dorfman wrote:
>>> What is the proper way to create a recipe to build a kernel module
>>> outside of the normal kernel tree?
>>>
>>> The kernel sources need to be expanded and configured for the typical
>>> kernel makefile line
>>>
>>> make -C $(KERNEL_SRC) M=$(PWD) V=1 ARCH=$(ARCH) \
>>> CROSS_COMPILE=$(CROSS_COMPILE) modules
>>>
>>> to work.
>>>
>>> Are there any sample/stubs available that demonstrate building and
>>> deploying a simple kernel module?
>>>
>>
>> inherit module should usually be enough in the recipe AFAICT.
>>
>> There might be some fixes to do in Makefiles but nothing crazy.
>>
>> c.f.
>> https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#incorporating-out-of-tree-modules
>> http://git.yoctoproject.org/cgit.cgi/poky/tree/meta-skeleton/recipes-kernel/hello-mod/hello-mod_0.1.bb


Worked flawlessly. Thanks!
