Received: from bsmtp3.bon.at (bsmtp3.bon.at [213.33.87.17])
 by mx.groups.io with SMTP id smtpd.web08.8248.1620222031885752903
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 May 2021 06:40:32 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.17, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp3.bon.at (Postfix) with ESMTPSA id 4FZyWx2z71z5tlG;
	Wed,  5 May 2021 15:40:29 +0200 (CEST)
Date: Wed, 5 May 2021 15:40:27 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: sven@svenschwermer.de
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] SSH_AUTH_SOCK unavailable when pulling modules #golang
Message-ID: <20210505134027.cxy6pu4nn67jzn3r@qschulz>
References: <20210504082556.6xxsgfnzjcsqcsmy@qschulz>
 <20493.1620221861288135805@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <20493.1620221861288135805@lists.yoctoproject.org>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Sven,

On Wed, May 05, 2021 at 06:37:41AM -0700, Sven via lists.yoctoproject.org wrote:
> Hi Quentin,
> 
> Thanks for your reply. Did you have success with this technique when compiling a go-mod recipe where some of the go dependencies sit in private repos? The standard git fetcher works for me with private repos, that is not the problem.
> 

No, I do not use any custom go-based recipe.

BR,
Quentin
