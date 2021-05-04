Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
 by mx.groups.io with SMTP id smtpd.web08.2812.1620116761578814916
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 May 2021 01:26:02 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.16, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 4FZCbV0JMJz5tlG;
	Tue,  4 May 2021 10:25:57 +0200 (CEST)
Date: Tue, 4 May 2021 10:25:56 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: sven@svenschwermer.de
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] SSH_AUTH_SOCK unavailable when pulling modules #golang
Message-ID: <20210504082556.6xxsgfnzjcsqcsmy@qschulz>
References: <yseH.1620066309524235040.gUmM@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <yseH.1620066309524235040.gUmM@lists.yoctoproject.org>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, May 03, 2021 at 11:25:09AM -0700, Sven via lists.yoctoproject.org wrote:
> Hi,
> 
> I have put together a recipe inheriting from go-mod. This project depends on out-of-repo modules that sit in private repos. As long as the SSH key required to pull the requirements is present as a file (under $HOME/.ssh), everything works fine. However, as soon as the SSH credentials are only available via agent and $SSH_AUTH_SOCK, the do_compile step fails. I have traced this down to the fact that the $SSH_AUTH_SOCK environment variable is not available to do_compile which is when the requirements are pulled. This is the sort of error message I get:
> 

On Ubuntu, when the password for my SSH key is in the gnome keyring, I
run:
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh); export SSH_AUTH_SOCK
in the terminal that will run bitbake.

No idea if it's the proper way to make it work, but for the few times I
need to fetch new revisions of private repos, it's been good enough to
me.

Hope this helps,
Cheers,
Quentin
