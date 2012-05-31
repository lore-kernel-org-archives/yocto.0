Return-Path: <jfabernathy@gmail.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AABDE006C7
	for <yocto@yoctoproject.org>; Thu, 31 May 2012 11:54:56 -0700 (PDT)
Received: by vcbfo14 with SMTP id fo14so1059703vcb.35
	for <yocto@yoctoproject.org>; Thu, 31 May 2012 11:54:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=HvZ6kX2oeB9iCzbXywDnWenNWdQhOVuH5SYQLWTRC54=;
	b=FHww8vcqNW6C7gcu3rXmt56S8CURn8yuOQRKziJe2NyHrHO5CwhUr8SZ3ExcpdCbkO
	BXdd5L6IPJQv1QfgWGKweXn5sJ31MLvvSyAhpBJlPlAOqb/OpqnpR0zlZQUAE0DK5rZ4
	2Az7O1RQTxdEx+xtUE9iLULbNqS4bXVgrDYHVvYa/kKCFIndrP2rf564Ui7uzEqvgOR1
	tylA4HgvIrO8dAM+eM3aF0cyq3mh90YSbjYeaGXWsUaJocg7Wi1KX/8NsUhQEk+z1tv2
	1YdjylNu7m8T5B2FlWG/pxjj8cnHGRYHndKkVJASWPHRe5OylIRZt8KgMptx4coRSP23
	zQFQ==
Received: by 10.220.230.135 with SMTP id jm7mr3385809vcb.23.1338490495782;
	Thu, 31 May 2012 11:54:55 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-33-55.dhcp.embarqhsd.net. [184.4.33.55])
	by mx.google.com with ESMTPS id m14sm6196578vdh.4.2012.05.31.11.54.55
	(version=SSLv3 cipher=OTHER); Thu, 31 May 2012 11:54:55 -0700 (PDT)
Message-ID: <4FC7BE80.4060700@gmail.com>
Date: Thu, 31 May 2012 14:54:56 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4FC79837.2070309@gmail.com> <4FC7B4E3.1010401@linux.intel.com>
In-Reply-To: <4FC7B4E3.1010401@linux.intel.com>
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
X-List-Received-Date: Thu, 31 May 2012 18:54:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/31/2012 02:13 PM, Darren Hart wrote:
>
> On 05/31/2012 09:11 AM, jfabernathy wrote:
>> Using a DN2800MT (Marshalltown) Intel board, I'm testing the
>> meta-cedartrail using edison branch and noticed an issues with the
>> serial console.
>>
>> The cedartrail.conf in the machine directory has the following statements:
>>
>> SYSLINUX_OPTS = "serial 0 115200"
>> SERIAL_CONSOLE = "115200 ttyS0"
>> APPEND += "console=ttyS0,115200 console=tty0"
>>
>> However, when the image booted, I had no serial console on ttyS0.  I
>> checked /etc/inittab and noticed that the following line existed:
>>
>> S:2345:respawn:/sbin/getty 115200 ttyS3
>>
>> I changed the ttyS3 to ttyS0 and then I have a serial console on the
>> next reboot.  So it appears the override in the .conf file is not
>> working.  Also I only have the console from getty, and not the kernel
>> logging console.
>>
>> Anyone have a solution??
>>
>> If this is considered a bug I can put it on bugzilla.
> Lets make sure your environment is what we expect. Please provide the
> output of:
>
> $ bitbake core-image-minimal -e | grep SERIAL_CONSOLE=
>
> If it is not "115200 ttyS0" then it is getting overwritten somewhere
> either in your config, or possibly by an inappropriate selection of an
> assignment operator (=, ?=, etc.) in edison.
okay now I'm confused.  while the cedartrail.conf file has the following:
SYSLINUX_OPTS = "serial 3 115200"
SERIAL_CONSOLE = "115200 ttyS3"
APPEND += "console=ttyS3,115200 console=tty3"


The output of the bitbake command you suggested above gives:
jim@ubuntu-x64:~/poky/build$ bitbake core-image-minimal -e | grep 
SERIAL_CONSOLE=

# SERIAL_CONSOLE=115200 ttyS0
SERIAL_CONSOLE="115200 ttyS0"
jim@ubuntu-x64:~/poky/build$

So is the bitbake command showing the results before the cedartrail.conf 
options take affect??

Jim A


