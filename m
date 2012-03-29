Return-Path: <john.toomey@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 976FCE0059A
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 06:20:46 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 29 Mar 2012 06:20:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="123091157"
Received: from jtoomey-mobl9.ger.corp.intel.com (HELO [163.33.228.128])
	([163.33.228.128])
	by orsmga001.jf.intel.com with ESMTP; 29 Mar 2012 06:20:45 -0700
Message-ID: <4F7461AC.7050202@linux.intel.com>
Date: Thu, 29 Mar 2012 14:20:44 +0100
From: John Toomey <john.toomey@linux.intel.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:10.0.1) Gecko/20120208 Thunderbird/10.0.1
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <4F68A6F6.8080900@linux.intel.com> <1369360.rBu7e7v26n@helios>
	<CAMKF1spVh7VR12eaUdbLQ5rCzT0ifziTWtFBgsLW7Or2+92XTw@mail.gmail.com>
In-Reply-To: <CAMKF1spVh7VR12eaUdbLQ5rCzT0ifziTWtFBgsLW7Or2+92XTw@mail.gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: issue building iputils with uclibc.
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
X-List-Received-Date: Thu, 29 Mar 2012 13:20:46 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 20/03/2012 16:56, Khem Raj wrote:
> On Tue, Mar 20, 2012 at 9:23 AM, Paul Eggleton
> <paul.eggleton@linux.intel.com>  wrote:
>> IIRC the thread ended with Khem asking if UCLIBC_HAS_RESOLVER_SUPPORT='y' was
>> in the uclibc configuration, the implication being that dn_comp is unavailable
>> unless that is true. I'm not too familiar with how uclibc is configured and
>> with only a brief glance at the recipe I can see the config seems to be
>> automatically generated but I can't see exactly how additional options (beyond
>> what gets added from DISTRO_FEATURES) would be added.
>>
>> Khem, could you help out here?
> go into the uclibc build tree and like kernel or busybox it will have
> a .config and grok that. If this is disabled then enable it in
> uClibc.distro file under uclibc recipes dir and rebuild uclibc.
> ideally these are distro knobs but for tests you can try it
> file ( uclibc uses kconfig )
>
Hi Folks

I am unable to find a .config file in the uclibc build tree, can you be 
more specific about the path i might find it at?

UCLIBC_HAS_RESOLVER_SUPPORT=y doesnt seem to be present in the 
uClibc.distro file, i added it and tried running the build again with no 
success. Is there anything else I can try?

Thanks,
John



