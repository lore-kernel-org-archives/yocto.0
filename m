Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61905E0030B
	for <yocto@yoctoproject.org>; Mon,  6 Feb 2012 13:32:36 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 06 Feb 2012 13:32:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="104673163"
Received: from unknown (HELO [10.7.199.63]) ([10.7.199.63])
	by orsmga001.jf.intel.com with ESMTP; 06 Feb 2012 13:32:36 -0800
Message-ID: <4F3046F3.80102@linux.intel.com>
Date: Mon, 06 Feb 2012 13:32:35 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0) Gecko/20120131 Thunderbird/10.0
MIME-Version: 1.0
To: yocto@yoctoproject.org, 
	"Barros Pena, Belen" <belen.barros.pena@intel.com>,
	"Wang, Shane" <shane.wang@intel.com>
References: <3AB6CE7F274E534CAFD089D127A8A1FC0FCE9634@SHSMSX102.ccr.corp.intel.com>
In-Reply-To: <3AB6CE7F274E534CAFD089D127A8A1FC0FCE9634@SHSMSX102.ccr.corp.intel.com>
Subject: Re: RFC: Hob 1.2 design
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
X-List-Received-Date: Mon, 06 Feb 2012 21:32:36 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 31/01/12 17:39, Wang, Shane wrote:
> Hi, all,
>
> Belen has a new video for Hob2 workflow and design.
>
> https://wiki.yoctoproject.org/wiki/File:Hob1.2-screencast2.mov

It just came to my attention through another channel that the 
description column of the packages table is no longer present.

There had been some discussion about how to show relevant description 
information in that column, so I'm surprised to see it go.

Belen, I assume from a design perspective this field was removed as it 
didn't show anything particularly useful? If we have useful data to 
include in that field is there a more appropriate way to integrate it 
into the UI? Perhaps a tooltip? Or an information overlay as has been 
used in other areas of the design?

I'm concerned that if we give the user a list of packages without any 
more information we aren't making it easy for them to build an OS image 
without already understanding exactly all of the components they need - 
thoughts?

Cheers,
Joshua
-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

