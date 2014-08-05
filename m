Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DBB0E00799; Tue,  5 Aug 2014 02:05:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18C52E004DD
	for <yocto@yoctoproject.org>; Tue,  5 Aug 2014 02:05:36 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s7595XBF026343; Tue, 5 Aug 2014 10:05:33 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id H0MqFqdkL4ga; Tue,  5 Aug 2014 10:05:32 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s7595R7g026107
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Tue, 5 Aug 2014 10:05:29 +0100
Message-ID: <1407229526.6981.72.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: =?ISO-8859-1?Q?Jo=E3o?= Henrique Ferreira de Freitas <joaohf@gmail.com>
Date: Tue, 05 Aug 2014 10:05:26 +0100
In-Reply-To: <53DC4886.8070406@gmail.com>
References: <CAPhnLPB9VeuosZF16qY2H32adjqC0xZoCWhq_Vdjy7n5YpYCBQ@mail.gmail.com>
	<CFFE70D2.703B%alexandru.c.georgescu@intel.com>
	<53DC4886.8070406@gmail.com>
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Yocto 1.7_M2 release candidate 1 ready for QA
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
X-List-Received-Date: Tue, 05 Aug 2014 09:05:42 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2014-08-01 at 23:10 -0300, João Henrique Ferreira de Freitas
wrote:
> 
> Hi,
> 
> I've tested all toolchains available at
> http://autobuilder.yoctoproject.org/pub/releases/yocto-1.7_M2.rc1/toolchain/x86_64/
> 
> My test program is very simple: 
> 
> --- c.cpp ---
> #include <limits>
> 
> int main() {}
> ---
> 
> Two considerations 
> 
> 1) the of ppce500v2-toolchain-1.6+snapshot.sh and
> armv7a-vfp-neon-toolchain-1.6+snapshot.sh is less than others
> toolchains
> 
> 2) when I try to compile c.cpp, using ppce500v2 or armv7a I get:
> 
> source /opt/poky/1.6
> +snapshot/environment-setup-ppce500v2-poky-linux-gnuspe
> $CXX c.cpp
> 
> In file included from c.cpp:2:0:
> /opt/poky/1.6
> +snapshot/sysroots/ppce500v2-poky-linux-gnuspe/usr/include/c
> ++/4.9.0/limits:42:28: fatal error: bits/c++config.h: No such file or
> directory
>  #include <bits/c++config.h>
> 
> I can't figure out what happened with these two toolchains.
> 
> # find /opt/poky/1.6+snapshot/ -name c++config.h
> [sudo] password for joaohf: 
> /opt/poky/1.6
> +snapshot/sysroots/ppce500v2-poky-linux-gnuspe/usr/include/c
> ++/4.9.0/powerpc-poky-linux-gnuspe/bits/c++config.h
> /opt/poky/1.6
> +snapshot/sysroots/ppce500v2-poky-linux-gnuspe/usr/src/debug/gcc-runtime/4.9.0-r0/gcc-4.9.0/build.powerpc-poky-linux-gnuspe.powerpc-poky-linux-gnuspe/powerpc-poky-linux-gnuspe/libstdc++-v3/include/powerpc-poky-linux-gnuspe/bits/c++config.h
> 
> Someone has any hint?
> 
> I suspect something at meta-fsl-ppc and meta-fsl-arm.
> 
> 
> Is there QA tests against toolchains? I think there is nice to have
> one. Like installs all toolchain locally and use each one to compile
> something.
> 

Just to let you know this email is useful thanks and there is something
being done about this. Alex is looking into why our testing hasn't shown
up the problem. If these are the meta-fsl toolchains, its likely our
test coverage doesn't extend to those and that is why the issue has been
missed. There is only so much testing we can do on a regular basis.

Ultimately we plan to automate the testing of the toolchains but that is
something we continue to work towards, its not ready yet.

On the specific errors, I think its likely the fact we're using one
compiler over multiple different configurations and there is likely some
kind of path issue somewhere. It may be worth filing bugs on these
issues to ensure they don't get lost.

Thanks again for pointing out the problem though, it is something that
needs to get fixed (and we need to improve the automated test coverage).

Cheers,

Richard



