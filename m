Return-Path: <mihaix.lindner@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6081CE01199
	for <yocto@yoctoproject.org>; Fri,  5 Oct 2012 05:52:20 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 05 Oct 2012 05:52:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,541,1344236400"; d="scan'208";a="200948222"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by azsmga001.ch.intel.com with ESMTP; 05 Oct 2012 05:52:19 -0700
Received: from [10.237.105.49] (mlindnex-mobl1.ger.corp.intel.com
	[10.237.105.49])
	by linux.intel.com (Postfix) with ESMTP id BFBAF2C8001;
	Fri,  5 Oct 2012 05:52:19 -0700 (PDT)
Message-ID: <506ED801.9030003@linux.intel.com>
Date: Fri, 05 Oct 2012 15:52:17 +0300
From: Mihai Lindner <mihaix.lindner@linux.intel.com>
Organization: Intel OTC
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:15.0) Gecko/20120907 Thunderbird/15.0.1
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <cover.1349435514.git.mihaix.lindner@linux.intel.com>
	<57468146a5fbeb836ac941d51fc6f41031e41b03.1349435514.git.mihaix.lindner@linux.intel.com>
	<1349437880.15658.22.camel@ted>
In-Reply-To: <1349437880.15658.22.camel@ted>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] meta-tlk: fix ignored SRC_URI appends
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
X-List-Received-Date: Fri, 05 Oct 2012 12:52:20 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2012-10-05 14:51, Richard Purdie wrote:
> On Fri, 2012-10-05 at 14:20 +0300, Mihai Lindner wrote:
>> Fix SRC_URI appends ignored by meta-cedartrail and meta-crownbay. Used
>> SRC_URI_append instead of SRC_URI.
>> Also placed all variables in an .inc file to be required by all
>> linux-yocto recipes in here, since all versions use the same.
>>
>> [YOCTO #3217]
>>
>> Signed-off-by: Mihai Lindner <mihaix.lindner@linux.intel.com>
>> ---
>>  meta-tlk/recipes-kernel/linux/linux-yocto.inc          | 3 +++
> 
> Could you use a slightly less generic name for this include please? I
> worry about collisions...
> 
> Cheers,
> 
> Richard
> 
> 
> 
> 
Sure.

Thanks,

-- 
Mihai Lindner

