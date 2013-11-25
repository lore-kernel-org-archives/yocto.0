Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD6C0E0071C
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 02:19:01 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 25 Nov 2013 02:19:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,766,1378882800"; d="scan'208";a="441126785"
Received: from akagikob-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.121.166])
	by orsmga002.jf.intel.com with ESMTP; 25 Nov 2013 02:18:40 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Mon, 25 Nov 2013 10:18:40 +0000
Message-ID: <3123042.c7urxisuWc@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1311230555380.9634@oneiric>
References: <alpine.DEB.2.02.1311230555380.9634@oneiric>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: ksize.py and dirsize.py scripts not in dora tarball, is that deliberate?
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
X-List-Received-Date: Mon, 25 Nov 2013 10:19:01 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Saturday 23 November 2013 05:59:02 Robert P. J. Day wrote:
>   current dev manual:
> 
> http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#understan
> d-what-gives-your-image-size
> 
> claims:
> 
> "To help you see where you currently are with kernel and root
> filesystem sizes, you can use two tools found in the Source Directory
> in the scripts directory:
> 
> ksize.py: Reports component sizes for the kernel build objects.
> 
> dirsize.py: Reports component sizes for the root filesystem."
> 
>   however, the current dora tarball doesn't contain these scripts,
> while oe-core contains them more specifically under the scripts/tiny/
> subdirectory. thoughts?

I guess they were added after the dora release.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

