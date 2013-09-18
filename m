Return-Path: <hans.beckerus@gmail.com>
Received: from mail-ob0-f180.google.com (mail-ob0-f180.google.com
	[209.85.214.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB880E0154F
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2013 06:17:42 -0700 (PDT)
Received: by mail-ob0-f180.google.com with SMTP id wm4so7130050obc.39
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2013 06:17:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=bABxQO1k4fq3F2ObT1SgGCbQ41n8gorIplJcyTsUgGY=;
	b=1AlqPdVJv9IPWKIUjiOv1hawkwhJNwgZtthSHi8FAA9EHoO/xXefR3XzFIOY6RQ0/x
	jsVeLhpKM1qvYiqpZDiw7Am/sr3cdTORpyWFF1BtVkKnb0QzoH7PsZGlUslk3UzN51WX
	9RTWcGBKmrCFamZLTIXyI+7HaExVDVfTk3h/e4OpaYYfB0448/C9Gm39cNVjc35xRZ/E
	V9CulJa/7uISlue0vaHzuVXH6j483pD3rjEu6P+WdNeEh4+kdxFKBPzLiP3rfHLZEmnA
	2wymlj5kJZL2AVkLEg5sMMOqp+sRNxkoKuXSzPIoFRR2sKEo9HsyvaSQXrU1K94PowHZ
	djLQ==
MIME-Version: 1.0
X-Received: by 10.60.52.81 with SMTP id r17mr34817339oeo.3.1379510262383; Wed,
	18 Sep 2013 06:17:42 -0700 (PDT)
Received: by 10.182.44.8 with HTTP; Wed, 18 Sep 2013 06:17:42 -0700 (PDT)
Date: Wed, 18 Sep 2013 15:17:42 +0200
Message-ID: <CAFyqS9pcF-JXmoZd=eH1FWb+j1LmqYB_uE=s=eraCN+uPgn7zw@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: What libc features are needed for proper large file support?
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
X-List-Received-Date: Wed, 18 Sep 2013 13:17:45 -0000
Content-Type: text/plain; charset=ISO-8859-1

We are having some problems building e2fsprogs using our custom distro
based on poky-tiny.
The error we get is typically:

e4defrag.c:1958: undefined reference to `nftw64'

So, it seems some libc feature in addition is missing to get proper
working support for the large file API.
Below is a comparison between standard poky and our distro.

poky:
DISTRO_FEATURES="alsa argp bluetooth ext2 irda largefile pcmcia
usbgadget usbhost wifi xattr nfs zeroconf pci 3g nfc x11 ipv4 ipv6
libc-backtrace libc-big-macros libc-bsd libc-cxx-tests libc-catgets
libc-charsets libc-crypt libc-crypt-ufc libc-db-aliases libc-envz
libc-fcvt libc-fmtmsg libc-fstab libc-ftraverse libc-getlogin libc-idn
libc-inet-anl libc-libm libc-libm-big libc-locales libc-locale-code
libc-memusage libc-nis libc-nsswitch libc-rcmd libc-rtld-debug
libc-spawn libc-streams libc-sunrpc libc-utmp libc-utmpx libc-wordexp
libc-posix-clang-wchar libc-posix-regexp libc-posix-regexp-glibc
libc-posix-wchar-io largefile opengl multiarch wayland pulseaudio
sysvinit"

poky-custom (based on tiny)
DISTRO_FEATURES="ipv4 usbhost usbgadget ${DISTRO_FEATURES_WIFI}
libc-libm libc-crypt libc-utmp libc-getlogin libc-posix-regexp
libc-inet libc-nis   libc-posix-clang-wchar libc-posix-wchar-io
libc-locale-code sysvinit largefile nfs"

A huge difference indeed, which is sort of the whole point ;) Anyone
have the slightest idea what of the libc features we need to enable
additionally to get full large file support?
A trial and error approach playing a guess game to figure this out
would become a very tedious task :( It is probably obvious once
it/they are identified but right now it is complete darkness.

Thanks.
Hans

