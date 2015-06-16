Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6841CE00939; Tue, 16 Jun 2015 12:12:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB9D5E0086D
	for <yocto@yoctoproject.org>; Tue, 16 Jun 2015 12:12:09 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.1/8.15.1) with ESMTPS id t5GJC73b020879
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 16 Jun 2015 12:12:08 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.234) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.224.2; Tue, 16 Jun 2015 12:12:08 -0700
Message-ID: <55807507.1080906@windriver.com>
Date: Tue, 16 Jun 2015 14:12:07 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CALgoR9NG-nVj7qaSSbAVjmhEWSpWaq_oGqFvA0yq+YM9nisF_g@mail.gmail.com>
In-Reply-To: <CALgoR9NG-nVj7qaSSbAVjmhEWSpWaq_oGqFvA0yq+YM9nisF_g@mail.gmail.com>
Subject: Re: [prelink-cross] error while loading shared libraries: ld-linux.so.3
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
X-List-Received-Date: Tue, 16 Jun 2015 19:12:32 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 6/16/15 2:01 AM, Florian Boehmak wrote:
> Hi,
> 
> I am having difficulties to cross-prelink a simple hello world program.
> Prelinking for my x86 machine works fine (host system) but when using the arm
> cross-compile toolchain I get the error: 
> 
> prelink: bin_arm/hello: Could not parse `/usr/local/sbin//prelink-rtld: error
> while loading shared libraries: ld-linux.so.3'

The error indicates that it found a library required called 'ld-linux.so.3', but
could not find that in the "path".  (The path generally being the sysroot path
passed to the rtld.)

What command did you use to run the prelinker?  And does your sysroot contain
the /lib/ld-linux.so.3?

--Mark

> If I understand it correctly then prelink-rtld emulates ld-linux.so but why is
> it parsed by rtld?
> 
> Here are my files:
> 
> # main.cpp
> 
> #include <stdio.h>
> #include "world.h"
> int main (int argc, char *argv[])
> {
> fprintf(stdout, "hello\n");
> World w;
> w.Str();
> return 0;
> }
> 
> 
> # world.cpp
> 
> #include "world.h"
> void World::Str()
> {
> fprintf(stdout, "world\n");
> }
> 
> 
> # prelink_arm.conf
> 
> -l arm-2012.03/arm-none-linux-gnueabi/libc/lib 
> -h arm-2012.03/arm-none-linux-gnueabi/libc/lib 
> -l arm-2012.03/arm-none-linux-gnueabi/libc/usr/lib
> -h arm-2012.03/arm-none-linux-gnueabi/libc/usr/lib
> 
> 
> # compiling
> 
> ../arm-2012.03/bin/arm-none-linux-gnueabi-gcc -Wall -fPIC -shared -Iinclude -o
> lib_arm/libworld.so src/world.cpp 
> arm-2012.03/bin/arm-none-linux-gnueabi-gcc -Wall -Iworld/include
> -Lworld/lib_arm/ -lworld -o bin_arm/hello src/main.cpp
> 
> 
> # prelink-cross
> 
> PATH=/usr/local/sbin prelink --verbose --cache-file=cache/prelink_arm.cache
> --config-file=prelink_arm.conf
> --ld-library-path="world/lib_arm;arm-2012.03/arm-none-linux-gnueabi/libc/lib;arm-2012.03/arm-none-linux-gnueabi/libc/usr/lib;"
> -h bin_arm/hello
> 
> 
> I am sort of stuck. Could you point me in the right direction. What am I missing
> or doing wrong?
> Thank you.
> 
> Cheers
> Florian
> 
> Ps. I have put together the code on github this would be the "shared-library"
> branch.
> https://github.com/fnbk/prelink-cross-example 
> 
> Ps. I posted a similar question on stackoverflow, cross-prelinking but without
> shared libraries.
> http://stackoverflow.com/q/30849060/5011904
> 
>  
> 
> 
> 
> 
> 
> 
> 
> 
> 
> 


