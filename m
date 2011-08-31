Return-Path: <darren.hart@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DF93E0125F
	for <yocto@yoctoproject.org>; Tue, 30 Aug 2011 18:46:10 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 30 Aug 2011 18:46:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,304,1312182000"; d="scan'208";a="46830637"
Received: from unknown (HELO envy.home) ([10.255.14.55])
	by fmsmga002.fm.intel.com with ESMTP; 30 Aug 2011 18:46:07 -0700
Message-ID: <4E5D9260.4080708@intel.com>
Date: Tue, 30 Aug 2011 18:46:08 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:6.0) Gecko/20110816 Thunderbird/6.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4BD43A85686FC34D819098DB1C3999D9018894C6CA@orsmsx502.amr.corp.intel.com>
	<1314749498.5939.450.camel@rex> <4E5D90C3.7090607@intel.com>
In-Reply-To: <4E5D90C3.7090607@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: linux-yocto-rt build fail for sugarbay bsp on grub recipe
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
X-List-Received-Date: Wed, 31 Aug 2011 01:46:10 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


Kishore, can you try this patch? You can just checkout this branch in
your meta-intel repository after adding the meta-intel-contrib remote,
or you can add it manually.

http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel-contrib/commit/?h=dvhart/grubfix&id=60652a51878cbd0327c5f828acdbb73e31caafba

Thanks,

Darren



On 08/30/2011 06:39 PM, Darren Hart wrote:
> On 08/30/2011 05:11 PM, Richard Purdie wrote:
>> On Tue, 2011-08-30 at 16:59 -0700, Bodke, Kishore K wrote:
>>> Hello All,
>>>
>>>  
>>>
>>> I am trying to build linux-yocto with rt kernel for sugarbay bsp and
>>> it fails for the grub recipe.
>>>
>>>  
>>>
>>> Attached is the build log.  
>>>
>>>  
>>>
>>> kishore@kishore-desktop:/usr/local/src/crf/test/buildsugarbayrt$
>>> bitbake -e | egrep "^WARN_QA="
>>>
>>> WARN_QA="dev-so rpaths debug-deps dev-deps debug-files arch la2
>>> pkgconfig desktop la ldflags perms useless-rpaths"
>>>
>>> kishore@kishore-desktop:/usr/local/src/crf/test/buildsugarbayrt$
>>> bitbake -e | egrep "^ERROR_QA="
>>>
>>> kishore@kishore-desktop:/usr/local/src/crf/test/buildsugarbayrt$
>>>
>>>  
>>>
>>> Please let me know what could be the issue.
>>
>> Could you include the config.log file mentioned in the error report
>> please?
> 
> I've attached mine and Kishore's. Mine builds grub, while his does not.
> 
> I noticed that Kishore's config.log differs from mine in some configure tests. For example:
> 
> Mine contains (config.log-dvhart):
> 
> configure:8739: checking for __bswapsi2
> configure:8739: gcc -o conftest -O2 -pipe -g -feliminate-unused-debug-types -DGRUB_MACHINE_PCBIOS=1 -Wall -W -Wshadow -Wpointer-arith -Wmissing-prototypes                -Wundef -Wstrict-prototypes -g -falign-jumps=1 -falign-loops=1 -falign-functions=1 -mno-mmx -mno-sse -mno-sse2 -mno-3dnow -fno-dwarf2-cfi-asm -m32 -fno-stack-protector -mno-stack-arg-probe -Werror -nostdlib -Wl,--defsym,___main=0x8100 -Wl,--defsym,abort=main -Wno-error  -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed -m32 conftest.c -lgcc >&5
> In file included from /usr/include/features.h:387,
>                  from /usr/include/limits.h:27,
>                  from /usr/lib/gcc/x86_64-linux-gnu/4.4.5/include-fixed/limits.h:122,
>                  from /usr/lib/gcc/x86_64-linux-gnu/4.4.5/include-fixed/syslimits.h:7,
>                  from /usr/lib/gcc/x86_64-linux-gnu/4.4.5/include-fixed/limits.h:11,
>                  from conftest.c:62:
> /usr/include/gnu/stubs.h:7: fatal error: gnu/stubs-32.h: No such file or directory compilation terminated.
> configure:8739: $? = 1
> 
> 
> While there is no reference to stubs.h in Kishore's config.log (confi-1.log):
> 
> configure:8739: checking for __bswapsi2
> configure:8739: gcc -o conftest -O2 -pipe -g -feliminate-unused-debug-types -DGRUB_MACHINE_PCBIOS=1 -Wall -W -Wshadow -Wpointer-arith -Wmissing-prototypes                -Wundef -Wstrict-prototypes -g -falign-jumps=1 -falign-loops=1 -falign-functions=1 -mno-mmx -mno-sse -mno-sse2 -mno-3dnow -fno-dwarf2-cfi-asm -m32 -fno-stack-protector -Werror -nostdlib -Wl,--defsym,___main=0x8100 -Wl,--defsym,abort=main -Wno-error  -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed -m32 conftest.c -lgcc >&5
> conftest.c:75: warning: function declaration isn't a prototype
> /usr/bin/ld: warning: cannot find entry symbol _start; defaulting to 00000000080480c0
> configure:8739: $? = 0
> configure:8739: result: yes
> 
> 
> I also found that Kishore's config.log includes:
> freetype_cflags='-I/usr/include/freetype2'
> freetype_libs='-lfreetype -lz'
> 
> While mine includes:
> freetype_cflags='-I/build/poky/sugarbay/tmp/sysroots/sugarbay/usr/include/freetype2 -I/build/poky/sugarbay/tmp/sysroots/sugarbay/usr/include'
> freetype_libs='-L/build/poky/sugarbay/tmp/sysroots/sugarbay/usr/lib -lfreetype'
> 
> This would certainly be cause for a QA test failure.
> 
> Perhaps a DEPENDS=freetype in the grub recipe is in order?
> 
> Alternatively, we could see about configuring it without freetype.
> 
> Kishore, can you check to see if freetype is built on your system? Should be located at:
> 
> /usr/local/src/crf/test/buildsugarbayrt/tmp/work/x86_64-poky-linux/freetype-2.4.6-r0
> 
> Kishore, finally, we can confirm this is the problem by having you try this:
> $ bitbake freetype
> $ bitbake grub
> 
> I suspect this will complete.
> 
>>
>> This should be somewhere like
>> usr/local/src/crf/test/buildsugarbayrt/tmp/work/x86_64-poky-linux/grub-1.98-r1/*/config.log
>>
>> Cheers,
>>
>> Richard
>>
>>
> 
> 


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

