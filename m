Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
 by mx.groups.io with SMTP id smtpd.web10.10991.1585314571313010236
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Mar 2020 06:09:31 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.16, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 48phyc5gKSz5tlC;
	Fri, 27 Mar 2020 14:09:28 +0100 (CET)
Date: Fri, 27 Mar 2020 14:09:27 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: stefan.wenninger@evopro-ag.de
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Mechanism behind pkg_postinst_ontarget_${PN} #yocto
Message-ID: <20200327130927.dwe5tooql4p4s2d4@qschulz>
References: <CANNYZj943hZyGefTNaAvjtcL=wK38N4pWB=RVQE89Aa_skJGWg@mail.gmail.com>
 <15437.1585311983365540635@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <15437.1585311983365540635@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Stefan,

On Fri, Mar 27, 2020 at 05:26:23AM -0700, stefan.wenninger@evopro-ag.de wrote:
> I think the relevant part for me in that script is the func exec_postinst_scriplets(). It looks to me as if this function iterates through all scripts in the /etc/deb-postinsts directory in my case and executes them with "sh".
> My problem seems to have stemmed from confusion on my part about what package the postinst attaches to.
> The postinst belongs to the package with the same name as my recipe because of the _${PN}. However I specified that my recipe produces another package with the PROVIDES ="" variable.

I think you meant PACKAGES and not PROVIDES here. If that is the case,
then yes, congrats, you found the root cause :)

Otherwise, I think there might be something worth debugging and maybe
reporting.

Quentin
