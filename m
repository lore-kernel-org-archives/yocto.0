Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C357CE007FE; Thu, 28 Aug 2014 00:48:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.54 listed in list.dnswl.org]
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71A2AE0049D
	for <yocto@yoctoproject.org>; Thu, 28 Aug 2014 00:48:54 -0700 (PDT)
Received: by mail-pa0-f54.google.com with SMTP id fb1so1501833pad.13
	for <yocto@yoctoproject.org>; Thu, 28 Aug 2014 00:48:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=qimw+gLR1Lo62EpxymIOMLwqELh6qg/l7fjz7mZDlds=;
	b=oK0Plhyk0Oz8QdXI+UOIHckg89VvUNH7rjg/5ZNkV7S0q60NK5WxD4HJo/M4hc7kIS
	3MfkiaQDWhVHGA+0aRxNJxCFahiS7NexB+TSXL+D/9jH22DPtScfaJrECnOnTrMoXpIt
	lIf4qaV1VHlLgS+GwOHbmZERe+AatKzsPQSyaYZSlNsUOfkzj5ErtCqRzd72h9JP20V8
	hhV5O9IhMI/6oV+e/sPqfNCv0PKSCRyHr6LtGQzwWSOJ0cTHfnZOr+j9vtJ0QqEi1qDK
	Rtpx7RsOnlHjnZXZG0Ow4N2FenwDTwWxkKLdN++axRHdO0wvn6qHzuds7RgJkczv+Rlz
	8svQ==
X-Received: by 10.66.174.17 with SMTP id bo17mr3167269pac.98.1409212130541;
	Thu, 28 Aug 2014 00:48:50 -0700 (PDT)
Received: from haswell ([2601:9:3580:7a5:baca:3aff:fe80:aa8f])
	by mx.google.com with ESMTPSA id sf1sm2741570pbb.0.2014.08.28.00.48.49
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 28 Aug 2014 00:48:49 -0700 (PDT)
Date: Thu, 28 Aug 2014 00:52:29 -0700
From: Khem Raj <raj.khem@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20140828075229.GI13139@haswell>
References: <20140828064051.GA13139@haswell> <1409210337.29296.131.camel@ted>
MIME-Version: 1.0
In-Reply-To: <1409210337.29296.131.camel@ted>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org, openembedded-devel@lists.openembedded.org,
	openembedded-core@lists.openembedded.org
Subject: Re: [OE-core] [RFT] Moving on from eglibc to glibc 2.20
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 28 Aug 2014 07:48:57 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On 14-08-28 08:18:57, Richard Purdie wrote:
> On Wed, 2014-08-27 at 23:41 -0700, Khem Raj wrote:
> > Hi All
> > 
> > As we all know eglibc has been merged back into glibc and 2.19 was the
> > last release, here I have put together the recipes for upcoming glibc
> > 2.20 release and removed eglibc 2.19 in favor of move.
> > 
> > I also thought about leaving eglibc in there but then eglibc and glibc
> > were pretty much same as they always have been that it would be an
> > incremental change with lot more patches this time.
> > 
> > The tree is here
> > 
> > http://git.openembedded.org/openembedded-core-contrib/log/?h=kraj/eglibc-to-glibc-2.20
> > 
> > This has not recieved much testing yet and I am looking out for helping
> > hands here, so try it out in your buid environments and machines of
> > interest and report back on issues.
> > 
> > The patches also forward port the options group support and few other
> > patches from eglibc, details are in commit logs, which I think would make 
> > good candidates for future glibc merge.
> > 
> > This tree will be reworked and rebased so sync back if you see issues
> > which we will address here
> > 
> > Thanks for your help
> 
> Thanks for doing this Khem, its quite some work and much appreciated!
> 
> Just to be clear, what is the intent here? Is it intended to get this
> into 1.7 or is this 1.8 material at this point? We're effectively past
> the toolchain freeze point for 1.7, just about at complete feature
> freeze but I'd like to make sure we're thinking the same things.

I am targetting for 1.7 thats why call for wider testing to expedite.  but it could only be decided with some level of
testing. I havent done enough of testing yet myself it to be sure but in coming few days, it
will be lot clear

But if it turns into major issues then we can wait for 1.8 but it will
be quite an effort to keep up with these patches over a long period of time.

> 
> I'm certainly happy to get this through the autobuilder and see what
> happens...
> 

yes, ceertainly would help. 

> Cheers,
> 
> Richard
> 

