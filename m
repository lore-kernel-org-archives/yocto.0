Received: from linuxplesk15.openhost.net.nz (linuxplesk15.openhost.net.nz [119.47.118.83])
 by mx.groups.io with SMTP id smtpd.web12.735.1602266934237939250
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Oct 2020 11:08:54 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: bluelightning.org, ip: 119.47.118.83, mailfrom: bluelightning@bluelightning.org)
Received: from linc.localnet (unknown [151.210.231.35])
	by linuxplesk15.openhost.net.nz (Postfix) with ESMTPSA id E5232A42B4;
	Sat, 10 Oct 2020 07:08:49 +1300 (NZDT)
Authentication-Results: linuxplesk15.openhost.net.nz;
        spf=pass (sender IP is 151.210.231.35) smtp.mailfrom=bluelightning@bluelightning.org smtp.helo=linc.localnet
Received-SPF: pass (linuxplesk15.openhost.net.nz: connection is authenticated)
From: "Paul Eggleton" <bluelightning@bluelightning.org>
To: akhilathota499@gmail.com, yocto@lists.yoctoproject.org, Randy MacLeod <randy.macleod@windriver.com>
Subject: Re: [yocto] Bug 10699 - Ensure consistency in repository URLs #yocto #python
Date: Sat, 10 Oct 2020 07:08:49 +1300
Message-ID: <3007907.5fSG56mABF@linc>
In-Reply-To: <0fd65868-c4da-5783-3768-0156e2a0b12e@windriver.com>
References: <P0Lg.1602187991583242378.u0pz@lists.yoctoproject.org> <0fd65868-c4da-5783-3768-0156e2a0b12e@windriver.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi folks

my replies inline below

On Saturday, 10 October 2020 04:25:29 NZDT Randy MacLeod wrote:
> On 2020-10-08 4:13 p.m., akhilathota499@gmail.com wrote:
> > Hi,
> > I would like to work on #10699 -- Ensure consistency in repository URLs
> > bug. Kindly help me to move forward by providing more information on
> > this issue(like where I can find more URL's mentioned in the request)
> 
> Hi Akhila,
> 
> This bug is about the data in the recipes in oe-core and all layers.
> 
> There is a layer tracking system called 'the layer index':
>    https://layers.openembedded.org
> where you can search by various keys such as recipe name, layer name, etc.
> 
> If you go to the bottom of that page, you can find:
>     https://layers.openembedded.org/layerindex/about
> and that page has a link to the source code:
>     http://git.yoctoproject.org/cgit/cgit.cgi/layerindex-web/
> 
> git clone git://git.yoctoproject.org/layerindex-web
> 
> I don't work on this code so if you have questions, hopefully Paul
> (bluelightning) or someone else will help out. My take is that:
> 
>     "we'll probably need to have a table (possibly in the database)
>      that we can populate with mappings for known URLs."
> so you'll need to find where the SRC_URI such as line 8 here:
> 
> http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-devtools/pa
> tch/patch.inc?h=master#n8
> 
> is stored in the layerindex code and add each SRC_URI to a table or
> some other data structure.

Actually for this issue we're not concerned with SRC_URI, just the repo URL at 
the layer level - the database is normalised so that the latter is mostly in 
one place.
 
> Then, when a new layer is added the layerindex would use this table
> to ensure that there are no duplicates that differ only by
> the transport, i.e. "https://" vs "git://", as mentioned in the bug:
>     "The mapping would be done when the entry is submitted."

I would have thought that we'd just need to have some code that can turn one 
URL into its variant in the other protocol, then we can apply that both at 
layer submission time and potentially as a process across the layers in the 
database if needed. Happy to take suggestions though.

Thanks for looking into this Akhila!

Cheers,
Paul


