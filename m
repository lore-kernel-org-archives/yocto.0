Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web11.8167.1589444438673609733
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 May 2020 01:20:40 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 49N4H70cYvz5tm0;
	Thu, 14 May 2020 10:20:35 +0200 (CEST)
Date: Thu, 14 May 2020 10:20:33 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Damien LEFEVRE <lefevre.da@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] PREFERRED_VERSION
Message-ID: <20200514082033.5uukrrsvpp77upxv@qschulz>
References: <CA+FhBv8kAsM9bHk71bXZ33pF9hep4w6CkBQau0UivS50tLG89w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+FhBv8kAsM9bHk71bXZ33pF9hep4w6CkBQau0UivS50tLG89w@mail.gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Damienm

On Thu, May 14, 2020 at 11:05:56AM +0300, Damien LEFEVRE wrote:
> Hi,
> 
> Should it be possible to set PREFERRED_VERSION in the image definition
> files?
> 

Conceptually, no. An image recipe is a recipe. Global data is global and
local data is local. A recipe (image or package) set local data only.

> I have 2 image files:
> - image1.bb
> - image2.bb : PREFERRED_VERSION_package_1.0.0
> 
> I have a package with 2 versions:
> - package_1.0.0.bb
> - package_1.1.0.bb
> 

Correct way is different distro or machine. Obviously the build impact
is high for such as small difference in images.

Two possible hacks to me:
1. package10_1.0.0.bb and package11_1.1.0.bb but then you need to manage
the dependencies inside recipes (those (r)depending on package10 or
package11). If it's a "final" package which isn't a dependency of
anything else except the image, that's actually not too bad. Then in the
image you add package10 or package11.

2. Have an intermediate recipe which RDEPENDS_${PN} += "package
(=1.1.0)" and the other on "package (=1.0.0)" and install this
intermediate recipe in the appropriate image.

There are shortcomings in both hacks (otherwise they wouldn't be called
that way :) ).

Quentin
