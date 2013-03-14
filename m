Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 798BAE01466
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2013 13:15:17 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 14 Mar 2013 13:15:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,846,1355126400"; d="scan'208";a="303076402"
Received: from unknown (HELO envy.home) ([10.255.13.202])
	by fmsmga001.fm.intel.com with ESMTP; 14 Mar 2013 13:15:16 -0700
Message-ID: <51422FD2.6070605@linux.intel.com>
Date: Thu, 14 Mar 2013 13:15:14 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130110 Thunderbird/17.0.2
MIME-Version: 1.0
To: Insop Song <insop.song@gmail.com>
References: <CACzyEJ_9EjNYwy=uy-h-wAyfFXfFQqiHKdavMPaTS8Fcso1H1w@mail.gmail.com>
	<5140B150.7050606@linux.intel.com>
	<CACzyEJ9apjW=+w7=9aLUD6UQtwmO6eyoac+XPBA_83MxEKdQdw@mail.gmail.com>
In-Reply-To: <CACzyEJ9apjW=+w7=9aLUD6UQtwmO6eyoac+XPBA_83MxEKdQdw@mail.gmail.com>
X-Enigmail-Version: 1.5.1
Cc: yocto@yoctoproject.org
Subject: Re: Loading a new yocto image to Intel Fri2 board
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
X-List-Received-Date: Thu, 14 Mar 2013 20:15:17 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 03/14/2013 12:56 PM, Insop Song wrote:
> Hi Darren,
> 
> mkefidisk.sh works, thank you.
> 
> What I found was, USB still doesn't work even with mkefidisk.sh.
> So I used micro sd card instead.

Aha, yes. You will need to add "rootwait" to your kernel command line
for reliable booting over usb. There is no way I see to determine if USB
is being used (/dev/sda could just as easily be SATA). Perhaps mkefidisk
should just use rootwait by default. Patches accepted.


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

