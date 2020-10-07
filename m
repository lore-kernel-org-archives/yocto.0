Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web11.3076.1602082541445938117
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Oct 2020 07:55:42 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4C5y7Z6Bt3z5tlF;
	Wed,  7 Oct 2020 16:55:38 +0200 (CEST)
Date: Wed, 7 Oct 2020 16:55:37 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Bel Hadj Salem Talel <bhstalel@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] NPM package recipe, npm not found
Message-ID: <20201007145537.higgcang7dgyaied@qschulz>
References: <iWTs.1602082318809855540.VrN5@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <iWTs.1602082318809855540.VrN5@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Talel,

On Wed, Oct 07, 2020 at 07:51:58AM -0700, Bel Hadj Salem Talel wrote:
> Hi,
> 
> I'm trying to make a recipe for an NPM package.
> The source files are local.
> Here is my recipe:
> 
> LICENSE="CLOSED"
> SRC_URI+="file://sense-web_${PV].zip"
> S=${WORKDIR}
> DEPENDS+="nodejs"

Just guessing but probably nodejs-native here?

Although, you might want to have a look at the npm.bbclass and try to
inherit it. Considering how complex the class looks like, it might be
easier to get started with the class and fix what needs to be fixed.

Quentin
