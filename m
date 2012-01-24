Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AAB5E00592
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2012 08:29:09 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 24 Jan 2012 08:29:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="115625665"
Received: from unknown (HELO envy.home) ([10.255.14.109])
	by fmsmga002.fm.intel.com with ESMTP; 24 Jan 2012 08:29:09 -0800
Message-ID: <4F1EDC3B.3000304@linux.intel.com>
Date: Tue, 24 Jan 2012 08:28:43 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <4F188C59.5090109@linux.intel.com> <4F1CDBA6.5080909@windriver.com>
	<4F1DFAD0.2050001@linux.intel.com>
	<4F1E4FA3.90602@windriver.com> <4F1EDB79.1030407@windriver.com>
In-Reply-To: <4F1EDB79.1030407@windriver.com>
X-Enigmail-Version: 1.3.4
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH][linux-yocto] pch_gbe: Do not abort probe on bad MAC
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
X-List-Received-Date: Tue, 24 Jan 2012 16:29:09 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 01/24/2012 08:25 AM, Bruce Ashfield wrote:
> On 12-01-24 01:28 AM, Bruce Ashfield wrote:
>> On 12-01-23 7:26 PM, Darren Hart wrote:
>>>
>>>
>>> On 01/22/2012 08:01 PM, Bruce Ashfield wrote:
>>>> On 12-01-19 4:34 PM, Darren Hart wrote:
>>>>> Bruce, please apply to linux-yocto-3.0/yocto/standard/base
>>>>
>>>> Queued.
>>>
>>> I don't see this in the repository yet, is it still pending? I'm trying
>>> to write a BSP that is dependent on it.'
>>
>> It's queued with the rest of my 3.0 updates. I've been spending
>> time on 3.2 and haven't pushed these out yet.
> 
> FYI: You can see this in the 3.0 kernel repo now, I fetched davem's
> net repo and cherry-picked it in. The SRCREV update will follow once
> I've merged 3.0.18 (or .17 if .18 takes too long).

That's perfect, I can set SRCREV's in my meta-intel BSP in the interim,
but when the patch isn't there, it's a messier process.

Thanks Bruce

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

