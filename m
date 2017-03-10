Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B470AE009DA; Fri, 10 Mar 2017 06:49:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1E91E00939
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 06:49:41 -0800 (PST)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga105.fm.intel.com with ESMTP; 10 Mar 2017 06:49:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,141,1486454400"; d="scan'208";a="74614191"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga005.fm.intel.com with ESMTP; 10 Mar 2017 06:49:40 -0800
To: Otavio Salvador <otavio.salvador@ossystems.com.br>
References: <37d4f98c-9102-f4bf-c6cc-f64e1ffbce40@linux.intel.com>
	<CAP9ODKogXP8vO7CCmxs2c-TiRmZZhOKyN5M=ffZV7U2Qrjw1hQ@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <b80a93fd-8fa3-5b27-0ffb-ab9fd8d04c12@linux.intel.com>
Date: Fri, 10 Mar 2017 16:48:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <CAP9ODKogXP8vO7CCmxs2c-TiRmZZhOKyN5M=ffZV7U2Qrjw1hQ@mail.gmail.com>
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
X-List-Received-Date: Fri, 10 Mar 2017 14:49:47 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 03/10/2017 04:30 PM, Otavio Salvador wrote:
> When integrating the CHICKEN Scheme support onto the Yocto Project we
> dealt it using their installation tool but making the package of
> individual packages (eggs, in this specific case) as individual
> recipes. We went further and automated the recipe generation and this
> made it quite easy to maintain in long term.
>
> Take a look at:
>
> https://github.com/OSSystems/meta-chicken

Thanks, even though my Scheme-fu isn't great :)

I'd like to avoid generating entire separate recipes though, because 
that implies your custom-written tool would be figuring out where the 
dependency source came from in the first place, and what are its own 
dependencies, when creating the recipe, which can be tricky, 
breakage-prone guesswork.

I want to use existing tools (like 'npm install') for getting the stuff 
from the network - we don't really need full recipes, we just want to 
know the licenses of the dependencies, and, if possible, lock them down 
to a specific version.

Alex


