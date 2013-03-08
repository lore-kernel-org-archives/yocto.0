Return-Path: <hans.beckerus@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0E09E01586
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2013 13:11:04 -0800 (PST)
Received: by mail-lb0-f176.google.com with SMTP id s4so1682971lbc.35
	for <yocto@yoctoproject.org>; Fri, 08 Mar 2013 13:11:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:cc
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=yiid/lR369zu8XCrrw/YwSCZ7b7Inz0tV3IK0djpZKA=;
	b=h1bilRvVXowgX70VYL8kEAsHPnOTNDlKGiJV3Z+joXcxX0z3KkrVutOW5SaEen8yUS
	yMax3GkgwhAC2lkfutcxrEDyTBaPevKlC3eh1KKsdfZWSAYrw2sbUw5nP2sxOofAvH04
	izM03I7Qxn8sltPE7motSymb6KEhGEcgq9wHprCklw3/HbrA502JeE+6kr5Jt7F0O8Lx
	6ydMlZX3fIa1FvEfJIG+Eevu5p0Sw/ij7mRC5EWS7gcAYACY46BZcK/GmFkQwlaH+HfS
	xoRJazIGTyYTMb0wweI4mxmOG9GUWq6fS7xtWk44VvbVzxTRrnsj2SFxTCbw8/l0v3eQ
	1/GQ==
X-Received: by 10.152.136.20 with SMTP id pw20mr3278867lab.16.1362777063111;
	Fri, 08 Mar 2013 13:11:03 -0800 (PST)
Received: from [192.168.0.10] (h135n8-rny-a12.ias.bredband.telia.com.
	[217.209.54.135])
	by mx.google.com with ESMTPS id m2sm2046368lbz.7.2013.03.08.13.11.01
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 08 Mar 2013 13:11:02 -0800 (PST)
Message-ID: <513A53E4.8040600@gmail.com>
Date: Fri, 08 Mar 2013 22:11:00 +0100
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
X-List-Received-Date: Fri, 08 Mar 2013 21:11:05 -0000
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

Coming to think about it, module_autoload should actually specify 
module, not package right?
That would work then. But is this only supported in a machine.conf? Can 
it not be used also in e.g. the image.bb or a distro.conf?
The reason is that I do not have a machine.conf in my highest layer! My 
layer is a simple distro that does not have any real knowledge of what 
hardware it is running on. My local.conf points out the actual MACHINE.  
The kernel modules are not hardware dependent either since they are pure 
network extensions so it would be wrong to have them in the machine.conf.

Hans



