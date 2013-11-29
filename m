Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B8CAE0079F
	for <yocto@yoctoproject.org>; Fri, 29 Nov 2013 01:52:19 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 29 Nov 2013 01:52:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,796,1378882800"; d="scan'208";a="444059145"
Received: from pmcgurk-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.121.192])
	by orsmga002.jf.intel.com with ESMTP; 29 Nov 2013 01:52:17 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Robert Yang <liezhi.yang@windriver.com>
Date: Fri, 29 Nov 2013 09:52:08 +0000
Message-ID: <9365721.aBg3msGuvm@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <5298421C.4090708@windriver.com>
References: <CACRzEudEBj6ZfdTyzCtBWCorDdPgPHHpWovbR5VJB5GuRVu8dA@mail.gmail.com>
	<CACRzEuePgg7=72gtoN+k76XkvD2Q_H3QYO47ByJdnEN9Bfq0TQ@mail.gmail.com>
	<5298421C.4090708@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Todd Stellanova <tstellanova@gmail.com>
Subject: Re: unbootable image produced with PACKAGE_CLASSES ?= "package_ipk", /etc missing
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
X-List-Received-Date: Fri, 29 Nov 2013 09:52:22 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert,

On Friday 29 November 2013 15:28:28 Robert Yang wrote:
> I can reproduce the similar problem now, I think that it should be a
> bug of e2fsprogs, it seems the debugfs can't know the free space
> correctly, and thus it appears no free blocks, I'm sorry to say that
> I can't fix it in a short while, but I will fix it in one or two weeks,
> maybe you can set this in the local.conf as a workaround:
> 
> IMAGE_ROOTFS_EXTRA_SPACE = "51200"
> 
> If 51200 is not enough, it can be higher, the unit is Kbytes.

Thanks for looking into this. Would you mind entering a bug so we can track 
the issue?

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

