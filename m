Return-Path: <wmills@ti.com>
Received: from bear.ext.ti.com (bear.ext.ti.com [192.94.94.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB15CE0138C
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 08:50:52 -0800 (PST)
Received: from dlep26.itg.ti.com ([157.170.170.121])
	by bear.ext.ti.com (8.13.7/8.13.7) with ESMTP id q11GoprM009350;
	Wed, 1 Feb 2012 10:50:51 -0600
Received: from DFLE70.ent.ti.com (localhost [127.0.0.1])
	by dlep26.itg.ti.com (8.13.8/8.13.8) with ESMTP id q11GooYK023875;
	Wed, 1 Feb 2012 10:50:51 -0600 (CST)
Received: from dlelxv22.itg.ti.com (172.17.1.197) by dfle70.ent.ti.com
	(128.247.5.40) with Microsoft SMTP Server id 14.1.323.3; Wed, 1 Feb 2012
	10:50:17 -0600
Received: from [172.24.16.66] (h16-66.vpn.ti.com [172.24.16.66])	by
	dlelxv22.itg.ti.com (8.13.8/8.13.8) with ESMTP id q11GoGJq005759;
	Wed, 1 Feb 2012 10:50:16 -0600
Message-ID: <4F296D48.4080807@ti.com>
Date: Wed, 1 Feb 2012 11:50:16 -0500
From: William Mills <wmills@ti.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Joshua Immanuel <josh@hipro.co.in>
References: <1327993829.2696.18.camel@babel.joshhome>	<1328078233.2628.4.camel@babel.joshhome>
	<1328111395.2628.32.camel@babel.joshhome>
In-Reply-To: <1328111395.2628.32.camel@babel.joshhome>
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
X-List-Received-Date: Wed, 01 Feb 2012 16:50:53 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit



On 02/01/2012 10:49 AM, Joshua Immanuel wrote:
> Hello all,
>
> On Wed, 2012-02-01 at 12:07 +0530, Joshua Immanuel wrote:
>>> At present in my custom image recipe I've added the following
>>> lines
>>>
>>>          SOME_VARIABLE = "Blah"
>>>          do_bootimg[depends] += "base-files:do_install"
>>>
>>> But the contents of ${SOME_VARIABLE} is not available in the
>>> 'base-files' recipe. Even
>>>
>>>          export SOME_VARIABLE = "Blah"
>>>
>>> doesn't solve the problem.
>>
>>          $ bitbake custom-image -c devshell
>>
>> In the above devshell I can find the contents of ${SOME_VARIABLE}
>> available but the content of it is empty in 'base-files' recipe.
>
> In other words, I need to define global variables in a package which can
> be used across multiple packages. At present the only option I have is
> to export the variable in build/conf/local.conf. IMHO, this doesn't feel
> like a proper solution (as the variable is my layer specific). Moreover,
> I can't change the value of it in one package to be used in other
> package(s).
>
> Is there any other way to do this? Please guide me.
>

I am not sure I can give you a better option that local.conf but I can 
explain why what your doing does not work.

It may feel from your usage that the image recipe is the ancestor of all 
the recipes but this is really not true.  The settings in a image recipe 
effect the assembly of that image and not the packages that they depend 
on.  An image could be assembled from packages that were built long ago 
or inherited via shared state.

settings in local,conf on the other hand affect all recipes.  If you add 
something there it will be seen by all recipes.  Unfortunately this 
means that all recipes are dependent on the settings and everything will 
need to be rebuilt in case the new setting effects them.  I believe this 
also means you will not be able to used share state with someone with a 
different setting of (or unset) SOME_VARIABLE.  (Well you can but you 
will both be rebuild everything.)

Alternatives to the whole approach are to make alternative packages for 
the various cases (busybox-minimal vs busybox-full) or use an image task 
to create an asset in the file system that then makes a difference at 
run time.

> Regards
> Joshua
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

