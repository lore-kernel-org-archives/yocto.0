Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BD64E006DF
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2011 07:10:02 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 12 Dec 2011 07:10:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="85451670"
Received: from unknown (HELO helios.localnet) ([10.252.122.29])
	by orsmga001.jf.intel.com with ESMTP; 12 Dec 2011 07:10:00 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Navani Kamal Srivastava <NAVANI.Srivastava@lnties.com>
Date: Mon, 12 Dec 2011 15:09:58 +0000
Message-ID: <7235615.4WBMjblq2r@helios>
Organization: Intel Corporation
User-Agent: KMail/4.7.3 (Linux/3.0.0-14-generic-pae; KDE/4.7.3; i686; ; )
In-Reply-To: <9BACABF0C6B14A4D8C33B42A795119BE096D6D68@POCITMSEXMB03.LntUniverse.com>
References: <9BACABF0C6B14A4D8C33B42A795119BE096B7D3B@POCITMSEXMB02.LntUniverse.com>
	<2431074.vm1x8Vpkla@helios>
	<9BACABF0C6B14A4D8C33B42A795119BE096D6D68@POCITMSEXMB03.LntUniverse.com>
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
X-List-Received-Date: Mon, 12 Dec 2011 15:10:02 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 12 December 2011 14:45:23 Navani Kamal Srivastava wrote:
> I did the same , it worked for me. Thanks a lot. As per our project
> requirement we can't go with ssh that's why I am struggling with telnet..
> Can you please tell me how I can add an initscript?

I would suggest having a look at how it is done for other items in 
busybox.inc. You'll need to put ${sbindir}/telnetd in its own package.

> One more thing I want to ask is what modification I need to do to generate
> poky image, which can load kernel module automatically at startup?

There was a discussion about this previously:
https://lists.yoctoproject.org/pipermail/poky/2011-April/005521.html

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

