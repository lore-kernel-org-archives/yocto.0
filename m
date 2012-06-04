Return-Path: <darren.hart@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 787ABE0044A
	for <yocto@yoctoproject.org>; Mon,  4 Jun 2012 09:33:42 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 04 Jun 2012 09:33:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="147869925"
Received: from sharon1-mobl1.amr.corp.intel.com (HELO envy.home)
	([10.7.199.157])
	by orsmga001.jf.intel.com with ESMTP; 04 Jun 2012 09:33:21 -0700
Message-ID: <4FCCE30D.3020508@intel.com>
Date: Mon, 04 Jun 2012 09:32:13 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
References: <4FC79837.2070309@gmail.com>
	<D956029D25CF204F948EA0FB515E1EE20ACB7838@ORSMSX105.amr.corp.intel.com>
	<4FC7C769.1030903@gmail.com> <4FC7C9D8.5030301@intel.com>
	<D956029D25CF204F948EA0FB515E1EE20ACB7D5F@ORSMSX105.amr.corp.intel.com>
	<4FC905FA.7010707@intel.com>
	<D956029D25CF204F948EA0FB515E1EE20ACB7DD9@ORSMSX105.amr.corp.intel.com>
	<4FC93135.1040802@intel.com>
	<D956029D25CF204F948EA0FB515E1EE20ACB802E@ORSMSX105.amr.corp.intel.com>
In-Reply-To: <D956029D25CF204F948EA0FB515E1EE20ACB802E@ORSMSX105.amr.corp.intel.com>
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
X-List-Received-Date: Mon, 04 Jun 2012 16:33:42 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 06/01/2012 05:51 PM, Bodke, Kishore K wrote:
> 
> 
>> -----Original Message-----
>> From: Hart, Darren
>> Sent: Friday, June 01, 2012 2:17 PM
>> To: Bodke, Kishore K
>> Cc: jfabernathy; yocto@yoctoproject.org
>> Subject: Re: [yocto] meta-cedartrail - serial console
>>
>> On 06/01/2012 02:02 PM, Bodke, Kishore K wrote:
>>>
>>>
>>>> -----Original Message-----
>>>> From: Hart, Darren
>>>> Sent: Friday, June 01, 2012 11:12 AM
>>>> To: Bodke, Kishore K
>>>> Cc: jfabernathy; yocto@yoctoproject.org
>>>> Subject: Re: [yocto] meta-cedartrail - serial console
>>>>
>>>> On 06/01/2012 11:03 AM, Bodke, Kishore K wrote:
>>>>>
>>>>>
>>>>>> -----Original Message-----
>>>>>> From: Hart, Darren
>>>>>> Sent: Thursday, May 31, 2012 12:43 PM
>>>>>> To: jfabernathy
>>>>>> Cc: Bodke, Kishore K; yocto@yoctoproject.org
>>>>>> Subject: Re: [yocto] meta-cedartrail - serial console
>>>>>>
>>>>>> On 05/31/2012 12:32 PM, jfabernathy wrote:
>>>>>>> On 05/31/2012 02:18 PM, Bodke, Kishore K wrote:
>>>>>>>>
>>>>>>>>> -----Original Message-----
>>>>>>>>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>>>>>>>>> bounces@yoctoproject.org] On Behalf Of jfabernathy
>>>>>>>>> Sent: Thursday, May 31, 2012 9:12 AM
>>>>>>>>> To: yocto@yoctoproject.org
>>>>>>>>> Subject: [yocto] meta-cedartrail - serial console
>>>>>>>>>
>>>>>>>>> Using a DN2800MT (Marshalltown) Intel board, I'm testing the
>>>>>>>>> meta-cedartrail using edison branch and noticed an issues with the
>>>>>>>>> serial console.
>>>>>>>>>
>>>>>>>>> The cedartrail.conf in the machine directory has the following
>>>> statements:
>>>>>>>>>
>>>>>>>>> SYSLINUX_OPTS = "serial 0 115200"
>>>>>>>>> SERIAL_CONSOLE = "115200 ttyS0"
>>>>>>>>> APPEND += "console=ttyS0,115200 console=tty0"
>>>>>>>>>
>>>>>>>> I just saw that Edison branch has ttyS3 enabled.
>>>>>>>>
>>>>>>>> SYSLINUX_OPTS = "serial 3 115200"
>>>>>>>> SERIAL_CONSOLE = "115200 ttyS3"
>>>>>>>> APPEND += "console=ttyS3,115200 console=tty3"
>>>>>>>>
>>>>>>>> Are you looking into right branch?
>>>>>>>>
>>>>>>>> Thanks
>>>>>>>> -Kishore.
>>>>>>>>
>>>>>>>
>>>>>>> So how do you get changes in the cedartrail.conf file to take affect??
>>>>>>> I edited the file and did the bitbake again, but nothing changed.  I'm
>>>>>>> guessing I need a bitbake -c cleansstate "somthing"  But I don't know
>>>>>>> what to put there to make rebuild with ttyS0.
>>>>>>>
>>>>>>
>>>>>> Ah yes, this rebuild is a bit frustrating. I believe it is the
>>>>>> task_core* tasks you need to rebuild. bitbake -u depexp -g
>>>>>> core-image-base (whatever your image is) will allow you to view which
>>>>>> task_ tasks it is building, try cleansstate'ing those and rebuilding the
>>>>>> image.
>>>>>
>>>>> I had to remove the above 3 lines from cedartrail.conf and
>>>>> SERIAL_CONSOLE ?= "115200 ttyS0" line from conf/machine/include/ia32-
>>>> base.inc
>>>>> rebuild the image.
>>>>> It is disabled now.
>>>>
>>>> Did you try with SERIAL_CONSOLE="" in cedartrail.conf ?
>>>
>>> Yes. I tried this.  It is disabled.
>>>
>>
>> Meaning you do not have to modify ia32-base.inc?
> 
> I removed the  SERIAL_CONSOLE ?= "115200 ttyS0" from ia32-base.inc too.
> 
>>
>>> I again added back in the grub.cfg, serial console hangs.
>>
>> Added what back in grub.cfg?
> 
> I added back console=ttyS0,115200 console=tty0 to the grub.cfg file and rebooted 
> to see if I can get the serial console back, but after below boot messages the serial
> console hangs.
> 
> Freeing unused kernel memory: 496k freed
> udev[77]: starting version 164
> EXT3-fs: barriers not enabled
> kjournald starting.  Commit interval 5 seconds
> EXT3-fs (loop0): using internal journal
> EXT3-fs (loop0): recovery complete
> EXT3-fs (loop0): mounted filesystem with ordered data mode
> udev[487]: starting version 164
> NET: Registered protocol family 10
> ADDRCONF(NETDEV_UP): eth0: link is not ready
> ip_tables: (C) 2000-2006 Netfilter Core Team
> nf_conntrack version 0.5.0 (16384 buckets, 65536 max)
> 
>>
>> I thought you were disabling the serial port...
> 
> I wanted to enable and disable the serial console through grub.cfg file.
> 

You can control the kernel logging to the serial console, but not the
login prompt over the serial port, via grub.cfg. The serial login is
managed by /etc/inittab which is dictated by the SERIAL_CONSOLE variable.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

