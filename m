Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD8FBE00D38; Sat, 20 Jul 2019 12:10:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
	[209.85.214.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB604E00C87
	for <yocto@yoctoproject.org>; Sat, 20 Jul 2019 12:10:20 -0700 (PDT)
Received: by mail-pl1-f196.google.com with SMTP id b3so17206999plr.4
	for <yocto@yoctoproject.org>; Sat, 20 Jul 2019 12:10:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=D8hTf+gWOwm0DqB4CNsEPqUF9Wk9fv5esoERPprWZSM=;
	b=fLwLdjguwMm1HnpfEXhcXFgmjBRU4zQmJkYIgvUia8G/eYPksBXen1jjvakgayWarj
	wcV6DWKOc+kax8DyMWUua2tPIhZgV9m2D67y5GsECRpYEKFgd7NOJnuFmmpFH/pSagS5
	gBsAUyMWGeZRirLf3wz4tjFYozhgMNQ1n79tLWB0GkjzNybxH0l2dvq5Zy3jPYoltIY2
	o/sv9ZZD0ZIKQZyajuniUtszlvlnF4FC0KnQ8KZMFuzXiwFwhDr5fylDCshOXUxfhkMX
	oVDhRwt6iC8Z+/g1fwjLu4LZGC4YqLYYjbUrgXUa7iLgCf/KvPs+ksn0sP6tyokebned
	DiGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=D8hTf+gWOwm0DqB4CNsEPqUF9Wk9fv5esoERPprWZSM=;
	b=eY3HwemZi+//0Z++CWh0c8sbcgNY7Vyfjrc49jWKsQV3z2NYPt3tU6eq0dmDUx+o4q
	wsweh79umW/P9Y3rISbHEwWPmKc3xvN2p6QGEOyEwZ0h8GQk9L2luNHX6g9fFdPOM2x4
	BsMVkgQqDA67wa/6FmcOVL89iJMmqOkIgy1endiVoxixMRd3YorDWp4IdecyBdrKuZKV
	oJugdPlirATYIo6i0zDbtlyOI5CYMeK7Jrq8mLzhvMEs8TRq6GaXJMKGnPf8CnwlE9we
	HablJuR9dO5rpMtrVyCV+2fvP2Tavoj8KYYRj0eE8gW8JtcWdfEqcW/xHFmr3DaSqKD1
	OVmQ==
X-Gm-Message-State: APjAAAWHpgrHdtvaHSwVd7F9BfwFpUhY10uKR+jDJb1ZgqU5mHOlg+1R
	0/Sca1fgJ/AtG93COVIDdaBkL18H
X-Google-Smtp-Source: APXvYqyGHWuTIvNyjym62Fig9yiSV1SxRSs3Mjb9lmGW8ogKbJ/nmzoJ1Hbd8BxLyCvoAabAylBtCQ==
X-Received: by 2002:a17:902:ea:: with SMTP id
	a97mr63921578pla.182.1563649820075; 
	Sat, 20 Jul 2019 12:10:20 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4180:c33:f17f:ca6f:5900:bead])
	by smtp.gmail.com with ESMTPSA id
	u97sm31229856pjb.26.2019.07.20.12.10.19 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 20 Jul 2019 12:10:19 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 20 Jul 2019 12:10:16 -0700
Message-Id: <1563649816-15582-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563649816-15582-1-git-send-email-akuster808@gmail.com>
References: <1563649816-15582-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/2] waf-cross-answers: remove files
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
X-List-Received-Date: Sat, 20 Jul 2019 19:10:23 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 files/waf-cross-answers/README                     |  3 --
 files/waf-cross-answers/cross-answers-aarch64.txt  | 39 ---------------------
 .../waf-cross-answers/cross-answers-aarch64_be.txt | 39 ---------------------
 files/waf-cross-answers/cross-answers-arm.txt      | 40 ----------------------
 files/waf-cross-answers/cross-answers-armeb.txt    | 40 ----------------------
 files/waf-cross-answers/cross-answers-i586.txt     | 40 ----------------------
 files/waf-cross-answers/cross-answers-i686.txt     | 40 ----------------------
 files/waf-cross-answers/cross-answers-mips.txt     | 40 ----------------------
 files/waf-cross-answers/cross-answers-mips64.txt   | 39 ---------------------
 files/waf-cross-answers/cross-answers-mips64el.txt | 39 ---------------------
 files/waf-cross-answers/cross-answers-mipsel.txt   | 40 ----------------------
 files/waf-cross-answers/cross-answers-powerpc.txt  | 40 ----------------------
 .../waf-cross-answers/cross-answers-powerpc64.txt  | 40 ----------------------
 files/waf-cross-answers/cross-answers-riscv64.txt  | 39 ---------------------
 files/waf-cross-answers/cross-answers-x86_64.txt   | 39 ---------------------
 15 files changed, 557 deletions(-)
 delete mode 100644 files/waf-cross-answers/README
 delete mode 100644 files/waf-cross-answers/cross-answers-aarch64.txt
 delete mode 100644 files/waf-cross-answers/cross-answers-aarch64_be.txt
 delete mode 100644 files/waf-cross-answers/cross-answers-arm.txt
 delete mode 100644 files/waf-cross-answers/cross-answers-armeb.txt
 delete mode 100644 files/waf-cross-answers/cross-answers-i586.txt
 delete mode 100644 files/waf-cross-answers/cross-answers-i686.txt
 delete mode 100644 files/waf-cross-answers/cross-answers-mips.txt
 delete mode 100644 files/waf-cross-answers/cross-answers-mips64.txt
 delete mode 100644 files/waf-cross-answers/cross-answers-mips64el.txt
 delete mode 100644 files/waf-cross-answers/cross-answers-mipsel.txt
 delete mode 100644 files/waf-cross-answers/cross-answers-powerpc.txt
 delete mode 100644 files/waf-cross-answers/cross-answers-powerpc64.txt
 delete mode 100644 files/waf-cross-answers/cross-answers-riscv64.txt
 delete mode 100644 files/waf-cross-answers/cross-answers-x86_64.txt

