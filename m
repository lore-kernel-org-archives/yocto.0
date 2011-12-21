Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34CD1E0123C
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 09:05:30 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 21 Dec 2011 09:05:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="88174160"
Received: from unknown (HELO envy.home) ([10.255.12.115])
	by azsmga001.ch.intel.com with ESMTP; 21 Dec 2011 09:05:27 -0800
Message-ID: <4EF211C5.9040200@linux.intel.com>
Date: Wed, 21 Dec 2011 09:05:09 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <1324458570-20804-1-git-send-email-dvhart@linux.intel.com>
	<3df5dff75aa30bfc19324795dc8496b8dbb0291a.1324458376.git.dvhart@linux.intel.com>
	<1324486785.18348.10.camel@ted>
In-Reply-To: <1324486785.18348.10.camel@ted>
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
X-List-Received-Date: Wed, 21 Dec 2011 17:05:30 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 12/21/2011 08:59 AM, Richard Purdie wrote:
> On Wed, 2011-12-21 at 01:09 -0800, Darren Hart wrote:
>> Provide a bbappend for linux-yocto-tiny with support EFI, SATA, and the EG20T.
>> This includes EFI framebuffer and USB HID support which normally would be
>> omitted from a tiny kernel, but it is our only functional console as the serial
>> port is still non-functional.
>>
>> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
>> ---
>>  .../linux/linux-yocto-tiny/defconfig               |  613 ++++++++++++++++++++
>>  .../linux/linux-yocto-tiny/eg20t.cfg               |   40 ++
>>  .../linux/linux-yocto-tiny/inforce.cfg             |   21 +
>>  .../recipes-kernel/linux/linux-yocto-tiny/sata.cfg |    7 +
>>  .../linux/linux-yocto-tiny/usbhid.cfg              |    9 +
>>  .../linux/linux-yocto-tiny_3.0.bbappend            |   13 +
>>  6 files changed, 703 insertions(+), 0 deletions(-)
>>  create mode 100644 meta-fri2/recipes-kernel/linux/linux-yocto-tiny/defconfig
>>  create mode 100644 meta-fri2/recipes-kernel/linux/linux-yocto-tiny/eg20t.cfg
>>  create mode 100644 meta-fri2/recipes-kernel/linux/linux-yocto-tiny/inforce.cfg
>>  create mode 100644 meta-fri2/recipes-kernel/linux/linux-yocto-tiny/sata.cfg
>>  create mode 100644 meta-fri2/recipes-kernel/linux/linux-yocto-tiny/usbhid.cfg
>>  create mode 100644 meta-fri2/recipes-kernel/linux/linux-yocto-tiny_3.0.bbappend
> 
> I'd just note that if merged, this would make meta-fri2 depend on
> meta-tiny since we'd throw parsing errors if the .bbappend is present
> without the file its appending to.
> 
> We might want to consider this as an example in the tiny layer itself
> for that reason.

Hrm, good point. My goal was to eliminate meta-tiny altogether. I have
never built meta-intel without meta-yocto. Do we feel that dependency a
problem?


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

