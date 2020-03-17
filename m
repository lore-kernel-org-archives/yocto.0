Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
 by mx.groups.io with SMTP id smtpd.web10.2480.1584483351740964840
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Mar 2020 15:15:52 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.16, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 48hnYc6F5Xz5tlB;
	Tue, 17 Mar 2020 23:15:48 +0100 (CET)
Date: Tue, 17 Mar 2020 23:15:47 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Emily <easmith5555@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] How to PROVIDE boost-python
Message-ID: <20200317221547.lmx4gdejiksuscab@qschulz>
References: <CAAV2bM0B6pWK3ypKip+NJ4XzJbgqFNNXRrfHtiKMuAORUt+PCg@mail.gmail.com>
 <20200317160443.6pyp7zuonargxrux@qschulz>
 <CAAV2bM2PT0YTq8+Q9vf5aLMeoRnw72NauTuiF8myGroAu1DC=A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAAV2bM2PT0YTq8+Q9vf5aLMeoRnw72NauTuiF8myGroAu1DC=A@mail.gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Emily,

On Tue, Mar 17, 2020 at 12:06:48PM -0500, Emily wrote:
> Hi Quentin -
> 
> That's what I tried originally! DEPENDS on boost and not boost-python gives

I should have read more carefully, sorry.

> me the following error when trying to build my original recipe:
> 
> /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64
> -poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309
> -r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/../../
> libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/7.3.0/ld:
> cannot find -lboost_python-mt
> 
> So I tried a bunch of other this which also didn't seem to work.
> 

So... After googling a little bit I stumbled upon:
https://askubuntu.com/a/486184

"The -mt suffix had been removed. The installed Boost libraries are
multi-threading safe."

I couldn't find an official statement/changelog somewhere so to be taken
with a grain of salt.

But I think you actually need to patch whatever is requiring -lboost_python-mt
and change it to -lboost_python only in your sources.

At the same time, I can't believe you're trying to build a software that
wasn't built in the last 7 years. So I'm sceptical this is the actual
fix?

I tried to access the sources of the SW you're trying to build but from
the few tries I had, couldn't manage to get my hands on it. I'm guessing
some credentials are required.

Can you try the above suggestion and let us know how that goes?

Quentin
