Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECEBBE00307
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2012 14:27:13 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q12MR6Zb013490;
	Thu, 2 Feb 2012 22:27:06 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 12791-05; Thu,  2 Feb 2012 22:27:02 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q12MQsH1013483
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 2 Feb 2012 22:26:55 GMT
Message-ID: <1328221620.3895.82.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: William Mills <wmills@ti.com>
Date: Thu, 02 Feb 2012 22:27:00 +0000
In-Reply-To: <4F296D48.4080807@ti.com>
References: <1327993829.2696.18.camel@babel.joshhome>
	<1328078233.2628.4.camel@babel.joshhome>
	<1328111395.2628.32.camel@babel.joshhome> <4F296D48.4080807@ti.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: creating global variables in a recipes
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 02 Feb 2012 22:27:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-02-01 at 11:50 -0500, William Mills wrote:
> I am not sure I can give you a better option that local.conf but I can 
> explain why what your doing does not work.
> 
> It may feel from your usage that the image recipe is the ancestor of all 
> the recipes but this is really not true.  The settings in a image recipe 
> effect the assembly of that image and not the packages that they depend 
> on.  An image could be assembled from packages that were built long ago 
> or inherited via shared state.
> 
> settings in local,conf on the other hand affect all recipes.  If you add 
> something there it will be seen by all recipes.  Unfortunately this 
> means that all recipes are dependent on the settings and everything will 
> need to be rebuilt in case the new setting effects them.  I believe this 
> also means you will not be able to used share state with someone with a 
> different setting of (or unset) SOME_VARIABLE.  (Well you can but you 
> will both be rebuild everything.)

Just a small clarification:

With sstate, it actually depends whether SOME_VARIABLE is used by the
given sstate task or its dependencies. We have variable dependency
tracking code and can tell where variables are used and with what value.

The end result is you can have different local.conf files and share
sstate output in many cases, but real differences to the individual task
inputs will get accounted for.

Cheers

Richard



