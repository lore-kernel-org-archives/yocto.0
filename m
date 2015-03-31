Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8385CE0092E; Tue, 31 Mar 2015 09:18:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0EC2E00837
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 09:18:07 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 39ADEF8119A; Tue, 31 Mar 2015 10:18:07 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 7D07FF81199;
	Tue, 31 Mar 2015 10:18:06 -0600 (MDT)
Message-ID: <551AC8C0.7090605@mlbassoc.com>
Date: Tue, 31 Mar 2015 10:18:08 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <551AC426.1050201@mlbassoc.com>
In-Reply-To: <551AC426.1050201@mlbassoc.com>
Subject: Re: Missing debug symbols
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
X-List-Received-Date: Tue, 31 Mar 2015 16:18:16 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-03-31 09:58, Gary Thomas wrote:
> I'm trying to debug some problems with avconv.  When I install
> the debug packages, I got some errors/warnings:
>
> # opkg install libav-dbg
> Installing libav-dbg (9.16-r0.10) on root.
> Downloading http://192.168.1.116/teton-p0382-feeds/cortexa9hf-vfp-neon/libav-dbg_9.16-r0.10_cortexa9hf-vfp-neon.ipk.
> librtmp-dbg: unsatisfied recommendation for libcrypto-dbg
> librtmp-dbg: unsatisfied recommendation for libssl-dbg
> libav-dbg: unsatisfied recommendation for libbz2-dbg
> libav-dbg: unsatisfied recommendation for libavdevice-dbg
> libx264-dbg: unsatisfied recommendation for libavutil-dbg
> libx264-dbg: unsatisfied recommendation for libswscale-dbg
> libav-dbg: unsatisfied recommendation for libavformat-dbg
> libav-dbg: unsatisfied recommendation for libavcodec-dbg
> libav-dbg: unsatisfied recommendation for libavutil-dbg
> libav-dbg: unsatisfied recommendation for libavresample-dbg
> libav-dbg: unsatisfied recommendation for libswscale-dbg
> libav-dbg: unsatisfied recommendation for libasound-dbg
> libav-dbg: unsatisfied recommendation for libavfilter-dbg
> Installing librtmp-dbg (git-r0.16) on root.
> Downloading http://192.168.1.116/teton-p0382-feeds/cortexa9hf-vfp-neon/librtmp-dbg_git-r0.16_cortexa9hf-vfp-neon.ipk.
> Installing libc6-dbg (2.21-r0.5) on root.
> Downloading http://192.168.1.116/teton-p0382-feeds/cortexa9hf-vfp-neon/libc6-dbg_2.21-r0.5_cortexa9hf-vfp-neon.ipk.
> Installing libz-dbg (1.2.8-r0.16) on root.
> Downloading http://192.168.1.116/teton-p0382-feeds/cortexa9hf-vfp-neon/libz-dbg_1.2.8-r0.16_cortexa9hf-vfp-neon.ipk.
> Installing libtheora-dbg (1.1.1-r1.16) on root.
> Downloading http://192.168.1.116/teton-p0382-feeds/cortexa9hf-vfp-neon/libtheora-dbg_1.1.1-r1.16_cortexa9hf-vfp-neon.ipk.
> Installing libogg-dbg (1.3.2-r0.16) on root.
> Downloading http://192.168.1.116/teton-p0382-feeds/cortexa9hf-vfp-neon/libogg-dbg_1.3.2-r0.16_cortexa9hf-vfp-neon.ipk.
> Installing libxext-dbg (1:1.3.3-r0.12) on root.
> Downloading http://192.168.1.116/teton-p0382-feeds/cortexa9hf-vfp-neon/libxext-dbg_1.3.3-r0.12_cortexa9hf-vfp-neon.ipk.
> Installing libx11-dbg (1:1.6.2-r0.16) on root.
> Downloading http://192.168.1.116/teton-p0382-feeds/cortexa9hf-vfp-neon/libx11-dbg_1.6.2-r0.16_cortexa9hf-vfp-neon.ipk.
> Installing libxcb-dbg (1.11-r0.12) on root.
> Downloading http://192.168.1.116/teton-p0382-feeds/cortexa9hf-vfp-neon/libxcb-dbg_1.11-r0.12_cortexa9hf-vfp-neon.ipk.
> Installing libxdmcp-dbg (1:1.1.1-r0.16) on root.
> Downloading http://192.168.1.116/teton-p0382-feeds/cortexa9hf-vfp-neon/libxdmcp-dbg_1.1.1-r0.16_cortexa9hf-vfp-neon.ipk.
> Installing libxau-dbg (1:1.0.8-r0.16) on root.
> Downloading http://192.168.1.116/teton-p0382-feeds/cortexa9hf-vfp-neon/libxau-dbg_1.0.8-r0.16_cortexa9hf-vfp-neon.ipk.
> Installing libx264-dbg (r2230+git-r1.16) on root.
> Downloading http://192.168.1.116/teton-p0382-feeds/cortexa9hf-vfp-neon/libx264-dbg_r2230+git-r1.16_cortexa9hf-vfp-neon.ipk.
> Installing libsdl-1.2-dbg (1.2.15-r3.18) on root.
> Downloading http://192.168.1.116/teton-p0382-feeds/cortexa9hf-vfp-neon-mx6qdl/libsdl-1.2-dbg_1.2.15-r3.18_cortexa9hf-vfp-neon-mx6qdl.ipk.
> Installing libts-1.0-dbg (1.1-r0.16) on root.
> Downloading http://192.168.1.116/teton-p0382-feeds/cortexa9hf-vfp-neon/libts-1.0-dbg_1.1-r0.16_cortexa9hf-vfp-neon.ipk.
> Installing libxfixes-dbg (1:5.0.1-r0.16) on root.
> Downloading http://192.168.1.116/teton-p0382-feeds/cortexa9hf-vfp-neon/libxfixes-dbg_5.0.1-r0.16_cortexa9hf-vfp-neon.ipk.
> Configuring libc6-dbg.
> Configuring libz-dbg.
> Configuring librtmp-dbg.
> Configuring libxdmcp-dbg.
> Configuring libogg-dbg.
> Configuring libxau-dbg.
> Configuring libxcb-dbg.
> Configuring libx11-dbg.
> Configuring libxfixes-dbg.
> Configuring libtheora-dbg.
> Configuring libxext-dbg.
> Configuring libx264-dbg.
> Configuring libts-1.0-dbg.
> Configuring libsdl-1.2-dbg.
> Configuring libav-dbg.
> Configuring libc6-thread-db.
> Configuring gdb.
>
> Now, of course the problem I need to look at is in one of
> those missing packages:
>
> # gdb avconv
> GNU gdb (GDB) 7.8.1
> Copyright (C) 2014 Free Software Foundation, Inc.
> License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
> This is free software: you are free to change and redistribute it.
> There is NO WARRANTY, to the extent permitted by law.  Type "show copying"
> and "show warranty" for details.
> This GDB was configured as "arm-amltd-linux-gnueabi".
> Type "show configuration" for configuration details.
> For bug reporting instructions, please see:
> <http://www.gnu.org/software/gdb/bugs/>.
> Find the GDB manual and other documentation resources online at:
> <http://www.gnu.org/software/gdb/documentation/>.
> For help, type "help".
> Type "apropos word" to search for commands related to "word"...
> (gdb) r -f video4linux2 -channel 1 -pix_fmt yuyv422 -s 720x480 -i /dev/video0 -frames 10 /home/
> root/test-0001.mp4
> Starting program: /usr/bin/avconv -f video4linux2 -channel 1 -pix_fmt yuyv422 -s 720x480 -i /dev/video0 -frames 10 /home/
> root/test-0001.mp4
> [Thread debugging using libthread_db enabled]
> Using host libthread_db library "/lib/libthread_db.so.1".
> Cannot access memory at address 0x0
>
> Program received signal SIGILL, Illegal instruction.
> 0xb5c39168 in ?? () from /lib/libcrypto.so.1.0.0
> (gdb) info sharedlibrary
> From        To          Syms Read   Shared Object Library
> 0xb6fd7800  0xb6ff2550  Yes         /lib/ld-linux-armhf.so.3
> 0xb6fc0070  0xb6fc5a08  Yes         /usr/lib/libavdevice.so.53
> 0xb6f901a8  0xb6fabca0  Yes         /usr/lib/libavfilter.so.3
> 0xb6e96b98  0xb6f5dbb8  Yes         /usr/lib/libavformat.so.54
> 0xb6e74210  0xb6e818a0  Yes         /usr/lib/libavresample.so.1
> 0xb640cac0  0xb67d6a70  Yes         /usr/lib/libavcodec.so.54
> 0xb63bb238  0xb63f0228  Yes         /usr/lib/libswscale.so.2
> 0xb63971c0  0xb63a96e0  Yes         /usr/lib/libavutil.so.52
> 0xb6323c00  0xb6354828  Yes         /lib/libm.so.6
> 0xb63040c0  0xb63125c8  Yes         /lib/libpthread.so.0
> 0xb61e0c40  0xb62d26f0  Yes         /lib/libc.so.6
> 0xb61c0020  0xb61c2360  Yes         /usr/lib/libXfixes.so.3
> 0xb61ab9ec  0xb61b5b1c  Yes         /usr/lib/libXext.so.6
> 0xb60a9700  0xb6127568  Yes         /usr/lib/libX11.so.6
> 0xb5ff02e0  0xb607b968  Yes (*)     /usr/lib/libasound.so.2
> 0xb5fb6760  0xb5fc4bd0  Yes         /usr/lib/librtmp.so.0
> 0xb5f9a8e8  0xb5fa6a30  Yes         /lib/libz.so.1
> 0xb5f82050  0xb5f8ebb0  Yes (*)     /usr/lib/libbz2.so.0
> 0xb5e69118  0xb5ef4660  Yes         /usr/lib/libx264.so.129
> 0xb5e26df0  0xb5e4bdd0  Yes         /usr/lib/libtheoraenc.so.1
> 0xb5e0cfc8  0xb5e1d174  Yes         /usr/lib/libtheoradec.so.1
> 0xb5df6750  0xb5e02890  Yes         /usr/lib/libxcb.so.1
> 0xb5de4a00  0xb5de55d4  Yes         /usr/lib/libXau.so.6
> 0xb5dd8f10  0xb5dda608  Yes         /usr/lib/libXdmcp.so.6
> 0xb5dcd92c  0xb5dce750  Yes         /lib/libdl.so.2
> 0xb5dbf720  0xb5dc2dd4  Yes         /lib/librt.so.1
> 0xb5d71538  0xb5da9ff8  Yes (*)     /usr/lib/libssl.so.1.0.0
> 0xb5c35640  0xb5d15068  Yes (*)     /lib/libcrypto.so.1.0.0
> 0xb5be84b4  0xb5bea810  Yes         /usr/lib/libogg.so.0
> (*): Shared library is missing debugging information.
>
> Any ideas where the debug symbols might be?  Can I get them back?
>

