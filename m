Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id B570A4C801BF
	for <yocto@yoctoproject.org>; Wed, 20 Oct 2010 19:12:56 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 20 Oct 2010 17:12:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.57,357,1283756400"; d="scan'208";a="669323509"
Received: from unknown (HELO [10.255.12.168]) ([10.255.12.168])
	by orsmga001.jf.intel.com with ESMTP; 20 Oct 2010 17:12:56 -0700
Message-ID: <4CBF8588.7090706@linux.intel.com>
Date: Wed, 20 Oct 2010 17:12:56 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.9) Gecko/20100922 Thunderbird/3.1.4
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <1287595139.2635.16.camel@scimitar>	
	<1287612589.2231.3.camel@scimitar>
	<4CBF7FBB.3080804@linux.intel.com>
	<1287619636.2036.1.camel@elmorro>
In-Reply-To: <1287619636.2036.1.camel@elmorro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: UPnP demo - call for testing
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
X-List-Received-Date: Thu, 21 Oct 2010 00:12:56 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/20/2010 05:07 PM, Tom Zanussi wrote:
> On Wed, 2010-10-20 at 16:48 -0700, Darren Hart wrote:
>> On 10/20/2010 03:09 PM, Joshua Lock wrote:
>>> On Wed, 2010-10-20 at 18:18 +0100, Joshua Lock wrote:
>>>> Hi all,
>>>>
>>>> I've successfully tested the UPnP demo in my office but would appreciate
>>>> someone else taking a bash.
>>>>
>>>> Unfortunately you currently need my branch from poky-contrib (josh/demo)
>>>> and the corresponding branch from meta-demo (josh/demo).
>>>
>>> I've just pushed one change to poky/master and merged a tidied up
>>> changeset into the master branch of meta-demo. So you should now be able
>>> to test with latest poky and meta-demo master.
>>>
>>> Cheers,
>>> Joshua
>>
>> I have added the COMMERCIAL_LICENSE bits to my local.conf and mediatomb
>> built after that.
>>
>> building poky-image-rygel-live, gupnp-dlna do_configure is failing with:
>>
>> 	configure: error: Package requirements (gstreamer-0.10>=
>> 	0.10.29.2) were not met:
>>
>> 	No package 'gstreamer-0.10' found
>>
>> Have you seen that?
>>
>
> I did get that, but IIRC it was because I didn't have the latest
> josh/demo branch.  Do you have the latest?

He said we should now be able to build from master and meta-demo/master 
- I refreshed those since he posted that.

>
> Tom
>


-- 
Darren Hart
Embedded Linux Kernel

