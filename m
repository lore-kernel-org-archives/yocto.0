Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E51FE006C7
	for <yocto@yoctoproject.org>; Thu, 31 May 2012 12:42:25 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 31 May 2012 12:42:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="150986171"
Received: from jlstreix-mobl.amr.corp.intel.com (HELO envy.home)
	([10.7.199.145])
	by orsmga002.jf.intel.com with ESMTP; 31 May 2012 12:42:24 -0700
Message-ID: <4FC7C965.1020809@linux.intel.com>
Date: Thu, 31 May 2012 12:41:25 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: jfabernathy <jfabernathy@gmail.com>
References: <4FC79837.2070309@gmail.com> <4FC7B4E3.1010401@linux.intel.com>
	<4FC7BE80.4060700@gmail.com>
In-Reply-To: <4FC7BE80.4060700@gmail.com>
X-Enigmail-Version: 1.4.1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-cedartrail - serial console
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
X-List-Received-Date: Thu, 31 May 2012 19:42:25 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 05/31/2012 11:54 AM, jfabernathy wrote:
> On 05/31/2012 02:13 PM, Darren Hart wrote:
>>
>> On 05/31/2012 09:11 AM, jfabernathy wrote:
>>> Using a DN2800MT (Marshalltown) Intel board, I'm testing the
>>> meta-cedartrail using edison branch and noticed an issues with the
>>> serial console.
>>>
>>> The cedartrail.conf in the machine directory has the following statements:
>>>
>>> SYSLINUX_OPTS = "serial 0 115200"
>>> SERIAL_CONSOLE = "115200 ttyS0"
>>> APPEND += "console=ttyS0,115200 console=tty0"
>>>
>>> However, when the image booted, I had no serial console on ttyS0.  I
>>> checked /etc/inittab and noticed that the following line existed:
>>>
>>> S:2345:respawn:/sbin/getty 115200 ttyS3
>>>
>>> I changed the ttyS3 to ttyS0 and then I have a serial console on the
>>> next reboot.  So it appears the override in the .conf file is not
>>> working.  Also I only have the console from getty, and not the kernel
>>> logging console.
>>>
>>> Anyone have a solution??
>>>
>>> If this is considered a bug I can put it on bugzilla.
>> Lets make sure your environment is what we expect. Please provide the
>> output of:
>>
>> $ bitbake core-image-minimal -e | grep SERIAL_CONSOLE=
>>
>> If it is not "115200 ttyS0" then it is getting overwritten somewhere
>> either in your config, or possibly by an inappropriate selection of an
>> assignment operator (=, ?=, etc.) in edison.
> okay now I'm confused.  while the cedartrail.conf file has the following:
> SYSLINUX_OPTS = "serial 3 115200"
> SERIAL_CONSOLE = "115200 ttyS3"
> APPEND += "console=ttyS3,115200 console=tty3"
> 
> 
> The output of the bitbake command you suggested above gives:
> jim@ubuntu-x64:~/poky/build$ bitbake core-image-minimal -e | grep 
> SERIAL_CONSOLE=
> 
> # SERIAL_CONSOLE=115200 ttyS0
> SERIAL_CONSOLE="115200 ttyS0"
> jim@ubuntu-x64:~/poky/build$
> 
> So is the bitbake command showing the results before the cedartrail.conf 
> options take affect??

variable assignments can be tricky, and are not the easiest things to
track down. I suggest looking through your configured layers and looking
for all the SERIAL_CONSOLE assignments using ttyS3 and ttyS0 and see if
you can determine what is overriding your cedartrail.conf setting.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

