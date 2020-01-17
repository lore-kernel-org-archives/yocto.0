Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
 by mx.groups.io with SMTP id smtpd.web12.1470.1579292490318758137
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Jan 2020 12:21:30 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denix.org, ip: 64.68.198.64, mailfrom: denis@denix.org)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id 9F4EE40C2D;
	Fri, 17 Jan 2020 20:21:29 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9ES0Jz__reI4; Fri, 17 Jan 2020 20:21:29 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-86-127.washdc.fios.verizon.net [100.15.86.127])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id 78D3540C2B;
	Fri, 17 Jan 2020 20:21:27 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id 96E861743A1; Fri, 17 Jan 2020 15:21:26 -0500 (EST)
Date: Fri, 17 Jan 2020 15:21:26 -0500
From: "Denys Dmytriyenko" <denis@denix.org>
To: Andreas M?ller <schnitzeltony@gmail.com>
Cc: Khem Raj <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
Subject: Re: [yocto] [RFC PATCH] python: remove Python 2 and all supporting classes
Message-ID: <20200117202126.GY4735@denix.org>
References: <20200117141632.3809-1-ross.burton@intel.com>
 <fe0eae43-f005-6062-cd0b-18788aeb0e88@gmail.com>
 <CALbNGRTvOk6YQ_vD1VmNA+RD-1dNc2J+mdKxpq971V=D2t7-Hg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALbNGRTvOk6YQ_vD1VmNA+RD-1dNc2J+mdKxpq971V=D2t7-Hg@mail.gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jan 17, 2020 at 09:15:09PM +0100, Andreas M?ller wrote:
> On Fri, Jan 17, 2020 at 7:35 PM Khem Raj <raj.khem@gmail.com> wrote:
> >
> > On 1/17/20 6:16 AM, Ross Burton wrote:
> > > Python 2 ceased being maintained on the 1st January 2020.  We've already
> > > removed all users of it from oe-core so the final step is to move the
> > > recipe and supporting classes to meta-python2.
> > >
> > > The following are removed in this commit:
> > > - python and python-native 2.7.17
> > > - python-setuptools
> > > - The classes pythonnative, pythondir, distutils, setuptools
> > >
> >
> > perhaps add them to meta-py2 first before this lands
> Just a question: What is the plan with all those recipes which are
> going to fail (most headaches I have with old waf): Will meta-oe /
> meta-networking..., depend on meta-py2 or kick them out or?

What, not calling it the worst patch of the year? And the year's just 
started... :)
