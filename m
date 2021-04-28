Received: from bsmtp1.bon.at (bsmtp1.bon.at [213.33.87.15])
 by mx.groups.io with SMTP id smtpd.web08.8812.1619598888064025570
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Apr 2021 01:34:49 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.15, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp1.bon.at (Postfix) with ESMTPSA id 4FVX4N0mn5z5tl9;
	Wed, 28 Apr 2021 10:34:44 +0200 (CEST)
Date: Wed, 28 Apr 2021 10:34:42 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Konstantin Aladyshev <aladyshev22@gmail.com>,
	yocto@lists.yoctoproject.org
Subject: Re: [yocto] AppArmor with BusyBox
Message-ID: <20210428083442.e36i5nnky6jfyrl6@qschulz>
References: <CACSj6VUQ5SSpcrucTJ89eW=WJ41ZDPHc=CNhm6SOP-EgHtZh0A@mail.gmail.com>
 <20210426140851.e2g7okmtyt25rrna@qschulz>
 <CACSj6VVqDkssoEEXNjMQw7DGzeMgFBObGJQmucT7=PH64=Ppdw@mail.gmail.com>
 <CAMKF1spbzK=qGDwRthCBo1x+P8Z9h1=pL+N4hGZCzF07iHLDYg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1spbzK=qGDwRthCBo1x+P8Z9h1=pL+N4hGZCzF07iHLDYg@mail.gmail.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Khem,

On Tue, Apr 27, 2021 at 08:33:08PM -0700, Khem Raj wrote:
> On Tue, Apr 27, 2021 at 3:34 PM Konstantin Aladyshev <aladyshev22@gmail.com>
> wrote:
> 
> > I've added `IMAGE_INSTALL += "findutils"` to my `conf/local.conf`
> > file, and it seems like it was enough. There weren't any build
> > conflicts.
> >
> > Should the AppArmor recipe be upgraded in some way to indicate that it
> > needs a full-featured findutils package instead of a busybox one?
> 
> 
> I think it will be useful to dig a bit further and find out what option
> does it need from findutils package sometimes this could be solved by using
> compatible options etc
> 

Not sure to really understand the question, but the -d option of xargs
is for specifying a delimiter different than the default space.

There is no support for such a thing in Busybox implementation of
xargs. Usually options for tools in Busybox are specified at the
beginning of the C file:
https://git.busybox.net/busybox/tree/findutils/xargs.c
Line 17 to 71.

If one looks for delimiter keyword in the file, nothing configurable is
available, it's either space or EOF that is matched.

I'm naive enough to think it might be not too hard to add this option to\
Busybox implementation.

Cheers,
Quentin
