Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C40EE0098A; Thu, 16 Mar 2017 02:40:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.232.183.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from nov-007-i457.relay.mailchannels.net
	(nov-007-i457.relay.mailchannels.net [46.232.183.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6B16E0094C
	for <yocto@yoctoproject.org>; Thu, 16 Mar 2017 02:40:41 -0700 (PDT)
X-Sender-Id: hostpapa|x-authuser|pbarker@toganlabs.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 36CB67C3757;
	Thu, 16 Mar 2017 09:30:27 +0000 (UTC)
Received: from hp181.hostpapa.com (unknown [100.96.137.29])
	by relay.mailchannels.net (Postfix) with ESMTPA id 7FD7B7C30A0;
	Thu, 16 Mar 2017 09:30:26 +0000 (UTC)
X-Sender-Id: hostpapa|x-authuser|pbarker@toganlabs.com
Received: from hp181.hostpapa.com (hp181.hostpapa.com [172.20.61.168])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.7.32); Thu, 16 Mar 2017 09:30:27 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: hostpapa|x-authuser|pbarker@toganlabs.com
X-MailChannels-Auth-Id: hostpapa
X-Madly-Print: 42478db4768598cc_1489656627058_67825973
X-MC-Loop-Signature: 1489656627058:1849795947
X-MC-Ingress-Time: 1489656627057
Received: from cpc116908-shep14-2-0-cust920.8-3.cable.virginm.net
	([82.34.23.153]:5507 helo=host0.betafive.co.uk)
	by hp181.hostpapa.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.87)
	(envelope-from <pbarker@toganlabs.com>)
	id 1coRjk-000DfN-VV; Thu, 16 Mar 2017 10:30:25 +0100
Date: Thu, 16 Mar 2017 09:30:21 +0000
From: Paul Barker <pbarker@toganlabs.com>
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Message-ID: <20170316093021.4901da8c@host0.betafive.co.uk>
In-Reply-To: <83c550f8-9f33-3179-3092-19fad4a37aec@rsi-elektrotechnik.de>
References: <37d4f98c-9102-f4bf-c6cc-f64e1ffbce40@linux.intel.com>
	<83c550f8-9f33-3179-3092-19fad4a37aec@rsi-elektrotechnik.de>
Organization: =?UTF-8?B?VG9nw6Fu?= Labs
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=5.0
X-AuthUser: pbarker@toganlabs.com
Cc: Yocto Project <yocto@yoctoproject.org>,
	openembedded-architecture@lists.openembedded.org
Subject: Re: [Openembedded-architecture] Sum up - Proposal: dealing with language-specific build tools/dependency management tools
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
X-List-Received-Date: Thu, 16 Mar 2017 09:40:46 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 16 Mar 2017 09:17:57 +0100
Josef Holzmayr <holzmayr@rsi-elektrotechnik.de> wrote:

> I'll give it a shot and try to sum up the current state of affairs in 
> this discussion. In accordance to the "Package managers all the way 
> down"-presentation, I'm gonna use the term LPM (for language package 
> manager) for now on.
> 
> *Requirements*
> - repeatable and verifyable licensing of all dependencies that a LPM 
> pulls in.
> - locking down specific versions of packages and their dependencies for 
> reproductible builds.

Agreed with these.

> 
> *Optionals*
> - strict separation of fetch, compile, install stages. If a specifc LPM 
> requires it, those might be intermingled or left out [Mark]

I think what we need is strict separation of fetch (allowed to access
network) from the later tasks in a build (not allowed to access
networks). We need to continue to support users behind corporate
firewalls via mirroring and offline builds.

> - opaque packaging: similar to static linking, we should at least have a 
> way to bundle up a complete application into a single package. Maybe it 
> might even be the default (like rust does it at the moment).
> - leverage as much as possible of the functionality the LPMs provide 
> instead of reimplementing it.

We should also aim for automatic generation of recipes from pypi,
npmjs, crates.io, etc using devtool. I'm not sure how much of this has
already been implemented, I'm not entirely up-to-date on devtool
functionality.

Staying with NPM as the example, say we have a tree of 1000
dependencies for a top-level application recipe. I understand that
generating and then parsing 1000 recipes will bloat things and slow
down the build. However, we do need some way to apply patches to those
dependencies or fix metadata. For example, what if the license is
stated wrong on npmjs? What if the dependency list itself is wrong? What
I've always liked about OE is that you can fix this sort of problem in a
recipe when you need to.

> 
> *Wish List*
> - separating out the LPM infrastructure into one or more distinct 
> layers, not treating it as OE/bitbake core functionality. [Paul]
> - support for the use of multiple languages/LPMs inside a single recipe, 
> hopefully even package. [myself]
> 
> *Proposed Solutions*
> - having lockdown files shipped with the recipes (in whatever form to be 
> defined)
> - leveraging the recipe system to resolve licensing.
> 
> If we can boil things down to the common set that we all expect, it will 
> in my opnion serve as a blueprint for the actual implementation to follow.
> 
> Greetz,

Thanks,
Paul

