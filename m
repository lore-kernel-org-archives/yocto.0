Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E54E9E013BB
	for <yocto@yoctoproject.org>; Mon, 14 May 2012 13:15:56 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 14 May 2012 13:15:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="143873028"
Received: from dkrish4-mobl.amr.corp.intel.com (HELO envy.home)
	([10.7.199.153])
	by orsmga002.jf.intel.com with ESMTP; 14 May 2012 13:15:56 -0700
Message-ID: <4FB167D1.5010703@linux.intel.com>
Date: Mon, 14 May 2012 13:15:13 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120424 Thunderbird/12.0
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <594ba05ab96a837575960ba514ae153eeef899b7.1336851382.git.tom.zanussi@intel.com>
	<991789c30cbc85521bf8c76bcea45df1184cb0ab.1336851382.git.tom.zanussi@intel.com>
	<4FB13480.3000501@linux.intel.com>
	<1337025318.3850.8.camel@elmorro>
In-Reply-To: <1337025318.3850.8.camel@elmorro>
X-Enigmail-Version: 1.4.1
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 11/22] meta: add scsi feature
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
X-List-Received-Date: Mon, 14 May 2012 20:15:57 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 05/14/2012 12:55 PM, Tom Zanussi wrote:
> On Mon, 2012-05-14 at 09:36 -0700, Darren Hart wrote:
>>
>> On 05/12/2012 12:41 PM, tom.zanussi@intel.com wrote:
>>> From: Tom Zanussi <tom.zanussi@intel.com>
>>>
>>> Add a feature to enable SCSI support.  This also creates a scsi/
>>> directory to contain further SCSI options.
>>>
>>> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
>>> ---
>>>  meta/cfg/kernel-cache/features/scsi/scsi.cfg |    1 +
>>>  meta/cfg/kernel-cache/features/scsi/scsi.scc |    4 ++++
>>>  2 files changed, 5 insertions(+), 0 deletions(-)
>>>  create mode 100644 meta/cfg/kernel-cache/features/scsi/scsi.cfg
>>>  create mode 100644 meta/cfg/kernel-cache/features/scsi/scsi.scc
>>>
>>> diff --git a/meta/cfg/kernel-cache/features/scsi/scsi.cfg b/meta/cfg/kernel-cache/features/scsi/scsi.cfg
>>> new file mode 100644
>>> index 0000000..2e9142f
>>> --- /dev/null
>>> +++ b/meta/cfg/kernel-cache/features/scsi/scsi.cfg
>>> @@ -0,0 +1 @@
>>> +CONFIG_SCSI=y
>>
>> There are additional dependencies for this which certain policy
>> configurations may not enable for us. CONFIG_BLOCK for example.
>>
> 
> I only see a CONFIG_BLOCK dependency for CONFIG_SCSI - what are the
> other 'additional dependencies' you mention?
> 
> Tom

What I do is look up each CONFIG_ in menuconfig (the / search) and trace
the depends all the way up. For this I only looked at CONFIG_BLK_DEV_SD
and CONFIG_SCSI. If CONFIG_BLOCK doesn't have any additional
dependencies, then it's just CONFIG_BLOCK.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

