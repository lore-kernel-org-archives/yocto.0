Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93551E005A3
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 09:45:40 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 21 Dec 2011 09:45:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="98887907"
Received: from unknown (HELO envy.home) ([10.255.12.115])
	by fmsmga001.fm.intel.com with ESMTP; 21 Dec 2011 09:45:39 -0800
Message-ID: <4EF21B31.70104@linux.intel.com>
Date: Wed, 21 Dec 2011 09:45:21 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <1324458570-20804-1-git-send-email-dvhart@linux.intel.com>
	<3df5dff75aa30bfc19324795dc8496b8dbb0291a.1324458376.git.dvhart@linux.intel.com>
	<1324486785.18348.10.camel@ted> <4EF211C5.9040200@linux.intel.com>
	<1324488919.19860.9.camel@ted>
In-Reply-To: <1324488919.19860.9.camel@ted>
X-Enigmail-Version: 1.3.3
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH] fri2: Add linux-yocto-tiny bbappend
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
X-List-Received-Date: Wed, 21 Dec 2011 17:45:40 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 12/21/2011 09:35 AM, Richard Purdie wrote:
> On Wed, 2011-12-21 at 09:05 -0800, Darren Hart wrote:
>>
>> On 12/21/2011 08:59 AM, Richard Purdie wrote:
>>> On Wed, 2011-12-21 at 01:09 -0800, Darren Hart wrote:
>>>> Provide a bbappend for linux-yocto-tiny with support EFI, SATA, and the EG20T.
>>>> This includes EFI framebuffer and USB HID support which normally would be
>>>> omitted from a tiny kernel, but it is our only functional console as the serial
>>>> port is still non-functional.
>>>>
>>>> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
>>>> ---
>>>>  .../linux/linux-yocto-tiny/defconfig               |  613 ++++++++++++++++++++
>>>>  .../linux/linux-yocto-tiny/eg20t.cfg               |   40 ++
>>>>  .../linux/linux-yocto-tiny/inforce.cfg             |   21 +
>>>>  .../recipes-kernel/linux/linux-yocto-tiny/sata.cfg |    7 +
>>>>  .../linux/linux-yocto-tiny/usbhid.cfg              |    9 +
>>>>  .../linux/linux-yocto-tiny_3.0.bbappend            |   13 +
>>>>  6 files changed, 703 insertions(+), 0 deletions(-)
>>>>  create mode 100644 meta-fri2/recipes-kernel/linux/linux-yocto-tiny/defconfig
>>>>  create mode 100644 meta-fri2/recipes-kernel/linux/linux-yocto-tiny/eg20t.cfg
>>>>  create mode 100644 meta-fri2/recipes-kernel/linux/linux-yocto-tiny/inforce.cfg
>>>>  create mode 100644 meta-fri2/recipes-kernel/linux/linux-yocto-tiny/sata.cfg
>>>>  create mode 100644 meta-fri2/recipes-kernel/linux/linux-yocto-tiny/usbhid.cfg
>>>>  create mode 100644 meta-fri2/recipes-kernel/linux/linux-yocto-tiny_3.0.bbappend
>>>
>>> I'd just note that if merged, this would make meta-fri2 depend on
>>> meta-tiny since we'd throw parsing errors if the .bbappend is present
>>> without the file its appending to.
>>>
>>> We might want to consider this as an example in the tiny layer itself
>>> for that reason.
>>
>> Hrm, good point. My goal was to eliminate meta-tiny altogether. I have
>> never built meta-intel without meta-yocto. Do we feel that dependency a
>> problem?
> 
> I suggesting meta-dri2/meta-intel depending on meta-tiny is a problem.
> Where does meta-yocto come into this?

Actually, -ENOPEPSIYET, meta-yocto doesn't come into this as I defined
linux-yocto-tiny_3.0.bb in oe-core. meta-tiny doesn't come into this
either though. The poky-tiny patch series doesn't introduce a new layer.
meta-tiny was an experimental layer that created new images, tasks, and
bbappends to recipes rather than integrating them into poky proper.

I don't think we have any new dependencies here.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

