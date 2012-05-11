Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F000E00746
	for <yocto@yoctoproject.org>; Fri, 11 May 2012 15:36:31 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 11 May 2012 15:36:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="142950822"
Received: from rkern1-mobl.amr.corp.intel.com (HELO envy.home) ([10.7.199.157])
	by orsmga002.jf.intel.com with ESMTP; 11 May 2012 15:36:31 -0700
Message-ID: <4FAD9442.5040105@linux.intel.com>
Date: Fri, 11 May 2012 15:35:46 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120424 Thunderbird/12.0
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <594ba05ab96a837575960ba514ae153eeef899b7.1336697506.git.tom.zanussi@intel.com>
	<0a78d7e8401e3d500b3cb784c6bf0a4e7271f99e.1336697506.git.tom.zanussi@intel.com>
	<4FAD3BC9.1030606@linux.intel.com>
	<1336774104.27950.13.camel@elmorro>
In-Reply-To: <1336774104.27950.13.camel@elmorro>
X-Enigmail-Version: 1.4.1
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 06/10] meta/crownbay: factor out policy-related options
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
X-List-Received-Date: Fri, 11 May 2012 22:36:31 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 05/11/2012 03:08 PM, Tom Zanussi wrote:
> On Fri, 2012-05-11 at 09:18 -0700, Darren Hart wrote:

>> Independent from this patch, but does crownbay have all three? ehci and
>> ohci seems a lot more likely to me.
>>
> 
> lsusb shows ehci and ohci, but why did you think ohci would be more
> likely?
> 
> Tom


I believe UHCI is only seen on non-intel platforms, primarily AMD and
maybe VIA systems... just something I had a vague recollection of.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

