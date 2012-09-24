Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFBC0E01447
	for <yocto@yoctoproject.org>; Mon, 24 Sep 2012 04:10:47 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 24 Sep 2012 04:10:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,474,1344236400"; d="scan'208";a="148356583"
Received: from unknown (HELO helios.localnet) ([10.252.122.13])
	by AZSMGA002.ch.intel.com with ESMTP; 24 Sep 2012 04:10:46 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 24 Sep 2012 12:10:45 +0100
Message-ID: <1716058.TZM8ukYCTx@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.1 (Linux/3.2.0-31-generic-pae; KDE/4.9.1; i686; ; )
MIME-Version: 1.0
Subject: Supported host distro updates
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
X-List-Received-Date: Mon, 24 Sep 2012 11:10:48 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi all,

With the release coming up fairly soon, it's time to look at updating our 
supported distro list. Currently we have the following (in meta-
yocto/conf/distro/poky.conf):

SANITY_TESTED_DISTROS ?= " \
            Yocto (Built by Poky 7.0) 1.2 \n \
            Ubuntu 10.04.4 LTS \n \
            Ubuntu 11.10 \n \
            Ubuntu 12.04 LTS \n \
            Ubuntu 12.04.1 LTS \n \
            Fedora release 15 (Lovelock) \n \
            Fedora release 16 (Verne) \n \
            Fedora release 17 (Beefy Miracle) \n \
            CentOS release 5.6 (Final) \n \
            CentOS release 5.7 (Final) \n \
            CentOS release 6.2 (Final) \n \
            Debian GNU/Linux 6.0.4 (squeeze) \n \
            openSUSE 11.4 \n \
            openSUSE 12.1 \n \
	    "

I think we should drop at least Fedora 15. What do we want to do with CentOS? 
I've been using 6.3 here on my build machine for some time with no ill effects. 
I believe we have some interest in preserving 5.x; should we be adding 6.3 and 
removing 6.2? What about the rest?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

