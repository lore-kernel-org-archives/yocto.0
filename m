Return-Path: <jukka.rissanen@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 642FEE00C02
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 04:06:27 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 22 Apr 2014 04:06:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,903,1389772800"; d="scan'208";a="421944207"
Received: from jrissane-mobl.ger.corp.intel.com (HELO [10.237.67.31])
	([10.237.67.31])
	by azsmga001.ch.intel.com with ESMTP; 22 Apr 2014 04:05:26 -0700
Message-ID: <1398164725.2642.15.camel@jrissane-mobl.ger.corp.intel.com>
From: Jukka Rissanen <jukka.rissanen@linux.intel.com>
To: jeremy@rhtech.co.nz
Date: Tue, 22 Apr 2014 14:05:25 +0300
In-Reply-To: <5352E049.8050604@rhtech.co.nz>
References: <534DAEF0.2000501@rhtech.co.nz> <5352E049.8050604@rhtech.co.nz>
X-Mailer: Evolution 3.8.5 (3.8.5-2.fc19) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: No USB devices on BeagleBoard xM!
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
X-List-Received-Date: Tue, 22 Apr 2014 11:06:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Jeremy,

On su, 2014-04-20 at 08:44 +1200, Jeremy Cole-Baker wrote:
> Hi, I still can't figure out how to get the USB hardware working on my 
> BeagelBoard xM.
> 

I think you are seeing this bug
https://bugzilla.yoctoproject.org/show_bug.cgi?id=5211

I did not manage to get usb working with the instructions in the bug
thou.


Cheers,
Jukka



