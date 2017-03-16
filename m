Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 782EAE003E1; Thu, 16 Mar 2017 08:44:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40488E00349
	for <yocto@yoctoproject.org>; Thu, 16 Mar 2017 08:44:29 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v2GFhbfw011377
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Thu, 16 Mar 2017 08:43:41 -0700
Received: from soho-mhatle-m.local (172.25.36.230) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 16 Mar 2017 08:43:36 -0700
To: Paul Barker <pbarker@toganlabs.com>, Josef Holzmayr
	<holzmayr@rsi-elektrotechnik.de>
References: <37d4f98c-9102-f4bf-c6cc-f64e1ffbce40@linux.intel.com>
	<83c550f8-9f33-3179-3092-19fad4a37aec@rsi-elektrotechnik.de>
	<20170316093021.4901da8c@host0.betafive.co.uk>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <b82e7cc1-9e84-0e41-ec4a-644b175ebd8b@windriver.com>
Date: Thu, 16 Mar 2017 10:43:35 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <20170316093021.4901da8c@host0.betafive.co.uk>
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
X-List-Received-Date: Thu, 16 Mar 2017 15:44:33 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 3/16/17 4:30 AM, Paul Barker wrote:
> On Thu, 16 Mar 2017 09:17:57 +0100
> Josef Holzmayr <holzmayr@rsi-elektrotechnik.de> wrote:
> 
>> I'll give it a shot and try to sum up the current state of affairs in 
>> this discussion. In accordance to the "Package managers all the way 
>> down"-presentation, I'm gonna use the term LPM (for language package 
>> manager) for now on.
>>
>> *Requirements*
>> - repeatable and verifyable licensing of all dependencies that a LPM 
>> pulls in.
>> - locking down specific versions of packages and their dependencies for 
>> reproductible builds.
> 
> Agreed with these.
> 
>>
>> *Optionals*
>> - strict separation of fetch, compile, install stages. If a specifc LPM 
>> requires it, those might be intermingled or left out [Mark]
> 
> I think what we need is strict separation of fetch (allowed to access
> network) from the later tasks in a build (not allowed to access
> networks). We need to continue to support users behind corporate
> firewalls via mirroring and offline builds.

I agree here.  The 'network fetch', 'do something with it', 'deploy it'  Are
really the three logical steps we have.  The network fetch (as other pieces of
this thread mentioned) could include some specific dependency fetching or
whatever, but in the end this must be able to be mirrored and disable actual
network connections.  (network dependency fetching is possibly very tricky as
dependency scanning in bitbake happens very early, and there is no way to say
"please re-evaluate the dependencies on this branch".  [Maybe this is something
that needs to be considered for this type of work?)

--Mark

>> - opaque packaging: similar to static linking, we should at least have a 
>> way to bundle up a complete application into a single package. Maybe it 
>> might even be the default (like rust does it at the moment).
>> - leverage as much as possible of the functionality the LPMs provide 
>> instead of reimplementing it.
> 
> We should also aim for automatic generation of recipes from pypi,
> npmjs, crates.io, etc using devtool. I'm not sure how much of this has
> already been implemented, I'm not entirely up-to-date on devtool
> functionality.
> 
> Staying with NPM as the example, say we have a tree of 1000
> dependencies for a top-level application recipe. I understand that
> generating and then parsing 1000 recipes will bloat things and slow
> down the build. However, we do need some way to apply patches to those
> dependencies or fix metadata. For example, what if the license is
> stated wrong on npmjs? What if the dependency list itself is wrong? What
> I've always liked about OE is that you can fix this sort of problem in a
> recipe when you need to.
> 
>>
>> *Wish List*
>> - separating out the LPM infrastructure into one or more distinct 
>> layers, not treating it as OE/bitbake core functionality. [Paul]
>> - support for the use of multiple languages/LPMs inside a single recipe, 
>> hopefully even package. [myself]
>>
>> *Proposed Solutions*
>> - having lockdown files shipped with the recipes (in whatever form to be 
>> defined)
>> - leveraging the recipe system to resolve licensing.
>>
>> If we can boil things down to the common set that we all expect, it will 
>> in my opnion serve as a blueprint for the actual implementation to follow.
>>
>> Greetz,
> 
> Thanks,
> Paul
> 


