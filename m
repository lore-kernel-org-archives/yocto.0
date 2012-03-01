Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7ACF7E0030B
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2012 15:02:00 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Mar 2012 15:02:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="113631152"
Received: from unknown (HELO envy.home) ([10.7.199.61])
	by orsmga001.jf.intel.com with ESMTP; 01 Mar 2012 15:02:00 -0800
Message-ID: <4F4FFFBC.20006@linux.intel.com>
Date: Thu, 01 Mar 2012 15:01:16 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0) Gecko/20120131 Thunderbird/10.0
MIME-Version: 1.0
To: jfabernathy <jfabernathy@gmail.com>
References: <4F4E8B62.6010209@gmail.com> <4F4E8C2E.5030602@mlbassoc.com>
	<4F4E9D03.8040305@gmail.com>
In-Reply-To: <4F4E9D03.8040305@gmail.com>
X-Enigmail-Version: 1.3.5
Cc: yocto@yoctoproject.org
Subject: Re: building with 1.2_M3
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
X-List-Received-Date: Thu, 01 Mar 2012 23:02:00 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 02/29/2012 01:47 PM, jfabernathy wrote:
> On 02/29/2012 03:35 PM, Gary Thomas wrote:
>> On 2012-02-29 13:32, jfabernathy wrote:
>>> Just for fun, I thought I'd build meta-cedartrail today since I saw 
>>> 1.2_M3 branch show up when I did a git pull today. The only thing I 
>>> did above the basic BSP was to include my
>>> meta-jfa layer which is nothing more than my hello world application 
>>> and web-webkit, which is already in the meta layer.
>>>
>>> I added to local.conf the following lines, like I alway do:
>>>
>>> POKY_EXTRA_INSTALL += "web-webkit"
>>>
>>> POKY_EXTRA_INSTALL += "hello"
>>>
>>> I also added the meta-intel, meta-intel/meta-cedartrail, and meta-jfa 
>>> to my bblayers.conf.
>>>
>>> However, unlike the last time I ran this against master branch, I 
>>> didn't get "hello" or "web-webkit" in my image, as I usually do.
>>>
>>> Is this just a quirk with 1.2_M3 or did something break?
>>
>> Looks like this variable was renamed to be CORE_IMAGE_EXTRA_INSTALL
>>
> Another thought.  I hope the glossary in Poky Reference Manual will get 
> changed to reflect this?? It isn't right now, but 1.2_M3 may not be done 
> yet.

The Reference Manual linked off the Documentation page is for the last
stable release, Edison in this case.

The development version of the manual is also available online:

http://www.yoctoproject.org/docs/latest/poky-ref-manual/poky-ref-manual.html

This still lists POKY_EXTRA_INSTALL.

Scott, can you change this to CORE_IMAGE_EXTRA_INSTALL please?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

