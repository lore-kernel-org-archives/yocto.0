Return-Path: <dominig.arfoll@fridu.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5DD63E0095F; Fri,  5 May 2017 03:12:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f174.google.com (mail-wr0-f174.google.com
	[209.85.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF906E007EE
	for <yocto@yoctoproject.org>; Fri,  5 May 2017 03:12:48 -0700 (PDT)
Received: by mail-wr0-f174.google.com with SMTP id l50so1010798wrc.3
	for <yocto@yoctoproject.org>; Fri, 05 May 2017 03:12:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fridu.net; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=ZLtGPTY98mluHrRJC2PcWCXSIE/COHAQbFawUPP6C00=;
	b=NbB5mnKaoVwwFwFs3/NpJhtolPDoaaL4hUMfMTDj0bx8lBvoGZjj1J0FXGIxoX6568
	iQEZnMx1R87A98rYb+otY3kR8cOnkWN8BHqWzFcraNdrkrbV8W2HmXR655IOgVR4CHHy
	Ggggos0Bpiid21g8PFCh5a8K6zhR5DuG3D3YI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ZLtGPTY98mluHrRJC2PcWCXSIE/COHAQbFawUPP6C00=;
	b=qUSaS7YR0/2BlaH7hDZEtV1cENQOAX2A7o8axMZbVdpNMfkbGdRI1cVbN/iW4+lIYQ
	RzusXn9HJ1268ifNv1GTGJsv1DvPqADVtILwYR3IwUbYt8Zd1qyreqXOuhFUYYF/Z1P8
	RcrRSzLOQYvuPXCnig+Bbh3KZ9VbZhLukG/Ok8Fre83LV27JPz5w8GsCVZSFzW18Y4Ju
	9P78YInQsW1V/JgUP0nxfXmGVXBUKDPevxoPCmPGnxhNuY26mBeUOA4hCLykJA1MFx0J
	hlbfSujQ0EeTopbnsTLDslxhBPpDtMv13qafRLYiyDx6AzxnMH8e0rvUcZSmUq8HKOCJ
	Do0w==
X-Gm-Message-State: AN3rC/6w5o04IehREznSNqBwLVztdjjLnDck9RLm0SWTFCXB8ocGmyZ6
	WWXQZktUgOv/EDJEbGE98aq1QGbhgQGM
X-Received: by 10.223.136.75 with SMTP id e11mr31822746wre.14.1493979167331;
	Fri, 05 May 2017 03:12:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.161.194 with HTTP; Fri, 5 May 2017 03:12:26 -0700 (PDT)
From: Dominig Ar Foll <dominig.arfoll@fridu.net>
Date: Fri, 5 May 2017 12:12:26 +0200
Message-ID: <CADG2P4U7wOSsHwB0Wt3nzejWvRi5h2TOLFB9TcrK+b7pNYje-A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Enabling tpm from meta-security for AGL
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
X-List-Received-Date: Fri, 05 May 2017 10:12:50 -0000
Content-Type: text/plain; charset=UTF-8

Hello,

I am trying to enable tpm on an Intel target using yocto (morty) from
meta-security

When I activate the tpm-tools-2.0 feature in my configuration, I have
a compilation error (see log bellow)
Search for line:
| /usr/src/debug/glibc/2.24-r0/git/csu/../sysdeps/x86_64/start.S:104:
undefined reference to `main'

Would someone knows what I could be missing?

Regards
-- 
Dominig ar Foll
Senior Software Architect
Intel Open Source Technology Centre

--------- log extract ------------

| x86_64-agl-linux-libtool: link: (cd "tcti/.libs" && rm -f
"libtcti-device.so.0" && ln -s "libtcti-device.so.0.0.0"
"libtcti-device.so.0")
| x86_64-agl-linux-libtool: link: (cd "tcti/.libs" && rm -f
"libtcti-device.so" && ln -s "libtcti-device.so.0.0.0"
"libtcti-device.so")
| x86_64-agl-linux-libtool: link: ( cd "tcti/.libs" && rm -f
"libtcti-device.la" && ln -s "../libtcti-device.la"
"libtcti-device.la" )
| x86_64-agl-linux-libtool: link: x86_64-agl-linux-g++  -m64
-march=corei7 -mtune=corei7 -mfpmath=sse -msse4.2
--sysroot=/home/dominig/AGL/build/tmp/sysroots/intel-corei7-64  -fPIC
-DPIC -shared -nostd
lib /home/dominig/AGL/build/tmp/sysroots/intel-corei7-64/usr/lib/../lib/Scrt1.o
/home/dominig/AGL/build/tmp/sysroots/intel-corei7-64/usr/lib/../lib/crti.o
/home/dominig/AGL/build/tmp/sysroots/intel-cor
ei7-64/usr/lib/../lib/x86_64-agl-linux/6.2.0/crtbeginS.o
tcti/.libs/tcti_libtcti_socket_la-platformcommand.o
sysapi/sysapi_util/.libs/tcti_libtcti_socket_la-changeEndian.o
tcti/.libs/tcti_libtcti_sock
et_la-tcti_socket.o tcti/.libs/tcti_libtcti_socket_la-commonchecks.o
common/.libs/tcti_libtcti_socket_la-sockets.o
common/.libs/tcti_libtcti_socket_la-debug.o
-L/home/dominig/AGL/build/tmp/sysroots/x
86_64-linux/usr/lib/x86_64-agl-linux/gcc/x86_64-agl-linux/6.2.0
-L/home/dominig/AGL/build/tmp/sysroots/intel-corei7-64/lib/../lib
-L/home/dominig/AGL/build/tmp/sysroots/intel-corei7-64/usr/lib/../lib/x
86_64-agl-linux/6.2.0
-L/home/dominig/AGL/build/tmp/sysroots/intel-corei7-64/usr/lib/x86_64-agl-linux/6.2.0
-L/home/dominig/AGL/build/tmp/sysroots/intel-corei7-64/usr/lib/../lib
-L/home/dominig/AGL/bui
ld/tmp/sysroots/intel-corei7-64/lib
-L/home/dominig/AGL/build/tmp/sysroots/intel-corei7-64/usr/lib
/home/dominig/AGL/build/tmp/sysroots/intel-corei7-64/usr/lib/libstdc++.so
-lm /home/dominig/AGL/build/
tmp/sysroots/intel-corei7-64/usr/lib/libssp_nonshared.a -lc -lgcc_s
-lgcc /home/dominig/AGL/build/tmp/sysroots/intel-corei7-64/usr/lib/../lib/x86_64-agl-linux/6.2.0/crtendS.o
/home/dominig/AGL/build/tm
p/sysroots/intel-corei7-64/usr/lib/../lib/crtn.o  -m64 -march=corei7
-mtune=corei7 -mfpmath=sse -msse4.2
--sysroot=/home/dominig/AGL/build/tmp/sysroots/intel-corei7-64 -O2 -g
-fstack-protector-strong -
Wl,--no-undefined
-Wl,--version-script=../TPM2.0-TSS/tcti/tcti_socket.map -Wl,-O1
-Wl,--hash-style=gnu -Wl,--as-needed -fstack-protector-strong -Wl,-z
-Wl,relro -Wl,-z -Wl,now   -Wl,-soname -Wl,libtcti
-socket.so.0 -o tcti/.libs/libtcti-socket.so.0.0.0
| /home/dominig/AGL/build/tmp/sysroots/intel-corei7-64/usr/lib/../lib/Scrt1.o:
In function `_start':
| /usr/src/debug/glibc/2.24-r0/git/csu/../sysdeps/x86_64/start.S:104:
undefined reference to `main'
| /home/dominig/AGL/build/tmp/sysroots/intel-corei7-64/usr/lib/libc_nonshared.a(elf-init.oS):
In function `__libc_csu_init':
| /usr/src/debug/glibc/2.24-r0/git/csu/elf-init.c:86: undefined
reference to `__init_array_start'
| /home/dominig/AGL/build/tmp/sysroots/x86_64-linux/usr/libexec/x86_64-agl-linux/gcc/x86_64-agl-linux/6.2.0/ld:
/home/dominig/AGL/build/tmp/sysroots/intel-corei7-64/usr/lib/libc_nonshared.a(elf-init.oS
): relocation R_X86_64_PC32 against undefined hidden symbol
`__init_array_start' can not be used when making a shared object
| /home/dominig/AGL/build/tmp/sysroots/x86_64-linux/usr/libexec/x86_64-agl-linux/gcc/x86_64-agl-linux/6.2.0/ld:
final link failed: Bad value
| collect2: error: ld returned 1 exit status
| Makefile:2696: recipe for target 'tcti/libtcti-socket.la' failed
| make: *** [tcti/libtcti-socket.la] Error 1
| make: *** Waiting for unfinished jobs....

