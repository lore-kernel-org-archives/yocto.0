Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DF3CE0167D
	for <yocto@yoctoproject.org>; Tue,  8 Oct 2013 08:49:14 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 08 Oct 2013 08:45:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,1057,1371106800"; d="scan'208";a="407532558"
Received: from unknown (HELO helios.localnet) ([10.252.120.174])
	by fmsmga001.fm.intel.com with ESMTP; 08 Oct 2013 08:48:59 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Tue, 08 Oct 2013 16:48:58 +0100
Message-ID: <4175617.GZzLFePDvZ@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CAAGt+t3L8EwWqd8gtm_ZZB037F+pMoY9wNnmbJfM3UmX828khw@mail.gmail.com>
References: <CAAGt+t3L8EwWqd8gtm_ZZB037F+pMoY9wNnmbJfM3UmX828khw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: rpm5, linux-3.4.3 and gcc fetch error?
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
X-List-Received-Date: Tue, 08 Oct 2013 15:49:15 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 08 October 2013 17:30:57 Zafrullah Syed wrote:
> When I build Yocto for the first time, I get rpm5, linux-3.4.3 and gcc
> fetch error. I haven't seen this before. Do I need to update all these
> recipes?
> 
>...
> ERROR: Fetcher failure: Fetch command failed with exit code 4, output:
> wget: unable to resolve host address `www.rpm5.org'
>...
> ERROR: Fetcher failure: Fetch command failed with exit code 4, output:
> wget: unable to resolve host address `kernel.org'
>...
> ERROR: Fetcher failure: Fetch command failed with exit code 4, output:
> wget: unable to resolve host address `download.oracle.com'

If wget can't resolve domains that definitely still exist, it looks like you 
have something wrong with your configured DNS server/setup.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

