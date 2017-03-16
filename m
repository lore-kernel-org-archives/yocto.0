Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D770E0098A; Thu, 16 Mar 2017 03:36:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_MED,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13ADDE0094C
	for <yocto@yoctoproject.org>; Thu, 16 Mar 2017 03:36:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1489660594; x=1521196594;
	h=subject:to:references:cc:from:message-id:date:
	mime-version:in-reply-to:content-transfer-encoding;
	bh=blHGbB3fHnXtkzg0UWY37py/zcpkmNXSu95xy6w01rI=;
	b=IbsCxvVgpB5Eh+P1iw4F6t6dSjRmS6m/tXbrrVusyBG/stHKf4QWXGzH
	6ymN7+E7IFY/mjxM70G/35O5wIUkKg==;
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	16 Mar 2017 03:36:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,172,1486454400"; d="scan'208";a="67966556"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga004.jf.intel.com with ESMTP; 16 Mar 2017 03:36:24 -0700
To: Paul Barker <pbarker@toganlabs.com>,
	Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
References: <37d4f98c-9102-f4bf-c6cc-f64e1ffbce40@linux.intel.com>
	<83c550f8-9f33-3179-3092-19fad4a37aec@rsi-elektrotechnik.de>
	<20170316093021.4901da8c@host0.betafive.co.uk>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <e75b196f-0ee2-97e0-1ed4-8e52fe7695ae@linux.intel.com>
Date: Thu, 16 Mar 2017 12:35:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.6.0
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
X-List-Received-Date: Thu, 16 Mar 2017 10:36:37 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 03/16/2017 11:30 AM, Paul Barker wrote:
> Staying with NPM as the example, say we have a tree of 1000
> dependencies for a top-level application recipe. I understand that
> generating and then parsing 1000 recipes will bloat things and slow
> down the build. However, we do need some way to apply patches to those
> dependencies or fix metadata. For example, what if the license is
> stated wrong on npmjs? What if the dependency list itself is wrong? What
> I've always liked about OE is that you can fix this sort of problem in a
> recipe when you need to.

Uhm, no. Separate recipes are simply not gonna work for npm, or Go, or 
Rust without ugly hacking. Those 1000 deps are all pulled by 'npm 
install' into the source tree of the thing you want to build and then 
installed together with it into a private directory, having them as 
separate recipes would mean that you need to fetch and install them 
separately, which is simply not how npm operates.

You can still patch them dependencies just fine if there's just one 
recipe; once they're pulled in, apply the patches.


Alex


