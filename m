Return-Path: <yannick.koehler@hp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 864E6E0076F; Tue, 24 Feb 2015 08:32:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [15.217.136.92 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 587 seconds by postgrey-1.32 at yocto-www;
	Tue, 24 Feb 2015 08:32:20 PST
Received: from g2t1383g.austin.hp.com (g2t1383g.austin.hp.com [15.217.136.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24BDFE00828
	for <yocto@yoctoproject.org>; Tue, 24 Feb 2015 08:32:20 -0800 (PST)
Received: from g2t2352.austin.hp.com (g2t2352.austin.hp.com [15.217.128.51])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by g2t1383g.austin.hp.com (Postfix) with ESMTPS id 59287949
	for <yocto@yoctoproject.org>; Tue, 24 Feb 2015 16:21:46 +0000 (UTC)
Received: from G2W4316.americas.hpqcorp.net (g2w4316.austin.hp.com
	[16.197.9.73]) (using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	by g2t2352.austin.hp.com (Postfix) with ESMTPS id 34BEC114
	for <yocto@yoctoproject.org>; Tue, 24 Feb 2015 16:21:41 +0000 (UTC)
Received: from G2W4312.americas.hpqcorp.net (16.197.24.214) by
	G2W4316.americas.hpqcorp.net (16.197.9.73) with Microsoft SMTP Server
	(TLS) id 14.3.169.1; Tue, 24 Feb 2015 16:21:09 +0000
Received: from G2W2533.americas.hpqcorp.net ([169.254.6.112]) by
	G2W4312.americas.hpqcorp.net ([16.197.24.214]) with mapi id
	14.03.0169.001; Tue, 24 Feb 2015 16:21:09 +0000
From: "Koehler, Yannick (HP Networking)" <yannick.koehler@hp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: squashfs-tools-native 4.2-r2 fails, missing lzma.h
Thread-Index: AdBQTOPzgRlsbFQmRr+oC3HCU+akMA==
Date: Tue, 24 Feb 2015 16:21:09 +0000
Message-ID: <95CF81BBD42FB348A182716C4D4310A806900B8D@G2W2533.americas.hpqcorp.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [16.193.232.29]
MIME-Version: 1.0
Subject: squashfs-tools-native 4.2-r2 fails, missing lzma.h
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
X-List-Received-Date: Tue, 24 Feb 2015 16:32:39 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I recently set my rootfs image fstype to squashfs-xz, and then got this err=
or:

	NOTE: Preparing runqueue
	NOTE: Executing SetScene Tasks
	NOTE: Executing RunQueue Tasks
	ERROR: Function failed: do_compile (log file is located at /home/ykoehler/=
poky/build/tmp/work/x86_64-linux/squashfs-tools-native/4.2-r2/temp/log.do_c=
ompile.30365)
	ERROR: Logfile of failure stored in: /home/ykoehler/poky/build/tmp/work/x8=
6_64-linux/squashfs-tools-native/4.2-r2/temp/log.do_compile.30365
	Log data follows:
	| DEBUG: Executing shell function do_compile
	| NOTE: make -j 30 -l 30 MAKEFLAGS=3D LZMA_SUPPORT=3D1 LZMA_DIR=3D../.. XZ=
_SUPPORT=3D1 mksquashfs
	| gcc  -isystem/home/ykoehler/poky/build/tmp/sysroots/x86_64-linux/usr/inc=
lude -O2 -pipe  -I. -I../../C -D_FILE_OFFSET_BITS=3D64 -D_LARGEFILE_SOURCE =
-D_GNU_SOURCE -DCOMP_DEFAULT=3D\"gzip\" -Wall -DGZIP_SUPPORT
 	-DLZMA_SUPPORT -DXZ_SUPPORT -DXATTR_SUPPORT -DXATTR_DEFAULT -isystem/home=
/ykoehler/poky/build/tmp/sysroots/x86_64-linux/usr/include  -c -o xz_wrappe=
r.o xz_wrapper.c
	| xz_wrapper.c:28:18: fatal error: lzma.h: No such file or directory
	|  #include <lzma.h>
	|                   ^
	| compilation terminated.
	| make: *** [xz_wrapper.o] Error 1
	| ERROR: oe_runmake failed
	| WARNING: exit code 1 from a shell command.
	| ERROR: Function failed: do_compile (log file is located at /home/ykoehle=
r/poky/build/tmp/work/x86_64-linux/squashfs-tools-native/4.2-r2/temp/log.do=
_compile.30365)
	ERROR: Task 193 (virtual:native:/home/ykoehler/poky/meta/recipes-devtools/=
squashfs-tools/squashfs-tools_4.2.bb, do_compile) failed with exit code '1'
	NOTE: Tasks Summary: Attempted 982 tasks of which 968 didn't need to be re=
run and 1 failed.
	Waiting for 0 running tasks to finish:

	Summary: 1 task failed:
	  virtual:native/home/ykoehler/poky/meta/recipes-devtools/squashfs-tools/s=
quashfs-tools_4.2.bb, do_compile
	Summary: There was 1 ERROR message shown, returning a non-zero exit code.

I then added xz-native to image_types.bbclass IMAGE_DEPENDS_squashfs-xz wit=
hout success.  Any help in this regards would be appreciated.

Yannick Koehler


