Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FA38E00536
	for <yocto@yoctoproject.org>; Mon,  3 Oct 2011 13:40:53 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Oct 2011 13:40:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="59488624"
Received: from unknown (HELO envy.home) ([10.7.199.150])
	by orsmga002.jf.intel.com with ESMTP; 03 Oct 2011 13:40:52 -0700
Message-ID: <4E8A1DD4.6010303@linux.intel.com>
Date: Mon, 03 Oct 2011 13:40:52 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:6.0.2) Gecko/20110906 Thunderbird/6.0.2
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <4E8A0380.1030502@linux.intel.com> <1317668520.12684.8.camel@ted>
	<1317668867.2323.24.camel@elmorro>
In-Reply-To: <1317668867.2323.24.camel@elmorro>
Cc: Yocto Project <yocto@yoctoproject.org>, "Wold, Saul" <saul.wold@intel.com>
Subject: Re: GRUB fix for 1.1: Preferred approach for default grub version
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
X-List-Received-Date: Mon, 03 Oct 2011 20:40:53 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 10/03/2011 12:07 PM, Tom Zanussi wrote:
> On Mon, 2011-10-03 at 12:01 -0700, Richard Purdie wrote:
>> On Mon, 2011-10-03 at 11:48 -0700, Darren Hart wrote:
>>> When grub2 was merged int oe-core, it became the default (rather than
>>> being explicitly requested by the 64b meta-intel BSPs). This breaks the
>>> live install on 32b systems, like the n450 - installing grub v1.99 with
>>> a grub v1 config.
>>>
>>> We have a couple options on how to fix this.
>>>
>>> 1) Set PREFERRED_PROVIDER_grub="0.97" in all 32b x86 machine configs
>>> 2) Set DEFAULT_PREFERENCE="-1" in the grub_1.99.bb recipe which would
>>>    affect all of oe-core.
>>> 3) Some alternate approach which would be the equivalent of
>>>    DEFAULT_PREFERENCE, but only for meta-yocto BSPs or the poky
>>>    "distro".
>>>
>>> Given the time frame, I'd prefer to agree on the approach before writing
>>> and testing patches. Preferences?
>>
>> I thought I'd been assured grub2 worked fine for our 32 and 64 bit
>> platforms? :/.
>>
>> The correct question here is why doesn't grub2 work on 32 bit platforms?
>>
> 
> I did test it with both 32-bit and 64-bit BSPs in meta-intel, so it
> should work for the n450 too.

I checked out edison in poky in meta-intel and built core-image-minimal
for n450. By default it builds GRUB 2, which after install boots to a
GRUB prompt with no menu.

Using the PREFERRED_PROVIDER method above with the edison branches
results in a GRUB 1 menu after install.

--
Darren

> 
> Tom
> 
>> The answer might be "we need for time than is available in the 1.1
>> release to fix it" but I'd at least like to see the answer to the
>> question before we start with workarounds.
>>
>> Cheers,
>>
>> Richard
>>
> 
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

