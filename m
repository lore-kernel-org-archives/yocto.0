Return-Path: <autif.mlist@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5652E0059B
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2012 07:31:44 -0800 (PST)
Received: by pbcuo1 with SMTP id uo1so469427pbc.35
	for <yocto@yoctoproject.org>; Wed, 08 Feb 2012 07:31:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=cyZcDeXeV6mBORMT4eE7eV2lq8dOQsmmV0g2F6PQhkU=;
	b=k1AbZB/Cd0yyEqpCOdJ45nm/P2839mNc1AMKIgRg0qELQO1mz10Nx68cH2/wmxvWyz
	xNY7mVFmxlEtlcZbTyNafnZeGNUsX4mDlbBksdh12Ggz1qwghfRBopS82NhDSJ4zD11z
	un7HsB8dgtEPzKNi+6gKMzBbU1Bv5fFKO0Brs=
MIME-Version: 1.0
Received: by 10.68.125.233 with SMTP id mt9mr26812636pbb.119.1328715104597;
	Wed, 08 Feb 2012 07:31:44 -0800 (PST)
Received: by 10.68.218.10 with HTTP; Wed, 8 Feb 2012 07:31:44 -0800 (PST)
In-Reply-To: <4F281CD1.70305@linux.intel.com>
References: <CADzUK1+ATfTW6FAPGZ97WhstFm_hq-Msdbf9wQ6HG6gLtUjS8w@mail.gmail.com>
	<4F281BFB.9010701@windriver.com> <4F281CD1.70305@linux.intel.com>
Date: Wed, 8 Feb 2012 10:31:44 -0500
Message-ID: <CADzUK1LhPBORwptVg-AvGJ7ex52iHS0y4h2S0onVKxLG-6ue4A@mail.gmail.com>
From: autif khan <autif.mlist@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: How do I patch the kernel before it is built?
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
X-List-Received-Date: Wed, 08 Feb 2012 15:31:45 -0000
Content-Type: text/plain; charset=ISO-8859-1

>>> I have a meta layer where I am keeping my changes. I am guessing that I need to:
>>>
>>> a) write a bbappend file to accomplish #1
>>> b) write a recipe to accomplish #3
>>>
>>> I have written recipes before, but just for libraries and autotools
>>> based applications. Not for a kernel module. If there is a recipe out
>>> there for some other module, I would be happy to steal from it.
>>>
>>> Please advise how I can go about patching the kernel and if there is a
>>
>> It's just like any other package. If your changes are simple, then
>> generating patches and putting them on the SRC_URI via a bbappend in
>> your layer is all you need. If you have complex changes, there are options
>> to manage them via git or via feature descriptions.
>>
>>> recipe for a kernel module - please point me to it.
>>
>> Darren validated and updated the kernel module example, so he'd probably
>> got this closer at hand than I do.
>
> See the hello-mod example under meta/recipes-kernel/hello-mod

Now, I want to load my module at startup.

The preferred way to load my module at startup would be by to place a
file called hello-mod in /etc/modutils

Is this correct?

Is there a recipe already that does this?

I see this line in kernel.bbclass - module_autoload_ipv6 = "ipv6"

So will appending module_autoload_hello-mod = "hello-mod" to this
class achieve this? I know how to append a recipe, but how do I append
a class?

When I boot my device it seems like minix and ipv6 modules are loaded,
but I can not follow how they are loaded.

Seems like ipv6 is in /etc/modutils, but minix is not.

minix is in /etc/filesystems - but I am not sure what role that file plays

Last but, not the least - was this documented somewhere and I just
could not/did not find it? Should I add this to the "How do I ..."
section of the wiki?

Thanks

Autif

