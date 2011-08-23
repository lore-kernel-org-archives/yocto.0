Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1506E011C6
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 06:31:46 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 23 Aug 2011 06:31:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,269,1312182000"; d="scan'208";a="43249514"
Received: from unknown (HELO envy.home) ([10.255.14.100])
	by fmsmga002.fm.intel.com with ESMTP; 23 Aug 2011 06:31:45 -0700
Message-ID: <4E53ABC1.3050906@linux.intel.com>
Date: Tue, 23 Aug 2011 06:31:45 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:5.0) Gecko/20110707 Thunderbird/5.0
MIME-Version: 1.0
To: Koen Kooi <koen@dominion.thruhere.net>
References: <cover.1313792192.git.dvhart@linux.intel.com>
	<0c8f4cdc6cf96da157b4c4bae8f4e13fca6d46e8.1313792192.git.dvhart@linux.intel.com>
	<CAD08DEC-FD47-4799-9871-289CA89279FE@dominion.thruhere.net>
In-Reply-To: <CAD08DEC-FD47-4799-9871-289CA89279FE@dominion.thruhere.net>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] beagleboard: enable hard floating point abi
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
X-List-Received-Date: Tue, 23 Aug 2011 13:31:47 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 08/23/2011 05:38 AM, Koen Kooi wrote:
> 
> Op 20 aug. 2011, om 00:23 heeft Darren Hart het volgende geschreven:
> 
>> Fixes [YOCTO #1203]
>> 
>> Using the hard floating point abi is incompatible with some binary
>> libaries and 3D support for the Beagleboard. As we do not provide
>> these in poky and meta-yocto, we can take advantage of the hard
>> floating point abi.
> 
> What advantage are you talking about? So far everyone has been unable
> to provide real-world numbers[1] that show hardfp making a difference
> compared to a properly configured softfp. The numbers debian and
> meego are showing are comparing it against completely vfpless builds,


That's good reasoning to stick with softfp+neon. Unfortunately I can't
find the mail threads that first got me looking into adding hardfp
support. As I said, I'm not sold on the idea, but it was requested so I
looked into how to address it.

If nobody comes forward saying they would really like to have this, I'm
going to modify the patch series to disable hardfp by default, but leave
the infrastructure in place so people can enable if they like.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

