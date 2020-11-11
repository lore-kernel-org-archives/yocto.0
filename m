Received: from bsmtp3.bon.at (bsmtp3.bon.at [213.33.87.17])
 by mx.groups.io with SMTP id smtpd.web08.5324.1605094500010946226
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Nov 2020 03:35:00 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.17, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp3.bon.at (Postfix) with ESMTPSA id 4CWN1s1tkTz5tl9;
	Wed, 11 Nov 2020 12:34:57 +0100 (CET)
Date: Wed, 11 Nov 2020 12:34:56 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Bel Hadj Salem Talel <bhstalel@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Split kernel patches over different machines
Message-ID: <20201111113455.x5vh7uifmg3xfstv@qschulz>
References: <1dsw.1605094233511014181.pYzy@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <1dsw.1605094233511014181.pYzy@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Talel,

On Wed, Nov 11, 2020 at 03:30:33AM -0800, Bel Hadj Salem Talel wrote:
> Hi All,
> 
> I created two different machines "menzu-console" and "menzu-media"
> I have main patch for device tree for both , and only one patch specific for menzu-media machine
> So in the linux recipe bbappend I want to set something like this:
> SRC_URI += "file://main.patch" # FOR BOTH MACHINES
> SRC_URI_menzu-media += "file://media.patch" # FOR menzu-media ONLY
> 

SRC_URI_append_mezu-media = " file://media.patch"
is what you should use.

The issue with your suggestion is that it **replaces** the original
variable iff the recipe is built for menzu-media. What you want is to
append to the variable iff the recipe is built for menzu-media, that's
what the line above does.

Quentin
