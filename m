Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 031DBE0027F
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2012 11:34:19 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 28 Sep 2012 11:34:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,503,1344236400"; d="scan'208";a="198470760"
Received: from unknown (HELO helios.localnet) ([10.252.122.5])
	by azsmga001.ch.intel.com with ESMTP; 28 Sep 2012 11:34:18 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Rudolf Streif <rudolf.streif@linux.com>
Date: Fri, 28 Sep 2012 19:34:16 +0100
Message-ID: <31384487.oKEco2inpj@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.1 (Linux/3.2.0-31-generic-pae; KDE/4.9.1; i686; ; )
In-Reply-To: <CA+gsK-pYtXKaVyERW7ys9j_3DEExXUKf2=wNTOOQ+r-Jvt9xrQ@mail.gmail.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A720D0@FMSMSX151.amr.corp.intel.com>
	<CA+gsK-pYtXKaVyERW7ys9j_3DEExXUKf2=wNTOOQ+r-Jvt9xrQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: The term Package as used in the YP docs
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 28 Sep 2012 18:34:20 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 28 September 2012 11:27:37 Rudolf Streif wrote:
> +1
> 
> I agree with Scott's definition. In the general Linux context a Package is
> a compilation of binaries, documentation, development files, etc. wrapped
> up in a format that can be used by a package management system to install
> it on a target system.

No dispute there.

> It is somewhat confusing that YP and OE use the term 'package' synonymously
> with 'recipe'. In most cases a package is the output of a recipe.

The thing is, we no longer do that - we've fixed a number of references in the 
documentation, help text and error messages for this release so that "recipe" 
is used when that's what we mean. If we've left any references that should be 
considered a bug.
 
> Unfortunately, changing variables like P, PN, PV, PR etc.
> may cause some pain. If a transition is what the broader community would
> like to achieve then a period where old and new variables can be used
> interchangeably (if possible) would be the way to go.

I'm not sure there's a huge amount to be gained by doing this when weighed 
against the cost - it would certainly cause a massive amount of churn, with 
the potential for problems with layer interaction where one layer has done the 
big rename and another that bbappends recipes in the first hasn't.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

