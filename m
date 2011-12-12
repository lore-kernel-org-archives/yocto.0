Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C3A7E005B4
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2011 06:22:27 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 12 Dec 2011 06:22:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="95211139"
Received: from unknown (HELO helios.localnet) ([10.252.122.29])
	by fmsmga001.fm.intel.com with ESMTP; 12 Dec 2011 06:22:19 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Navani Kamal Srivastava <NAVANI.Srivastava@lnties.com>
Date: Mon, 12 Dec 2011 14:22:16 +0000
Message-ID: <2431074.vm1x8Vpkla@helios>
Organization: Intel Corporation
User-Agent: KMail/4.7.3 (Linux/3.0.0-14-generic-pae; KDE/4.7.3; i686; ; )
In-Reply-To: <9BACABF0C6B14A4D8C33B42A795119BE096D5FF8@POCITMSEXMB03.LntUniverse.com>
References: <9BACABF0C6B14A4D8C33B42A795119BE096B7D3B@POCITMSEXMB02.LntUniverse.com>
	<1660455.ndYTU6ffEm@helios>
	<9BACABF0C6B14A4D8C33B42A795119BE096D5FF8@POCITMSEXMB03.LntUniverse.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: related to telnetd
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
X-List-Received-Date: Mon, 12 Dec 2011 14:22:27 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 07 December 2011 06:51:55 Navani Kamal Srivastava wrote:
> Can you please confirm me that
> 1- busybox utilities are sufficient to take telnet session of the board or
> do I need to install netkit-telnet-1.17 package? 

Yes this will work if you enable CONFIG_TELNETD and CONFIG_TELNETD_STANDALONE 
in the busybox configuration. telnetd will not be started automatically though, 
you will need to add an initscript. However I would suggest you consider using 
ssh if you have no reason not to - you won't need to do any additional work 
then.

> 2- I require
> /etc/securetty in my rootfs. Which and all option I need to configure in
> busybox configuration to get  this particular file. I have already enabled
> CONFIG_FEATURE_SECURETTY feature.

This file is provided by shadow, so you'd need to add that to your 
IMAGE_INSTALL (or POKY_EXTRA_INSTALL).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

