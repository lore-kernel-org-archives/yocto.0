Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id ADDCB4C810B4
	for <yocto@yoctoproject.org>; Fri, 22 Oct 2010 17:04:45 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 22 Oct 2010 15:04:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,225,1286175600"; d="scan'208";a="619459423"
Received: from unknown (HELO [10.255.12.77]) ([10.255.12.77])
	by fmsmga002.fm.intel.com with ESMTP; 22 Oct 2010 15:04:45 -0700
Message-ID: <4CC20A7C.10408@linux.intel.com>
Date: Fri, 22 Oct 2010 15:04:44 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.11) Gecko/20101006 Lightning/1.0b2 Thunderbird/3.1.5
MIME-Version: 1.0
To: Alex deVries <alex.devries@windriver.com>
References: <4CC0C619.7070201@linux.intel.com><625BA99ED14B2D499DC4E29D8138F1504D0149B5B7@shsmsx502.ccr.corp.intel.com>
	<4CC1F268.6070902@linux.intel.com>
	<855D0811-F556-42F1-89A3-60720E32044A@windriver.com>
In-Reply-To: <855D0811-F556-42F1-89A3-60720E32044A@windriver.com>
Cc: Yocto Project <yocto@yoctoproject.org>, "Rifenbark,
	Scott M" <scott.m.rifenbark@intel.com>, "Lock,
	Joshua" <joshua.lock@intel.com>
Subject: Re: RFC: "Demo Use Cases" documentation for the web page
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 22 Oct 2010 22:04:45 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/22/2010 02:04 PM, Alex deVries wrote:
>
> On 2010-10-22, at 4:22 PM, Darren Hart wrote:
>
>>> boards list used in this demo.
>>
>> Hrm... do we want to explicitly call them out? The point is that it was
>> multi-architecture, but for some to recreate it, the point is that it
>> doesn't really matter what hardware they have - poky can build for any
>> of them.
>>
>> What do others think, should we mention the specific boards in use at
>> the demo?
>
>
> Yeah, I think we should.  It proves that it really does run on other hardware, and the demo hw is the example.  Showing product names helps shake the image that this is IA-only.

OK, so can someone provide me with an appropriate list of the non-IA 
platforms? I know them as "The MIPS board" "The PPC board" etc.

-- 
Darren Hart
Embedded Linux Kernel

