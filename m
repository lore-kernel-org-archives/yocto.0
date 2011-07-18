Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4A26C4C80579
	for <yocto@yoctoproject.org>; Mon, 18 Jul 2011 12:22:32 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 18 Jul 2011 10:22:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,223,1309762800"; d="scan'208";a="27224020"
Received: from unknown (HELO [10.255.13.254]) ([10.255.13.254])
	by orsmga002.jf.intel.com with ESMTP; 18 Jul 2011 10:22:26 -0700
Message-ID: <4E246BD2.1020903@linux.intel.com>
Date: Mon, 18 Jul 2011 10:22:26 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: Kumar Gala <galak@kernel.crashing.org>
References: <132F0612-EDF2-4086-80D3-F5E9737AD965@kernel.crashing.org>	<CAMKF1so2OiMrHWhHi7i4gt0-2-EfFcZ2Paj84qw+6ZMTSMsaPw@mail.gmail.com>
	<2D727437-8D9C-44CA-8470-EAD5E6932976@kernel.crashing.org>
In-Reply-To: <2D727437-8D9C-44CA-8470-EAD5E6932976@kernel.crashing.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: native gcc compiler error
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
X-List-Received-Date: Mon, 18 Jul 2011 17:22:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/18/2011 07:54 AM, Kumar Gala wrote:
>
> On Jul 18, 2011, at 9:45 AM, Khem Raj wrote:
>
>> On Mon, Jul 18, 2011 at 5:58 AM, Kumar Gala<galak@kernel.crashing.org>  wrote:
>>> I've been working on trying to get an e500v2 (linux-gnuspe) compiler working and seem to have build a native toolchain.  However when I try and compile a simple hello world style app I get:
>>>
>>> root@p2020-ds:~# gcc float.c
>>> gcc: fatal error: -fuse-linker-plugin, but liblto_plugin.so not found
>>> compilation terminated.
>>>
>>> Wondering if anyone's seen this before and had any ideas.
>>>
>>
>> You can try -fno-use-linker-plugin as a workaround. Does
>> liblto_plugin.so exist on target rfs ?
>> it might be then gcc driver bug if the library is not there then we
>> forgot to package it.
>
> File appears to be there:
> root@p2020-ds:/# file /usr/libexec/gcc/powerpc-poky-linux-gnuspe/4.6.1/liblto_plugin.so.0.0.0
> ./usr/libexec/gcc/powerpc-poky-linux-gnuspe/4.6.1/liblto_plugin.so.0.0.0: ELF 32-bit MSB shared object, PowerPC or cisco 4500, version 1 (SYSV), dynamically linked, with unknown capability 0x41000000 = 0xf676e75, with unknown capability 0x10000 = 0x70402, stripped
>
> root@p2020-ds:~# ls -lstr /usr/libexec/gcc/powerpc-poky-linux-gnuspe/4.6.1/
> total 31624
>   9812 -rwxr-xr-x 1 root root 10046304 Jul 16 22:40 lto1
>     28 -rwxr-xr-x 1 root root    26344 Jul 16 22:40 lto-wrapper
>     60 -rwxr-xr-x 1 root root    60132 Jul 16 22:40 liblto_plugin.so.0.0.0
>    124 -rwxr-xr-x 1 root root   124776 Jul 16 22:40 collect2
> 11208 -rwxr-xr-x 1 root root 11476244 Jul 16 22:40 cc1plus
> 10392 -rwxr-xr-x 1 root root 10640644 Jul 16 22:40 cc1
>      0 lrwxrwxrwx 1 root root       22 Jul 17 15:07 liblto_plugin.so.0 ->  liblto_plugin.so.0.0.0
>
> So not clear why its not finding it.
>
This looks similar to Yocto Bug 1233 
(http://bugzilla.yoctoproject.org/show_bug.cgi?id=1233

Can you confirm if you have the following commit in your branch?
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=2429773613cb95b6a0541b5cce6ce1338d5cfc2b

It's possible you might be missing this and it's not finding the file 
correctly.

As Richard mentioned also, an strace output would be helpful if you do 
have the above commit.

Thanks
	Sau!


> - k
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

