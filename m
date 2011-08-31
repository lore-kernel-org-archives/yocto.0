Return-Path: <darren.hart@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 595B2E01225
	for <yocto@yoctoproject.org>; Wed, 31 Aug 2011 10:00:18 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 31 Aug 2011 10:00:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,308,1312182000"; d="scan'208";a="44363224"
Received: from unknown (HELO envy.home) ([10.255.14.55])
	by azsmga001.ch.intel.com with ESMTP; 31 Aug 2011 10:00:17 -0700
Message-ID: <4E5E68A1.4030404@intel.com>
Date: Wed, 31 Aug 2011 10:00:17 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:6.0) Gecko/20110816 Thunderbird/6.0
MIME-Version: 1.0
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
References: <4BD43A85686FC34D819098DB1C3999D9018894C6CA@orsmsx502.amr.corp.intel.com>
	<1314749498.5939.450.camel@rex> <4E5DA1C6.2040207@intel.com>
	<4BD43A85686FC34D819098DB1C3999D9018894C9BB@orsmsx502.amr.corp.intel.com>
In-Reply-To: <4BD43A85686FC34D819098DB1C3999D9018894C9BB@orsmsx502.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: linux-yocto-rt build fail for sugarbay bsp on grub recipe
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
X-List-Received-Date: Wed, 31 Aug 2011 17:00:18 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 08/31/2011 09:51 AM, Bodke, Kishore K wrote:
> When I do bitbake freetype followed by bitbake grub , the grub build successfully.
> 
> Attached is the freetype.log and grub.log.
> 
> It fails if I first build the bitbake grub.  


Did you apply the patch I provided?

--
Darren


> 
> Thanks
> Kishore.
> 
> -----Original Message-----
> From: Hart, Darren 
> Sent: Tuesday, August 30, 2011 7:52 PM
> To: Richard Purdie
> Cc: Bodke, Kishore K; yocto@yoctoproject.org
> Subject: Re: [yocto] linux-yocto-rt build fail for sugarbay bsp on grub recipe
> 
> On 08/30/2011 05:11 PM, Richard Purdie wrote:
>> On Tue, 2011-08-30 at 16:59 -0700, Bodke, Kishore K wrote:
>>> Hello All,
>>>
>>>  
>>>
>>> I am trying to build linux-yocto with rt kernel for sugarbay bsp and
>>> it fails for the grub recipe.
>>>
>>>  
>>>
>>> Attached is the build log.  
>>>
>>>  
>>>
>>> kishore@kishore-desktop:/usr/local/src/crf/test/buildsugarbayrt$
>>> bitbake -e | egrep "^WARN_QA="
>>>
>>> WARN_QA="dev-so rpaths debug-deps dev-deps debug-files arch la2
>>> pkgconfig desktop la ldflags perms useless-rpaths"
>>>
>>> kishore@kishore-desktop:/usr/local/src/crf/test/buildsugarbayrt$
>>> bitbake -e | egrep "^ERROR_QA="
>>>
>>> kishore@kishore-desktop:/usr/local/src/crf/test/buildsugarbayrt$
>>>
>>>  
>>>
>>> Please let me know what could be the issue.
>>
>> Could you include the config.log file mentioned in the error report
>> please?
>>
>> This should be somewhere like
>> usr/local/src/crf/test/buildsugarbayrt/tmp/work/x86_64-poky-linux/grub-1.98-r1/*/config.log
>>
> 
> I replied with this and a comparison file, but it was rejected due to
> being over 200k :(.
> 
> Short of it is that Kishore's config.log shows it picking up the
> freetype libs from his host system. The patch I proposed adds a DEPENDS
> to grub on freetype.
> 
>> Cheers,
>>
>> Richard
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> 
> 


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