I found that libcrypto is part of openssl, so I was able to install
the symbols using openssl-dbg.  I still get those warnings:

# opkg install openssl-dbg
Installing openssl-dbg (1.0.2a-r0.0) on root.
Downloading http://192.168.1.116/teton-p0382-feeds/cortexa9hf-vfp-neon/openssl-dbg_1.0.2a-r0.0_cortexa9hf-vfp-neon.ipk.
openssl-dbg: unsatisfied recommendation for libcrypto-dbg
openssl-dbg: unsatisfied recommendation for libssl-dbg
Configuring openssl-dbg.

And now to figure out the real culprit:

# opkg install openssl-dbg
Installing openssl-dbg (1.0.2a-r0.0) on root.
Downloading http://192.168.1.116/teton-p0382-feeds/cortexa9hf-vfp-neon/openssl-dbg_1.0.2a-r0.0_cortexa9hf-vfp-neon.ipk.
openssl-dbg: unsatisfied recommendation for libcrypto-dbg
openssl-dbg: unsatisfied recommendation for libssl-dbg
Configuring openssl-dbg.
root@teton-p0382:~# gdb avconv
GNU gdb (GDB) 7.8.1
Copyright (C) 2014 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.  Type "show copying"
and "show warranty" for details.
This GDB was configured as "arm-amltd-linux-gnueabi".
Type "show configuration" for configuration details.
For bug reporting instructions, please see:
<http://www.gnu.org/software/gdb/bugs/>.
Find the GDB manual and other documentation resources online at:
<http://www.gnu.org/software/gdb/documentation/>.
For help, type "help".
Type "apropos word" to search for commands related to "word"...
Reading symbols from avconv...Reading symbols from /usr/bin/.debug/avconv...done.
done.
Starting program: /usr/bin/avconv -f video4linux2 -channel 1 -pix_fmt yuyv422 -s 720x480 -i /dev/video0 -frames 1 /home/r
oot/test-0001.png
[Thread debugging using libthread_db enabled]
Using host libthread_db library "/lib/libthread_db.so.1".

Program received signal SIGILL, Illegal instruction.
_armv7_tick () at armv4cpuid.S:94
94              mrrc    p15,1,r0,r1,c14         @ CNTVCT

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

