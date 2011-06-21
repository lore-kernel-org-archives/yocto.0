Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3A62C4C80120
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2011 09:46:12 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 21 Jun 2011 07:46:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,401,1304319600"; d="scan'208";a="18855052"
Received: from unknown (HELO [10.255.13.238]) ([10.255.13.238])
	by fmsmga002.fm.intel.com with ESMTP; 21 Jun 2011 07:46:11 -0700
Message-ID: <4E00AEB3.50800@linux.intel.com>
Date: Tue, 21 Jun 2011 07:46:11 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Koen Kooi <koen@dominion.thruhere.net>
References: <cover.1308639171.git.dvhart@linux.intel.com>	<6ba0b5880d906578d64713c1780aa8d67647bce9.1308639171.git.dvhart@linux.intel.com>
	<53B1780F-C192-4AAA-806D-B94EDC47F03F@dominion.thruhere.net>
In-Reply-To: <53B1780F-C192-4AAA-806D-B94EDC47F03F@dominion.thruhere.net>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 2/3] beagleboard: add basic audio mixer defaults
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
X-List-Received-Date: Tue, 21 Jun 2011 14:46:12 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 06/21/2011 12:48 AM, Koen Kooi wrote:
> 
> Op 21 jun 2011, om 09:19 heeft Darren Hart het volgende geschreven:
> 
>> We need a generic alsa based mechanism that we can use a bbappend
>> to save default mixer controls per bsp. Until that is ready,
> 
> Like the alsa-state we had in .dev for some years now?
> https://github.com/openembedded/openembedded/blob/master/recipes/alsa/alsa-state.bb

Yes, I mentioned alsa-state in the cover letter. A follow-on that
affects all of oe-core will take care of this.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

