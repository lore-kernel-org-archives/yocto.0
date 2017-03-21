Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25B9CE00A0A; Tue, 21 Mar 2017 09:29:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_HI,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAB67E009B2
	for <yocto@yoctoproject.org>; Tue, 21 Mar 2017 09:29:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1490113779; x=1521649779;
	h=message-id:subject:from:to:cc:date:in-reply-to:
	references:mime-version:content-transfer-encoding;
	bh=QlCzWMz+3qM7reVgMbjKUD4NTlr7z5DkWDuqhAHYQ70=;
	b=iIW74mfDi4ZvhEzx025YWO03cI8wtnFqAKUrjpKPxlldUT+3PW7rkIkG
	a8AsYgtksBKCNdDVhvDEE6L4y8j09w==;
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Mar 2017 09:29:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,200,1486454400"; d="scan'208";a="79474772"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.141])
	by fmsmga006.fm.intel.com with ESMTP; 21 Mar 2017 09:29:29 -0700
Message-ID: <1490114241.3261.173.camel@linux.intel.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: Matthew Stanger <matthew_stanger@trimble.com>
Date: Tue, 21 Mar 2017 10:37:21 -0600
In-Reply-To: <CANr77M3w1YZVVaMgm_gQWG0YG3fBEQvT22xg5Lf_upCtyxb7pQ@mail.gmail.com>
References: <CANr77M3+k7=+wux_zbMZ6juG-ppTpCgfqJ13fQ1L+XYB=9ubjg@mail.gmail.com>
	<4fe5a241-b774-aef8-da55-6fae5d4285fb@mlbassoc.com>
	<CANr77M3w1YZVVaMgm_gQWG0YG3fBEQvT22xg5Lf_upCtyxb7pQ@mail.gmail.com>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, Gary Thomas <gary@mlbassoc.com>
Subject: Re: Bumping all packages versions
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
X-List-Received-Date: Tue, 21 Mar 2017 16:29:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

have you tried the 'bitbake-layes show-recipes' script? that scripts
list the recipes, layer it belongs and the recipe's PV, unfortunately
not in a single line, but data is there.


Leo

On Mon, 2017-03-20 at 11:35 -0600, Matthew Stanger wrote:
> No.... Thanks I'm a rookie :)
> 
> On Mon, Mar 20, 2017 at 11:22 AM, Gary Thomas <gary@mlbassoc.com>
> wrote:
>         On 2017-03-20 16:52, Matthew Stanger wrote:
>                 Hi,
>                 
>                 I'm running Yocto 1.7.1 and was wondering if there was
>                 a simple way to roll/bump all package versions. For
>                 example in
>                 every .bb I want to bump PV = $version higher. I'm
>                 trying to do this as we've designed our headless
>                 system to update
>                 using opkg but now we are struggling to find a simple
>                 way to update package versions, we're trying to stay
>                 away from
>                 manually doing it as there is a lot of room for error
>                 when touching so many packages. First, is there a way
>                 to brute
>                 force bump all package versions and 2nd is there a way
>                 to only bump packages that have changed code (like
>                 auto git hash
>                 diff or something) without manually bumping the PV
>                 version in the .bb? What is the proper way to handle
>                 you distro's
>                 versioning at the package level?
>         
>         Are you using the PR server?  That's pretty much what it's
>         for.
>         
>         -- 
>         ------------------------------------------------------------
>         Gary Thomas                 |  Consulting for the
>         MLB Associates              |    Embedded world
>         ------------------------------------------------------------
>         -- 
>         _______________________________________________
>         yocto mailing list
>         yocto@yoctoproject.org
>         https://lists.yoctoproject.org/listinfo/yocto
> 
> 


