Return-Path: <hans.beckerus@gmail.com>
Received: from mail-la0-f42.google.com (mail-la0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A9A8E003AB
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2013 11:36:57 -0700 (PDT)
Received: by mail-la0-f42.google.com with SMTP id fe20so4318821lab.15
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2013 11:36:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:cc
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=DZpdoJTyFbRoUg6EwROjzmOwqDTzpdhstc2R/Uf+M7o=;
	b=KVa7fRbKMw7k1RYdVQ4yPz5fQu7lNVkU1ChOjQXAVvrB/n/E4h64FU3KZZd9IIC8rw
	Odufy0S9oNhgrDYyTdeMNGE2dyuYs63w00M2UeVuUy2zYSw5QdEoZfSFXYwGDpTy0Cet
	Nw0WlREJ6JDmUysDHkhz4BzPxSPndRJ2hxh9jWwOXtgAqaivedfDuoD2dBLDKGpg93Ir
	8o/WwjNk+e7gCT1R8OxDAlsOqll921AqQU0mfT/gq6R21cUKHfxSUvV3UoqBquTG48bt
	oqiqoHYhBZw/b7pNmB7y+v+jNBNWLblzrfgnOQJJHX/tN989Q43hO4/oFxWV4SjdBAfM
	mLLQ==
X-Received: by 10.152.110.6 with SMTP id hw6mr11242192lab.43.1363027015858;
	Mon, 11 Mar 2013 11:36:55 -0700 (PDT)
Received: from [192.168.0.10] (h135n8-rny-a12.ias.bredband.telia.com.
	[217.209.54.135])
	by mx.google.com with ESMTPS id b13sm4783121lbd.10.2013.03.11.11.36.49
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 11 Mar 2013 11:36:54 -0700 (PDT)
Message-ID: <513E2440.9040407@gmail.com>
Date: Mon, 11 Mar 2013 19:36:48 +0100
From: Hans Beckerus <hans.beckerus@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.2;
	rv:17.0) Gecko/20130215 Thunderbird/17.0.3
MIME-Version: 1.0
To: =?UTF-8?B?RXJpYyBCw6luYXJk?= <eric@eukrea.com>
References: <CAFyqS9qFQ+kHrjmDAw4mCKop6RMzH7Ws1V6tt0_A2gM2a5UmYg@mail.gmail.com>
	<20130308191213.102258ca@e6520eb> <513A3557.10405@gmail.com>
	<513A7836.2050908@windriver.com>
	<CAFyqS9rT=amDBNTO_awzXL3zNS-vCx1+0ERCspXTps8u_VpHwA@mail.gmail.com>
	<CAFyqS9q5aDSUiGFOsOz4CWN7oV8kAiAuzA5mK4HbsEaReqQzHA@mail.gmail.com>
	<513DDE28.4050004@windriver.com> <20130311144900.59a31a00@e6520eb>
In-Reply-To: <20130311144900.59a31a00@e6520eb>
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
X-List-Received-Date: Mon, 11 Mar 2013 18:36:57 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2013-03-11 2:49, Eric Bénard wrote:
> Hi Bruce,
>
> Le Mon, 11 Mar 2013 09:37:44 -0400,
> Bruce Ashfield <bruce.ashfield@windriver.com> a écrit :
>> Can you post your exact changes where we can see them ? You need to put
>> the module_autload variable in a .conf file, whether that be your
>> local.conf, your machine.conf or you distro configuration file (which
>> it appears that you are doing), but you also must have the name of
>> the module package correct, and the module needs to be part of your
>> IMAGE_INSTALL, since the code fragment I pasted above is from the
>> post installation fragment created for the various module packages
>> as they are created.
>>
>> i.e. I have this in a .conf file:
>>
>>      module_autoload_nfsd = "nfsd"
>>
>> To ensure that the nfsd .ko is loaded on boot, when the module is built
>> and present on the rootfs.
>>
> I think the problem is that this works when building modules inside the
> kernel (module_autoload is handled in kernel.bbclass), but not when
> building a module with its own recipe (using module.bbclass) as Hans
> is doing, that's why I previously told him to "get inspiration from
> kernel.bbclass to do the same thing in your recipe".
>
> Thinking again to this (after pressing send of course ;-) : Or maybe he
> needs to build again its kernel after setting module_autoload_hismodule
> = "hismodule" so that the module name gets handled by the kernel
> recipe ?
>
> Eric
>
Bringing in the split kernel module support (by looking at the .bbclass) 
from master should do the trick.
But, after adding more functionality to my system, I suddenly realized 
this was in fact never needed :(
Since the kernel is built with "Kernel Module Loader" support, the 
modules I needed was automatically
modprobed. I now also understand why the mandatory module was loaded 
automatically.
I will still test the split module functionality since it is probably 
interesting to know if it works as expected or not.
Again, thanks for all the help.

Hans





