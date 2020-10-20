Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
 by mx.groups.io with SMTP id smtpd.web12.7008.1603202342730694397
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Oct 2020 06:59:03 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.16, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 4CFwGC3xDBz5tlM;
	Tue, 20 Oct 2020 15:58:59 +0200 (CEST)
Date: Tue, 20 Oct 2020 15:58:58 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Zoltan Kerenyi Nagy <kerenyi.nagy.zoltan@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] network-manager #yocto #nmcli
Message-ID: <20201020135858.vhaorqro77ncpzwm@qschulz>
References: <20201020085740.wmadecvuajrpcit7@qschulz>
 <2995.1603201893466943819@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <2995.1603201893466943819@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Oct 20, 2020 at 06:51:33AM -0700, Zoltan Kerenyi Nagy wrote:
> * I hope this is gona be public *
> 

It is, you just answered the wrong mail so my answer isn't in the body
of this mail.

> I did a diff between your recommended file, and mine, there is no diff, since it's from the same source.
> I understand that I had to install network-manager-nmcli, but how? In the do_install_append() function??

You don't need to change anything in the networkmanager recipe. You need
to add networkmanager-nmcli to the packages installed in your image and
that is done in your image recipe by usually adding it to IMAGE_INSTALL.

I can recommend the videos from our YoctoProject Youtube channel to get
started on Yocto: https://www.youtube.com/watch?v=ThTl4FItfMI&list=PLD4M5FoHz-TxMfBFrDKfIS_GLY25Qsfyj

We also have great docs at: https://docs.yoctoproject.org.

Cheers,
Quentin
