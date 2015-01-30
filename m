Return-Path: <raghavendra.kakarla@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A60C8E0086F; Fri, 30 Jan 2015 08:31:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 472 seconds by postgrey-1.32 at yocto-www;
	Fri, 30 Jan 2015 08:31:43 PST
Received: from mail.inedasystems.com (mail.inedasystems.com [202.153.34.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0253E002F9
	for <yocto@yoctoproject.org>; Fri, 30 Jan 2015 08:31:43 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.inedasystems.com (Postfix) with ESMTP id 752113E66B7
	for <yocto@yoctoproject.org>; Fri, 30 Jan 2015 21:53:46 +0530 (IST)
Received: from mail.inedasystems.com ([127.0.0.1])
	by localhost (mail.inedasystems.com [127.0.0.1]) (amavisd-new,
	port 10032)
	with ESMTP id eBZCMPRhQInT; Fri, 30 Jan 2015 21:53:45 +0530 (IST)
Received: from localhost (localhost [127.0.0.1])
	by mail.inedasystems.com (Postfix) with ESMTP id 8555A3E6C26;
	Fri, 30 Jan 2015 21:52:32 +0530 (IST)
X-Virus-Scanned: amavisd-new at inedasystems.com
Received: from mail.inedasystems.com ([127.0.0.1])
	by localhost (mail.inedasystems.com [127.0.0.1]) (amavisd-new,
	port 10026)
	with ESMTP id 5wE0GfrKTQUA; Fri, 30 Jan 2015 21:52:32 +0530 (IST)
Received: from mail.inedasystems.com (mail.inedasystems.com [192.168.24.225])
	by mail.inedasystems.com (Postfix) with ESMTP id 4DE033E7376
	for <yocto@yoctoproject.org>; Fri, 30 Jan 2015 19:38:04 +0530 (IST)
Date: Fri, 30 Jan 2015 19:38:04 +0530 (IST)
From: Raghavendra Kakarla <raghavendra.kakarla@inedasystems.com>
To: yocto@yoctoproject.org
Message-ID: <1451676.12.1422626878778.JavaMail.kraghavendra@Raghavendra>
In-Reply-To: <10286402.11.1422626774586.JavaMail.kraghavendra@Raghavendra>
MIME-Version: 1.0
X-Originating-IP: [192.168.42.55]
X-Mailer: Zimbra 8.0.3_GA_5664 (Zimbra Desktop/7.2.5_12038_Linux)
Thread-Topic: Yocto-custom kernel build issue
Thread-Index: DArOLqsKgWUXYXYwmh6LoT+JxD4IlA==
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
Subject: Yocto-custom kernel build issue
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
X-List-Received-Date: Fri, 30 Jan 2015 16:31:51 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

I am new to yocto project build system. I downloaded the yocto project build system from git. I built for the all qemu architectures(MIPS,ARM,PPC,X86) and ran on qemu.

all are working fine.

Now I need to create a bsp layer for my board which has the mips processor core.

I created the bsp layer with using the yocto-bsp create command.

here I use the my own kernel which is reside at our local git repositery. I gave this path while creating the bsplayer.

After adding my bsp layer to bblayers and my mechine to local.conf i built the kernel using bitbake -k core-image-minimal command.

While building i got the following errors:


Log data follows:
| DEBUG: Executing python function sysroot_cleansstate
| DEBUG: Python function sysroot_cleansstate finished
| DEBUG: Executing shell function do_configure
| NOTE: make oldnoconfig
| make: *** No rule to make target `oldnoconfig'.  Stop.
| NOTE: make oldconfig
| make: *** No rule to make target `oldconfig'.  Stop.
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_configure (log file is located at /home/testuser/poky/build/tmp/work/mydhanush-poky-linux/linux-yocto-custom/3.10.14+gitAUTOINC+12bbf6468e-r0/temp/log.do_configure.14044)

And also i did not got "src" folder in the following path for my mechine which is there for the qemu mips.
/home/testuser/poky/build/tmp/sysroots/mydhanush/usr

could you please help for resolving this issue.

thanks in advance.


 

Thanks & Regards,
Raghavendra K.


