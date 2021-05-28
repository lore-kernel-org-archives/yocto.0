Received: from bsmtp1.bon.at (bsmtp1.bon.at [213.33.87.15])
 by mx.groups.io with SMTP id smtpd.web11.6111.1622194510840937012
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 May 2021 02:35:11 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.15, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp1.bon.at (Postfix) with ESMTPSA id 4Fs00B6wxLz5tlF;
	Fri, 28 May 2021 11:35:06 +0200 (CEST)
Date: Fri, 28 May 2021 11:35:05 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Manuel Wagesreither <ManWag@FastMail.FM>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Where to define username/password when fetching sstate via http with basic authentication?
Message-ID: <20210528093505.s2rh2uuejkmwhyzu@qschulz>
References: <5246693f-118f-4c05-93f9-f49cbb3ed5b4@www.fastmail.com>
MIME-Version: 1.0
In-Reply-To: <5246693f-118f-4c05-93f9-f49cbb3ed5b4@www.fastmail.com>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Manuel,

On Fri, May 28, 2021 at 11:26:26AM +0200, Manuel Wagesreither wrote:
> Hello all,
> 
> to speed up builds, we would like to make the CI generated sstate-cache available via internet. Due to IP concerns, we don't want to make it publically available but for authenticated hosts only.
> 
> [1] indicates it is possible to serve the sstate-cache over http with basic authentication [2].
> 
> How does one set the username & password? By putting it into the URL like in the following example, or are other ways available?
> ```
> SSTATE_MIRRORS ?= "\
> file://.* http://username:password@someserver.tld/share/sstate/PATH"
> ```
> 

There is an example in the commit you sent, so I would say:
SSTATE_MIRRORS ?= " \
file://.* http://someserver.tld/share/sstate/PATH;user=username:password;downloadfilename=PATH \n"
?

Cheers,
Quentin
