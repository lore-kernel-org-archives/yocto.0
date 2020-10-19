Received: from bsmtp1.bon.at (bsmtp1.bon.at [213.33.87.15])
 by mx.groups.io with SMTP id smtpd.web09.12802.1603113145818191191
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Oct 2020 06:12:26 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.15, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp1.bon.at (Postfix) with ESMTPSA id 4CFHGt0snQz5tlD;
	Mon, 19 Oct 2020 15:12:21 +0200 (CEST)
Date: Mon, 19 Oct 2020 15:12:20 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Using RDEPENDS in bbappend files to install additional packages?
Message-ID: <20201019131220.4g37cxuoiu23p35g@qschulz>
References: <20201019090639.Horde.Tqhv0ILpUhAkZNsSAVutZ0r@crashcourse.ca>
MIME-Version: 1.0
In-Reply-To: <20201019090639.Horde.Tqhv0ILpUhAkZNsSAVutZ0r@crashcourse.ca>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Robert,

On Mon, Oct 19, 2020 at 09:06:39AM -0400, Robert P. J. Day wrote:
> Another question regarding recipe/coding style (based on actual
> examples I run across in existing code bases).
> 
> In one vendor's layer, in file "lighttpd_1.4.%.bbappend", I read:
> 
>   RDEPENDS_${PN} += " \
>         lighttpd-module-alias \
>         lighttpd-module-auth \
>         lighttpd-module-cgi \
>         lighttpd-module-compress \
>         lighttpd-module-evasive \
>         lighttpd-module-evhost \
>         ... sizable snip of many ore modules ...
> 
> There's little question that this is being used to incorporate a
> number of optional modules into the final image, but I'm assuming
> that this is really not the recommended way to do it.
> 
> The YP reference manual defines RDEPENDS as identifying "other
> packages that must be installed in order for the package to function
> correctly," which suggests that it's the base recipe that should
> define actual runtime dependencies.
> 
> I would have thought that the natural way to do the above would
> be to either use IMAGE_INSTALL_append or (my preference) define
> a packagegroup that includes all those packages, then simply
> include the packagegroup.
> 
> In short, am I reasonable in assuming that bbappend files should
> not (ab)use RDEPENDS in the above way?
> 

I'd say they either should be added to IMAGE_INSTALL one by one, or
being put into a packagegroup or even use RRECOMMENDS instead of
RDEPENDS. To me, it feels wrong too, if it's really not a need, they
should not be in RDEPENDS.

Quentin
