Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web10.5776.1588598094441802663
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 May 2020 06:14:55 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 49G3HJ3xnFz5tlC;
	Mon,  4 May 2020 15:14:51 +0200 (CEST)
Date: Mon, 4 May 2020 15:14:50 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Bastien0530 <bastien.gallet-pesenti@pi.esisar.grenoble-inp.fr>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] #yocto do_package error for custom app
Message-ID: <20200504131450.badyy7x5lrb55t35@qschulz>
References: <CAAnfSTuzEbam1UCtrYhWUqnKxP+6duRTShKER9auYcxSbXT_fg@mail.gmail.com>
 <9838.1588597519955769955@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <9838.1588597519955769955@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Salut Bastien,

On Mon, May 04, 2020 at 06:05:19AM -0700, Bastien0530 wrote:
> This file is supposed to be my application.

The `file` command on Linux (could be run on the host and not the
target) will give you important info such as the architecture for which
it was built. In that case, we would have detected that it was built for
your host architecture and guide you to CC=gcc (which is a classic in
many pieces of SW).

> I tried to run it on my target cible but doesn't work.
> I have just resolved the issue, that was a mistake in my makefile, I fixed CC=GCC instead of CC?=GCC.
> 

Make sure that all variables that could be set from outside are weakly
set as well. (e.g. CFLAGS, LDFLAGS, etc...) otherwise you might
encounter some other issues later (though in some cases, you'll then
need to modify CFLAGS/LDFLAGS from the recipe if the recipe does not
compile with Yocto CFLAGS/LDFLAGS, if it's not fixable in the source
code).

BTW, you most probably don't need your FILEXTRAPATHS_prepend, nor your
do_compile and do_install as what you've in there is their default
"content". (c.f. base.bbclass and cross.bbclass in openembedded-core).

Have fun!
Quentin
