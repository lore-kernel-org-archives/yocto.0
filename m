Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CB04E01567
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 01:52:15 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 12 Jun 2013 01:52:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,850,1363158000"; d="scan'208";a="315763259"
Received: from unknown (HELO helios.localnet) ([10.252.122.12])
	by azsmga001.ch.intel.com with ESMTP; 12 Jun 2013 01:52:14 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Date: Wed, 12 Jun 2013 09:52:13 +0100
Message-ID: <1416168.giHTHvEE4P@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.3 (Linux/3.8.0-23-generic; KDE/4.10.3; i686; ; )
In-Reply-To: <BFD6B071C7D34F26A9AE3730B70366FC@PAULD>
References: <BFD6B071C7D34F26A9AE3730B70366FC@PAULD>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: What does "virtual/" mean?
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
X-List-Received-Date: Wed, 12 Jun 2013 08:52:16 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Paul,

On Wednesday 12 June 2013 01:43:31 Paul D. DeRocco wrote:
> I see lots of references to "virtual/kernel", as opposed to simply "kernel".
> The bitbake docs show "virtual/whatever" and "virtual/package" in some of
> its syntactic examples. But what does the "virtual/" prefix actually mean?
> Google coughs up endless uses of the term, as though everyone knows what it
> means, but no explanation of it.

It's simply a convention to indicate the particular item is not a real package 
but a virtual placeholder that could be configured at build time to point to 
one of a selection of different providers; i.e. a recipe that requires kernel 
headers could have virtual/kernel in its DEPENDS rather than having to name a 
specific kernel recipe and the distro or machine configuration can set 
PREFERRED_PROVIDER_virtual/kernel to point to whatever real kernel recipe is 
desired. 

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

