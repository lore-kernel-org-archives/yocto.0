Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
 by mx.groups.io with SMTP id smtpd.web09.8720.1606995875652760558
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Dec 2020 03:44:36 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: crashcourse.ca, ip: 199.212.143.3, mailfrom: rpjday@crashcourse.ca)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.100.179]:53908 helo=localhost.localdomain)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1kkn2H-0000uv-9q; Thu, 03 Dec 2020 06:44:33 -0500
Date: Thu, 3 Dec 2020 06:44:31 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
cc: Andrew Loader <andrew.loader@nz.abb.com>, 
    "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Using OVERRIDES to set variables from outside the recipe file
In-Reply-To: <20201203090554.vjv4qh66mrywpvx3@qschulz>
Message-ID: <2238e5e2-428-1623-c722-e691106b179a@crashcourse.ca>
References: <VI1PR0602MB34879BEDC0B4831D84C6C3EADAF20@VI1PR0602MB3487.eurprd06.prod.outlook.com> <20201203090554.vjv4qh66mrywpvx3@qschulz>
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel8.indieserve.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel8.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel8.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: text/plain; charset=US-ASCII

On Thu, 3 Dec 2020, Quentin Schulz wrote:

> Hi Andrew,
>
> On Thu, Dec 03, 2020 at 03:45:41AM +0000, Andrew Loader wrote:
> > In the bitbake user manual it has an example of how to set the variable value using the OVERRIDE variable
> >
> > OVERRIDES = "architecture:os:machine"
> > TEST = "default"
> > TEST_os = "osspecific"
> > TEST_nooverride = "othercondvalue"
> >
> > Lets say this is in the recipe called "test_0.1.bb" and we remove the OVERRIDES line from it
> >
> > If we want to the OVERRIDES value to configure the recipe externally say in local.conf as I do not want to change the recipe how would I do that?
>
> OVERRIDES is set in configuration files usually (always?). It can be
> either in a distro if you use DISTROOVERRIDES, in a machine if you
> use MACHINEOVERRIDES, and you might be able to add manually to it
> from local.conf or other ways but I think you should go with
> DISTROOVERRIDES or MACHINEOVERRIDES.
>
> Then, the OVERRIDES (which contains MACHINEOVERRIDES:DISTROOVERRIDES
> among other things) will be used in all recipes you can find and it
> should just work.
>
> You can use bitbake -e my-recipe | grep -e "^OVERRIDES=" to check
> the content of the OVERRIDES variable. Note that righmost "OVERRIDE"
> is the one which takes precedence over all others.

  i'm going to weigh in on this, as it *seems* that andrew has the
same misunderstanding i had when, lo those many years ago, i read that
section in the BB manual, and read this:

     OVERRIDES = "architecture:os:machine"
     TEST = "default"
     TEST_os = "osspecific"
     TEST_nooverride = "othercondvalue"

my initial problem with that section was that it wasn't clear that
entities like "architecture" and "os" and so on were *replaceable*, in
that one was supposed to put *examples* of those values in those
places. (laugh if you like, but if one is totally new to overrides,
that section can be misinterpreted in a truly tragic way on first
reading.)

  i recall extending that section to attempt to make it more
understandable, but i think, over the holidays, i'm going to rewrite
it again with a simpler introduction and more examples straight from
the code base. (i believe i was the one who added the example
involving overriding the value of KBRANCH based on the target arch.)

  in any event, i can easily see a much longer and involved
introduction to overrides.

rday
