Return-Path: <ml@embed.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11F65E0098A; Thu, 16 Mar 2017 04:23:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,MISSING_HEADERS,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [91.82.101.43 listed in list.dnswl.org]
	*  1.0 MISSING_HEADERS Missing To: header
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 2219 seconds by postgrey-1.32 at yocto-www;
	Thu, 16 Mar 2017 04:23:22 PDT
Received: from owm.eumx.net (eumx.net [91.82.101.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E86D2E0094C
	for <yocto@yoctoproject.org>; Thu, 16 Mar 2017 04:23:22 -0700 (PDT)
References: <37d4f98c-9102-f4bf-c6cc-f64e1ffbce40@linux.intel.com>
	<83c550f8-9f33-3179-3092-19fad4a37aec@rsi-elektrotechnik.de>
	<20170316093021.4901da8c@host0.betafive.co.uk>
	<e75b196f-0ee2-97e0-1ed4-8e52fe7695ae@linux.intel.com>
From: Jack Mitchell <ml@embed.me.uk>
Message-ID: <aa65d1ce-1709-cb64-55f5-4bfe6f8ce9bf@embed.me.uk>
Date: Thu, 16 Mar 2017 10:48:21 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <e75b196f-0ee2-97e0-1ed4-8e52fe7695ae@linux.intel.com>
Cc: yocto@yoctoproject.org, openembedded-architecture@lists.openembedded.org
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
X-List-Received-Date: Thu, 16 Mar 2017 11:23:26 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 16/03/17 10:35, Alexander Kanavin wrote:
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
>
>
> Alex
>

An issue with not having separate recipes is going to cause problems 
with OTA package updates. I currently have a node package that I 
maintain for a client and it's so big (excess of 30,000 files with all 
deps) that we have to have a special update procedure of uninstalling 
the package, re-installing the new version and then performing a system 
update. A package update with 30,000 files on a quad core fast arm64 
chip takes upwards of 40 minutes. It would be fantastic, if only the 
core node application and changed dependencies could be updated.

Would it be possible to use something similar to the 'auto-package' 
stuff we already have to split out the inner package dependencies and 
have specific packages for each dependency but not a separate recipe?

Cheers,
Jack.

