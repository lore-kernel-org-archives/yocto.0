Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA88AE00344
	for <yocto@yoctoproject.org>; Thu, 27 Sep 2012 15:58:21 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 27 Sep 2012 15:58:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,498,1344236400"; d="scan'208";a="214746672"
Received: from unknown (HELO helios.localnet) ([10.252.122.18])
	by orsmga002.jf.intel.com with ESMTP; 27 Sep 2012 15:58:16 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Evade Flow <evadeflow@gmail.com>
Date: Thu, 27 Sep 2012 23:58:13 +0100
Message-ID: <1470336.PrNkWSnEWe@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.1 (Linux/3.2.0-31-generic-pae; KDE/4.9.1; i686; ; )
In-Reply-To: <CAMAb8ZPWCD+Q6CVwcUM75UCZXqf=JTTL6=-f0wfX19333KHzQw@mail.gmail.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A70CC9@FMSMSX151.amr.corp.intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A70D02@FMSMSX151.amr.corp.intel.com>
	<CAMAb8ZPWCD+Q6CVwcUM75UCZXqf=JTTL6=-f0wfX19333KHzQw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: build failure on current
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
X-List-Received-Date: Thu, 27 Sep 2012 22:58:21 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 27 September 2012 17:55:45 Evade Flow wrote:
> Fair enough. And I should mention that the error I reported occurs on
> Ubuntu 10.04. It's not like I wasn't warned. :-}
> 
>   WARNING: Host distribution "Ubuntu 10.04 LTS" has not been validated
>   with this version of the build system; you may possibly experience
>   unexpected failures. It is recommended that you use a tested
>   distribution.
> 
> (Other than this oddity with the perl package, things seem to work fine.)

Yeah, it's just a warning :)

This issue is rather perplexing. We're supposed to not be using the host tar 
if it is older than 1.24 due to another bug in earlier versions - if an older 
version is found we build tar-replacement-native before anything else gets 
built. Was tar-replacement-native built on the machine where it was failing? 
You can verify it built by just checking under tmp/sysroots/<native 
sysroot>/usr/bin/ to see if tar exists there.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

