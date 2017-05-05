Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE9F9E0095F; Fri,  5 May 2017 05:45:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.46 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78BD8E007EE
	for <yocto@yoctoproject.org>; Fri,  5 May 2017 05:45:46 -0700 (PDT)
Received: by mail-wm0-f46.google.com with SMTP id m123so5231094wma.0
	for <yocto@yoctoproject.org>; Fri, 05 May 2017 05:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=hqKI0jqYjFXszWnQJm7jZMqABZwRQbfoEAowTdvcS1U=;
	b=qHed9lEgoN2iQSdxLu5iHuiy5oYpFH/zeeJNTFhnmO2diqnTC3iMEAafJo2H8wlIvO
	uKVhb+oiDNciOHpHGv0FNuq1sxXbe3xZwJ2Q9kzVBKk2pG5JihCjL30ptIJgBjfqdy67
	LFU1uNzWw9onLHmHDYMnxelRZn8qagTtwZ6p01MIJGTsz8AHPIXNfBwWoc9bnBjUWIwt
	7UsYFn5k7PdOu/azYRM9nHz0QAP1cyoymAwpilBktn18oUZrK0vsRcsUI4rMrcTz+TR0
	uhOsZHFJBkML8NvP41GmWyk4WP4PR8qhzWTkY3kuTUwWiT+orYqcfR6H2FLnfukfHiOR
	tBpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=hqKI0jqYjFXszWnQJm7jZMqABZwRQbfoEAowTdvcS1U=;
	b=dpnf5TDAKG4ATau4kl/J6JR45bs6mYbAXvCtIPW4oL9s4BxOajuMf4D2s80VWSg0vM
	Werax/apsSBZ0xYe19aQ/eFKMwGH3YwjyoXgxATqgGWOus8j8ovN53+36Cse38e+23xB
	eYzPHa3ZAw1Fd1XyK0rYfUr8KlqpEodPiK+4xhPHizJCLUd1yfl2JrYJjV2NgTPcxfLQ
	0xNupytNGD9ghyjjI8TXYHNSip54SUF+B1OEgAbpTAYTPON1ERCf/T1OS5JtLIhMJr7a
	MLavN70F7Kt5dzidiAWqMqZ4pJmBvJIM14gtDHNO6ImsDX8KijPdhVH9TYzzacpHwxbv
	DoUg==
X-Gm-Message-State: AN3rC/4wqZ37ZDrY9YbSAG5583jktvCiGjsKy8fwTWjS3b7f2VyphDuk
	UYA1ASX0AmKWBVaNloxP5T4BwJbzRw==
X-Received: by 10.80.134.208 with SMTP id 16mr33778604edu.67.1493988346041;
	Fri, 05 May 2017 05:45:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.180.141 with HTTP; Fri, 5 May 2017 05:45:15 -0700 (PDT)
