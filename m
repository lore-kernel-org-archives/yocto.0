Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEF44E00CD7; Tue,  9 Feb 2016 23:31:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 830F4E00CD0
	for <yocto@yoctoproject.org>; Tue,  9 Feb 2016 23:31:34 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 9D4B768A019; Wed, 10 Feb 2016 07:31:32 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id D98C368A019;
	Wed, 10 Feb 2016 07:31:31 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 34CE36740245;
	Wed, 10 Feb 2016 08:31:31 +0100 (CET)
To: yocto@yoctoproject.org
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <56BAE751.6080000@mlbassoc.com>
Date: Wed, 10 Feb 2016 08:31:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
Subject: Debugging shared libraries
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
X-List-Received-Date: Wed, 10 Feb 2016 07:31:37 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I'm trying to debug some code (mplayer) which uses some shared
libraries from ffmpeg.  When I use GDB (via gdbserver), I don't
get all the debug information I need - note that many of the shared
libraries do not have any symbolic debugging info:

(gdb) info sharedlibrary
 From        To          Syms Read   Shared Object Library
0xb6fcf800  0xb6feaf08  Yes         /tmp/p0382.img/lib/ld-linux-armhf.so.3
0xb6fa6fa8  0xb6fb2b40  Yes (*)     /tmp/p0382.img/lib/libtinfo.so.5
0xb6f6d210  0xb6f8c200  Yes         /tmp/p0382.img/usr/lib/libpng16.so.16
0xb6f488e8  0xb6f54a60  Yes         /tmp/p0382.img/lib/libz.so.1
0xb6f069f0  0xb6f34264  Yes         /tmp/p0382.img/usr/lib/libjpeg.so.8
0xb6edbaf0  0xb6eee29c  Yes         /tmp/p0382.img/usr/lib/libdvdread.so.4
0xb6eb6108  0xb6ec7ae8  Yes         /tmp/p0382.img/usr/lib/libass.so.4
0xb6e808b8  0xb6e95384  Yes         /tmp/p0382.img/usr/lib/libvorbis.so.0
0xb6e6b4b4  0xb6e6d7e4  Yes         /tmp/p0382.img/usr/lib/libogg.so.0
0xb6e48978  0xb6e55eb4  Yes         /tmp/p0382.img/usr/lib/libspeex.so.1
0xb6dfe818  0xb6e1b8b4  Yes (*)     /tmp/p0382.img/usr/lib/libfaad.so.2
0xb6d92df0  0xb6dd4e78  Yes (*)     /tmp/p0382.img/usr/lib/libavutil.so.54
0xb5de0640  0xb64a2e18  Yes (*)     /tmp/p0382.img/usr/lib/libavcodec.so.56
0xb5c17528  0xb5d65840  Yes (*)     /tmp/p0382.img/usr/lib/libavformat.so.56
0xb5b81688  0xb5be8db8  Yes (*)     /tmp/p0382.img/usr/lib/libswscale.so.3
0xb5b5f578  0xb5b6c718  Yes (*)     /tmp/p0382.img/usr/lib/libswresample.so.1
0xb5b44998  0xb5b4b490  Yes (*)     /tmp/p0382.img/usr/lib/libpostproc.so.53
0xb5b1f0e0  0xb5b2e194  Yes         /tmp/p0382.img/lib/libpthread.so.0
0xb5aa4c00  0xb5ad46d0  Yes         /tmp/p0382.img/lib/libm.so.6
0xb5a859ec  0xb5a8fc34  Yes         /tmp/p0382.img/usr/lib/libXext.so.6
0xb597b728  0xb59f92bc  Yes         /tmp/p0382.img/usr/lib/libX11.so.6
0xb5946fc8  0xb59573d0  Yes         /tmp/p0382.img/usr/lib/libtheoradec.so.1
0xb5887910  0xb591bbb8  Yes (*)     /tmp/p0382.img/usr/lib/libasound.so.2
0xb58579f8  0xb58586ac  Yes         /tmp/p0382.img/usr/lib/libXss.so.1
0xb5844ca0  0xb5846bac  Yes         /tmp/p0382.img/usr/lib/libXv.so.1
0xb57e7700  0xb58265e0  Yes         /tmp/p0382.img/usr/lib/libSDL-1.2.so.0
0xb56bae00  0xb57abb28  Yes         /tmp/p0382.img/lib/libc.so.6
0xb569292c  0xb5693724  Yes         /tmp/p0382.img/lib/libdl.so.2
0xb5650a70  0xb566e6a4  Yes         /tmp/p0382.img/usr/lib/libfontconfig.so.1
0xb561e324  0xb563951c  Yes         /tmp/p0382.img/usr/lib/libexpat.so.1
0xb559d36c  0xb55f5cb4  Yes         /tmp/p0382.img/usr/lib/libfreetype.so.6
0xb55622b0  0xb5567e84  Yes         /tmp/p0382.img/usr/lib/libenca.so.0
0xb541fbc0  0xb54b5a08  Yes (*)     /tmp/p0382.img/usr/lib/libx264.so.144
0xb53d4df0  0xb53fa0b0  Yes         /tmp/p0382.img/usr/lib/libtheoraenc.so.1
0xb53a72b0  0xb53bd258  Yes (*)     /tmp/p0382.img/usr/lib/liblzma.so.5
0xb5386050  0xb5392cc0  Yes (*)     /tmp/p0382.img/usr/lib/libbz2.so.0
0xb5367810  0xb5373b30  Yes         /tmp/p0382.img/usr/lib/libxcb.so.1
0xb534da00  0xb534e5a8  Yes         /tmp/p0382.img/usr/lib/libXau.so.6
0xb5339f80  0xb533b69c  Yes         /tmp/p0382.img/usr/lib/libXdmcp.so.6
0xb5323720  0xb5326ea0  Yes         /tmp/p0382.img/lib/librt.so.1
0xb530b6e0  0xb5311234  Yes         /tmp/p0382.img/usr/lib/libXrandr.so.2
0xb52f3530  0xb52f9060  Yes         /tmp/p0382.img/usr/lib/libXrender.so.1
0xb52d3160  0xb52e18a4  Yes         /tmp/p0382.img/lib/libgcc_s.so.1
(*): Shared library is missing debugging information.

Is this a function of how those libraries were built (by the recipe)
or something else?  How can I get the symbolic debugging info enabled?

Thanks for any pointers

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

