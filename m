Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BFEFE0044A
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 09:29:40 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 13 Jun 2012 09:29:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="155880624"
Received: from unknown (HELO envy.home) ([10.255.12.139])
	by azsmga001.ch.intel.com with ESMTP; 13 Jun 2012 09:29:36 -0700
Message-ID: <4FD8BFA6.9030405@linux.intel.com>
Date: Wed, 13 Jun 2012 09:28:22 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120605 Thunderbird/13.0
MIME-Version: 1.0
To: =?ISO-8859-1?Q?J=FCrgen_Messerer?= <juergen.messerer@bbv.ch>
References: <A7B59F6D52627C44813C136D437B0832068BC78CAB6C@TKSSREX01.outnet.ch>
	<4FD5FF3E.4060303@linux.intel.com>
	<A7B59F6D52627C44813C136D437B0832068BC78CAB91@TKSSREX01.outnet.ch>
	<4FD8B93F.4000306@linux.intel.com>
	<A7B59F6D52627C44813C136D437B0832068BC78CAFDE@TKSSREX01.outnet.ch>
In-Reply-To: <A7B59F6D52627C44813C136D437B0832068BC78CAFDE@TKSSREX01.outnet.ch>
X-Enigmail-Version: 1.4.2
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Grub installation
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
X-List-Received-Date: Wed, 13 Jun 2012 16:29:40 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit



On 06/13/2012 09:21 AM, Jürgen Messerer wrote:
> Thanks for the tips.
> 
> As far as I know is at the moment the new grub default.
> How can I configure back to the old version 0.97?

You could try with the standard PREFERRED_VERSION method, but I'm not
sure if the installer scripts deal with that intelligently.

Is there a reason you want to use the older version?

--
Darren

> 
> Best regards
> 
> Juergen
> 
> 
> -----Original Message-----
> From: Darren Hart [mailto:dvhart@linux.intel.com] 
> Sent: Mittwoch, 13. Juni 2012 18:01
> To: Jürgen Messerer
> Cc: Mihai Lindner; yocto@yoctoproject.org
> Subject: Re: [yocto] Grub installation
> 
> 
> 
> On 06/11/2012 07:54 AM, Jürgen Messerer wrote:
>> Dear Mihai,
>>
>> I would expect that grub should be installed in 
>> core-image-minimal-qemux86.ext3 Grub couldn't be found when running the image with runqemu.
>>
>> Any other ideas?
> 
> This depends entirely on the image type. We do not install grub on the filesystem images as that won't result in a working system. GRUB must be installed to the MBR or the VBR of a disk or partition.
> 
> The way this currently works is you build a live image (.hddimg) which uses syslinux and provides an installer. The installer runs a script which installs grub to the physical boot media.
> 
> Improving this process is part of a larger discussion on image types and image creation tooling.
> 
> If the installer method does not work for you, please articulate the reasons why and what would be a better solution for your use case.
> 
> Thanks,
> 
> Darren
> 
>>
>>
>>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org 
>> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Mihai Lindner
>> Sent: Montag, 11. Juni 2012 16:23
>> To: yocto@yoctoproject.org
>> Subject: Re: [yocto] Grub installation
>>
>> On 6/11/2012 5:12 PM, Jürgen Messerer wrote:
>>> Hi
>>>
>>>  
>>>
>>> I have the following problem. I have created with yocto a core-image-minimal for x86 which I could test with qemu.
>>>
>>>  
>>>
>>> later I added the following lines to conf/local.conf at the end according to the manual chapter 4.2.4:
>>>
>>> IMAGE_INSTALL_append = " bash"
>>>
>>> IMAGE_INSTALL_append = " strace"
>>>
>>> IMAGE_INSTALL_append = " grub"
>>>
>>>  
>>>
>>> Bash and strace were installed correctly.
>>>
>>> In the case of grub I couldn't find the directory /boot/grub.
>>>
>>>  
>>>
>>> /etc/grub.d is installed also the folder /usr/lib/grub
>>>
>>>  
>>>
>>> Question 1:
>>>
>>> Which grub recipe does yocto install from  
>>> poky-denzil-7.0/meta/recipes-bsp/grub/
>>>
>>> I would prefer version 1.99.
>>>
>>>  
>>>
>>> Questin 2:
>>>
>>> Will yocto not install a /boot/grub directory?
>>>
>>>  
>>>
>>> I would appreciate any tips and tricks to install grub correctly in 
>>> the core-image-minimal
>>>
>>>  
>>>
>>>  
>>>
>>> Thanks a lot
>>>
>>>  
>>>
>>> Best regards
>>>
>>>  
>>>
>>> Juergen
>>>
>>>
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>
>> Hello,
>>
>> Look for /boot/grub/ in /dev/sda1
>> It should be there.
>>
> 
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel
> 
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



