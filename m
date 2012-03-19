Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28054E013A5;
	Mon, 19 Mar 2012 10:17:11 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q2JHH9Ce032152;
	Mon, 19 Mar 2012 17:17:09 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 31030-10; Mon, 19 Mar 2012 17:17:05 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q2JHGxWK032146
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 19 Mar 2012 17:17:00 GMT
Message-ID: <1332177420.9740.51.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Xu, Jiajun" <jiajun.xu@intel.com>
Date: Mon, 19 Mar 2012 17:17:00 +0000
In-Reply-To: <90741FE9B50D654690EB940EDB456C8E091117@SHSMSX101.ccr.corp.intel.com>
References: <90741FE9B50D654690EB940EDB456C8E0908E7@SHSMSX101.ccr.corp.intel.com>
	<1332152778.9740.3.camel@ted>
	<90741FE9B50D654690EB940EDB456C8E091117@SHSMSX101.ccr.corp.intel.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto weekly bug trend charts -- WW11
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
X-List-Received-Date: Mon, 19 Mar 2012 17:17:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-03-19 at 15:32 +0000, Xu, Jiajun wrote:
> > Hi Jiajun,
> > 
> > On Mon, 2012-03-19 at 08:49 +0000, Xu, Jiajun wrote:
> >> 	The overall open bug trend increased a lot in last week. The new
> >> submitted vs. fixed bug number is 64 vs. 52. Some fixed bugs are
> >> enhancement bug, which are not calculated into WDD data. WDD number
> >> and Open Bug number are 938 and 188. Bug status of WW11 could be
> >> found on https://wiki.yoctoproject.org/wiki/Yocto_Bug_Trend.
> > 
> > I agree that there were 64 vs 52 bugs last week which is a change of 12 bugs.
> > The top two charts show increases of 50 and 30 bugs though so the
> > numbers don't seem to add up for me :/. I appreciate the bugzilla
> > update upset the accounting but it looks like some of the historical
> > data is inaccurate somewhere :(
> 
> Good catch. :)
> For the first picture, it is the trend of open bugs by
> importance(High/Medium/Low/Undecided) with all bugs included. For the
> second picture, it is the trend of open bugs by
> severity(minor/normal/major/critical) without enhancement bugs. The
> first picture is to give us a whole picture of all open bugs. The
> second one is to give us a true picture of the real bugs - without
> bugs created for feature enabling.

Right, I like the trend charts and the information they generate is
extremely useful but I do worry that if the information is inaccurate,
we can make bad decisions based upon it. What really worries me now is
I'm in a position where I don't trust the data and it doesn't make
sense?

Do we have any way to correct the data? If I understand how you
currently generate these, I suspect it might be hard since you rely on
output from bugzilla whine emails?

Would it be possible to query the bugzilla data differently to be able
to completely build the chart profiles directly from absolute data
rather than indirectly though incremental data?

I'm wondering about the options of:

a) Any other API bugzilla exposes for queries?
b) Run scripts against bugzilla web API to obtain the necessary data?
c) Query the bugzilla database directly

I've cc'd Michael since he might be able to help us get access to the
data. Just for Michael's reference, what we need is to be able to figure
out:

a) What was the open bug count at time X of undecided, low, medium and
high bugs?
b) What was the open bug count at time X of minor, normal, major and
critical bugs?
c) Between times W and X, what number of bugs were submitted of type
undecided, low, medium and high?
d) Between times W and X, what number of bugs were resolved of type
undecided, low, medium and high?

Where W-X is 7 days and X is in general the end of a week so we can
generate the charts shown on:

https://wiki.yoctoproject.org/wiki/Yocto_Bug_Trend

I can think of ways I could script this although it might look like a
DoS attack against the server :) I'm open to ideas on how we could fix
this. Bonus marks for automatically generating the charts (which
thinking about it, I have done before and wasn't that hard)!

> BTW, when I check the open bug data, I find that a new variable is
> introduced with new bugzilla for field "severity" - janitors. We do
> not include the bugs marked as janitors in "Yocto Weekly Open bug
> Trend(Severity)". My thinking is that janitors is similar with
> enhancement. We could treat it as enhancement(with weight value "0"),
> or if we think it should be included into WDD, we could set a weight
> value for it. How do you think of it?
> Fortunately, we only have 4 bugs marked as janitors, and they are all
> new reported last week. We could simply update the bug trend once we
> make the decision.

The janitor changes happened very recently and I think Dave has
commented on this piece.

Cheers,

Richard