In-Reply-To: <CADG2P4U7wOSsHwB0Wt3nzejWvRi5h2TOLFB9TcrK+b7pNYje-A@mail.gmail.com>
References: <CADG2P4U7wOSsHwB0Wt3nzejWvRi5h2TOLFB9TcrK+b7pNYje-A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 5 May 2017 08:45:15 -0400
Message-ID: <CAMKF1sp_n3Eaff8wGcbyXM0=N3bf7UGfUNnHhB7ZPDEDq+t9ug@mail.gmail.com>
To: Dominig Ar Foll <dominig.arfoll@fridu.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Enabling tpm from meta-security for AGL
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
X-List-Received-Date: Fri, 05 May 2017 12:45:50 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, May 5, 2017 at 6:12 AM, Dominig Ar Foll
<dominig.arfoll@fridu.net> wrote:
> Hello,
>
> I am trying to enable tpm on an Intel target using yocto (morty) from
> meta-security
>
> When I activate the tpm-tools-2.0 feature in my configuration, I have
> a compilation error (see log bellow)
> Search for line:
> | /usr/src/debug/glibc/2.24-r0/git/csu/../sysdeps/x86_64/start.S:104:
> undefined reference to `main'
>
> Would someone knows what I could be missing?

Set

SECURITY_CFLAGS = "${SECURITY_NO_PIE_CFLAGS}"

>
> Regards
> --
> Dominig ar Foll
> Senior Software Architect
> Intel Open Source Technology Centre
>
> --------- log extract ------------
>
> | x86_64-agl-linux-libtool: link: (cd "tcti/.libs" && rm -f
> "libtcti-device.so.0" && ln -s "libtcti-device.so.0.0.0"
> "libtcti-device.so.0")
> | x86_64-agl-linux-libtool: link: (cd "tcti/.libs" && rm -f
> "libtcti-device.so" && ln -s "libtcti-device.so.0.0.0"
> "libtcti-device.so")
> | x86_64-agl-linux-libtool: link: ( cd "tcti/.libs" && rm -f
> "libtcti-device.la" && ln -s "../libtcti-device.la"
> "libtcti-device.la" )
> | x86_64-agl-linux-libtool: link: x86_64-agl-linux-g++  -m64
> -march=corei7 -mtune=corei7 -mfpmath=sse -msse4.2
> --sysroot=/home/dominig/AGL/build/tmp/sysroots/intel-corei7-64  -fPIC
> -DPIC -shared -nostd
> lib /home/dominig/AGL/build/tmp/sysroots/intel-corei7-64/usr/lib/../lib/Scrt1.o
> /home/dominig/AGL/build/tmp/sysroots/intel-corei7-64/usr/lib/../lib/crti.o
> /home/dominig/AGL/build/tmp/sysroots/intel-cor
> ei7-64/usr/lib/../lib/x86_64-agl-linux/6.2.0/crtbeginS.o
> tcti/.libs/tcti_libtcti_socket_la-platformcommand.o
> sysapi/sysapi_util/.libs/tcti_libtcti_socket_la-changeEndian.o
> tcti/.libs/tcti_libtcti_sock
> et_la-tcti_socket.o tcti/.libs/tcti_libtcti_socket_la-commonchecks.o
> common/.libs/tcti_libtcti_socket_la-sockets.o
> common/.libs/tcti_libtcti_socket_la-debug.o
> -L/home/dominig/AGL/build/tmp/sysroots/x
> 86_64-linux/usr/lib/x86_64-agl-linux/gcc/x86_64-agl-linux/6.2.0
> -L/home/dominig/AGL/build/tmp/sysroots/intel-corei7-64/lib/../lib
> -L/home/dominig/AGL/build/tmp/sysroots/intel-corei7-64/usr/lib/../lib/x
> 86_64-agl-linux/6.2.0
> -L/home/dominig/AGL/build/tmp/sysroots/intel-corei7-64/usr/lib/x86_64-agl-linux/6.2.0
> -L/home/dominig/AGL/build/tmp/sysroots/intel-corei7-64/usr/lib/../lib
> -L/home/dominig/AGL/bui
> ld/tmp/sysroots/intel-corei7-64/lib
> -L/home/dominig/AGL/build/tmp/sysroots/intel-corei7-64/usr/lib
> /home/dominig/AGL/build/tmp/sysroots/intel-corei7-64/usr/lib/libstdc++.so
> -lm /home/dominig/AGL/build/
> tmp/sysroots/intel-corei7-64/usr/lib/libssp_nonshared.a -lc -lgcc_s
> -lgcc /home/dominig/AGL/build/tmp/sysroots/intel-corei7-64/usr/lib/../lib/x86_64-agl-linux/6.2.0/crtendS.o
> /home/dominig/AGL/build/tm
> p/sysroots/intel-corei7-64/usr/lib/../lib/crtn.o  -m64 -march=corei7
> -mtune=corei7 -mfpmath=sse -msse4.2
> --sysroot=/home/dominig/AGL/build/tmp/sysroots/intel-corei7-64 -O2 -g
> -fstack-protector-strong -
> Wl,--no-undefined
> -Wl,--version-script=../TPM2.0-TSS/tcti/tcti_socket.map -Wl,-O1
> -Wl,--hash-style=gnu -Wl,--as-needed -fstack-protector-strong -Wl,-z
> -Wl,relro -Wl,-z -Wl,now   -Wl,-soname -Wl,libtcti
> -socket.so.0 -o tcti/.libs/libtcti-socket.so.0.0.0
> | /home/dominig/AGL/build/tmp/sysroots/intel-corei7-64/usr/lib/../lib/Scrt1.o:
> In function `_start':
> | /usr/src/debug/glibc/2.24-r0/git/csu/../sysdeps/x86_64/start.S:104:
> undefined reference to `main'
> | /home/dominig/AGL/build/tmp/sysroots/intel-corei7-64/usr/lib/libc_nonshared.a(elf-init.oS):
> In function `__libc_csu_init':
> | /usr/src/debug/glibc/2.24-r0/git/csu/elf-init.c:86: undefined
> reference to `__init_array_start'
> | /home/dominig/AGL/build/tmp/sysroots/x86_64-linux/usr/libexec/x86_64-agl-linux/gcc/x86_64-agl-linux/6.2.0/ld:
> /home/dominig/AGL/build/tmp/sysroots/intel-corei7-64/usr/lib/libc_nonshared.a(elf-init.oS
> ): relocation R_X86_64_PC32 against undefined hidden symbol
> `__init_array_start' can not be used when making a shared object
> | /home/dominig/AGL/build/tmp/sysroots/x86_64-linux/usr/libexec/x86_64-agl-linux/gcc/x86_64-agl-linux/6.2.0/ld:
> final link failed: Bad value
> | collect2: error: ld returned 1 exit status
> | Makefile:2696: recipe for target 'tcti/libtcti-socket.la' failed
> | make: *** [tcti/libtcti-socket.la] Error 1
> | make: *** Waiting for unfinished jobs....
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

