Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CFA8E00306
	for <yocto@yoctoproject.org>; Sun, 17 Nov 2013 03:24:40 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 17 Nov 2013 03:21:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="410094580"
Received: from akagikob-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.121.140])
	by orsmga001.jf.intel.com with ESMTP; 17 Nov 2013 03:24:39 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Sun, 17 Nov 2013 11:24:38 +0000
Message-ID: <1530936.srmMeFasFY@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1311170415270.16236@oneiric>
References: <alpine.DEB.2.02.1311170415270.16236@oneiric>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: why is "package-management" defined as a PACKAGE_GROUP?
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
X-List-Received-Date: Sun, 17 Nov 2013 11:24:43 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert,

On Sunday 17 November 2013 04:19:19 Robert P. J. Day wrote:
>   think i may have asked this once upon a time, but why, in
> core-image.bbclass, is there the line:
> 
>   PACKAGE_GROUP_package-management = "${ROOTFS_PKGMANAGE}"
> 
> as i read it, package-management doesn't represent an actual package
> group, but rather represents one of a number of IMAGE_FEATURES that
> are processed explicitly in a .bbclass file, like "debug-tweaks" or
> "read-only-rootfs". so what does the above line mean?

It's not a package group, but then neither are any of the things defined by 
PACKAGE_GROUP - that variable just specifies one or more packages to be 
installed when the specified item appears in IMAGE_FEATURES. Perhaps we should 
just rename the variable; it's a little more internal than some of the other 
variables we've renamed in the past.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

