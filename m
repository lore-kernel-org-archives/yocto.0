Return-Path: <darren.hart@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52072E006D9
	for <yocto@yoctoproject.org>; Thu, 31 May 2012 12:44:20 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 31 May 2012 12:44:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="150986713"
Received: from jlstreix-mobl.amr.corp.intel.com (HELO envy.home)
	([10.7.199.145])
	by orsmga002.jf.intel.com with ESMTP; 31 May 2012 12:44:19 -0700
Message-ID: <4FC7C9D8.5030301@intel.com>
Date: Thu, 31 May 2012 12:43:20 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: jfabernathy <jfabernathy@gmail.com>
References: <4FC79837.2070309@gmail.com>
	<D956029D25CF204F948EA0FB515E1EE20ACB7838@ORSMSX105.amr.corp.intel.com>
	<4FC7C769.1030903@gmail.com>
In-Reply-To: <4FC7C769.1030903@gmail.com>
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
X-List-Received-Date: Thu, 31 May 2012 19:44:20 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 05/31/2012 12:32 PM, jfabernathy wrote:
> On 05/31/2012 02:18 PM, Bodke, Kishore K wrote:
>>
>>> -----Original Message-----
>>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>>> bounces@yoctoproject.org] On Behalf Of jfabernathy
>>> Sent: Thursday, May 31, 2012 9:12 AM
>>> To: yocto@yoctoproject.org
>>> Subject: [yocto] meta-cedartrail - serial console
>>>
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
>> I just saw that Edison branch has ttyS3 enabled.
>>
>> SYSLINUX_OPTS = "serial 3 115200"
>> SERIAL_CONSOLE = "115200 ttyS3"
>> APPEND += "console=ttyS3,115200 console=tty3"
>>
>> Are you looking into right branch?
>>
>> Thanks
>> -Kishore.
>>   
> 
> So how do you get changes in the cedartrail.conf file to take affect??  
> I edited the file and did the bitbake again, but nothing changed.  I'm 
> guessing I need a bitbake -c cleansstate "somthing"  But I don't know 
> what to put there to make rebuild with ttyS0.
> 

Ah yes, this rebuild is a bit frustrating. I believe it is the
task_core* tasks you need to rebuild. bitbake -u depexp -g
core-image-base (whatever your image is) will allow you to view which
task_ tasks it is building, try cleansstate'ing those and rebuilding the
image.

--
Darren

> Jim A
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
>>>
>>> Jim A
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

