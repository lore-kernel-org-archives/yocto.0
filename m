Return-Path: <laguest@archeia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC850E00CA0; Thu, 10 Mar 2016 04:50:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 356 seconds by postgrey-1.32 at yocto-www;
	Thu, 10 Mar 2016 04:50:19 PST
Received: from beast.archeia.com (beast.archeia.com [74.207.226.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75FD1E00B45
	for <yocto@yoctoproject.org>; Thu, 10 Mar 2016 04:50:19 -0800 (PST)
Received: from [192.168.0.2] (0545bbff.skybroadband.com [5.69.187.255])
	(Authenticated sender: laguest)
	by beast.archeia.com (Postfix) with ESMTPSA id 315D28002
	for <yocto@yoctoproject.org>; Thu, 10 Mar 2016 12:46:43 +0000 (GMT)
To: yocto@yoctoproject.org
From: "Luke A. Guest" <laguest@archeia.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <56E16C71.6000806@archeia.com>
Date: Thu, 10 Mar 2016 12:45:37 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.0
MIME-Version: 1.0
Subject: [meta-ada] Misconfigure in gcc/ada/gcc-interface/Makefile, tmake_file list is wrong on MIPS/x86
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
X-List-Received-Date: Thu, 10 Mar 2016 12:50:24 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

I'm trying to get my meta-ada layer working with jethro, gcc-4.9. I've
tried to build qemux86, qemumips and qemuarm so far. At this time, I've
added "ada" to --enable-languages and I'm trying to get the thing to
build first. Both qemux86 and qemumips targets have misconfigured
gcc/ada/gcc-interface/Makefile at line 164, the i586 target generates:

tmake_file =  $(srcdir)/config/t-slibgcc $(srcdir)/config/t-linux
$(srcdir)/config/t-glibc ./config/i386/t-linux64
$(srcdir)/config/i386/t-pmm_malloc $(srcdir)/config/i386/t-i386
$(srcdir)/config/i386/t-linux

mips target generates:

tmake_file =  $(srcdir)/config/mips/t-mips $(srcdir)/config/t-slibgcc
$(srcdir)/config/t-linux $(srcdir)/config/t-glibc ./config/mips/t-linux64

Both lines are trying to include t-linux64 from their respective config
dirs, but they should have the prefix "$(srcdir)" and not "."

Luckily the arm target seems to build, so I can carry on there, but it
would be nice to have all targets working.

Can anyone help me work out what is going on here?

Thanks,
Luke.


