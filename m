Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD646E009DA; Fri, 10 Mar 2017 07:11:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9510CE00939
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 07:11:12 -0800 (PST)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga105.jf.intel.com with ESMTP; 10 Mar 2017 07:11:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,141,1486454400"; d="scan'208";a="75143525"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga006.fm.intel.com with ESMTP; 10 Mar 2017 07:11:11 -0800
To: Otavio Salvador <otavio.salvador@ossystems.com.br>
References: <37d4f98c-9102-f4bf-c6cc-f64e1ffbce40@linux.intel.com>
	<CAP9ODKogXP8vO7CCmxs2c-TiRmZZhOKyN5M=ffZV7U2Qrjw1hQ@mail.gmail.com>
	<b80a93fd-8fa3-5b27-0ffb-ab9fd8d04c12@linux.intel.com>
	<CAP9ODKpGer=sF2QF8cCPh68OybqJxMdR5a_x9aXhw=htNWKOiw@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <2ce1386b-e63b-4aea-0685-7abf949de115@linux.intel.com>
Date: Fri, 10 Mar 2017 17:10:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <CAP9ODKpGer=sF2QF8cCPh68OybqJxMdR5a_x9aXhw=htNWKOiw@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>, openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>
Subject: Re: [Openembedded-architecture] Proposal: dealing with language-specific build tools/dependency management tools
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
X-List-Received-Date: Fri, 10 Mar 2017 15:11:14 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 03/10/2017 04:58 PM, Otavio Salvador wrote:
>> I'd like to avoid generating entire separate recipes though, because that
>> implies your custom-written tool would be figuring out where the dependency
>> source came from in the first place, and what are its own dependencies, when
>> creating the recipe, which can be tricky, breakage-prone guesswork.
>
> In fact not; as you generate the recipes for the dependencies, it goes
> recursively and is always good.

Would it also be true for npm, Rust, Go, and other languages that will 
come along? In your specific case the metadata may be easily available 
to parse and convert to recipe form, but this many not hold in other 
situations.

npm fetcher for instance was a nightmare to write, from what I've heard:

http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/bitbake/lib/bb/fetch2/npm.py

>> I want to use existing tools (like 'npm install') for getting the stuff from
>> the network - we don't really need full recipes, we just want to know the
>> licenses of the dependencies, and, if possible, lock them down to a specific
>> version.
>
> Well we initially thought this would suffice but consider a security
> flaw. As many apps may be using different versions of same package it
> becomes a nightmare to figure which ones are affected. If using
> dependencies it is fine, for free.

The lockdown files would list the versions of the dependencies (if it is 
possible, which is not always true), so you can inspect those to see if 
something is vulnerable. In node.js or Go worlds the libraries are not 
reused between apps anyway, so it really doesn't matter if they're 
packaged as separate recipes or not (I didn't have time to check Rust, 
but as it's also using lockdown files, I believe the libraries are not 
reused either).

Alex

