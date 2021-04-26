Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
 by mx.groups.io with SMTP id smtpd.web08.7727.1619447761989505981
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Apr 2021 07:36:02 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.16, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 4FTSB713Bhz5tlH;
	Mon, 26 Apr 2021 16:35:58 +0200 (CEST)
Date: Mon, 26 Apr 2021 16:35:57 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Martin Hollingsworth <martin.hollingsworth@itk-engineering.de>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Switching a recipe between git head and git tag (for a release)
Message-ID: <20210426143557.hip35352ebd2wfit@qschulz>
References: <f0ca1454c6894538bf2393bb6b232ff4@itk-engineering.de>
MIME-Version: 1.0
In-Reply-To: <f0ca1454c6894538bf2393bb6b232ff4@itk-engineering.de>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Martin,

On Mon, Apr 26, 2021 at 12:41:18PM +0000, Martin Hollingsworth wrote:
> Hello community,
> 
> I am looking for a best practice / a simple solution for switching the SRCREV in a bitbake recipe between git master HEAD (default, used in nightly builds) and a tagged release version (needed for a reproducible release config).
> 

Look how swupdate recipes are done in meta-swupdate:
https://github.com/sbabic/meta-swupdate/tree/master/recipes-support/swupdate

Basically all variants include the .inc file where everything in common is
specified.

Then the git recipe would point to your git master HEAD (I guess you\re
using AUTOREV mechanism?) and the point releases are e.g. foo_1.5.0.bb
where you put a given SRCREV only (or even a tarball if you want).

In the git recipe, add:

DEFAULT_PREFERENCE = "-1"

This means it'll never be preferred to other recipes (if there are
others).

For your nightly builds, you put PREFERRED_VERSION_foo = "git" in
local.conf and you should be good to go (don't add it for release builds
obviously :) ).

Hope that helps,
Cheers,
Quentin
