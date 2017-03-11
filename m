Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F007E00A0C; Fri, 10 Mar 2017 20:48:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0A3AE00A08
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 20:48:28 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id A0DF468A01C; Sat, 11 Mar 2017 04:48:27 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id E372A68A019;
	Sat, 11 Mar 2017 04:48:26 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id E0BCB674035D;
	Sat, 11 Mar 2017 05:48:25 +0100 (CET)
From: Gary Thomas <gary@mlbassoc.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <3bd4f030-5ab3-2548-df7d-5504187c3e37@mlbassoc.com>
Date: Sat, 11 Mar 2017 05:48:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
Subject: Files missing in SDK
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
X-List-Received-Date: Sat, 11 Mar 2017 04:48:31 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

As previously discussed, I'm trying to build an SDK for my system
using -c populate_sdk_ext.  For the most part, I have this working
except for one package which is missing a number of files.

I've looked at the details of the nativesdk-ti-cgt-pru package
which was built as part of this process:
46610678 Mar  6 16:03 tmp/deploy/ipk/x86_64-nativesdk/nativesdk-ti-cgt-pru_2.1.4-r0.2_x86_64-nativesdk.ipk

Examining the package in detail (unpacking manually), I can see these files
$ ls opt/amltd/2.2+snapshot/sysroots/x86_64-amltdsdk-linux/usr/share/ti/cgt-pru/
bin                  Open_defects.html
bin.cmd              PRU_Code_Generation_Tools_2.1.x_manifest.html
Closed_defects.html  PRU_CodeGen_Library_2.1_0222433C-30C1-442d-B5C6-2073BD97F80F.spdx.tag
example              README.txt
include              ti_cgt_pru_2.1.4_linux-x64_installer_install.log
lib                  ti_cgt_pru_2.1.4_uninstaller.dat
man                  ti_cgt_pru_2.1.4_uninstaller.run

Of these, only a few make it into my final SDK (my SDK was unpacked into ~/amltd_sdk
and my target board/MACHINE is called rainier-p8701)
$ ls /home/gthomas/amltd_sdk/tmp/sysroots/rainier-p8701/usr/share/ti/cgt-pru/
include  lib

So the files are in the package (.ipk), but somewhere in the magic of
turning those packages into the actual SDK, they went missing.  Where
does this happen and how can I figure out how to get them into my final
SDK?  I don't think it's the fault of the ti-cgt-pru recipe because it
did get the files into the nativesdk .ipk, they just aren't being kept
in the final SDK.

Observation: perhaps this is related to how the [board] package for this tool
is packaged?  I can see very different layouts between the two, looking at the
staging [image] built in the two situations.

board/MACHINE:
$ find tmp/work/armv7ahf-neon-amltd-linux-gnueabi/ti-cgt-pru/2.1.4-r0/image -type d
tmp/work/armv7ahf-neon-amltd-linux-gnueabi/ti-cgt-pru/2.1.4-r0/image
tmp/work/armv7ahf-neon-amltd-linux-gnueabi/ti-cgt-pru/2.1.4-r0/image/usr
tmp/work/armv7ahf-neon-amltd-linux-gnueabi/ti-cgt-pru/2.1.4-r0/image/usr/share
tmp/work/armv7ahf-neon-amltd-linux-gnueabi/ti-cgt-pru/2.1.4-r0/image/usr/share/ti
tmp/work/armv7ahf-neon-amltd-linux-gnueabi/ti-cgt-pru/2.1.4-r0/image/usr/share/ti/cgt-pru
tmp/work/armv7ahf-neon-amltd-linux-gnueabi/ti-cgt-pru/2.1.4-r0/image/usr/share/ti/cgt-pru/lib
tmp/work/armv7ahf-neon-amltd-linux-gnueabi/ti-cgt-pru/2.1.4-r0/image/usr/share/ti/cgt-pru/lib/src
tmp/work/armv7ahf-neon-amltd-linux-gnueabi/ti-cgt-pru/2.1.4-r0/image/usr/share/ti/cgt-pru/include
tmp/work/armv7ahf-neon-amltd-linux-gnueabi/ti-cgt-pru/2.1.4-r0/image/usr/share/man
tmp/work/armv7ahf-neon-amltd-linux-gnueabi/ti-cgt-pru/2.1.4-r0/image/usr/share/man/man1
tmp/work/armv7ahf-neon-amltd-linux-gnueabi/ti-cgt-pru/2.1.4-r0/image/usr/share/doc
tmp/work/armv7ahf-neon-amltd-linux-gnueabi/ti-cgt-pru/2.1.4-r0/image/usr/share/doc/ti
tmp/work/armv7ahf-neon-amltd-linux-gnueabi/ti-cgt-pru/2.1.4-r0/image/usr/share/doc/ti/cgt-pru
tmp/work/armv7ahf-neon-amltd-linux-gnueabi/ti-cgt-pru/2.1.4-r0/image/usr/bin

