Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73EFAE0070C
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2012 03:06:02 -0700 (PDT)
Received: from [192.168.0.39] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id 3CDF52AA1B;
	Wed, 28 Mar 2012 10:08:44 +0100 (BST)
Message-ID: <4F72E29E.7000803@communistcode.co.uk>
Date: Wed, 28 Mar 2012 11:06:22 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120314 Thunderbird/11.0
MIME-Version: 1.0
To: niqingliang@insigma.com.cn
References: <1332815600.25277.22.camel@localhost.localdomain>
	<4F717F1A.8090108@communistcode.co.uk>
	<1332842944.25277.42.camel@localhost.localdomain>
	<1332926479.25277.66.camel@localhost.localdomain>
In-Reply-To: <1332926479.25277.66.camel@localhost.localdomain>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: who are using archlinux?
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
X-List-Received-Date: Wed, 28 Mar 2012 10:06:02 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 28/03/12 10:21, Ni Qingliang wrote:
> no echo again?
>
> what's the problem?
>
> am I wrong? where?
>
> On Tue, 2012-03-27 at 18:09 +0800, 倪庆亮 wrote:
>> thanks your reply, indeed, this is not the first email thread about the
>> gconf compile problem. it in there only because of no echo.
>>
>> I have installed python2, and made a symlink in the build directory, and
>> exported to the env var PATH.
>>
>> this is the script I used to build (located in the build directory):
>> 	#!/bin/bash
>> 	loc_dir="`pwd`"
>> 	. ${loc_dir}/../optimus/oe-init-build-env ${loc_dir}
>> 	export PATH="${loc_dir}:$PATH"
>> 	bitbake $@
>>
>> OS: x86-64 arch / desktop env: gnome 3.2
>> local.conf ( modified section ):
>> 	MACHINE ??= "qemux86-64"
>> 	DISTRO ?= "poky-lsb"
>> 	SOURCE_MIRROR_URL = "http://10.10.20.149/optimussources/"
>> 	INHERIT += "own-mirrors"
>> 	BB_GENERATE_MIRROR_TARBALLS = "0"
>> 	INHERIT += "rm_work"
>> 	CCACHE = ""
>>
>> when build gconf, got error:
>>   /usr/lib/../lib/libXrandr.so.2: undefined reference to
>> `memcpy@GLIBC_2.14'
>> when 'do_compile' at sanity-check step.
>>
>> the log of do_compile is attached, here is the last cmd (only reserve
>> rpath):
>> 	../x86_64-poky-linux-libtool ...  -Wl,-rpath -Wl,/usr/lib/../lib
>>
>> the libXrandr.so.2 (depended by the libgtk/libgdk) not appear in the
>> command explicitly.
>>
>> I have add --verbose in the command, and found the ld find it in the
>> host's rootfs, but it should search it in the sysroot arg.
>>
>> If remove the rpath arg or with the rpath arg prefixed by sysroot arg, I
>> can build success. (wich will search the libXrandr in the sysroot arg
>> correctly)
>>
>> so I think the error is focused on the `ld' which should search in the
>> sysroot arg at first for implicit dependended libs, but not host's
>> rootfs.
>>
>>
>>
>> On Tue, 2012-03-27 at 16:49 +0800, Jack Mitchell wrote:
>>> On 27/03/12 03:33, Ni Qingliang wrote:
>>>> who are using archlinux? I want to talk about gconf compile fail
>>>> problem.
>>>>
>>>>
>>> I use Archlinux for OE/Yocto, could you post your error so we can get an
>>> idea of the problem you are having?
>>>
>>> One note for Archlinux is that it ships Python 3 as default, to you must
>>> install Python2 from the repositories then symlink python2 to python in
>>> /usb/bin.
>>>
>>> Regards,
>>>

I'm not 100% sure what the issue is. How come you are using a custom 
build script and not the one bundled with OE? I'm not an expert by any 
stretch of the imagination but by not using the given initialisation 
scripts leaves me completely out of ideas as you're running a custom 
setup which I couldn't possibly know the extent of.

All I can really comment on is that Yocto builds fine and consistently 
with Archlinux using the latest packages (I update nearly everyday) so 
the only issue I can see is that your build setup script doesn't cut the 
mustard. Have you tried a completely clean build with only the bare git 
clone and no modifications?

Regards,

-- 

   Jack Mitchell (jack@embed.me.uk)
   Embedded Systems Engineer
   http://www.embed.me.uk

--


