Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38E3BE00595
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 21:48:14 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q125m9EG010174
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 1 Feb 2012 21:48:09 -0800 (PST)
Received: from bruce-ashfields-macbook.local (128.224.20.27) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Wed, 1 Feb 2012 21:48:08 -0800
Message-ID: <4F2A2396.5060707@windriver.com>
Date: Thu, 2 Feb 2012 00:48:06 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1328121321.git.dvhart@linux.intel.com>
	<4F29F389.9010705@windriver.com> <4F2A0615.20508@linux.intel.com>
In-Reply-To: <4F2A0615.20508@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/2][linux-yocto-3.0] sys940x BSP and boot-live consolidation
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
X-List-Received-Date: Thu, 02 Feb 2012 05:48:14 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-02-01 10:42 PM, Darren Hart wrote:
>
>
> On 02/01/2012 06:23 PM, Bruce Ashfield wrote:
>> On 12-02-01 1:45 PM, Darren Hart wrote:
>>> The following changes since commit 59314a3523e360796419d76d78c6f7d8c5ef2593:
>>>
>>>     meta/beagleboard: Using CONFIG_PANEL_GENERIC_DPI=y (2012-01-30 00:50:09 -0500)
>>>
>>> are available in the git repository at:
>>>     git://git.infradead.org/users/dvhart/linux-yocto-3.0.git meta-sys940x
>>>     http://git.infradead.org/users/dvhart/linux-yocto-3.0.git/shortlog/refs/heads/meta-sys940x
>>
>> Merged and pushed. Two questions:
>
> Thanks Bruce.
>
>>     - I also did a commit to the linux-yocto files, do you need them sent
>>       out immediately, or is working with AUTOREV enough for now ? There are
>>       some other updates I'll batch this with, if we can wait.
>
> AUTOREV or SRCREVs in meta-intel for this specific BSP which I'll push
> tomorrow are fine. That bit can wait.
>
>>     - Is there any reason (outside of not being tested there, and potentially
>>       missing items like emgd), that this shouldn't go to the 3.2 tree as
>>       well ?
>
> No reason. I started with 3.0 as we wanted this for ELC and I wasn't
> sure I wanted to deal with 3.2 quite yet.
>
> The other reason was I wanted to do a proper policy/hardware division in
> the cfg for 3.2 stuff and this is mostly a copy of fri2 - it and the
> other meta-intel still have a lot of policy in the machine specific
> fragments. Still hoping to get to that bug number for M3.

All good. As long as we don't forget to merge this forward later :)
We won't .. but I'm paranoid!

Cheers,

Bruce

>
> --
> Darren
>
>>
>> Cheers,
>>
>> Bruce
>>
>>>
>>> Darren Hart (2):
>>>     meta: sys940x BSP meta data
>>>     Remove boot-live cfg duplication from BSPs
>>>
>>>    .../cfg/kernel-cache/bsp/cedartrail/cedartrail.cfg |   10 ----
>>>    meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg    |   10 ----
>>>    meta/cfg/kernel-cache/bsp/emenlow/emenlow.cfg      |   10 ----
>>>    meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg  |   10 ----
>>>    meta/cfg/kernel-cache/bsp/fri2/fri2.cfg            |   10 ----
>>>    .../bsp/sys940x/sys940x-preempt-rt.scc             |    7 +++
>>>    .../kernel-cache/bsp/sys940x/sys940x-standard.scc  |    6 +++
>>>    meta/cfg/kernel-cache/bsp/sys940x/sys940x.cfg      |   44 ++++++++++++++++++++
>>>    meta/cfg/kernel-cache/bsp/sys940x/sys940x.scc      |   17 ++++++++
>>>    meta/cfg/kernel-cache/cfg/boot-live.cfg            |    3 +
>>>    10 files changed, 77 insertions(+), 50 deletions(-)
>>>    create mode 100644 meta/cfg/kernel-cache/bsp/sys940x/sys940x-preempt-rt.scc
>>>    create mode 100644 meta/cfg/kernel-cache/bsp/sys940x/sys940x-standard.scc
>>>    create mode 100644 meta/cfg/kernel-cache/bsp/sys940x/sys940x.cfg
>>>    create mode 100644 meta/cfg/kernel-cache/bsp/sys940x/sys940x.scc
>>>
>>
>


