Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B860E004AB
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 01:41:54 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 06 Sep 2012 01:41:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,379,1344236400"; d="scan'208";a="197828528"
Received: from unknown (HELO helios.localnet) ([10.252.121.173])
	by orsmga002.jf.intel.com with ESMTP; 06 Sep 2012 01:41:53 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org, scott.m.rifenbark@intel.com
Date: Thu, 06 Sep 2012 09:41:52 +0100
Message-ID: <48107031.Jb7NvvnASa@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-30-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1203100856480.1391@oneiric>
References: <alpine.DEB.2.02.1203100856480.1391@oneiric>
MIME-Version: 1.0
Subject: Re: yocto ref manual: confusion between BB_ENV_WHITELIST and BB_ENV_EXTRAWHITE
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
X-List-Received-Date: Thu, 06 Sep 2012 08:41:54 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Saturday 10 March 2012 08:59:02 Robert P. J. Day wrote:
>   from section B.5 of yocto ref manual:
> 
> Tell BitBake to load what you want from the environment into the data
> store. You can do so through the BB_ENV_WHITELIST variable. For
> example, assume you want to prevent the build system from accessing
> your $HOME/.ccache directory. The following command tells BitBake to
> load CCACHE_DIR from the environment into the data store:
> 
>      export BB_ENV_EXTRAWHITE="$BB_ENV_EXTRAWHITE CCACHE_DIR"
> 
>   i think you can see how that might confuse the reader.

Looks like this still needs to be addressed. Scott, would you mind taking a 
look at this? Seems to me that BB_ENV_WHITELIST just ought to be changed to 
BB_ENV_EXTRAWHITE to make this make sense.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

