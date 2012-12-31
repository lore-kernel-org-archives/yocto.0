Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0DE8E00655
	for <yocto@yoctoproject.org>; Mon, 31 Dec 2012 14:05:56 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 31 Dec 2012 14:05:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,387,1355126400"; d="scan'208";a="186523291"
Received: from unknown (HELO helios.localnet) ([10.252.123.27])
	by AZSMGA002.ch.intel.com with ESMTP; 31 Dec 2012 14:05:53 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Date: Mon, 31 Dec 2012 22:05:50 +0000
Message-ID: <17626842.21drbRVtj6@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.3 (Linux/3.5.0-21-generic; KDE/4.9.3; i686; ; )
In-Reply-To: <50DF3EE1.5050001@dynamicdevices.co.uk>
References: <50DF3EE1.5050001@dynamicdevices.co.uk>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to include RPM database into target image?
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
X-List-Received-Date: Mon, 31 Dec 2012 22:05:56 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Alex,

On Saturday 29 December 2012 19:05:05 Alex J Lennon wrote:
> I'm building a distro based on Yocto for a Raspberry Pi but I don't seem
> to have the RPM database / sample feeds installed on the target image.
> 
> Having hunted around and googled I can't spot the environment variable or
> recipe I presumably need to set/include.

You only need to ensure that "package-management" is present in 
IMAGE_FEATURES. You can do this from local.conf by adding the following to it:

EXTRA_IMAGE_FEATURES += "package-management"

This will ensure the package manager's database (RPM if you've selected RPM 
packaging) is preserved, but won't set up any sample feeds. The latter would 
need to be done manually or via ROOTFS_POSTPROCESS_COMMAND.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

