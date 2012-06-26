Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A874E0070C
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 09:33:20 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 26 Jun 2012 09:33:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="160918557"
Received: from unknown (HELO helios.localnet) ([10.252.120.190])
	by azsmga001.ch.intel.com with ESMTP; 26 Jun 2012 09:33:19 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Tue, 26 Jun 2012 17:33:18 +0100
Message-ID: <3228700.TZNO2vyRAD@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.3 (Linux/3.2.0-25-generic-pae; KDE/4.8.3; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1206261224520.5797@oneiric>
References: <alpine.DEB.2.02.1206260459040.8547@oneiric>
	<2725324.4uKQHqG1Nb@helios>
	<alpine.DEB.2.02.1206261224520.5797@oneiric>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: <rant>the current yocto FAQ is pretty much valueless</rant>
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
X-List-Received-Date: Tue, 26 Jun 2012 16:33:20 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 26 June 2012 12:26:28 Robert P. J. Day wrote:
>   i thought that was the technique for centralizing personal config
> preferences that you *didn't* want to manually copy into every
> local.conf file you created.  if you add that personal content into
> each local.conf, then of course you don't need those options.

I guess it depends on what you mean by "personal content". Certain settings 
are really part of distro policy and if you're finding that you're setting them 
all the time for all of the builds that you're doing, it would make more sense 
to create a distro layer that sets them - then it's simply a matter of 
ensuring that layer is added to your bblayers.conf and you set DISTRO as 
appropriate.

AFAIK the command line options in question were added to allow frontends to 
inject configuration into bitbake rather than something the user would normally 
use directly.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

