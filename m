Return-Path: <jfabernathy@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EE08E00747
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2012 08:45:31 -0700 (PDT)
Received: by qcsc21 with SMTP id c21so1465378qcs.35
	for <yocto@yoctoproject.org>; Fri, 01 Jun 2012 08:45:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=1GvJLqssEKRazXxhubkWVk0+Vx9hKi7nXNB+hSo1INw=;
	b=iXgiKaYpOM34s6pwNzqOp7yL6LStGF7RN2UMFucf55+DRYnCg1N8n6yDqlSQ401yAz
	d8LC9Dks26u50WxNWXYTRJX7RMGV4vTWUFLpB6KdCH7k1LCOeJcm0WQ8L8wii01Eof9U
	NyczKVJRxKZFsn23bkG5q2qA7D+87Aqir/uKg8C+TduhyDoHLcMAxI8aaNDTFI5xyQV/
	+nJZQ/E6L9ZY9WQWKjMqFtfzx/octkfeY2+wzofuNHKWBOSk/jTPRMsXUpO/pe5gY+Q6
	OHFDF2GBEFnPjc1Yd9Z24cJPUbHe/8oFjYt/Scq2UIzWHbu3azPSYDPb8DLqNEWF4L4Y
	RDLA==
Received: by 10.229.137.68 with SMTP id v4mr1033524qct.52.1338565531247;
	Fri, 01 Jun 2012 08:45:31 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-33-55.dhcp.embarqhsd.net. [184.4.33.55])
	by mx.google.com with ESMTPS id
	bx12sm4217303qab.13.2012.06.01.08.45.30 (version=SSLv3 cipher=OTHER);
	Fri, 01 Jun 2012 08:45:30 -0700 (PDT)
Message-ID: <4FC8E39D.3010702@gmail.com>
Date: Fri, 01 Jun 2012 11:45:33 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4FC79837.2070309@gmail.com> <4FC7B4E3.1010401@linux.intel.com>
	<4FC7BE80.4060700@gmail.com> <4FC7C965.1020809@linux.intel.com>
In-Reply-To: <4FC7C965.1020809@linux.intel.com>
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
X-List-Received-Date: Fri, 01 Jun 2012 15:45:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/31/2012 03:41 PM, Darren Hart wrote:
>
> On 05/31/2012 11:54 AM, jfabernathy wrote:
>> On 05/31/2012 02:13 PM, Darren Hart wrote:
>>> On 05/31/2012 09:11 AM, jfabernathy wrote:
>>>> Using a DN2800MT (Marshalltown) Intel board, I'm testing the
>>>> meta-cedartrail using edison branch and noticed an issues with the
>>>> serial console.
>>>>
>>>> The cedartrail.conf in the machine directory has the following statements:
>>>>
>>>> SYSLINUX_OPTS = "serial 0 115200"
>>>> SERIAL_CONSOLE = "115200 ttyS0"
>>>> APPEND += "console=ttyS0,115200 console=tty0"
>>>>
>>>> However, when the image booted, I had no serial console on ttyS0.  I
>>>> checked /etc/inittab and noticed that the following line existed:
>>>>
>>>> S:2345:respawn:/sbin/getty 115200 ttyS3
>>>>
>>>> I changed the ttyS3 to ttyS0 and then I have a serial console on the
>>>> next reboot.  So it appears the override in the .conf file is not
>>>> working.  Also I only have the console from getty, and not the kernel
>>>> logging console.
>>>>
>>>> Anyone have a solution??
>>>>
>>>> If this is considered a bug I can put it on bugzilla.
>>> Lets make sure your environment is what we expect. Please provide the
>>> output of:
>>>
>>> $ bitbake core-image-minimal -e | grep SERIAL_CONSOLE=
>>>
>>> If it is not "115200 ttyS0" then it is getting overwritten somewhere
>>> either in your config, or possibly by an inappropriate selection of an
>>> assignment operator (=, ?=, etc.) in edison.
>> okay now I'm confused.  while the cedartrail.conf file has the following:
>> SYSLINUX_OPTS = "serial 3 115200"
>> SERIAL_CONSOLE = "115200 ttyS3"
>> APPEND += "console=ttyS3,115200 console=tty3"
>>
>>
>> The output of the bitbake command you suggested above gives:
>> jim@ubuntu-x64:~/poky/build$ bitbake core-image-minimal -e | grep
>> SERIAL_CONSOLE=
>>
>> # SERIAL_CONSOLE=115200 ttyS0
>> SERIAL_CONSOLE="115200 ttyS0"
>> jim@ubuntu-x64:~/poky/build$
>>
>> So is the bitbake command showing the results before the cedartrail.conf
>> options take affect??
> variable assignments can be tricky, and are not the easiest things to
> track down. I suggest looking through your configured layers and looking
> for all the SERIAL_CONSOLE assignments using ttyS3 and ttyS0 and see if
> you can determine what is overriding your cedartrail.conf setting.
>
What I found out is the only variable that matters for login console in 
my situation is SERIAL_CONSOLE because I have to use grub and the boot 
from hard drive method because my image can't be put on a USB Flash for 
some reason.  So I manually have to edit the grub.cfg file as documented 
on the wiki "How Do I" section of putting Yocto on a hard drive.  Adding 
console=ttyS0,115200 on the linux statement takes care of the boot console.

So the question is has there been any thought about automating the 
choice of boot loader and the parameters that are needed or optional?  
In the case of meta-cedartrail, the cedartrail.conf assumes syslinux is 
the boot loader. When I could use a USB Flash key, creating a boot 
device was a trivial dd statement.  Because I have to use a hard drive 
now, I have to do a number of manual steps.  Or is there a way to create 
a boot-able hard drive with syslinux so the cedartrail.conf parameters 
are all that is needed to adjust?

Jim A


