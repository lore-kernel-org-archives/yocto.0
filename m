Received: from mail-il1-f193.google.com (mail-il1-f193.google.com [209.85.166.193])
 by mx.groups.io with SMTP id smtpd.web09.2097.1579294567761771572
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Jan 2020 12:56:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=RMo4+vhd;
 spf=pass (domain: gmail.com, ip: 209.85.166.193, mailfrom: schnitzeltony@gmail.com)
Received: by mail-il1-f193.google.com with SMTP id z12so22353823iln.11
        for <yocto@lists.yoctoproject.org>; Fri, 17 Jan 2020 12:56:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bhrj/bvrRBKstzhlJmR/Zm2r1o89UJZ8REY0cxybwS4=;
        b=RMo4+vhd7Bp8WbImGL3CijfqrG/Xh3Iy+zoX4UaiTfGW5RIgqAzbX5XEdgIg+zVClG
         /UZqPvOvjhdtthwpWYD6W/V59ardh7I/FQ6rT1qFEL1qLwc/quCHAnqY/+RMSHTAoZBk
         3gYS7o5qICxrHkaJdfQiisFX2Fsv+HsR4wGuH/zAkW6E27oTT0DqW0sZ0p+AQhJ/27bs
         SPufmBG7oazwFiRhQ9eKOJqR0EpsXew8lzUrFNROroepRpK8MtZVlFwD9m5ZwADbC4tD
         wKeOOf5TC8D6FN8vfbQoxOXym/wIr2/0mnPU6IE4ZE+7l9rhTJXUyCf2DINHT+rIhswb
         IKRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bhrj/bvrRBKstzhlJmR/Zm2r1o89UJZ8REY0cxybwS4=;
        b=QKEPaNwDQiy7Wx7HAFQhtvVx3WzATV9TEv0E15g/zTFS6ZbDd+k380dQPKcydjRS2x
         P+4SxfWkXIhPD9+bUlQtueO23h/RRiXQIP94nyFH9WN0iUjJo0FHvzOZbxHJ2NmHD6yN
         SJYDHo6O+KFDK5mFBLXiZ5E+jCkaQCdP2Gi2Ih4sAh4P11vNIC7W8ZMkRbG1p7yf+x0s
         oSxzoneLaC4gUvDnYv7H31B374x+HTE5/NCRwOijl6jGl+laIch0hR1ztfkTxqGZgfvU
         Y2LktuKQJyZ5zrmvRTxiwQyQtkON596Vus7eAuwVf9Jt85SEZKhvKZ24XwteaX4uKB1M
         tAsw==
X-Gm-Message-State: APjAAAW6qqakxpz6HnjkPPNG818UiIeTSwsFFUsnQnV7bIlLhUs2A/Lq
	ERcS4ZNWXIXWYG8cf3EtPIXKyhSbQ5yY44tQLtI=
X-Google-Smtp-Source: APXvYqxG9FLrB/jxLgc15dgbGhsgoFuiKISkpVm3E+bfqQHbHlfeAYDxr1qbO/4kGez7VpGuhascMClCTY2H99CuDqw=
X-Received: by 2002:a92:3b98:: with SMTP id n24mr427050ilh.108.1579294567172;
 Fri, 17 Jan 2020 12:56:07 -0800 (PST)
MIME-Version: 1.0
References: <20200117141632.3809-1-ross.burton@intel.com> <fe0eae43-f005-6062-cd0b-18788aeb0e88@gmail.com>
 <CALbNGRTvOk6YQ_vD1VmNA+RD-1dNc2J+mdKxpq971V=D2t7-Hg@mail.gmail.com> <20200117202126.GY4735@denix.org>
In-Reply-To: <20200117202126.GY4735@denix.org>
From: "Andreas M?ller" <schnitzeltony@gmail.com>
Date: Fri, 17 Jan 2020 21:55:55 +0100
Message-ID: <CALbNGRTv8S3V9TLE+uwX4Dei=5m1LBKowzGF5Nr1L8iPHBSQsg@mail.gmail.com>
Subject: Re: [yocto] [RFC PATCH] python: remove Python 2 and all supporting classes
To: Denys Dmytriyenko <denis@denix.org>
Cc: Khem Raj <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Fri, Jan 17, 2020 at 9:21 PM Denys Dmytriyenko <denis@denix.org> wrote:
>
> On Fri, Jan 17, 2020 at 09:15:09PM +0100, Andreas M?ller wrote:
> > On Fri, Jan 17, 2020 at 7:35 PM Khem Raj <raj.khem@gmail.com> wrote:
> > >
> > > On 1/17/20 6:16 AM, Ross Burton wrote:
> > > > Python 2 ceased being maintained on the 1st January 2020.  We've already
> > > > removed all users of it from oe-core so the final step is to move the
> > > > recipe and supporting classes to meta-python2.
> > > >
> > > > The following are removed in this commit:
> > > > - python and python-native 2.7.17
> > > > - python-setuptools
> > > > - The classes pythonnative, pythondir, distutils, setuptools
> > > >
> > >
> > > perhaps add them to meta-py2 first before this lands
> > Just a question: What is the plan with all those recipes which are
> > going to fail (most headaches I have with old waf): Will meta-oe /
> > meta-networking..., depend on meta-py2 or kick them out or?
>
> What, not calling it the worst patch of the year? And the year's just
> started... :)
Denys

1. Would you accept an apologize for that one?
2. I did not ask for stopping this - just asked how to continue and I
did that for certain reasons: For example: Few minutes ago we saw a
series for npm rework on oe-core. Unfortunately npm as is requires
python2 and many modules. Or the waf stuff: That means somebody has go
to all the projects and ask them for waf upgrade or prepare patches
there (and that means not just upgrading waf). So again: How do we
handle/get rid recipes requiring python2 to build?

Andreas
