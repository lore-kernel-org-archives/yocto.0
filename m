Return-Path: <darren.hart@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F125CE0125F
	for <yocto@yoctoproject.org>; Tue, 30 Aug 2011 19:51:52 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 30 Aug 2011 19:51:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,305,1312182000"; d="scan'208";a="46852927"
Received: from unknown (HELO envy.home) ([10.255.14.55])
	by fmsmga002.fm.intel.com with ESMTP; 30 Aug 2011 19:51:50 -0700
Message-ID: <4E5DA1C6.2040207@intel.com>
Date: Tue, 30 Aug 2011 19:51:50 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:6.0) Gecko/20110816 Thunderbird/6.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4BD43A85686FC34D819098DB1C3999D9018894C6CA@orsmsx502.amr.corp.intel.com>
	<1314749498.5939.450.camel@rex>
In-Reply-To: <1314749498.5939.450.camel@rex>
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
X-List-Received-Date: Wed, 31 Aug 2011 02:51:53 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 08/30/2011 05:11 PM, Richard Purdie wrote:
> On Tue, 2011-08-30 at 16:59 -0700, Bodke, Kishore K wrote:
>> Hello All,
>>
>>  
>>
>> I am trying to build linux-yocto with rt kernel for sugarbay bsp and
>> it fails for the grub recipe.
>>
>>  
>>
>> Attached is the build log.  
>>
>>  
>>
>> kishore@kishore-desktop:/usr/local/src/crf/test/buildsugarbayrt$
>> bitbake -e | egrep "^WARN_QA="
>>
>> WARN_QA="dev-so rpaths debug-deps dev-deps debug-files arch la2
>> pkgconfig desktop la ldflags perms useless-rpaths"
>>
>> kishore@kishore-desktop:/usr/local/src/crf/test/buildsugarbayrt$
>> bitbake -e | egrep "^ERROR_QA="
>>
>> kishore@kishore-desktop:/usr/local/src/crf/test/buildsugarbayrt$
>>
>>  
>>
>> Please let me know what could be the issue.
> 
> Could you include the config.log file mentioned in the error report
> please?
> 
> This should be somewhere like
> usr/local/src/crf/test/buildsugarbayrt/tmp/work/x86_64-poky-linux/grub-1.98-r1/*/config.log
> 

I replied with this and a comparison file, but it was rejected due to
being over 200k :(.

Short of it is that Kishore's config.log shows it picking up the
freetype libs from his host system. The patch I proposed adds a DEPENDS
to grub on freetype.

> Cheers,
> 
> Richard
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

