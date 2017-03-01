Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE45CE0083C; Wed,  1 Mar 2017 08:02:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,KHOP_DYNAMIC
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 KHOP_DYNAMIC Relay looks like a dynamic address
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18775E007AA
	for <yocto@yoctoproject.org>; Wed,  1 Mar 2017 08:02:00 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	v21G0Mgw011799; Wed, 1 Mar 2017 16:01:51 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id HMUtRvXkIZ1Q; Wed,  1 Mar 2017 16:01:50 +0000 (GMT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	v21G1kSt011841
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 1 Mar 2017 16:01:47 GMT
Message-ID: <1488384106.24526.36.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Patrick Ohly <patrick.ohly@intel.com>
Date: Wed, 01 Mar 2017 16:01:46 +0000
In-Reply-To: <1488383463.7785.165.camel@intel.com>
References: <1487625169-22282-1-git-send-email-anibal.limon@linux.intel.com>
	<1488312568.7785.73.camel@intel.com>
	<1488340816.24526.26.camel@linuxfoundation.org>
	<1488352225.7785.83.camel@intel.com>
	<1488381139.24526.30.camel@linuxfoundation.org>
	<1488383463.7785.165.camel@intel.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [OE-core] [PATCHv2] yocto-compat-layer.py: Add script to YP Compatible Layer validation
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
X-List-Received-Date: Wed, 01 Mar 2017 16:02:02 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2017-03-01 at 16:51 +0100, Patrick Ohly wrote:
> On Wed, 2017-03-01 at 15:12 +0000, Richard Purdie wrote:
> > 
> > On Wed, 2017-03-01 at 08:10 +0100, Patrick Ohly wrote:
> > > 
> > > Is the "build single distro for different machines" scenario that
> > > I
> > > described part of the Yocto Compliance 2.0? Should there be tests
> > > for
> > > it?
> > Right now its not
> Okay, so the goal is a bit less ambitious than I had thought. I
> wonder
> whether that's useful, because at least the problems Ostro and AGL
> (at
> least as far as I understood it from lurking on their mailing list)
> had
> only happened when trying to combine multiple BSP layers *and*
> actually
> using the different machines in the same distro.
> 
> > 
> > but I'd consider it.
> At least I'd find that useful - not sure about others ;-}

I do like the idea, I'm also mindful of walking before running...

> > 
> >  The question is can we write an
> > easy generic test for it,
> It's a bit more complicated than the existing tests, but I think it
> is
> doable.
> 
> > 
> > and also clearly phrase the criteria in the
> > list of compliance questions with a binary yes/no answer?
> Does the BSP layer only modify machine-specific packages and only
> when
> the MACHINE(s) defined by the BSP layer are selected? [yes/no]
> 
> The "only when" part is covered by the existing tests (because they
> keep
> MACHINE constant). The missing part is comparing different MACHINE
> sstamps.

That seems reasonable, unless the layer in question applying for
compatibility is not a BSP layer but thats a minor detail.

I'm open to more details on what the test would look like.

Cheers,

Richard

