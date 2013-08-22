Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FD2EE00747
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2013 02:44:49 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 22 Aug 2013 02:41:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,933,1367996400"; d="scan'208";a="366714493"
Received: from timevans-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.122.241])
	by orsmga001.jf.intel.com with ESMTP; 22 Aug 2013 02:44:10 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Thu, 22 Aug 2013 10:44:08 +0100
Message-ID: <3329107.pvXeOtFeDf@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CAAGt+t0US6hq-4dTGqNrSLMZ6Gx3k0ikt0=MLxC4WTUcaoLe0g@mail.gmail.com>
References: <CAAGt+t0US6hq-4dTGqNrSLMZ6Gx3k0ikt0=MLxC4WTUcaoLe0g@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Package Revision number is mandatory?
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
X-List-Received-Date: Thu, 22 Aug 2013 09:44:50 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 21 August 2013 12:46:00 Zafrullah Syed wrote:
> Package revision number should be included in my bitbake file? I am trying
> to build a basic hello world by downloading it from sourceforge. There is
> no package revision number to it. It is just a regular hello world program.
> 
> How do I add in {PV} my bitbake recipe?

I'm not sure I fully understand the question. By default, PV is determined 
from the recipe filename, if the filename contains an underscore. Alternatively 
PV may be set within the recipe as with any variable. If it is not in the 
recipe filename and not explicitly set in the recipe then it will default to 
"1.0".

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

