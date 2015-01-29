Return-Path: <t.gamez@phytec.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2C0EE0080C; Thu, 29 Jan 2015 01:42:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 395 seconds by postgrey-1.32 at yocto-www;
	Thu, 29 Jan 2015 01:42:28 PST
Received: from root.phytec.de (mail.x-arc.de [217.6.246.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A454E006EF
	for <yocto@yoctoproject.org>; Thu, 29 Jan 2015 01:42:28 -0800 (PST)
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
	by root.phytec.de (Postfix) with ESMTP id 22E59A00358
	for <yocto@yoctoproject.org>; Thu, 29 Jan 2015 10:36:31 +0100 (CET)
Received: from [172.16.11.109] ([172.16.11.109])
	by idefix.phytec.de (IBM Domino Release 9.0.1FP2 HF590)
	with ESMTP id 2015012910355077-962 ; Thu, 29 Jan 2015 10:35:50 +0100 
Message-ID: <1422524145.4319.25.camel@lws-gamez.phytec.de>
From: Teresa =?ISO-8859-1?Q?G=E1mez?= <t.gamez@phytec.de>
To: yocto@yoctoproject.org
Date: Thu, 29 Jan 2015 10:35:45 +0100
X-Mailer: Evolution 3.10.4-0ubuntu2 
Mime-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP2
	HF590|December 11, 2014) at 29.01.2015 10:35:50,
	Serialize by Router on Idefix/Phytec(Release 9.0.1FP2 HF590|December 11,
	2014) at 29.01.2015 10:35:50,
	Serialize complete at 29.01.2015 10:35:50
Subject: Compile issue with 1.7 SDK and hf
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
X-List-Received-Date: Thu, 29 Jan 2015 09:42:32 -0000
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="UTF-8"

Hello,

I have installed a SDK based on yocto 1.7 with
DEFAULTTUNE ?="cortexa8thf-neon" set. 

I have tried to compile the barebox bootloader with this
SDK like this:

source /opt/poky/1.7/environment-setup-cortexa8t2hf-vfp-neon-poky-linux-gnueabi
unset LDFLAGS
make am335x_defconfig
Also enabled a barebox target tool in menuconfig: BAREBOXENV_TARGET 
make

And see following compile error:

..
  CC      scripts/bareboxenv-target
In file included
from /opt/poky/1.7/sysroots/cortexa8t2hf-vfp-neon-poky-linux-gnueabi/usr/include/features.h:389:0,

from /opt/poky/1.7/sysroots/cortexa8t2hf-vfp-neon-poky-linux-gnueabi/usr/include/stdio.h:27,
                 from scripts/bareboxenv.c:20:
/opt/poky/1.7/sysroots/cortexa8t2hf-vfp-neon-poky-linux-gnueabi/usr/include/gnu/stubs.h:7:29: fatal error: gnu/stubs-soft.h: No such file or directory
 # include <gnu/stubs-soft.h>
                            ^
compilation terminated.

I have tried the same with other non yocto hf toolchains. Compilation
worked there. I wonder if this is a toolchain issue or more a barebox
issue.

I also noticed:

arm-poky-linux-gnueabi-gcc -dM -E - < /dev/null | grep ARM_PCS
#define __ARM_PCS 1


 arm-poky-linux-gnueabi-gcc -mfloat-abi=hard -dM -E - < /dev/null | grep
ARM_PCS
#define __ARM_PCS_VFP 1

Other hf toolchains have __ARM_PCS_VFP 1 regardless if -mfloat-abi
parameter set or not. I have no clue what the right behaviour should be.
Can someone explain?

Regards
Teresa




