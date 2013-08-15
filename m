Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97685E01422
	for <yocto@yoctoproject.org>; Thu, 15 Aug 2013 14:43:18 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 15 Aug 2013 14:43:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,888,1367996400"; d="scan'208";a="386988456"
Received: from timevans-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.122.235])
	by fmsmga002.fm.intel.com with ESMTP; 15 Aug 2013 14:43:05 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Date: Thu, 15 Aug 2013 22:43:04 +0100
Message-ID: <2117185.3I4JUhGDnT@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <AA5214DFE7484C72896D4D472906185A@PAULD>
References: <D2ED8A5A8E3F4F688EF59142D375B80B@PAULD>
	<520D3044.6000904@linux.intel.com>
	<AA5214DFE7484C72896D4D472906185A@PAULD>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: My stuff is missing from rootfs
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
X-List-Received-Date: Thu, 15 Aug 2013 21:43:21 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 15 August 2013 13:01:54 Paul D. DeRocco wrote:
> This smells like one of those situations where nuking tmp and rebuilding
> will fix it, and we'll never know what was wrong. I'll let you know if
> that fixes it.

If you keep on doing this we'll never figure out what the problem is. Wiping 
out tmp just removes any way we might have to diagnose the issue.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

