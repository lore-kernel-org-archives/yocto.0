Return-Path: <clay@montgomery1.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F27CE00BEE; Tue, 17 Nov 2015 16:37:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [69.89.25.95 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from gproxy1-pub.mail.unifiedlayer.com
	(gproxy1-pub.mail.unifiedlayer.com [69.89.25.95])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 05E8EE00B2C
	for <yocto@yoctoproject.org>; Tue, 17 Nov 2015 16:37:45 -0800 (PST)
Received: (qmail 29464 invoked by uid 0); 18 Nov 2015 00:37:42 -0000
Received: from unknown (HELO cmgw2) (10.0.90.83)
	by gproxy1.mail.unifiedlayer.com with SMTP; 18 Nov 2015 00:37:42 -0000
Received: from box858.bluehost.com ([69.195.124.58]) by cmgw2 with 
	id ioda1r00r1Fiqph01oddDN; Tue, 17 Nov 2015 17:37:40 -0700
X-Authority-Analysis: v=2.1 cv=Jv9i8qIC c=1 sm=1 tr=0
	a=6215HlyIVfFolxfkGyTlSg==:117 a=6215HlyIVfFolxfkGyTlSg==:17
	a=cNaOj0WVAAAA:8
	a=f5113yIGAAAA:8 a=cwQF-0P1AAAA:8 a=IkcTkHD0fZMA:10 a=DpUQn3bY8hUA:10
	a=F7vrFIpsXqIA:10 a=qtqOOiqGOCEA:10 a=Rkb-RL9mpAZRC975ICUA:9
	a=QEXdDO2ut3YA:10
Received: from [70.119.214.20] (port=49760 helo=[192.168.0.18])
	by box858.bluehost.com with esmtpsa (TLSv1.2:DHE-RSA-AES128-SHA:128)
	(Exim 4.84) (envelope-from <clay@montgomery1.com>)
	id 1Zyqki-0005QU-GW
	for yocto@yoctoproject.org; Tue, 17 Nov 2015 17:37:36 -0700
To: yocto@yoctoproject.org
From: "Clay D. Montgomery" <clay@montgomery1.com>
Message-ID: <564BC862.2080308@montgomery1.com>
Date: Tue, 17 Nov 2015 18:37:54 -0600
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.0.1
MIME-Version: 1.0
X-Identified-User: {1231:box858.bluehost.com:montgor0:montgomery1.com}
	{sentby:smtp auth 70.119.214.20 authed with
	clay@montgomery1.com}
Subject: Problem Booting Yocto 1.7.3
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
X-List-Received-Date: Wed, 18 Nov 2015 00:37:49 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

    I'm trying to update from Yocto (Dizzy) 1.7.2 to 1.7.3 for a 
Wandboard Quad, but it hangs at the point where u-boot is trying to 
start the kernel. I'm guessing maybe this is because my image has u-boot 
2014 and I need u-boot 2015?  I have read that u-boot 2015 is required 
for Yocto 1.8 (Fido), because it has a newer kernel (3.14). But, my 
Yocto 1.7.3 build is still the 3.10.17 kernel.  Is it possible Bitbake 
built this image with u-boot and kernel versions that are not 
compatible, or am I missing the real issue?

   I am pasting my boot log below, up to the point where it hangs. I 
would really appreciate any help.

Thanks, Clay Montgomery


U-Boot 2014.10+fslc+g5fd0b60 (Nov 14 2015 - 17:25:56)

CPU:   Freescale i.MX6Q rev1.2 at 792 MHz
Reset cause: POR
Board: Wandboard
I2C:   ready
DRAM:  2 GiB
MMC:   FSL_SDHC: 0, FSL_SDHC: 1
auto-detected panel HDMI
Display: HDMI (1024x768)
In:    serial
Out:   serial
Err:   serial
Net:   FEC [PRIME]
Hit any key to stop autoboot:  0
switch to partitions #0, OK
mmc0 is current device
reading boot.scr
** Unable to read file boot.scr **
reading zImage
5442368 bytes read in 359 ms (14.5 MiB/s)
Booting from mmc ...
reading imx6q-wandboard.dtb
43370 bytes read in 21 ms (2 MiB/s)
Kernel image @ 0x12000000 [ 0x000000 - 0x530b40 ]
## Flattened Device Tree blob at 18000000
    Booting using the fdt blob at 0x18000000
    Using Device Tree in place at 18000000, end 1800d969

Starting kernel ...

