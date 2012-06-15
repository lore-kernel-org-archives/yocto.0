Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29A73E0145B
	for <yocto@yoctoproject.org>; Fri, 15 Jun 2012 16:05:41 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 15 Jun 2012 16:05:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="156981868"
Received: from unknown (HELO envy.home) ([10.255.12.88])
	by azsmga001.ch.intel.com with ESMTP; 15 Jun 2012 16:05:40 -0700
Message-ID: <4FDBBF75.1070600@linux.intel.com>
Date: Fri, 15 Jun 2012 16:04:21 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120605 Thunderbird/13.0
MIME-Version: 1.0
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
References: <4FD93175.7070202@linux.intel.com> <4FD98EA6.1050403@r-finger.com>
	<4FDA530E.3090508@linux.intel.com>
	<4FDAD6D1.4050605@r-finger.com> <20120615090535.3516e5a5@skate>
In-Reply-To: <20120615090535.3516e5a5@skate>
X-Enigmail-Version: 1.4.2
Cc: yocto@yoctoproject.org
Subject: Re: RFC: poky-tiny: init procedure
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
X-List-Received-Date: Fri, 15 Jun 2012 23:05:41 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 06/15/2012 12:05 AM, Thomas Petazzoni wrote:
> Le Fri, 15 Jun 2012 07:31:45 +0100,
> Tomas Frydrych <tf+lists.yocto@r-finger.com> a écrit :
> 
>> Hi Darren,
>>
>> On 14/06/12 22:09, Darren Hart wrote:
>>> This solution improves the kick-the-tires
>>> experience with poky-tiny, without pulling in all of init, 
>>
>> I think you really should quantify what 'all of init' means, without
>> this you are addressing a problem that is merely perceived. Just a
>> quick look shows that the sysvinit package is about 120KB unpacked,
>> for that you get a solution that is tested, robust, and supported
>> across Yocto.
> 
> FWIW, Busybox comes with its own implementation of a very simple and
> basic init, which only takes a few KB of space inside the Busybox
> binary. That's what we use by default in Buildroot, and it works just
> fine. It's a really good trade-off between no init at all, and a
> full-blown sysvinit system.
> 

Good point on this. I had a look. Enabling the basics here, including
the ability to give the controlling console to commands starting with a
dash in inittab results in a 5664 byte delta (compared with 2560 bytes
for enabling setsid and cttyhack). Note that the help in busybox
suggests the cttyhack may be more reliable than the init support for
handing over the controlling terminal.

So the difference between the two options is about 3k, but enabling
setsid and cttyhack may enable others to things besides what I am
looking to do.

I have sent a patch to oe-core to enable SETSID and CTTYHACK in the
default defconfig.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



