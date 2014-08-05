Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22EEDE0079B; Tue,  5 Aug 2014 03:01:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72FC1E004DD
	for <yocto@yoctoproject.org>; Tue,  5 Aug 2014 03:00:55 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s75A0r3A007975; Tue, 5 Aug 2014 11:00:53 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id SQsSk3HA0JVd; Tue,  5 Aug 2014 11:00:52 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s75A0kF4007760
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Tue, 5 Aug 2014 11:00:48 +0100
Message-ID: <1407232846.6981.77.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: =?ISO-8859-1?Q?Jo=E3o?= Henrique Ferreira de Freitas <joaohf@gmail.com>
Date: Tue, 05 Aug 2014 11:00:46 +0100
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
X-List-Received-Date: Tue, 05 Aug 2014 10:01:02 -0000
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

You can fix the ppc toolchain with 
"ln -s powerpc-poky-linux-gnuspe sysroots/ppce500v2-poky-linux-gnuspe/usr/include/c++/4.9.0/powerpc-poky-linux"

Cheers,

Richard


