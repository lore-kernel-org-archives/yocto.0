Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62D09E0071A
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 14:26:07 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 23 Aug 2011 14:26:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="41478949"
Received: from unknown (HELO [10.255.14.203]) ([10.255.14.203])
	by orsmga001.jf.intel.com with ESMTP; 23 Aug 2011 14:26:06 -0700
Message-ID: <4E541AEE.2000305@linux.intel.com>
Date: Tue, 23 Aug 2011 14:26:06 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:5.0) Gecko/20110707 Thunderbird/5.0
MIME-Version: 1.0
To: Tom Rini <tom.rini@gmail.com>
References: <cover.1314124511.git.sgw@linux.intel.com>
	<99367a7d66c6bdfc56780cc9cfc7d50b55095591.1314124511.git.sgw@linux.intel.com>
	<CA+M6bX=vjB5gV572LVemMdeiO3TuFFUK_L6xTA2pDrVu-0ZZvw@mail.gmail.com>
In-Reply-To: <CA+M6bX=vjB5gV572LVemMdeiO3TuFFUK_L6xTA2pDrVu-0ZZvw@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] beagleboard.conf: set DEFAULT_TUNE to cortexa8
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
X-List-Received-Date: Tue, 23 Aug 2011 21:26:07 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 08/23/2011 12:35 PM, Tom Rini wrote:
> On Tue, Aug 23, 2011 at 1:36 PM, Saul Wold<sgw@linux.intel.com>  wrote:
>>     [YOCTO #1381]
>>
>>     lttng-ust generates an ICE when building for armv7, so change it to armv5
>>     | vfprintf.c:956:1: error: unrecognizable insn:
>>     | (insn 3968 3967 3969 145 (set (subreg:SI (reg/v:DI 160 [ _umax ]) 0)
>>     |         (sign_extend:SI (mem:QI (plus:SI (mult:SI (reg/v:SI 166 [ nextarg ])
>>     |                         (const_int 8 [0x8]))
>>     |                     (reg/f:SI 370 [ argtable.7 ])) [0 *D.6937_569+0 S1
>>     A32]))) vfprintf.c:555 -1
>>     |      (nil))
>>     | vfprintf.c:956:1: internal compiler error: in extract_insn, at recog.c:2109
>
> Which version of lttng-ust is this exactly?  In addition to what
> Darren is saying about how this should be papered-over at the recipe
> level until gcc itself is fixed...
>
Sorry, this was my mis-understanding of Darren's comment.

Version of lttng-ust is 0.15.

Initially I tried to do something with tcmode-default, setting lttng-ust 
similar to meta-xlib which also had a ICE issue.

TARGET_CC_ARCH_arm_pn-mesa-xlib := 
"${@'${TARGET_CC_ARCH}'.replace('armv7-a','armv5')}"

That caused the compiler to complain about a mode issue, probably due to 
mixing of tune parameters:

| arm-poky-linux-gnueabi-libtool: compile:  ccache 
arm-poky-linux-gnueabi-gcc
-march=armv5 -fno-tree-vectorize -mthumb-interwork -mfloat-abi=softfp
-mfpu=neon -mtune=cortex-a8
--sysroot=/vol/1/sgw/autobuilder/yab/yocto-slave/external/build/build/tmp/sysroots/beagleboard
-DHAVE_CONFIG_H -I. -I.. -I../include/ust -I../include -I../libustcomm
-DUST_COMPONENT=libust -fno-strict-aliasing -Wall -pipe -g
-feliminate-unused-debug-types -MT libust_la-marker-control.lo -MD -MP -MF
.deps/libust_la-marker-control.Tpo -c marker-control.c -o
libust_la-marker-control.o >/dev/null 2>&1
| mv -f .deps/libust_la-tracercore.Tpo .deps/libust_la-tracercore.Plo
| {standard input}: Assembler messages:
| {standard input}:190: Error: selected processor does not support ARM 
mode `dmb'

Yes, we are trying to solve Compiler issue, when I first started working 
on the last week there was not a compiler bug filed, but now there seems 
to be one!

http://gcc.gnu.org/bugzilla/show_bug.cgi?id=43137

Which looks like it is resolved also!

I will move this to Nitin to see if he can incorporate the patch into gcc.

Sau!


