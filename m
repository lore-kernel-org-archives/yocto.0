Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7D4DE00546; Thu, 16 Mar 2017 08:46:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FC41E003C1
	for <yocto@yoctoproject.org>; Thu, 16 Mar 2017 08:46:07 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v2GFjM2K011395
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Thu, 16 Mar 2017 08:45:22 -0700
Received: from soho-mhatle-m.local (172.25.36.230) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 16 Mar 2017 08:45:20 -0700
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>, Paul Barker
	<pbarker@toganlabs.com>, Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
References: <37d4f98c-9102-f4bf-c6cc-f64e1ffbce40@linux.intel.com>
	<83c550f8-9f33-3179-3092-19fad4a37aec@rsi-elektrotechnik.de>
	<20170316093021.4901da8c@host0.betafive.co.uk>
	<e75b196f-0ee2-97e0-1ed4-8e52fe7695ae@linux.intel.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <47c2754c-0811-b211-725b-e37aaee2127c@windriver.com>
Date: Thu, 16 Mar 2017 10:45:19 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <e75b196f-0ee2-97e0-1ed4-8e52fe7695ae@linux.intel.com>
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
X-List-Received-Date: Thu, 16 Mar 2017 15:46:09 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 3/16/17 5:35 AM, Alexander Kanavin wrote:
> On 03/16/2017 11:30 AM, Paul Barker wrote:
>> Staying with NPM as the example, say we have a tree of 1000
>> dependencies for a top-level application recipe. I understand that
>> generating and then parsing 1000 recipes will bloat things and slow
>> down the build. However, we do need some way to apply patches to those
>> dependencies or fix metadata. For example, what if the license is
>> stated wrong on npmjs? What if the dependency list itself is wrong? What
>> I've always liked about OE is that you can fix this sort of problem in a
>> recipe when you need to.
> 
> Uhm, no. Separate recipes are simply not gonna work for npm, or Go, or 
> Rust without ugly hacking. Those 1000 deps are all pulled by 'npm 
> install' into the source tree of the thing you want to build and then 
> installed together with it into a private directory, having them as 
> separate recipes would mean that you need to fetch and install them 
> separately, which is simply not how npm operates.
> 
> You can still patch them dependencies just fine if there's just one 
> recipe; once they're pulled in, apply the patches.

There really shouldn't be a reason why we can't have 'one fetch' for multiple
'recipes'.  The concept might be a bit odd, but it also might work reasonably
well if architected to work with the individual schemes.

--Mark

> 
> Alex
> 
> _______________________________________________
> Openembedded-architecture mailing list
> Openembedded-architecture@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-architecture
> 


