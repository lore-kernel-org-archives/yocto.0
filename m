Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33F5FE00AFC
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2012 07:43:55 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 24 Feb 2012 07:43:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="69955209"
Received: from unknown (HELO envy.home) ([10.255.15.26])
	by AZSMGA002.ch.intel.com with ESMTP; 24 Feb 2012 07:43:54 -0800
Message-ID: <4F47B018.3000802@linux.intel.com>
Date: Fri, 24 Feb 2012 07:43:20 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0) Gecko/20120131 Thunderbird/10.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <1329817258.2743.23.camel@babel.joshhome>
	<1330072145.3803.25.camel@babel.joshhome>
	<4F47A273.5030701@windriver.com>
In-Reply-To: <4F47A273.5030701@windriver.com>
X-Enigmail-Version: 1.3.5
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: missing kernel in rootfs image
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
X-List-Received-Date: Fri, 24 Feb 2012 15:43:55 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 02/24/2012 06:45 AM, Bruce Ashfield wrote:
> On 12-02-24 03:29 AM, Joshua Immanuel wrote:
>> On Tue, 2012-02-21 at 15:10 +0530, Joshua Immanuel wrote:
>>>          While trying to generate my custom rootfs image, I added the
>>> linux_yocto_3.0.bbappend file to my custom layer and specified the
>>> KMACHINE, SRCREV and COMPATIBLE_MACHINE variables. I find the
>>> generated
>>> kernel image (bzImage-ekino.bin) in the tmp/deploy/images directory.
>>>
>>> But, the rootfs image does not contain the kernel (in /boot
>>> directory).
>>> My machine configuration file has the following kernel specific lines
>>>
>>>          PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
>>>          PREFERRED_VERSION_linux-yocto ?= "3.0%"
>>
>> Can someone explain the work flow behind the process of installing the
>> kernel into the rootfs image? My custom image has the IMAGE_INSTALL for
>> "task-core-boot". In turn, the task-core-boot recipe DEPENDS on
>> "virtual/kernel" this ensures that the kernel is staged.
>>
>> But, I am not sure which recipe/class is responsible for installing the
>> kernel in the final rootfs image. Should I explicitly add the
>> "linux-yocto" to RDEPENDS?
> 
> Are you past this issue yet ? I'm not sure, since you did have some
> other email that looked to be past this .. or maybe they weren't.
> 
> Darren went through the process of documenting these variables and
> was looking into some related issues. Darren: is this something that
> you ran into ?


What sort of image are you creating (live, ext3, cpio)? You want to look
at the do_install() for the linux-yocto recipe. The bits you're
interested in are in meta/classes/kernel.bbclass in the
kernel_do_install() function. I suggest instrumenting that and sorting
out where things are going wrong from there.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

