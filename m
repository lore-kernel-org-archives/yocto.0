Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E082DE00305
	for <yocto@yoctoproject.org>; Wed,  9 Nov 2011 11:17:16 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 09 Nov 2011 11:17:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="72955442"
Received: from unknown (HELO [10.255.12.15]) ([10.255.12.15])
	by orsmga002.jf.intel.com with ESMTP; 09 Nov 2011 11:17:16 -0800
Message-ID: <4EBAD1BC.4060103@linux.intel.com>
Date: Wed, 09 Nov 2011 11:17:16 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0.1) Gecko/20110930 Thunderbird/7.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CANFv2EnZDD=wXJEz-Q1ovwRA3-+CaEuHErSbNe46S9vk9sNZJA@mail.gmail.com>
	<1320861083.16608.45.camel@elmorro>
In-Reply-To: <1320861083.16608.45.camel@elmorro>
Subject: Re: build failure on crownbay with EMGD
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
X-List-Received-Date: Wed, 09 Nov 2011 19:17:17 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 09/11/11 09:51, Tom Zanussi wrote:
> On Wed, 2011-11-09 at 09:41 -0800, James Abernathy wrote:
>> In the past I've built the crownbay-noemgd successfully, using the
>> Development Manual Appendix A corrected instructions that have been
>> patched.  I thought I'd try my hand at building the crownbay with EMGD
>> this time.  Following the instructions in the Appendix A, but using
>> the opposite instructions related to EMGD, plus installing EMGD per
>> the instructions in the README file in the meta-crownbay directory, I
>> got a long way into the build, but failed toward the end in what looks
>> like a dependance issue.  Can someone spot what I need to change???
>>  
> 
> Yes, you've hit the missing step added to the update release notes here:
> 
> http://www.yoctoproject.org/download/bsp/intel-atom-processor-e660-intel-platform-controller-hub-eg20t-development-kit-1
> 
> 
> 7. Remove the following unused file from the emgd binaries in order to
> avoid a packaging error at build-time:
>         $ rm
> meta-intel/common/recipes-graphics/xorg-xserver/emgd-driver-bin-1.8/lib/dri/emgd_drv_video.so

What prevents us doing this in the recipe?

Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre

