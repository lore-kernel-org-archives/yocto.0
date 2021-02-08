Received: from bsmtp1.bon.at (bsmtp1.bon.at [213.33.87.15])
 by mx.groups.io with SMTP id smtpd.web08.864.1612803465063693069
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Feb 2021 08:57:46 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.15, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp1.bon.at (Postfix) with ESMTPSA id 4DZBz41PNRz5tlJ;
	Mon,  8 Feb 2021 17:57:36 +0100 (CET)
Date: Mon, 8 Feb 2021 17:57:35 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: Josef Holzmayr <jester@theyoctojester.info>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] PREFERRED_VERSION_pn-: which version is selected?
Message-ID: <20210208165735.m2w26aprqayh5vrw@qschulz>
References: <dce0933f-55a7-cdab-aec7-3662f130240b@faresoftware.it>
 <CAEt6Nwrtg1PPD8uiiox18v6Tjy7SHZvBv2GndaF9-EaxxoR4jg@mail.gmail.com>
 <81aceffd-691a-9a1b-9dc8-5dffeb4e2bf9@faresoftware.it>
MIME-Version: 1.0
In-Reply-To: <81aceffd-691a-9a1b-9dc8-5dffeb4e2bf9@faresoftware.it>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Mauro,

On Mon, Feb 08, 2021 at 05:23:36PM +0100, Mauro Ziliani wrote:
> My purpose is this.
> 
> For image-recipe_1.0.0 I need recip1 version 0.9
> 
> For image-recipe_1.1.0 I need recip1 version 1.0
> 

You can't. Because recipes cannot impact other recipes.

Now there's a catch, which applies to a VERY specific corner case.

Let's say recip1 is a final package (recip1 recipe is in no DEPENDS of any
recipe, recip1 recipe packages are in no RDEPENDS, only recip1 packages are
mentioned in image recipes).

You can rename recip1_0.9 to recip109_0.9.bb and in your
image-recipe_1.0.0 add recip109 to IMAGE_INSTALL.
in image-recipe_1.1.0 have recip1 in IMAGE_INSTALL.

Obviously, since the recipe name is now different, they are different
recipes to Yocto, which means DEPENDS and RDEPENDS won't be
automatically "updated" to get the version you selected in image-recipe
(because... recipes can't modify other recipes).

Cheers,
Quentin
