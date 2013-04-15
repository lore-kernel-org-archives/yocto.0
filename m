Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04ADDE01498
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2013 04:27:29 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:54531 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1URhZI-0008G5-2V; Mon, 15 Apr 2013 07:27:28 -0400
Date: Mon, 15 Apr 2013 07:27:23 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Krishna Dwivedi <Krishna.Dwivedi@aricent.com>
In-Reply-To: <B60DC3E72D20B040854608D81E44050F64F451A93E@GUREXMB01.ASIAN.AD.ARICENT.COM>
Message-ID: <alpine.DEB.2.02.1304150722160.22880@oneiric>
References: <B60DC3E72D20B040854608D81E44050F64F451A93E@GUREXMB01.ASIAN.AD.ARICENT.COM>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Arguement list too big error in bitbake meta-toolchain for MIPS architechture-Gentle Reminder
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
X-List-Received-Date: Mon, 15 Apr 2013 11:27:30 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-689142317-1366025246=:22880"

--8323329-689142317-1366025246=:22880
Content-Type: TEXT/PLAIN; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT

On Mon, 15 Apr 2013, Krishna Dwivedi wrote:

> Hi All,
>
> I am trying to build recipe meta-toolchain for MIPS architecture but
> running into errors. Can anyone please let me know, if I am missing
> anything here or what could be root cause of this and how can I fix
> it. I have followed these steps:
>
> 1)In  WORKDIR/build/conf/local.conf-I selected MACHINE ?= "qemumips" for mips architechture.
>
> 2)source oe-init-build-env.

> 3)bitbake meta-toolchain.
>
> In third step,I am running into these errors:
>
> NOTE: recipe nativesdk-gettext-0.18.2-r0: task do_configure: Started
>
> ERROR: Error executing a python function in
> /home/netlogic/yocto/poky/meta/recipes-core/eglibc/eglibc-locale_2.17.bb:
>
> CalledProcessError: Command 'cp -al/home/netlogic/yocto/poky/build/tmp/work/mips32-poky-linux/eglibc-locale/2.17-r0/packages-sp
> lit/*/home/netlogic/yocto/poky/build/tmp/work/mips32-poky-linux/eglibc-locale/2.17-r0/sstate-buil
> d-package//packages-split' returned non-zero exit status 126 with output /bin/sh: /bin/cp:
> Argument list too long

... snip ...

  i just did the above on my ubuntu system -- qemumips and "bitbake
meta-toolchain" -- and i can see that step running right now among 4
running tasks:

0: nativesdk-gettext-0.18.2-r0 do_configure (pid 6695)

  man, sure seems to be taking a while, while other tasks complete and
are replaced by new tasks.  oh, wait, it just completed, replaced by:

2: nativesdk-gettext-0.18.2-r0 do_compile (pid 12727)

so the configure step seems to have succeeded. in other words, works
for me. and:

$ ls -l /bin/sh
lrwxrwxrwx 1 root root 4 May 22  2012 /bin/sh -> bash
$

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323329-689142317-1366025246=:22880--
