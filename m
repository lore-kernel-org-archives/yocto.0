Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
 by mx.groups.io with SMTP id smtpd.web09.12200.1575563938573267330
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Dec 2019 08:38:59 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denix.org, ip: 64.68.198.64, mailfrom: denis@denix.org)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id C5E2F40C2E;
	Thu,  5 Dec 2019 16:38:57 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y5lWUflE5eXa; Thu,  5 Dec 2019 16:38:57 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-86-127.washdc.fios.verizon.net [100.15.86.127])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id 363D040BD2;
	Thu,  5 Dec 2019 16:38:51 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id 70DF8174336; Thu,  5 Dec 2019 11:38:51 -0500 (EST)
Date: Thu, 5 Dec 2019 11:38:51 -0500
From: "Denys Dmytriyenko" <denis@denix.org>
To: Paul Barker <paul@betafive.co.uk>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Nicolas Dechesne <nicolas.dechesne@linaro.org>,
	Yocto discussion list <yocto@yoctoproject.org>,
	yocto@lists.yoctoproject.org
Subject: Re: [yocto] Missing layer in the layer index
Message-ID: <20191205163851.GV4735@denix.org>
References: <04e3ffe3-4733-4010-ac76-29b72ae20c89@www.fastmail.com>
 <1725959.xBGxL0dlV4@shodan>
 <717103ea-e4b3-4e9e-88eb-e31f80eb1cb3@www.fastmail.com>
 <2549390.Jah5HLDfuQ@shodan>
 <246218da-6308-4f5e-ad7d-c203e4d44c92@www.fastmail.com>
MIME-Version: 1.0
In-Reply-To: <246218da-6308-4f5e-ad7d-c203e4d44c92@www.fastmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Dec 05, 2019 at 11:18:22AM +0000, Paul Barker wrote:
> On Thu, 5 Dec 2019, at 10:07, Paul Eggleton wrote:
> > On Thursday, 5 December 2019 9:48:48 PM NZDT Paul Barker wrote:
> > > On Thu, 5 Dec 2019, at 01:37, Paul Eggleton wrote:
> > > > On Wednesday, 4 December 2019 11:10:49 PM NZDT Nicolas Dechesne wrote:
> > > > > > I'd like to make sure meta-sancloud (https://github.com/SanCloudLtd/meta-> > sancloud) is listed in the layer index. I can't see it listed for either
> > > > > > of the branches we support (thud & rocko). However, when I try to add the
> > > > > > layer I get the error message "Layer with this Layer name already exists."
> > > > > >
> > > > > > Perhaps this was already added with an old URL. Is there any way to get
> > > > > > this fixed up?
> > > > > 
> > > > > yes, this is the reason. It exists with the following URL:
> > > > > https://bitbucket.sancloud.co.uk/scm/yb/meta-sancloud.git
> > > > > 
> > > > > The maintainer for that layer is not listed.. was it you?
> > > > 
> > > > Oddly there are no maintainer records and no layer branch records either, 
> > > > hence why the layer doesn't show up properly. I'm unsure how it would have got 
> > > > into that state or how long it's been there, but since it's pretty much 
> > > > useless I have gone ahead and deleted it - Paul, could you please file your 
> > > > submission again?
> > > 
> > > Thanks for that, it may have got broken in the layer index when we moved the repo from our private Bitbucket instance over to GitHub. I've resubmitted now.
> > 
> > Actually looking at the new repo I think I know what might have 
> > happened. The layer index does not currently handle layers that don't 
> > have a master branch perfectly; it could be that the original repo went 
> > away and that caused it to remove all the layerbranches, and since 
> > maintainers are per layerbranch they also got removed. (If a master 
> > layerbranch is there it is protected from deletion even if upstream 
> > master goes away, you just get a warning during parsing.)
> > 
> > I can understand why people don't want to have a master branch if they 
> > aren't using it; that most layers have it was an assumption I made in 
> > the earlier design. It's fixable but will take a bit of work to ensure 
> > the correct behaviour. (This assumption is also reflected in the 
> > submission process - by default a master layerbranch is created, but 
> > for layers without a master branch as the approver you then have to go 
> > in and switch the master branch to whatever the "main" branch is - I 
> > just did that for this layer.)
> 
> Ah ok. I have a pet hate of layers with a master branch that doesn't 
> actually work with master of oe-core and other layers. I'd rather see a 
> repository with no master branch!
> 
> In this case we're building with meta-ti & meta-arago which only support 
> every other release. I know they also have a master branch but it's always 
> been broken when I've tried to use it in the past. I may see if I can give 
> it another try.

FWIW, both of those have been getting some love lately to at least build 
against master, so you might want to try again. But in general, at least 
meta-arago depends on other layers and components that are always lagging 
behind and hence it's rather difficult to keep everything working with 
rapidly changing master...

-- 
Denys
