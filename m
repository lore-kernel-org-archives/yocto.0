Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.216.1616425209602561567
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Mar 2021 08:00:10 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=W1DbilEl;
 spf=softfail (domain: blade-group.com, ip: 198.145.29.25, mailfrom: yann.dirson@blade-group.com)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com [209.85.217.43])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 2441D38C05F8
	for <yocto@yoctoproject.org>; Mon, 22 Mar 2021 15:00:09 +0000 (UTC)
Received: by mail-vs1-f43.google.com with SMTP id t71so102551vst.3
        for <yocto@yoctoproject.org>; Mon, 22 Mar 2021 08:00:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=GbT6BqnPO3NrVz/I13DzGbSCjH65FGiHgdoG8Zlzqkw=;
        b=W1DbilElTMCUQTUBNlms8U+C1hCx1GNropsNnlZNbVM6hEnd0td0DK8/ThVnVXj2Nq
         t4MSZgIcxAQ+vpIf/7GfbKhAjdpaHSSGb3z0NTASq5/RLcscADoAUQuXA+iOw+LMkWRl
         f6sjP/ILGQ91/URAt814+dvKwGW/iDa4eM795JQB3qey1F0iV6sTUD/7yIbRRK7URLva
         4u8unipPyz0tJ5to04OJBbM9PTEYeQfm5AXlGzWXdCpwuRaXG+lgi094quPf9rH99NU2
         n4RLGmkp6nsppC5eDlCNQzw7LQk4fH25a/wocMeuFnwsp+wIbDmJ+DzMww/pYkc1962T
         dztQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=GbT6BqnPO3NrVz/I13DzGbSCjH65FGiHgdoG8Zlzqkw=;
        b=N+mqIlhKo9XsYqRZ4x5ulp5nH74Jnwjka0+sTPeul5TaHefA/yxKs4dnNizq2ER71x
         /tNHMhyMV51xFcENsSG/BOr0IgwN1CZ6PMwblQo1stUHkM0KSWEPIjA1BT7H8A2pDhYw
         8RjRiua6U4IxCQPIBHg0qSzb4vPsEipnwCuBacXP/Fg0+rTEIgxJKaZFlM1xh1See6uI
         LOk8Fn4fmXotTKiYR4BjscDhFgmFVv8q5AxOPNcYDU74Jr/AdtvnMCpkSUmucQddEgIB
         +LSiWqQd9ClhJRibgjN+h2Ga7K5TbDDLcQlmx4NK8PEWepqXlaEKU+VWAEdDmIE09kYc
         nsxg==
X-Gm-Message-State: AOAM533LoVoOjppHfe21y4KRNKVupGPq2dag0ar9Q4cGqSoVnfZwXOde
	wZZhuqu4+HqHW1XEV+Bstee/U+BPNJ/nch2xlYpF2w==
X-Google-Smtp-Source: ABdhPJzvtt4oL4oF43BCvSxVQwy7dDp0/lghxZ8dOZK+JX0CFSqk+UuG566PlbloSfyw3mVMOxeqhrrZBGv9znwPyBM=
X-Received: by 2002:a67:641:: with SMTP id 62mr237644vsg.23.1616425207966;
 Mon, 22 Mar 2021 08:00:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210322134212.576790-1-yann@blade-group.com> <20210322144753.GA33662@localhost>
In-Reply-To: <20210322144753.GA33662@localhost>
From: "Yann Dirson" <yann.dirson@blade-group.com>
Date: Mon, 22 Mar 2021 15:59:56 +0100
Message-ID: <CA+4=imbkwhhbPF6UPEuBQ7qAraCPy7v-edWJdX00UVrBzW2B_g@mail.gmail.com>
Subject: Re: [meta-rockchip][PATCH] Add machine definitions for NanoPi-M4 boards
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>, Yann Dirson <yann@blade-group.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Trevor,

Le lun. 22 mars 2021 =C3=A0 15:47, Trevor Woerner <twoerner@gmail.com> a =
=C3=A9crit :
> On Mon 2021-03-22 @ 02:42:12 PM, yann.dirson@blade-group.com wrote:
> > This supports both the 2GB and 4GB versions of the board.  This is not
> > done with 2 different machine definitions since only u-boot has to
> > change between those two configurations, but with a NANOPIM4_HW variabl=
e
> > to set in local.conf.
>
> Traditionally in meta-rockchip this is done using two separate machine fi=
les
> with all the common things factored into a common include file. See
> tinker-board and tinker-board-s as well as all the rock-pi-4* definitions=
 for
> examples.
>
> I would prefer if the same thing was done here.

Damned that was how I did my first patch, I just felt it was much
better this way :(

Digging up that original commit re rerolling.


Wouldn't it be useful to have a standard way to specify such hardware
variants, that
would be recognized as such by the layer index ?



--=20
Yann Dirson <yann@blade-group.com>
Blade / Shadow -- http://shadow.tech