diff --git a/files/waf-cross-answers/README b/files/waf-cross-answers/README
deleted file mode 100644
index dda45c5..0000000
--- a/files/waf-cross-answers/README
+++ /dev/null
@@ -1,3 +0,0 @@
-The files in this directory are cross answers files
-used by waf-samba.bbclass, please see waf-samba.bbclass
-for details about how they are used.
diff --git a/files/waf-cross-answers/cross-answers-aarch64.txt b/files/waf-cross-answers/cross-answers-aarch64.txt
deleted file mode 100644
index 1023f6a..0000000
--- a/files/waf-cross-answers/cross-answers-aarch64.txt
+++ /dev/null
@@ -1,39 +0,0 @@
-Checking uname sysname type: "Linux"
-Checking uname version type: "# Wed May 20 10:34:39 UTC 2015"
-Checking simple C program: "hello world"
-rpath library support: OK
--Wl,--version-script support: OK
-Checking getconf LFS_CFLAGS: NO
-Checking correct behavior of strtoll: NO
-Checking for working strptime: OK
-Checking for C99 vsnprintf: "1"
-Checking for HAVE_SHARED_MMAP: OK
-Checking for HAVE_MREMAP: OK
-Checking for HAVE_SECURE_MKSTEMP: OK
-Checking for HAVE_IFACE_GETIFADDRS: NO
-Checking for HAVE_IFACE_IFCONF: NO
-Checking for HAVE_IFACE_IFREQ: NO
-Checking for large file support without additional flags: OK
-Checking for HAVE_INCOHERENT_MMAP: NO
-Checking value of NSIG: "65"
-Checking value of _NSIG: "65"
-Checking value of SIGRTMAX: "64"
-Checking value of SIGRTMIN: "34"
-Checking whether the WRFILE -keytab is supported: OK
-Checking for kernel change notify support: OK
-Checking for Linux kernel oplocks: OK
-Checking for kernel share modes: OK
-Checking whether POSIX capabilities are available: OK
-Checking if can we convert from CP850 to UCS-2LE: OK
-Checking if can we convert from UTF-8 to UCS-2LE: OK
-vfs_fileid checking for statfs() and struct statfs.f_fsid: OK
-Checking whether we can use Linux thread-specific credentials: OK
-Checking whether fcntl locking is available: OK
-Checking for the maximum value of the 'time_t' type: OK
-Checking whether the realpath function allows a NULL argument: OK
-Checking for ftruncate extend: OK
-getcwd takes a NULL argument: OK
-Checking for small off_t: NO
-Checking whether blkcnt_t is 32 bit: NO
-Checking whether blkcnt_t is 64 bit: OK
-Checking whether fcntl lock supports open file description locks: OK
diff --git a/files/waf-cross-answers/cross-answers-aarch64_be.txt b/files/waf-cross-answers/cross-answers-aarch64_be.txt
deleted file mode 100644
index 1023f6a..0000000
--- a/files/waf-cross-answers/cross-answers-aarch64_be.txt
+++ /dev/null
@@ -1,39 +0,0 @@
-Checking uname sysname type: "Linux"
-Checking uname version type: "# Wed May 20 10:34:39 UTC 2015"
-Checking simple C program: "hello world"
-rpath library support: OK
--Wl,--version-script support: OK
-Checking getconf LFS_CFLAGS: NO
-Checking correct behavior of strtoll: NO
-Checking for working strptime: OK
-Checking for C99 vsnprintf: "1"
-Checking for HAVE_SHARED_MMAP: OK
-Checking for HAVE_MREMAP: OK
-Checking for HAVE_SECURE_MKSTEMP: OK
-Checking for HAVE_IFACE_GETIFADDRS: NO
-Checking for HAVE_IFACE_IFCONF: NO
-Checking for HAVE_IFACE_IFREQ: NO
-Checking for large file support without additional flags: OK
-Checking for HAVE_INCOHERENT_MMAP: NO
-Checking value of NSIG: "65"
-Checking value of _NSIG: "65"
-Checking value of SIGRTMAX: "64"
-Checking value of SIGRTMIN: "34"
-Checking whether the WRFILE -keytab is supported: OK
-Checking for kernel change notify support: OK
-Checking for Linux kernel oplocks: OK
-Checking for kernel share modes: OK
-Checking whether POSIX capabilities are available: OK
-Checking if can we convert from CP850 to UCS-2LE: OK
-Checking if can we convert from UTF-8 to UCS-2LE: OK
-vfs_fileid checking for statfs() and struct statfs.f_fsid: OK
-Checking whether we can use Linux thread-specific credentials: OK
-Checking whether fcntl locking is available: OK
-Checking for the maximum value of the 'time_t' type: OK
-Checking whether the realpath function allows a NULL argument: OK
-Checking for ftruncate extend: OK
-getcwd takes a NULL argument: OK
-Checking for small off_t: NO
-Checking whether blkcnt_t is 32 bit: NO
-Checking whether blkcnt_t is 64 bit: OK
-Checking whether fcntl lock supports open file description locks: OK
diff --git a/files/waf-cross-answers/cross-answers-arm.txt b/files/waf-cross-answers/cross-answers-arm.txt
deleted file mode 100644
index a5cd998..0000000
--- a/files/waf-cross-answers/cross-answers-arm.txt
+++ /dev/null
@@ -1,40 +0,0 @@
-Checking uname sysname type: "Linux"
-Checking uname version type: "# Wed May 20 10:34:39 UTC 2015"
-Checking simple C program: "hello world"
-rpath library support: OK
--Wl,--version-script support: OK
-Checking getconf LFS_CFLAGS: NO
-Checking correct behavior of strtoll: NO
-Checking for working strptime: OK
-Checking for C99 vsnprintf: "1"
-Checking for HAVE_SHARED_MMAP: OK
-Checking for HAVE_MREMAP: OK
-Checking for HAVE_SECURE_MKSTEMP: OK
-Checking for HAVE_IFACE_GETIFADDRS: NO
-Checking for HAVE_IFACE_IFCONF: NO
-Checking for HAVE_IFACE_IFREQ: NO
-Checking for large file support without additional flags: NO
-Checking for -D_FILE_OFFSET_BITS=64: OK
-Checking for HAVE_INCOHERENT_MMAP: NO
-Checking value of NSIG: "65"
-Checking value of _NSIG: "65"
-Checking value of SIGRTMAX: "64"
-Checking value of SIGRTMIN: "34"
-Checking whether the WRFILE -keytab is supported: OK
-Checking for kernel change notify support: OK
-Checking for Linux kernel oplocks: OK
-Checking for kernel share modes: OK
-Checking whether POSIX capabilities are available: OK
-Checking if can we convert from CP850 to UCS-2LE: OK
-Checking if can we convert from UTF-8 to UCS-2LE: OK
-vfs_fileid checking for statfs() and struct statfs.f_fsid: OK
-Checking whether we can use Linux thread-specific credentials with 32-bit system calls: OK
-Checking whether fcntl locking is available: OK
-Checking for the maximum value of the 'time_t' type: NO
-Checking whether the realpath function allows a NULL argument: OK
-Checking for ftruncate extend: OK
-getcwd takes a NULL argument: OK
-Checking for small off_t: NO
-Checking whether blkcnt_t is 32 bit: NO
-Checking whether blkcnt_t is 64 bit: OK
-Checking whether fcntl lock supports open file description locks: OK
diff --git a/files/waf-cross-answers/cross-answers-armeb.txt b/files/waf-cross-answers/cross-answers-armeb.txt
deleted file mode 100644
index a5cd998..0000000
--- a/files/waf-cross-answers/cross-answers-armeb.txt
+++ /dev/null
@@ -1,40 +0,0 @@
-Checking uname sysname type: "Linux"
-Checking uname version type: "# Wed May 20 10:34:39 UTC 2015"
-Checking simple C program: "hello world"
-rpath library support: OK
--Wl,--version-script support: OK
-Checking getconf LFS_CFLAGS: NO
-Checking correct behavior of strtoll: NO
-Checking for working strptime: OK
-Checking for C99 vsnprintf: "1"
-Checking for HAVE_SHARED_MMAP: OK
-Checking for HAVE_MREMAP: OK
-Checking for HAVE_SECURE_MKSTEMP: OK
-Checking for HAVE_IFACE_GETIFADDRS: NO
-Checking for HAVE_IFACE_IFCONF: NO
-Checking for HAVE_IFACE_IFREQ: NO
-Checking for large file support without additional flags: NO
-Checking for -D_FILE_OFFSET_BITS=64: OK
-Checking for HAVE_INCOHERENT_MMAP: NO
-Checking value of NSIG: "65"
-Checking value of _NSIG: "65"
-Checking value of SIGRTMAX: "64"
-Checking value of SIGRTMIN: "34"
-Checking whether the WRFILE -keytab is supported: OK
-Checking for kernel change notify support: OK
-Checking for Linux kernel oplocks: OK
-Checking for kernel share modes: OK
-Checking whether POSIX capabilities are available: OK
-Checking if can we convert from CP850 to UCS-2LE: OK
-Checking if can we convert from UTF-8 to UCS-2LE: OK
-vfs_fileid checking for statfs() and struct statfs.f_fsid: OK
-Checking whether we can use Linux thread-specific credentials with 32-bit system calls: OK
-Checking whether fcntl locking is available: OK
-Checking for the maximum value of the 'time_t' type: NO
-Checking whether the realpath function allows a NULL argument: OK
-Checking for ftruncate extend: OK
-getcwd takes a NULL argument: OK
-Checking for small off_t: NO
-Checking whether blkcnt_t is 32 bit: NO
-Checking whether blkcnt_t is 64 bit: OK
-Checking whether fcntl lock supports open file description locks: OK
diff --git a/files/waf-cross-answers/cross-answers-i586.txt b/files/waf-cross-answers/cross-answers-i586.txt
deleted file mode 100644
index a5cd998..0000000
--- a/files/waf-cross-answers/cross-answers-i586.txt
+++ /dev/null
@@ -1,40 +0,0 @@
-Checking uname sysname type: "Linux"
-Checking uname version type: "# Wed May 20 10:34:39 UTC 2015"
-Checking simple C program: "hello world"
-rpath library support: OK
--Wl,--version-script support: OK
-Checking getconf LFS_CFLAGS: NO
-Checking correct behavior of strtoll: NO
-Checking for working strptime: OK
-Checking for C99 vsnprintf: "1"
-Checking for HAVE_SHARED_MMAP: OK
-Checking for HAVE_MREMAP: OK
-Checking for HAVE_SECURE_MKSTEMP: OK
-Checking for HAVE_IFACE_GETIFADDRS: NO
-Checking for HAVE_IFACE_IFCONF: NO
-Checking for HAVE_IFACE_IFREQ: NO
-Checking for large file support without additional flags: NO
-Checking for -D_FILE_OFFSET_BITS=64: OK
-Checking for HAVE_INCOHERENT_MMAP: NO
-Checking value of NSIG: "65"
-Checking value of _NSIG: "65"
-Checking value of SIGRTMAX: "64"
-Checking value of SIGRTMIN: "34"
-Checking whether the WRFILE -keytab is supported: OK
-Checking for kernel change notify support: OK
-Checking for Linux kernel oplocks: OK
-Checking for kernel share modes: OK
-Checking whether POSIX capabilities are available: OK
-Checking if can we convert from CP850 to UCS-2LE: OK
-Checking if can we convert from UTF-8 to UCS-2LE: OK
-vfs_fileid checking for statfs() and struct statfs.f_fsid: OK
-Checking whether we can use Linux thread-specific credentials with 32-bit system calls: OK
-Checking whether fcntl locking is available: OK
-Checking for the maximum value of the 'time_t' type: NO
-Checking whether the realpath function allows a NULL argument: OK
-Checking for ftruncate extend: OK
-getcwd takes a NULL argument: OK
-Checking for small off_t: NO
-Checking whether blkcnt_t is 32 bit: NO
-Checking whether blkcnt_t is 64 bit: OK
-Checking whether fcntl lock supports open file description locks: OK
diff --git a/files/waf-cross-answers/cross-answers-i686.txt b/files/waf-cross-answers/cross-answers-i686.txt
deleted file mode 100644
index a5cd998..0000000
--- a/files/waf-cross-answers/cross-answers-i686.txt
+++ /dev/null
@@ -1,40 +0,0 @@
-Checking uname sysname type: "Linux"
-Checking uname version type: "# Wed May 20 10:34:39 UTC 2015"
-Checking simple C program: "hello world"
-rpath library support: OK
--Wl,--version-script support: OK
-Checking getconf LFS_CFLAGS: NO
-Checking correct behavior of strtoll: NO
-Checking for working strptime: OK
-Checking for C99 vsnprintf: "1"
-Checking for HAVE_SHARED_MMAP: OK
-Checking for HAVE_MREMAP: OK
-Checking for HAVE_SECURE_MKSTEMP: OK
-Checking for HAVE_IFACE_GETIFADDRS: NO
-Checking for HAVE_IFACE_IFCONF: NO
-Checking for HAVE_IFACE_IFREQ: NO
-Checking for large file support without additional flags: NO
-Checking for -D_FILE_OFFSET_BITS=64: OK
-Checking for HAVE_INCOHERENT_MMAP: NO
-Checking value of NSIG: "65"
-Checking value of _NSIG: "65"
-Checking value of SIGRTMAX: "64"
-Checking value of SIGRTMIN: "34"
-Checking whether the WRFILE -keytab is supported: OK
-Checking for kernel change notify support: OK
-Checking for Linux kernel oplocks: OK
-Checking for kernel share modes: OK
-Checking whether POSIX capabilities are available: OK
-Checking if can we convert from CP850 to UCS-2LE: OK
-Checking if can we convert from UTF-8 to UCS-2LE: OK
-vfs_fileid checking for statfs() and struct statfs.f_fsid: OK
-Checking whether we can use Linux thread-specific credentials with 32-bit system calls: OK
-Checking whether fcntl locking is available: OK
-Checking for the maximum value of the 'time_t' type: NO
-Checking whether the realpath function allows a NULL argument: OK
-Checking for ftruncate extend: OK
-getcwd takes a NULL argument: OK
-Checking for small off_t: NO
-Checking whether blkcnt_t is 32 bit: NO
-Checking whether blkcnt_t is 64 bit: OK
-Checking whether fcntl lock supports open file description locks: OK
diff --git a/files/waf-cross-answers/cross-answers-mips.txt b/files/waf-cross-answers/cross-answers-mips.txt
deleted file mode 100644
index 3e239e7..0000000
--- a/files/waf-cross-answers/cross-answers-mips.txt
+++ /dev/null
@@ -1,40 +0,0 @@
-Checking uname sysname type: "Linux"
-Checking uname version type: "# Wed May 20 10:34:39 UTC 2015"
-Checking simple C program: "hello world"
-rpath library support: OK
--Wl,--version-script support: OK
-Checking getconf LFS_CFLAGS: NO
-Checking correct behavior of strtoll: NO
-Checking for working strptime: OK
-Checking for C99 vsnprintf: "1"
-Checking for HAVE_SHARED_MMAP: OK
-Checking for HAVE_MREMAP: OK
-Checking for HAVE_SECURE_MKSTEMP: OK
-Checking for HAVE_IFACE_GETIFADDRS: NO
-Checking for HAVE_IFACE_IFCONF: NO
-Checking for HAVE_IFACE_IFREQ: NO
-Checking for large file support without additional flags: NO
-Checking for -D_FILE_OFFSET_BITS=64: OK
-Checking for HAVE_INCOHERENT_MMAP: NO
-Checking value of NSIG: "128"
-Checking value of _NSIG: "128"
-Checking value of SIGRTMAX: "127"
-Checking value of SIGRTMIN: "34"
-Checking whether the WRFILE -keytab is supported: OK
-Checking for kernel change notify support: OK
-Checking for Linux kernel oplocks: OK
-Checking for kernel share modes: OK
-Checking whether POSIX capabilities are available: OK
-Checking if can we convert from CP850 to UCS-2LE: OK
-Checking if can we convert from UTF-8 to UCS-2LE: OK
-vfs_fileid checking for statfs() and struct statfs.f_fsid: OK
-Checking whether we can use Linux thread-specific credentials: OK
-Checking whether fcntl locking is available: OK
-Checking for the maximum value of the 'time_t' type: NO
-Checking whether the realpath function allows a NULL argument: OK
-Checking for ftruncate extend: OK
-getcwd takes a NULL argument: OK
-Checking for small off_t: NO
-Checking whether blkcnt_t is 32 bit: NO
-Checking whether blkcnt_t is 64 bit: OK
-Checking whether fcntl lock supports open file description locks: OK
diff --git a/files/waf-cross-answers/cross-answers-mips64.txt b/files/waf-cross-answers/cross-answers-mips64.txt
deleted file mode 100644
index 82e694f..0000000
--- a/files/waf-cross-answers/cross-answers-mips64.txt
+++ /dev/null
@@ -1,39 +0,0 @@
-Checking uname sysname type: "Linux"
-Checking uname version type: "# Wed May 20 10:34:39 UTC 2015"
-Checking simple C program: "hello world"
-rpath library support: OK
--Wl,--version-script support: OK
-Checking getconf LFS_CFLAGS: NO
-Checking correct behavior of strtoll: NO
-Checking for working strptime: OK
-Checking for C99 vsnprintf: "1"
-Checking for HAVE_SHARED_MMAP: OK
-Checking for HAVE_MREMAP: OK
-Checking for HAVE_SECURE_MKSTEMP: OK
-Checking for HAVE_IFACE_GETIFADDRS: NO
-Checking for HAVE_IFACE_IFCONF: NO
-Checking for HAVE_IFACE_IFREQ: NO
-Checking for large file support without additional flags: OK
-Checking for HAVE_INCOHERENT_MMAP: OK
-Checking value of NSIG: "128"
-Checking value of _NSIG: "128"
-Checking value of SIGRTMAX: "127"
-Checking value of SIGRTMIN: "34"
-Checking whether the WRFILE -keytab is supported: OK
-Checking for kernel change notify support: OK
-Checking for Linux kernel oplocks: OK
-Checking for kernel share modes: OK
-Checking whether POSIX capabilities are available: OK
-Checking if can we convert from CP850 to UCS-2LE: OK
-Checking if can we convert from UTF-8 to UCS-2LE: OK
-vfs_fileid checking for statfs() and struct statfs.f_fsid: OK
-Checking whether we can use Linux thread-specific credentials: OK
-Checking whether fcntl locking is available: OK
-Checking for the maximum value of the 'time_t' type: OK
-Checking whether the realpath function allows a NULL argument: OK
-Checking for ftruncate extend: OK
-getcwd takes a NULL argument: OK
-Checking for small off_t: NO
-Checking whether blkcnt_t is 32 bit: NO
-Checking whether blkcnt_t is 64 bit: OK
-Checking whether fcntl lock supports open file description locks: OK
diff --git a/files/waf-cross-answers/cross-answers-mips64el.txt b/files/waf-cross-answers/cross-answers-mips64el.txt
deleted file mode 100644
index 82e694f..0000000
--- a/files/waf-cross-answers/cross-answers-mips64el.txt
+++ /dev/null
@@ -1,39 +0,0 @@
-Checking uname sysname type: "Linux"
-Checking uname version type: "# Wed May 20 10:34:39 UTC 2015"
-Checking simple C program: "hello world"
-rpath library support: OK
--Wl,--version-script support: OK
-Checking getconf LFS_CFLAGS: NO
-Checking correct behavior of strtoll: NO
-Checking for working strptime: OK
-Checking for C99 vsnprintf: "1"
-Checking for HAVE_SHARED_MMAP: OK
-Checking for HAVE_MREMAP: OK
-Checking for HAVE_SECURE_MKSTEMP: OK
-Checking for HAVE_IFACE_GETIFADDRS: NO
-Checking for HAVE_IFACE_IFCONF: NO
-Checking for HAVE_IFACE_IFREQ: NO
-Checking for large file support without additional flags: OK
-Checking for HAVE_INCOHERENT_MMAP: OK
-Checking value of NSIG: "128"
-Checking value of _NSIG: "128"
-Checking value of SIGRTMAX: "127"
-Checking value of SIGRTMIN: "34"
-Checking whether the WRFILE -keytab is supported: OK
-Checking for kernel change notify support: OK
-Checking for Linux kernel oplocks: OK
-Checking for kernel share modes: OK
-Checking whether POSIX capabilities are available: OK
-Checking if can we convert from CP850 to UCS-2LE: OK
-Checking if can we convert from UTF-8 to UCS-2LE: OK
-vfs_fileid checking for statfs() and struct statfs.f_fsid: OK
-Checking whether we can use Linux thread-specific credentials: OK
-Checking whether fcntl locking is available: OK
-Checking for the maximum value of the 'time_t' type: OK
-Checking whether the realpath function allows a NULL argument: OK
-Checking for ftruncate extend: OK
-getcwd takes a NULL argument: OK
-Checking for small off_t: NO
-Checking whether blkcnt_t is 32 bit: NO
-Checking whether blkcnt_t is 64 bit: OK
-Checking whether fcntl lock supports open file description locks: OK
diff --git a/files/waf-cross-answers/cross-answers-mipsel.txt b/files/waf-cross-answers/cross-answers-mipsel.txt
deleted file mode 100644
index 3e239e7..0000000
--- a/files/waf-cross-answers/cross-answers-mipsel.txt
+++ /dev/null
@@ -1,40 +0,0 @@
-Checking uname sysname type: "Linux"
-Checking uname version type: "# Wed May 20 10:34:39 UTC 2015"
-Checking simple C program: "hello world"
-rpath library support: OK
--Wl,--version-script support: OK
-Checking getconf LFS_CFLAGS: NO
-Checking correct behavior of strtoll: NO
-Checking for working strptime: OK
-Checking for C99 vsnprintf: "1"
-Checking for HAVE_SHARED_MMAP: OK
-Checking for HAVE_MREMAP: OK
-Checking for HAVE_SECURE_MKSTEMP: OK
-Checking for HAVE_IFACE_GETIFADDRS: NO
-Checking for HAVE_IFACE_IFCONF: NO
-Checking for HAVE_IFACE_IFREQ: NO
-Checking for large file support without additional flags: NO
-Checking for -D_FILE_OFFSET_BITS=64: OK
-Checking for HAVE_INCOHERENT_MMAP: NO
-Checking value of NSIG: "128"
-Checking value of _NSIG: "128"
-Checking value of SIGRTMAX: "127"
-Checking value of SIGRTMIN: "34"
-Checking whether the WRFILE -keytab is supported: OK
-Checking for kernel change notify support: OK
-Checking for Linux kernel oplocks: OK
-Checking for kernel share modes: OK
-Checking whether POSIX capabilities are available: OK
-Checking if can we convert from CP850 to UCS-2LE: OK
-Checking if can we convert from UTF-8 to UCS-2LE: OK
-vfs_fileid checking for statfs() and struct statfs.f_fsid: OK
-Checking whether we can use Linux thread-specific credentials: OK
-Checking whether fcntl locking is available: OK
-Checking for the maximum value of the 'time_t' type: NO
-Checking whether the realpath function allows a NULL argument: OK
-Checking for ftruncate extend: OK
-getcwd takes a NULL argument: OK
-Checking for small off_t: NO
-Checking whether blkcnt_t is 32 bit: NO
-Checking whether blkcnt_t is 64 bit: OK
-Checking whether fcntl lock supports open file description locks: OK
diff --git a/files/waf-cross-answers/cross-answers-powerpc.txt b/files/waf-cross-answers/cross-answers-powerpc.txt
deleted file mode 100644
index 27b9378..0000000
--- a/files/waf-cross-answers/cross-answers-powerpc.txt
+++ /dev/null
@@ -1,40 +0,0 @@
-Checking uname sysname type: "Linux"
-Checking uname version type: "# Wed May 20 10:34:39 UTC 2015"
-Checking simple C program: "hello world"
-rpath library support: OK
--Wl,--version-script support: OK
-Checking getconf LFS_CFLAGS: NO
-Checking correct behavior of strtoll: NO
-Checking for working strptime: OK
-Checking for C99 vsnprintf: "1"
-Checking for HAVE_SHARED_MMAP: OK
-Checking for HAVE_MREMAP: OK
-Checking for HAVE_SECURE_MKSTEMP: OK
-Checking for HAVE_IFACE_GETIFADDRS: NO
-Checking for HAVE_IFACE_IFCONF: NO
-Checking for HAVE_IFACE_IFREQ: NO
-Checking for large file support without additional flags: NO
-Checking for -D_FILE_OFFSET_BITS=64: OK
-Checking for HAVE_INCOHERENT_MMAP: NO
-Checking value of NSIG: "65"
-Checking value of _NSIG: "65"
-Checking value of SIGRTMAX: "64"
-Checking value of SIGRTMIN: "34"
-Checking whether the WRFILE -keytab is supported: OK
-Checking for kernel change notify support: OK
-Checking for Linux kernel oplocks: OK
-Checking for kernel share modes: OK
-Checking whether POSIX capabilities are available: OK
-Checking if can we convert from CP850 to UCS-2LE: OK
-Checking if can we convert from UTF-8 to UCS-2LE: OK
-vfs_fileid checking for statfs() and struct statfs.f_fsid: OK
-Checking whether we can use Linux thread-specific credentials: OK
-Checking whether fcntl locking is available: OK
-Checking for the maximum value of the 'time_t' type: NO
-Checking whether the realpath function allows a NULL argument: OK
-Checking for ftruncate extend: OK
-getcwd takes a NULL argument: OK
-Checking for small off_t: NO
-Checking whether blkcnt_t is 32 bit: NO
-Checking whether blkcnt_t is 64 bit: OK
-Checking whether fcntl lock supports open file description locks: OK
diff --git a/files/waf-cross-answers/cross-answers-powerpc64.txt b/files/waf-cross-answers/cross-answers-powerpc64.txt
deleted file mode 100644
index 7fd3092..0000000
--- a/files/waf-cross-answers/cross-answers-powerpc64.txt
+++ /dev/null
@@ -1,40 +0,0 @@
-Checking uname sysname type: "Linux"
-Checking uname version type: "# Wed May 20 10:34:39 UTC 2015"
-Checking simple C program: "hello world"
-rpath library support: OK
--Wl,--version-script support: OK
-Checking getconf LFS_CFLAGS: NO
-Checking correct behavior of strtoll: NO
-Checking for working strptime: OK
-Checking for C99 vsnprintf: "1"
-Checking for HAVE_SHARED_MMAP: OK
-Checking for HAVE_MREMAP: OK
-Checking for HAVE_SECURE_MKSTEMP: OK
-Checking for HAVE_IFACE_GETIFADDRS: NO
-Checking for HAVE_IFACE_IFCONF: NO
-Checking for HAVE_IFACE_IFREQ: NO
-Checking for large file support without additional flags: OK
-Checking for HAVE_INCOHERENT_MMAP: NO
-Checking value of NSIG: "65"
-Checking value of _NSIG: "65"
-Checking value of SIGRTMAX: "64"
-Checking value of SIGRTMIN: "34"
-Checking whether the WRFILE -keytab is supported: OK
-Checking for kernel change notify support: OK
-Checking for Linux kernel oplocks: OK
-Checking for kernel share modes: OK
-Checking whether POSIX capabilities are available: OK
-Checking if can we convert from CP850 to UCS-2LE: (255, "")
-Checking if can we convert from IBM850 to UCS-2LE: (255, "")
-Checking if can we convert from UTF-8 to UCS-2LE: OK
-vfs_fileid checking for statfs() and struct statfs.f_fsid: OK
-Checking whether we can use Linux thread-specific credentials: OK
-Checking whether fcntl locking is available: OK
-Checking for the maximum value of the 'time_t' type: OK
-Checking whether the realpath function allows a NULL argument: OK
-Checking for ftruncate extend: OK
-getcwd takes a NULL argument: OK
-Checking for small off_t: NO
-Checking whether blkcnt_t is 32 bit: NO
-Checking whether blkcnt_t is 64 bit: OK
-Checking whether fcntl lock supports open file description locks: OK
diff --git a/files/waf-cross-answers/cross-answers-riscv64.txt b/files/waf-cross-answers/cross-answers-riscv64.txt
deleted file mode 100644
index 1023f6a..0000000
--- a/files/waf-cross-answers/cross-answers-riscv64.txt
+++ /dev/null
@@ -1,39 +0,0 @@
-Checking uname sysname type: "Linux"
-Checking uname version type: "# Wed May 20 10:34:39 UTC 2015"
-Checking simple C program: "hello world"
-rpath library support: OK
--Wl,--version-script support: OK
-Checking getconf LFS_CFLAGS: NO
-Checking correct behavior of strtoll: NO
-Checking for working strptime: OK
-Checking for C99 vsnprintf: "1"
-Checking for HAVE_SHARED_MMAP: OK
-Checking for HAVE_MREMAP: OK
-Checking for HAVE_SECURE_MKSTEMP: OK
-Checking for HAVE_IFACE_GETIFADDRS: NO
-Checking for HAVE_IFACE_IFCONF: NO
-Checking for HAVE_IFACE_IFREQ: NO
-Checking for large file support without additional flags: OK
-Checking for HAVE_INCOHERENT_MMAP: NO
-Checking value of NSIG: "65"
-Checking value of _NSIG: "65"
-Checking value of SIGRTMAX: "64"
-Checking value of SIGRTMIN: "34"
-Checking whether the WRFILE -keytab is supported: OK
-Checking for kernel change notify support: OK
-Checking for Linux kernel oplocks: OK
-Checking for kernel share modes: OK
-Checking whether POSIX capabilities are available: OK
-Checking if can we convert from CP850 to UCS-2LE: OK
-Checking if can we convert from UTF-8 to UCS-2LE: OK
-vfs_fileid checking for statfs() and struct statfs.f_fsid: OK
-Checking whether we can use Linux thread-specific credentials: OK
-Checking whether fcntl locking is available: OK
-Checking for the maximum value of the 'time_t' type: OK
-Checking whether the realpath function allows a NULL argument: OK
-Checking for ftruncate extend: OK
-getcwd takes a NULL argument: OK
-Checking for small off_t: NO
-Checking whether blkcnt_t is 32 bit: NO
-Checking whether blkcnt_t is 64 bit: OK
-Checking whether fcntl lock supports open file description locks: OK
diff --git a/files/waf-cross-answers/cross-answers-x86_64.txt b/files/waf-cross-answers/cross-answers-x86_64.txt
deleted file mode 100644
index 1023f6a..0000000
--- a/files/waf-cross-answers/cross-answers-x86_64.txt
+++ /dev/null
@@ -1,39 +0,0 @@
-Checking uname sysname type: "Linux"
-Checking uname version type: "# Wed May 20 10:34:39 UTC 2015"
-Checking simple C program: "hello world"
-rpath library support: OK
--Wl,--version-script support: OK
-Checking getconf LFS_CFLAGS: NO
-Checking correct behavior of strtoll: NO
-Checking for working strptime: OK
-Checking for C99 vsnprintf: "1"
-Checking for HAVE_SHARED_MMAP: OK
-Checking for HAVE_MREMAP: OK
-Checking for HAVE_SECURE_MKSTEMP: OK
-Checking for HAVE_IFACE_GETIFADDRS: NO
-Checking for HAVE_IFACE_IFCONF: NO
-Checking for HAVE_IFACE_IFREQ: NO
-Checking for large file support without additional flags: OK
-Checking for HAVE_INCOHERENT_MMAP: NO
-Checking value of NSIG: "65"
-Checking value of _NSIG: "65"
-Checking value of SIGRTMAX: "64"
-Checking value of SIGRTMIN: "34"
-Checking whether the WRFILE -keytab is supported: OK
-Checking for kernel change notify support: OK
-Checking for Linux kernel oplocks: OK
-Checking for kernel share modes: OK
-Checking whether POSIX capabilities are available: OK
-Checking if can we convert from CP850 to UCS-2LE: OK
-Checking if can we convert from UTF-8 to UCS-2LE: OK
-vfs_fileid checking for statfs() and struct statfs.f_fsid: OK
-Checking whether we can use Linux thread-specific credentials: OK
-Checking whether fcntl locking is available: OK
-Checking for the maximum value of the 'time_t' type: OK
-Checking whether the realpath function allows a NULL argument: OK
-Checking for ftruncate extend: OK
-getcwd takes a NULL argument: OK
-Checking for small off_t: NO
-Checking whether blkcnt_t is 32 bit: NO
-Checking whether blkcnt_t is 64 bit: OK
-Checking whether fcntl lock supports open file description locks: OK
-- 
2.7.4


