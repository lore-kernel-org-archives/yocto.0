Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web12.17614.1596200001000998874
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Jul 2020 05:53:21 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4BJ6dp05djz5tlD;
	Fri, 31 Jul 2020 14:53:17 +0200 (CEST)
Date: Fri, 31 Jul 2020 14:53:16 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Rob Prowel <rprowel@comcast.net>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] one way hash analogy of yocto
Message-ID: <20200731125316.pt63tzszs6b7eys3@qschulz>
References: <e4947fc8-98a7-c74d-0e9b-a33a90bb4495@comcast.net>
MIME-Version: 1.0
In-Reply-To: <e4947fc8-98a7-c74d-0e9b-a33a90bb4495@comcast.net>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Robm

On Fri, Jul 31, 2020 at 08:45:17AM -0400, Rob Prowel wrote:
> What I really need is information about introspection or the ability to
> query an existing yocto distro to return data about features included and
> more to the point, to understand EXACTLY where recipes or classes are
> overridden or appended.  You can only do so much with recursive grep and
> find scripts.  Based on what I've seen so far, it seems that capability is
> lacking in yocto.
> 
> In essence I have what is like a one way hash ABCDEFG-->X and I have X but
> cannot fully figure out the whole input that generated it.
> 
> An example would be an overridden task method like
> 
> do_something
> 
> I need a quick way to determine the highest priority level that task was
> overridden or appended in for a given recipe.
> 
> a command like "bitbake -describe -c do_something my-recipe"
> 
> and it should also be possible to query this kind of information for
> variables and not just methods or tasks.
> 
> Do these tools exist or am I looking at parsing megabytes of verbose build
> data and tracing output to find what I'm looking for?
> 

For location of bbappends and recipes, etc.:
bitbake-layers show-appends
bitbake-layers show-recipes

For variables:
bitbake <recipe> -e | more
and find the line starting with the variable you're looking for. From
there, look the lines just before and you'll have the history of how the
variables was constructed.

bitbake <recipe> -e | awk '/^# \$FOOBAR \[/,/^FOOBAR/'
might do it for you. Not tested by me so can't attest. (source:
https://theyoctojester.info/session_14/main.html)

I do not know if there is such a mechanism for tasks, but the
bitbake-layers should help you get started in your quest of overridden
tasks.

Also, I'm not sure it matters much where the tasks are overridden? Just
override them again with your own bbappend (especially if it's a layer
you don't own (read upstream or provided by vendor)).

Quentin
