Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
 by mx.groups.io with SMTP id smtpd.web10.4609.1576489463338666265
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Dec 2019 01:44:23 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.16, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 47bxF04YNYz5tlP;
	Mon, 16 Dec 2019 10:44:20 +0100 (CET)
Date: Mon, 16 Dec 2019 10:44:19 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Tuomas Huuki <tuomas.huuki@crosscontrol.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Appending to recipe created by BBCLASSEXTEND
Message-ID: <20191216094419.peydthzzf4zr2opq@qschulz>
References: <BYAPR18MB2598D7FF6A015A96AD31EA28F9510@BYAPR18MB2598.namprd18.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <BYAPR18MB2598D7FF6A015A96AD31EA28F9510@BYAPR18MB2598.namprd18.prod.outlook.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Tuomas,

On Mon, Dec 16, 2019 at 06:33:02AM +0000, Tuomas Huuki wrote:
> Hello,
> I'm using yocto warrior and have a recipe that is extended via BBCLASSEXTEND in to -native and -nativesdk. I also need an append for this recipe, including the "unextended" recipe. For example:
> my-recipe_1.0.0.bb includes BBCLASSEXTEND = "native" and thus generates my-recipe and my-recipe-native
> I also have a my-recipe_1.0.0.bbappend where I append a path to the recipe. The issue is, that it only works for the my-recipe, and not the extenend -native or -nativesdk.

Please explain what you're doing exactly, maybe even the content of your
bbappend and/or the original recipe and what you're expecting to happen,
your description is too vague.

FYI, variables and tasks can be overriden per "class" in the same
recipe.

FOO = "a"
FOO_class-target = "b"
FOO_class-native = "c"
FOO_class-nativesdk = "d"

In that case, FOO will never be `a` (except if there is another class in
BBCLASSEXTEND).

So maybe your "path" or variable is overridden for the native recipe and
you need to do the same trick for FOO_class-native.

Regards,
Quentin
