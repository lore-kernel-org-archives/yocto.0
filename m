Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABEEAE0076F
	for <yocto@yoctoproject.org>; Wed, 31 Aug 2011 11:51:56 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7VIprAN010760;
	Wed, 31 Aug 2011 19:51:53 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 10593-02; Wed, 31 Aug 2011 19:51:49 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7VIpkfO010754
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 31 Aug 2011 19:51:47 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <darren.hart@intel.com>
In-Reply-To: <4E5D90C3.7090607@intel.com>
References: <4BD43A85686FC34D819098DB1C3999D9018894C6CA@orsmsx502.amr.corp.intel.com>
	<1314749498.5939.450.camel@rex>  <4E5D90C3.7090607@intel.com>
Date: Wed, 31 Aug 2011 19:51:33 +0100
Message-ID: <1314816693.5939.476.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
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
X-List-Received-Date: Wed, 31 Aug 2011 18:51:57 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-08-30 at 18:39 -0700, Darren Hart wrote:
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

This is interesting. What its saying here is that your build system
compiler can't compile 32 bit (the -m32 flag) since there are no 32 bit
headers present. Kishore's must have 32 bit headers installed (or be a
32 bit system). We shouldn't be seeing those differences but what they
amount to I don't know without looking at grub in more detail.

> I also found that Kishore's config.log includes:
> freetype_cflags='-I/usr/include/freetype2'
> freetype_libs='-lfreetype -lz'
> 
> While mine includes:
> freetype_cflags='-I/build/poky/sugarbay/tmp/sysroots/sugarbay/usr/include/freetype2 -I/build/poky/sugarbay/tmp/sysroots/sugarbay/usr/include'
> freetype_libs='-L/build/poky/sugarbay/tmp/sysroots/sugarbay/usr/lib -lfreetype'
> 
> This would certainly be cause for a QA test failure.

Yes, this is certainly the problem.

> Perhaps a DEPENDS=freetype in the grub recipe is in order?
> 
> Alternatively, we could see about configuring it without freetype.

I'd tend to favour the latter unless someone can convince me freetype
support adds something really useful to grub.

Cheers,

Richard


