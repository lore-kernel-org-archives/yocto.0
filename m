Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by mx.groups.io with SMTP id smtpd.web09.7209.1575541162012696027
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Dec 2019 02:19:22 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: linux.intel.com, ip: 134.134.136.126, mailfrom: paul.eggleton@linux.intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Dec 2019 02:19:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,281,1571727600"; 
   d="scan'208";a="386122460"
Received: from lokx-mobl1.gar.corp.intel.com (HELO shodan.localnet) ([10.249.69.245])
  by orsmga005.jf.intel.com with ESMTP; 05 Dec 2019 02:19:17 -0800
From: "Paul Eggleton" <paul.eggleton@linux.intel.com>
To: Paul Barker <paul@betafive.co.uk>
Cc: Nicolas Dechesne <nicolas.dechesne@linaro.org>, Yocto discussion list <yocto@yoctoproject.org>, yocto@lists.yoctoproject.org
Subject: Re: [yocto] Missing layer in the layer index
Date: Thu, 05 Dec 2019 23:07:11 +1300
Message-ID: <2549390.Jah5HLDfuQ@shodan>
Organization: Intel Corporation
In-Reply-To: <717103ea-e4b3-4e9e-88eb-e31f80eb1cb3@www.fastmail.com>
References: <04e3ffe3-4733-4010-ac76-29b72ae20c89@www.fastmail.com> <1725959.xBGxL0dlV4@shodan> <717103ea-e4b3-4e9e-88eb-e31f80eb1cb3@www.fastmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, 5 December 2019 9:48:48 PM NZDT Paul Barker wrote:
> On Thu, 5 Dec 2019, at 01:37, Paul Eggleton wrote:
> > On Wednesday, 4 December 2019 11:10:49 PM NZDT Nicolas Dechesne wrote:
> > > > I'd like to make sure meta-sancloud (https://github.com/SanCloudLtd/meta-> > sancloud) is listed in the layer index. I can't see it listed for either
> > > > of the branches we support (thud & rocko). However, when I try to add the
> > > > layer I get the error message "Layer with this Layer name already exists."
> > > >
> > > > Perhaps this was already added with an old URL. Is there any way to get
> > > > this fixed up?
> > > 
> > > yes, this is the reason. It exists with the following URL:
> > > https://bitbucket.sancloud.co.uk/scm/yb/meta-sancloud.git
> > > 
> > > The maintainer for that layer is not listed.. was it you?
> > 
> > Oddly there are no maintainer records and no layer branch records either, 
> > hence why the layer doesn't show up properly. I'm unsure how it would have got 
> > into that state or how long it's been there, but since it's pretty much 
> > useless I have gone ahead and deleted it - Paul, could you please file your 
> > submission again?
> 
> Thanks for that, it may have got broken in the layer index when we moved the repo from our private Bitbucket instance over to GitHub. I've resubmitted now.

Actually looking at the new repo I think I know what might have happened. The layer index does not currently handle layers that don't have a master branch perfectly; it could be that the original repo went away and that caused it to remove all the layerbranches, and since maintainers are per layerbranch they also got removed. (If a master layerbranch is there it is protected from deletion even if upstream master goes away, you just get a warning during parsing.)

I can understand why people don't want to have a master branch if they aren't using it; that most layers have it was an assumption I made in the earlier design. It's fixable but will take a bit of work to ensure the correct behaviour. (This assumption is also reflected in the submission process - by default a master layerbranch is created, but for layers without a master branch as the approver you then have to go in and switch the master branch to whatever the "main" branch is - I just did that for this layer.)

Cheers
Paul


-- 

Paul Eggleton
Intel System Software Products


