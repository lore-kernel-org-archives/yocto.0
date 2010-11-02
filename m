Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id CDE554C80287
	for <yocto@yoctoproject.org>; Tue,  2 Nov 2010 11:09:53 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oA2G9nbp006867;
	Tue, 2 Nov 2010 16:09:49 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 06711-02; Tue,  2 Nov 2010 16:09:45 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oA2G9gRW006861
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 2 Nov 2010 16:09:43 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Tom Zanussi <tom.zanussi@intel.com>
In-Reply-To: <1288709292.2384.8.camel@elmorro>
References: <AANLkTi=zOCosKwknHK4nN3dps6hmv4EhnY3zYU6w5Hqp@mail.gmail.com>
	<1288455628.13568.13.camel@elmorro>	<4CCE2FD8.7010006@windriver.com>
	<AANLkTinTjCFQXQ9OJM=r+s6MWduMe0jG25d9=jHiWqbS@mail.gmail.com>
	<1288709292.2384.8.camel@elmorro>
Date: Tue, 02 Nov 2010 16:09:34 +0000
Message-ID: <1288714174.28481.1725.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	tiagoprn <tiagoprn@gmail.com>
Subject: Re: yocto tools on a nokia n800
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 02 Nov 2010 16:09:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-11-02 at 09:48 -0500, Tom Zanussi wrote:
> On Tue, 2010-11-02 at 06:20 -0700, tiagoprn wrote:
> > Hello again!
> > 
> > I think nokia n8xx could be a nice example of what yocto/poky are
> > capable of.
> > 
> > Especially now that Nokia has abandoned this devices, it would be cool
> > to have a new OS being supported on it. 
> > 
> 
> Yes, I agree.
> 
> > I'm new to poky, so, if you could make it easier to build the toochain
> > to build it to a n800, me and many other n8xx owners would be quite
> > happy. 
> 
> Right, it doesn't seem to be working out of the box - I'll take a look
> and see if we can't rescue it from meta-extras...
> 
> BTW, I'd actually like to have one of these for myself - can you suggest
> a source for them other than eBay?

Let me chip in with some information here. Poky used to support the n800
machine semi-officially and it ran sato quite well including the wiki
and touchscreen. The problem has been that the xserver and kernel
recipes were not updated, Poky moved on and these older versions no
longer worked/interacted well. For this reason, the machine was moved to
meta-extras as it no longer worked.

I know its possible to make it work again and there shouldn't be massive
amounts of effort needed. If someone does step up and fixes it up and
agrees to maintain it, the machine can come back. It is going to need
someone to give it some TLC though.

Cheers,

Richard


