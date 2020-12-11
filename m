Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
 by mx.groups.io with SMTP id smtpd.web10.8323.1607700180202444937
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Dec 2020 07:23:00 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.16, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 4Csvg51MwXz5tlB;
	Fri, 11 Dec 2020 16:22:57 +0100 (CET)
Date: Fri, 11 Dec 2020 16:22:55 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: sateesh m <sateesh0457@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] cpu_count() got an unexpected keyword argument 'at_least'
Message-ID: <20201211152255.tyultfp4eyzx3hw4@qschulz>
References: <y4Bt.1607699657163733559.sEYQ@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <y4Bt.1607699657163733559.sEYQ@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Sateesh,

On Fri, Dec 11, 2020 at 07:14:17AM -0800, sateesh m wrote:
> Hi Guys,
> 
> I got expansion error during parsing. I want to fix this bug. can anybody know this issue please Update me.
> 
> Traceback (most recent call last):
> File "Var <PIGZ>", line 1, in <module>
> bb.data_smart.ExpansionError: Failure expanding variable PIGZ, expression was -p ${@oe.utils.cpu_count(at_least=2)} which triggered exception TypeError: cpu_count() got an unexpected keyword argument 'at_least'
> 

Are you sure all layers are checked out at the same branch? (e.g.
`dunfell` branch (or a branch with LAYERSERIESCOMPAT in conf/layer.conf
with dunfell in it))?

I suspect there was a change in oe/utils.py that now accepts the
at_least argument but didn't for some time. My guess is that you use a
layer checked out to a more recent version than the one
poky/openembedded-core is checkout out to.

If you've all layers with the same checked out branch (or compatible
branch), please give us the branch you use for each layer you add to
your build so we can check things up.

Cheers,
Quentin
