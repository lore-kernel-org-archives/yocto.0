Received: from wp323.webpack.hosteurope.de (wp323.webpack.hosteurope.de [80.237.133.92])
 by mx.groups.io with SMTP id smtpd.web09.7110.1612528391830720000
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Feb 2021 04:33:13 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: delisys.ch, ip: 80.237.133.92, mailfrom: n.jeker@delisys.ch)
Received: from 84-75-156-97.dclient.hispeed.ch ([84.75.156.97] helo=[192.168.0.56]); authenticated
	by wp323.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1l80IP-0006bo-8Q; Fri, 05 Feb 2021 13:33:09 +0100
Message-ID: <3406ee62ab892c12242173abb7477c231b1acfde.camel@delisys.ch>
Subject: Re: [yocto] RT patch for 5.4.74?
From: "Nicolas Jeker" <n.jeker@delisys.ch>
To: jchludzinski@vivaldi.net
Cc: yocto@lists.yoctoproject.org
In-Reply-To: <73695736cd2d0a7d20ba76d3e22f5366@vivaldi.net>
References: <1660AB7B19F04B29.20430@lists.yoctoproject.org>
	 <73695736cd2d0a7d20ba76d3e22f5366@vivaldi.net>
Date: Fri, 05 Feb 2021 13:33:08 +0100
MIME-Version: 1.0
User-Agent: Evolution 3.38.3 
X-bounce-key: webpack.hosteurope.de;n.jeker@delisys.ch;1612528392;c688dfe9;
X-HE-SMSGID: 1l80IP-0006bo-8Q
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2021-02-04 at 17:39 -0500, jchludzinski via
lists.yoctoproject.org wrote:
>  From Altera/Intel?
> 
> On 2021-02-04 17:20, jchludzinski via lists.yoctoproject.org wrote:
> > Is there an RT patch for 5.4.74?
> > (I've used patch-5.4.44-rt27.patch.)

This is the official download page for the RT patches:
https://wiki.linuxfoundation.org/realtime/preempt_rt_versions

There is also a section about which patches are actively maintained.

As written on this page, the archive with all RT patches is located
here: https://cdn.kernel.org/pub/linux/kernel/projects/rt/

You can find a matching patch for your version in the 5.4/older
directory.

Be aware that the newest 5.4 LTS kernel is 5.4.95. If possible I would
try to upgrade to this version.

> > ---John

