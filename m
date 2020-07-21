Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web10.16451.1595328553655733135
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jul 2020 03:49:14 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4B9wM92Sdlz5tlD;
	Tue, 21 Jul 2020 12:49:08 +0200 (CEST)
Date: Tue, 21 Jul 2020 12:49:07 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Scott Whitney <sdw@inea.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Adding libgpiod to Yocto Warrior 4.19.35 image?
Message-ID: <20200721104907.7on2lykh25goojl3@qschulz>
References: <CAFSZm+hn6=QvhpYHrN4pMqA3fhsjen9pc4fPLdBUr5YrLmrR9w@mail.gmail.com>
 <9865.1595267332953806865@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <9865.1595267332953806865@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Scott,

On Mon, Jul 20, 2020 at 10:48:52AM -0700, Scott Whitney wrote:
> Thanks for the tip, Joel.  I'm still new to this.  How should libgpiod-dev be added to my local.conf?
> Do I just need to add it to EXTRA_IMAGE_FEATURES?  Do I still need to add libgpiod to IMAGE_INSTALL_append?
> 

IMAGE_INSTALL is the way to go.

I recommend spending some time on watching
https://www.youtube.com/playlist?list=PLD4M5FoHz-TxMfBFrDKfIS_GLY25Qsfyj

Here you'll learn that you shouldn't really use local.conf for that
purpose and how to add packages to your image (and many other things).
Consider to subscribe, Jozef streams on Twitch every month or so and
then uploads the videos to the Youtube channel.

Cheers,
Quentin
