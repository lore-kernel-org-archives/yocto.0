Return-Path: <hans.beckerus@gmail.com>
Received: from mail-lb0-f173.google.com (mail-lb0-f173.google.com
	[209.85.217.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA555E0146D
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2013 11:00:44 -0800 (PST)
Received: by mail-lb0-f173.google.com with SMTP id gf7so1556346lbb.4
	for <yocto@yoctoproject.org>; Fri, 08 Mar 2013 11:00:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:cc
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=RoeJzWyA9j85LUrttFViLZki7VNBDIrNoFHR6om+oHQ=;
	b=YCsYASG7QBD1V7/zSm/XT6e+KI59AUs7B1yRmLewT7mKi0CJ2n4d8sCUeQQu9K+4v1
	6H/P6cVlnMXP5AxaP2Kqw29+4o3GDZf6w/GCNrjnS9vy7O+5RyAnLYSRiEWkek4cESM3
	DVGtNYpTOqGQEUyemG5YNMtXo9jt91EI1wdswsgDEqJ7CkXRz6sH7DWIriumbZ4WNVhx
	tJqqgmu2c/yAH+xTsXTa2f4QPSw10x4PnygRibEsm9Jj3+IF6GbRsV729/0pllGfq6/E
	jRMUy5aSfIaTXNFUeF+DLmKeZrmTiJ3XUw5eW1buOrdFoQy6QZUsnQe2BZqFdbYeLHaZ
	KH9A==
X-Received: by 10.112.9.10 with SMTP id v10mr1488099lba.47.1362769241981;
	Fri, 08 Mar 2013 11:00:41 -0800 (PST)
Received: from [192.168.0.10] (h135n8-rny-a12.ias.bredband.telia.com.
	[217.209.54.135])
	by mx.google.com with ESMTPS id fm8sm1942825lbb.17.2013.03.08.11.00.40
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 08 Mar 2013 11:00:41 -0800 (PST)
Message-ID: <513A3557.10405@gmail.com>
Date: Fri, 08 Mar 2013 20:00:39 +0100
From: Hans Beckerus <hans.beckerus@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.2;
	rv:17.0) Gecko/20130215 Thunderbird/17.0.3
MIME-Version: 1.0
To: =?UTF-8?B?RXJpYyBCw6luYXJk?= <eric@eukrea.com>
References: <CAFyqS9qFQ+kHrjmDAw4mCKop6RMzH7Ws1V6tt0_A2gM2a5UmYg@mail.gmail.com>
	<20130308191213.102258ca@e6520eb>
In-Reply-To: <20130308191213.102258ca@e6520eb>
Cc: yocto@yoctoproject.org
Subject: Re: How do I control what kernel modules are being loaded?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 08 Mar 2013 19:00:45 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2013-03-08 7:12, Eric Bénard wrote:
> Hi Hans,
>
> Le Fri, 8 Mar 2013 13:08:21 +0100,
> Hans Beckérus <hans.beckerus@gmail.com> a écrit :
>
>> Hi. I have built some custom kernel modules (.ko) using a .bb that
>> inherits from the module.bbclass. There is one main kernel module and
>> the rest are dependent on the first. Building and installing the
>> modules to the rootfs works fine. Next question is how do I control
>> what actual modules are loaded at boot, or actually how do I control
>> this through Yocto? To my surprise one of the kernel module loaded
>> automatically!? How could this happen? I did not have an entry for it
>> in /etc/modules. And what do I need to do to actually add entries to
>> /etc/modules? Or is there some other mechanism that I should use. I
>> tried going through the module.bbclass but must admit I lost it
>> somewhere in the middle ;) Any guidance would be appreciated.
>>
> when the module is built by the kernel recipe you can use :
> module_autoload and you can see somme usage examples here :
> http://cgit.openembedded.org/meta-handheld/tree/conf/machine/palmtx.conf
> http://cgit.openembedded.org/meta-handheld/tree/conf/machine/include/palm.inc
>
> maybe you could get inspiration from kernel.bbclass to do the same
> thing in your recipe.
>
> Eric
Thanks guys for your quick feedback. I can see that using 
module_autoload_${PN} seems like a good approach, if a package maps 1:1 
to a module.
In my case that is not so. The package/recipe builds six (or even more) 
.ko files using one makefile.
I guess one option could be to split each module build in its own 
recipe, but that is not supported by the makefile and thus would require 
patching from my side in the source tree. I think the only option I have 
left is to try to use /etc/modules and add the modules there in a 
do_install_append().
But the problem then is, what happens if some other package also add a  
/etc/modules.conf to the image folder? Will it be merged or only copied? 
In the latter case last package wins which would not work out very well :(

Out of curiosity, what will module_autoload do? Will it add the .ko to 
/etc/modules or does it implement some other mechanism to make a module 
load automatically at boot?

I do not think that the mandatory module that is loaded originates from 
udev. This is a network CM driver that basically hooks into the Linux 
network stack. I do not think that udev will ever make this driver load 
automatically. But I can not say for sure of course.

Hans




