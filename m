Return-Path: <mihaix.lindner@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48316E0049B
	for <yocto@yoctoproject.org>; Fri,  5 Oct 2012 02:28:40 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 05 Oct 2012 02:28:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,541,1344236400"; d="scan'208";a="200897234"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by azsmga001.ch.intel.com with ESMTP; 05 Oct 2012 02:28:12 -0700
Received: from [10.237.105.49] (mlindnex-mobl1.ger.corp.intel.com
	[10.237.105.49])
	by linux.intel.com (Postfix) with ESMTP id 1D6D22C8001;
	Fri,  5 Oct 2012 02:28:12 -0700 (PDT)
Message-ID: <506EA82B.3070803@linux.intel.com>
Date: Fri, 05 Oct 2012 12:28:11 +0300
From: Mihai Lindner <mihaix.lindner@linux.intel.com>
Organization: Intel OTC
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:15.0) Gecko/20120907 Thunderbird/15.0.1
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <cover.1349372542.git.mihaix.lindner@linux.intel.com>
	<14ad4ba67528eeb935fe8e07e382463f8aa5685c.1349372542.git.mihaix.lindner@linux.intel.com>
	<1594004.RBn6gvQsN0@helios>
In-Reply-To: <1594004.RBn6gvQsN0@helios>
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
X-List-Received-Date: Fri, 05 Oct 2012 09:28:40 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 2012-10-04 20:51, Paul Eggleton wrote:
> Hi Mihai,
> 
> On Thursday 04 October 2012 20:47:08 Mihai Lindner wrote:
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
>>  meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend | 7 +------
>>  meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend | 7 +------
>>  meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend | 7 +------
>>  4 files changed, 6 insertions(+), 18 deletions(-)
>>  create mode 100644 meta-tlk/recipes-kernel/linux/linux-yocto.inc
>>
>> diff --git a/meta-tlk/recipes-kernel/linux/linux-yocto.inc
>> b/meta-tlk/recipes-kernel/linux/linux-yocto.inc new file mode 100644
>> index 0000000..96a3adf
>> --- /dev/null
>> +++ b/meta-tlk/recipes-kernel/linux/linux-yocto.inc
>> @@ -0,0 +1,3 @@
>> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>> +SRC_URI_append += "file://time-limited-kernel.cfg"
> 
> You should use SRC_URI_append = " file://time-limited-kernel.cfg" (note leading 
> space) here. Obviously what you have done does work, but we want to avoid 
> _append += as it can be confusing.
> 
> Cheers,
> Paul
> 
Hi Paul,

Ok, good to know. I will resend.
I was trying to avoid spaces in values and += fitted the description.

Thanks,
-- 
Mihai Lindner

