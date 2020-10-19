Received: from bsmtp3.bon.at (bsmtp3.bon.at [213.33.87.17])
 by mx.groups.io with SMTP id smtpd.web10.11263.1603106967815384096
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Oct 2020 04:29:28 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.17, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp3.bon.at (Postfix) with ESMTPSA id 4CFF043k8qz5tlT;
	Mon, 19 Oct 2020 13:29:23 +0200 (CEST)
Date: Mon, 19 Oct 2020 13:29:22 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: steven.monsees@baesystems.com
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto methodology to port from older yocto revisions to current
Message-ID: <20201019112922.l6d4c42sf2hwrpyg@qschulz>
References: <MADEUP.163F60F774955E72.8803@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <MADEUP.163F60F774955E72.8803@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Steve,

On Mon, Oct 19, 2020 at 11:22:41AM +0000, Monsees, Steven C (US) via lists.yoctoproject.org wrote:
> 
> Hello:
> 
> I am currently at Yocto release "Rocko 2.4.1" and I am looking into the effort to port to the latest Yocto release...
> 
> We have been using this  rocko platform revision for the last few years in a project, and now want to move to the latest supported release.
> 
> Is there a preferred established methodology/guidelines when porting projects from much older established revisions of Yocto?
> 

You have a few of the changes highlighted in:
https://docs.yoctoproject.org/ref-manual/migration.html

Obviously, you'd need to do all the changes between Rocko and the
version you're targetting (highly recommend dunfell (3.1) as it's an
LTS).

> Is it considered better to port an established project directly to a new Yocto release, or to slowly migrate the yocto revision to the desired release ?
> 

I've done one upgrade only (krogoth 2.1 to thud 2.6) and it was direct,
I'm not sure there's any benefit in doing incremental upgrades?

Good luck :)
Quentin
