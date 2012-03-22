Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A568E013C3
	for <yocto@yoctoproject.org>; Thu, 22 Mar 2012 08:56:52 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 22 Mar 2012 08:56:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="80459233"
Received: from unknown (HELO envy.home) ([10.255.15.248])
	by AZSMGA002.ch.intel.com with ESMTP; 22 Mar 2012 08:56:51 -0700
Message-ID: <4F6B4B98.6050106@linux.intel.com>
Date: Thu, 22 Mar 2012 08:56:08 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <cover.1331666101.git.dvhart@linux.intel.com>
	<a7914fb82371af784c544d3efefefaa2c63afd4d.1331666101.git.dvhart@linux.intel.com>
	<4F6A5EE6.8070303@linux.intel.com> <11107389.LZ9REiQeM5@helios>
In-Reply-To: <11107389.LZ9REiQeM5@helios>
X-Enigmail-Version: 1.4
Cc: yocto@yoctoproject.org, "Wold, Saul" <saul.wold@intel.com>
Subject: Re: [PATCH 1/1] ddimage: Add script for writing images to boot media
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
X-List-Received-Date: Thu, 22 Mar 2012 15:56:52 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 03/21/2012 05:26 PM, Paul Eggleton wrote:
> On Wednesday 21 March 2012 16:06:14 Darren Hart wrote:
>> Any objections to this going in?
> 
> No objections, looks like a really useful tool; a couple of suggestions though 
> (sorry for not looking at it earlier):
> 
> * Is it worth checking if the target device is mounted and erroring out if so?

That's a good suggestion. Alright with you if that is a follow-on patch?

> * Not sure but it may be worth waiting a few seconds after the sync before 
> exiting; I've seen some hardware that returns control to userspace before the 
> hardware has actually finished writing.

That may be, but anything we assume will be wrong for some hardware. The
sticks I have flash an LED for a few seconds afterwards, indicating writing.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