nativesdk:

2$ find tmp/work/x86_64-nativesdk-amltdsdk-linux/nativesdk-ti-cgt-pru/2.1.4-r0/image/ -type d
tmp/work/x86_64-nativesdk-amltdsdk-linux/nativesdk-ti-cgt-pru/2.1.4-r0/image/
tmp/work/x86_64-nativesdk-amltdsdk-linux/nativesdk-ti-cgt-pru/2.1.4-r0/image/opt
tmp/work/x86_64-nativesdk-amltdsdk-linux/nativesdk-ti-cgt-pru/2.1.4-r0/image/opt/amltd
tmp/work/x86_64-nativesdk-amltdsdk-linux/nativesdk-ti-cgt-pru/2.1.4-r0/image/opt/amltd/2.2+snapshot
tmp/work/x86_64-nativesdk-amltdsdk-linux/nativesdk-ti-cgt-pru/2.1.4-r0/image/opt/amltd/2.2+snapshot/sysroots
tmp/work/x86_64-nativesdk-amltdsdk-linux/nativesdk-ti-cgt-pru/2.1.4-r0/image/opt/amltd/2.2+snapshot/sysroots/x86_64-amltdsdk-linux
tmp/work/x86_64-nativesdk-amltdsdk-linux/nativesdk-ti-cgt-pru/2.1.4-r0/image/opt/amltd/2.2+snapshot/sysroots/x86_64-amltdsdk-linux/usr
tmp/work/x86_64-nativesdk-amltdsdk-linux/nativesdk-ti-cgt-pru/2.1.4-r0/image/opt/amltd/2.2+snapshot/sysroots/x86_64-amltdsdk-linux/usr/share
tmp/work/x86_64-nativesdk-amltdsdk-linux/nativesdk-ti-cgt-pru/2.1.4-r0/image/opt/amltd/2.2+snapshot/sysroots/x86_64-amltdsdk-linux/usr/share/ti
tmp/work/x86_64-nativesdk-amltdsdk-linux/nativesdk-ti-cgt-pru/2.1.4-r0/image/opt/amltd/2.2+snapshot/sysroots/x86_64-amltdsdk-linux/usr/share/ti/cgt-pru
tmp/work/x86_64-nativesdk-amltdsdk-linux/nativesdk-ti-cgt-pru/2.1.4-r0/image/opt/amltd/2.2+snapshot/sysroots/x86_64-amltdsdk-linux/usr/share/ti/cgt-pru/man
tmp/work/x86_64-nativesdk-amltdsdk-linux/nativesdk-ti-cgt-pru/2.1.4-r0/image/opt/amltd/2.2+snapshot/sysroots/x86_64-amltdsdk-linux/usr/share/ti/cgt-pru/man/man1
tmp/work/x86_64-nativesdk-amltdsdk-linux/nativesdk-ti-cgt-pru/2.1.4-r0/image/opt/amltd/2.2+snapshot/sysroots/x86_64-amltdsdk-linux/usr/share/ti/cgt-pru/lib
tmp/work/x86_64-nativesdk-amltdsdk-linux/nativesdk-ti-cgt-pru/2.1.4-r0/image/opt/amltd/2.2+snapshot/sysroots/x86_64-amltdsdk-linux/usr/share/ti/cgt-pru/lib/src
tmp/work/x86_64-nativesdk-amltdsdk-linux/nativesdk-ti-cgt-pru/2.1.4-r0/image/opt/amltd/2.2+snapshot/sysroots/x86_64-amltdsdk-linux/usr/share/ti/cgt-pru/example
tmp/work/x86_64-nativesdk-amltdsdk-linux/nativesdk-ti-cgt-pru/2.1.4-r0/image/opt/amltd/2.2+snapshot/sysroots/x86_64-amltdsdk-linux/usr/share/ti/cgt-pru/include
tmp/work/x86_64-nativesdk-amltdsdk-linux/nativesdk-ti-cgt-pru/2.1.4-r0/image/opt/amltd/2.2+snapshot/sysroots/x86_64-amltdsdk-linux/usr/share/ti/cgt-pru/bin

Maybe the SDK generation is trying to look at how the board files are packaged
and extract the corresponding bits for the SDK from the nativesdk package?

I'm happy to share any of these bits if someone wants to help me understand
how to fix the issue.

Thanks again

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

