Return-Path: <mihaix.lindner@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AB3EE0070B
	for <yocto@yoctoproject.org>; Tue,  2 Oct 2012 08:00:54 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 02 Oct 2012 08:00:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,523,1344236400"; d="scan'208";a="229027284"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga001.fm.intel.com with ESMTP; 02 Oct 2012 08:00:32 -0700
Received: from [10.237.105.142] (unknown [10.237.105.142])
	by linux.intel.com (Postfix) with ESMTP id 429EE2C8001;
	Tue,  2 Oct 2012 08:00:32 -0700 (PDT)
Message-ID: <506B018E.6010101@linux.intel.com>
Date: Tue, 02 Oct 2012 18:00:30 +0300
From: Mihai Lindner <mihaix.lindner@linux.intel.com>
Organization: Intel OTC
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:15.0) Gecko/20120907 Thunderbird/15.0.1
MIME-Version: 1.0
To: Ross Burton <ross.burton@intel.com>, Tom Zanussi <tom.zanussi@intel.com>
References: <CAJTo0LYvfkAbdngN6KA_wes62RgJYVAjYHKvyVv+unjQDmt2ew@mail.gmail.com>
	<50645E48.7050208@linux.intel.com>
	<1348765649.32215.1.camel@empanada>
	<9EAF22A4DBD743CEA7903B14F00DB03F@intel.com>
In-Reply-To: <9EAF22A4DBD743CEA7903B14F00DB03F@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Cannot do atom-pc build with meta-cedartrail
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
X-List-Received-Date: Tue, 02 Oct 2012 15:00:54 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2012-09-29 23:50, Ross Burton wrote:
> On Thursday, 27 September 2012 at 18:07, Tom Zanussi wrote:
>> Yeah, looks like the other SRC_URIs do that, but it's missing from that
>> SRC_URI - I just pushed a fix for this one to meta-intel/master.
> 
> Thanks Tom, I've been frequently flipping between atom-pc and cedartrail and this was getting annoying.
> 
> Ross 
> 
> 
> 

Unfortunately this change breaks SRC_URI appends, discarded or overwritten; e.g. adding meta-tlk brings no change to SRC_URI.

-- 
Mihai Lindner

