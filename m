Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90852E00CDF; Sat,  6 Apr 2019 16:37:18 -0700 (PDT)
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
	*      [209.85.215.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
	[209.85.215.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49CA2E00CDF
	for <yocto@yoctoproject.org>; Sat,  6 Apr 2019 16:37:16 -0700 (PDT)
Received: by mail-pg1-f196.google.com with SMTP id k19so5105542pgh.0
	for <yocto@yoctoproject.org>; Sat, 06 Apr 2019 16:37:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=cmN3YT3aQikpxDsGrXvWUoWrv/CpLChZcUhU70FOxeU=;
	b=Snmx86mTxnYHMq3JKIgjUMOJpyroX2GaIJiOVgREJmh3/JsiBCPxFMahdjxv8K/eXp
	h0TJw9/c5pY0/YyEIuQGvIT3K/avQUK2UPttZpRJXuAmFRHbeKincBI/GpN8ehHP0NXV
	EkkjufQNtraIMCvlK0ksKOGkOs9sIls1ccFAGVez4Laq1nk8JzJRYEQ3r7zY2eaSb0K5
	E+qNzxUbWHi/fHUQpIGQvRAgFdw5LiN9C8OEeJRQLKCsdtdYbWsNbdX1uIVaceBjC3XN
	AkHmXGEyDqzFCCPvcDS0Zy5u6lrjHWDud4n9gN5nN6W0XKzhi3RsESS0U49UkSdyzW/l
	yhNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=cmN3YT3aQikpxDsGrXvWUoWrv/CpLChZcUhU70FOxeU=;
	b=EceL2RQ09DWTKygREH10jDKbOpN3HPWg1DmdKvYG4p8rYfoMvloSAg8VnXOCTzqs+/
	zp7FTXcHopHjBeoE6ItPdpcov8186dxVzHonIEqGQk9cgM1EnQL1opCD9Zbmv+kUHXl9
	d3ZsZ87Pb9jqShe72wqxn7x+lT7RmSm5ETBUNlTndv+d/s3pkG6vm20HJ6Vrfu12goIM
	Kb//sWd1QO5lwqKsNm3xBb9lTxbs/TsD5kQpgqqz+A+MeaACsm9tLfoaCYug7XH2L2xh
	ndozZeVDGxgWaYdrV9x0OhVluSfqxjtQGrYbHn7vUtC2E26pADkdZSgw3+54l0IVizWn
	olYg==
X-Gm-Message-State: APjAAAXosgXdeBamQJ0fgtKdh4eN4yiJBP2v3yvAJ2CJzamMejSxNez6
	7OAb3nHO39SrRtI/I+vEyDMXccJ3rBA=
X-Google-Smtp-Source: APXvYqwaNR2dLSFcKqBsCLXqClcmpJSXOIm2O96QWrkZ76JWz5RsnF3yHXg5TZQKxO2GZyWKf7ut3g==
X-Received: by 2002:a62:1a06:: with SMTP id a6mr21297893pfa.18.1554593835239; 
	Sat, 06 Apr 2019 16:37:15 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	n82sm41825487pfi.63.2019.04.06.16.37.14 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 06 Apr 2019 16:37:14 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat,  6 Apr 2019 16:37:11 -0700
Message-Id: <20190406233711.8234-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190406233711.8234-1-akuster808@gmail.com>
References: <20190406233711.8234-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/2] libldb: add waf-cross-answeres
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
X-List-Received-Date: Sat, 06 Apr 2019 23:37:18 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 files/waf-cross-answers/README                |  3 ++
 .../cross-answers-aarch64.txt                 | 39 ++++++++++++++++++
 .../cross-answers-aarch64_be.txt              | 39 ++++++++++++++++++
 files/waf-cross-answers/cross-answers-arm.txt | 40 +++++++++++++++++++
 .../waf-cross-answers/cross-answers-armeb.txt | 40 +++++++++++++++++++
 .../waf-cross-answers/cross-answers-i586.txt  | 40 +++++++++++++++++++
 .../waf-cross-answers/cross-answers-i686.txt  | 40 +++++++++++++++++++
 .../waf-cross-answers/cross-answers-mips.txt  | 40 +++++++++++++++++++
 .../cross-answers-mips64.txt                  | 39 ++++++++++++++++++
 .../cross-answers-mips64el.txt                | 39 ++++++++++++++++++
 .../cross-answers-mipsel.txt                  | 40 +++++++++++++++++++
 .../cross-answers-powerpc.txt                 | 40 +++++++++++++++++++
 .../cross-answers-powerpc64.txt               | 40 +++++++++++++++++++
 .../cross-answers-riscv64.txt                 | 39 ++++++++++++++++++
 .../cross-answers-x86_64.txt                  | 39 ++++++++++++++++++
 15 files changed, 557 insertions(+)
 create mode 100644 files/waf-cross-answers/README
 create mode 100644 files/waf-cross-answers/cross-answers-aarch64.txt
 create mode 100644 files/waf-cross-answers/cross-answers-aarch64_be.txt
 create mode 100644 files/waf-cross-answers/cross-answers-arm.txt
 create mode 100644 files/waf-cross-answers/cross-answers-armeb.txt
 create mode 100644 files/waf-cross-answers/cross-answers-i586.txt
 create mode 100644 files/waf-cross-answers/cross-answers-i686.txt
 create mode 100644 files/waf-cross-answers/cross-answers-mips.txt
 create mode 100644 files/waf-cross-answers/cross-answers-mips64.txt
 create mode 100644 files/waf-cross-answers/cross-answers-mips64el.txt
 create mode 100644 files/waf-cross-answers/cross-answers-mipsel.txt
 create mode 100644 files/waf-cross-answers/cross-answers-powerpc.txt
 create mode 100644 files/waf-cross-answers/cross-answers-powerpc64.txt
 create mode 100644 files/waf-cross-answers/cross-answers-riscv64.txt
 create mode 100644 files/waf-cross-answers/cross-answers-x86_64.txt

diff --git a/files/waf-cross-answers/README b/files/waf-cross-answers/README
new file mode 100644
index 0000000..dda45c5
--- /dev/null
+++ b/files/waf-cross-answers/README
@@ -0,0 +1,3 @@
+The files in this directory are cross answers files
+used by waf-samba.bbclass, please see waf-samba.bbclass
+for details about how they are used.
diff --git a/files/waf-cross-answers/cross-answers-aarch64.txt b/files/waf-cross-answers/cross-answers-aarch64.txt
new file mode 100644
index 0000000..1023f6a
--- /dev/null
+++ b/files/waf-cross-answers/cross-answers-aarch64.txt
@@ -0,0 +1,39 @@
+Checking uname sysname type: "Linux"
+Checking uname version type: "# Wed May 20 10:34:39 UTC 2015"
+Checking simple C program: "hello world"
+rpath library support: OK
+-Wl,--version-script support: OK
+Checking getconf LFS_CFLAGS: NO
+Checking correct behavior of strtoll: NO
+Checking for working strptime: OK
+Checking for C99 vsnprintf: "1"
+Checking for HAVE_SHARED_MMAP: OK
+Checking for HAVE_MREMAP: OK
+Checking for HAVE_SECURE_MKSTEMP: OK
+Checking for HAVE_IFACE_GETIFADDRS: NO
+Checking for HAVE_IFACE_IFCONF: NO
+Checking for HAVE_IFACE_IFREQ: NO
+Checking for large file support without additional flags: OK
+Checking for HAVE_INCOHERENT_MMAP: NO
+Checking value of NSIG: "65"
+Checking value of _NSIG: "65"
+Checking value of SIGRTMAX: "64"
+Checking value of SIGRTMIN: "34"
+Checking whether the WRFILE -keytab is supported: OK
+Checking for kernel change notify support: OK
+Checking for Linux kernel oplocks: OK
+Checking for kernel share modes: OK
+Checking whether POSIX capabilities are available: OK
+Checking if can we convert from CP850 to UCS-2LE: OK
+Checking if can we convert from UTF-8 to UCS-2LE: OK
+vfs_fileid checking for statfs() and struct statfs.f_fsid: OK
+Checking whether we can use Linux thread-specific credentials: OK
+Checking whether fcntl locking is available: OK
+Checking for the maximum value of the 'time_t' type: OK
+Checking whether the realpath function allows a NULL argument: OK
+Checking for ftruncate extend: OK
+getcwd takes a NULL argument: OK
+Checking for small off_t: NO
+Checking whether blkcnt_t is 32 bit: NO
+Checking whether blkcnt_t is 64 bit: OK
+Checking whether fcntl lock supports open file description locks: OK
diff --git a/files/waf-cross-answers/cross-answers-aarch64_be.txt b/files/waf-cross-answers/cross-answers-aarch64_be.txt
new file mode 100644
index 0000000..1023f6a
--- /dev/null
+++ b/files/waf-cross-answers/cross-answers-aarch64_be.txt
@@ -0,0 +1,39 @@
+Checking uname sysname type: "Linux"
+Checking uname version type: "# Wed May 20 10:34:39 UTC 2015"
+Checking simple C program: "hello world"
+rpath library support: OK
+-Wl,--version-script support: OK
+Checking getconf LFS_CFLAGS: NO
+Checking correct behavior of strtoll: NO
+Checking for working strptime: OK
+Checking for C99 vsnprintf: "1"
+Checking for HAVE_SHARED_MMAP: OK
+Checking for HAVE_MREMAP: OK
+Checking for HAVE_SECURE_MKSTEMP: OK
+Checking for HAVE_IFACE_GETIFADDRS: NO
+Checking for HAVE_IFACE_IFCONF: NO
+Checking for HAVE_IFACE_IFREQ: NO
+Checking for large file support without additional flags: OK
+Checking for HAVE_INCOHERENT_MMAP: NO
+Checking value of NSIG: "65"
+Checking value of _NSIG: "65"
+Checking value of SIGRTMAX: "64"
+Checking value of SIGRTMIN: "34"
+Checking whether the WRFILE -keytab is supported: OK
+Checking for kernel change notify support: OK
+Checking for Linux kernel oplocks: OK
+Checking for kernel share modes: OK
+Checking whether POSIX capabilities are available: OK
+Checking if can we convert from CP850 to UCS-2LE: OK
+Checking if can we convert from UTF-8 to UCS-2LE: OK
+vfs_fileid checking for statfs() and struct statfs.f_fsid: OK
+Checking whether we can use Linux thread-specific credentials: OK
+Checking whether fcntl locking is available: OK
+Checking for the maximum value of the 'time_t' type: OK
+Checking whether the realpath function allows a NULL argument: OK
+Checking for ftruncate extend: OK
+getcwd takes a NULL argument: OK
+Checking for small off_t: NO
+Checking whether blkcnt_t is 32 bit: NO
+Checking whether blkcnt_t is 64 bit: OK
+Checking whether fcntl lock supports open file description locks: OK
diff --git a/files/waf-cross-answers/cross-answers-arm.txt b/files/waf-cross-answers/cross-answers-arm.txt
new file mode 100644
index 0000000..a5cd998
--- /dev/null
+++ b/files/waf-cross-answers/cross-answers-arm.txt
@@ -0,0 +1,40 @@
+Checking uname sysname type: "Linux"
+Checking uname version type: "# Wed May 20 10:34:39 UTC 2015"
+Checking simple C program: "hello world"
+rpath library support: OK
+-Wl,--version-script support: OK
+Checking getconf LFS_CFLAGS: NO
+Checking correct behavior of strtoll: NO
+Checking for working strptime: OK
+Checking for C99 vsnprintf: "1"
+Checking for HAVE_SHARED_MMAP: OK
+Checking for HAVE_MREMAP: OK
+Checking for HAVE_SECURE_MKSTEMP: OK
+Checking for HAVE_IFACE_GETIFADDRS: NO
+Checking for HAVE_IFACE_IFCONF: NO
+Checking for HAVE_IFACE_IFREQ: NO
+Checking for large file support without additional flags: NO
+Checking for -D_FILE_OFFSET_BITS=64: OK
+Checking for HAVE_INCOHERENT_MMAP: NO
+Checking value of NSIG: "65"
+Checking value of _NSIG: "65"
+Checking value of SIGRTMAX: "64"
+Checking value of SIGRTMIN: "34"
+Checking whether the WRFILE -keytab is supported: OK
+Checking for kernel change notify support: OK
+Checking for Linux kernel oplocks: OK
+Checking for kernel share modes: OK
+Checking whether POSIX capabilities are available: OK
+Checking if can we convert from CP850 to UCS-2LE: OK
+Checking if can we convert from UTF-8 to UCS-2LE: OK
+vfs_fileid checking for statfs() and struct statfs.f_fsid: OK
+Checking whether we can use Linux thread-specific credentials with 32-bit system calls: OK
+Checking whether fcntl locking is available: OK
+Checking for the maximum value of the 'time_t' type: NO
+Checking whether the realpath function allows a NULL argument: OK
+Checking for ftruncate extend: OK
+getcwd takes a NULL argument: OK
+Checking for small off_t: NO
+Checking whether blkcnt_t is 32 bit: NO
+Checking whether blkcnt_t is 64 bit: OK
+Checking whether fcntl lock supports open file description locks: OK
diff --git a/files/waf-cross-answers/cross-answers-armeb.txt b/files/waf-cross-answers/cross-answers-armeb.txt
new file mode 100644
index 0000000..a5cd998
--- /dev/null
+++ b/files/waf-cross-answers/cross-answers-armeb.txt
@@ -0,0 +1,40 @@
+Checking uname sysname type: "Linux"
+Checking uname version type: "# Wed May 20 10:34:39 UTC 2015"
+Checking simple C program: "hello world"
+rpath library support: OK
+-Wl,--version-script support: OK
+Checking getconf LFS_CFLAGS: NO
+Checking correct behavior of strtoll: NO
+Checking for working strptime: OK
+Checking for C99 vsnprintf: "1"
+Checking for HAVE_SHARED_MMAP: OK
+Checking for HAVE_MREMAP: OK
+Checking for HAVE_SECURE_MKSTEMP: OK
+Checking for HAVE_IFACE_GETIFADDRS: NO
+Checking for HAVE_IFACE_IFCONF: NO
+Checking for HAVE_IFACE_IFREQ: NO
+Checking for large file support without additional flags: NO
+Checking for -D_FILE_OFFSET_BITS=64: OK
+Checking for HAVE_INCOHERENT_MMAP: NO
+Checking value of NSIG: "65"
+Checking value of _NSIG: "65"
+Checking value of SIGRTMAX: "64"
+Checking value of SIGRTMIN: "34"
+Checking whether the WRFILE -keytab is supported: OK
+Checking for kernel change notify support: OK
+Checking for Linux kernel oplocks: OK
+Checking for kernel share modes: OK
+Checking whether POSIX capabilities are available: OK
+Checking if can we convert from CP850 to UCS-2LE: OK
+Checking if can we convert from UTF-8 to UCS-2LE: OK
+vfs_fileid checking for statfs() and struct statfs.f_fsid: OK
+Checking whether we can use Linux thread-specific credentials with 32-bit system calls: OK
+Checking whether fcntl locking is available: OK
+Checking for the maximum value of the 'time_t' type: NO
+Checking whether the realpath function allows a NULL argument: OK
+Checking for ftruncate extend: OK
+getcwd takes a NULL argument: OK
+Checking for small off_t: NO
+Checking whether blkcnt_t is 32 bit: NO
+Checking whether blkcnt_t is 64 bit: OK
+Checking whether fcntl lock supports open file description locks: OK
diff --git a/files/waf-cross-answers/cross-answers-i586.txt b/files/waf-cross-answers/cross-answers-i586.txt
new file mode 100644
index 0000000..a5cd998
--- /dev/null
+++ b/files/waf-cross-answers/cross-answers-i586.txt
@@ -0,0 +1,40 @@
+Checking uname sysname type: "Linux"
+Checking uname version type: "# Wed May 20 10:34:39 UTC 2015"
+Checking simple C program: "hello world"
+rpath library support: OK
+-Wl,--version-script support: OK
+Checking getconf LFS_CFLAGS: NO
+Checking correct behavior of strtoll: NO
+Checking for working strptime: OK
+Checking for C99 vsnprintf: "1"
+Checking for HAVE_SHARED_MMAP: OK
+Checking for HAVE_MREMAP: OK
+Checking for HAVE_SECURE_MKSTEMP: OK
+Checking for HAVE_IFACE_GETIFADDRS: NO
+Checking for HAVE_IFACE_IFCONF: NO
+Checking for HAVE_IFACE_IFREQ: NO
+Checking for large file support without additional flags: NO
+Checking for -D_FILE_OFFSET_BITS=64: OK
+Checking for HAVE_INCOHERENT_MMAP: NO
+Checking value of NSIG: "65"
+Checking value of _NSIG: "65"
+Checking value of SIGRTMAX: "64"
+Checking value of SIGRTMIN: "34"
+Checking whether the WRFILE -keytab is supported: OK
+Checking for kernel change notify support: OK
+Checking for Linux kernel oplocks: OK
+Checking for kernel share modes: OK
+Checking whether POSIX capabilities are available: OK
+Checking if can we convert from CP850 to UCS-2LE: OK
+Checking if can we convert from UTF-8 to UCS-2LE: OK
+vfs_fileid checking for statfs() and struct statfs.f_fsid: OK
+Checking whether we can use Linux thread-specific credentials with 32-bit system calls: OK
+Checking whether fcntl locking is available: OK
+Checking for the maximum value of the 'time_t' type: NO
+Checking whether the realpath function allows a NULL argument: OK
+Checking for ftruncate extend: OK
+getcwd takes a NULL argument: OK
+Checking for small off_t: NO
+Checking whether blkcnt_t is 32 bit: NO
+Checking whether blkcnt_t is 64 bit: OK
+Checking whether fcntl lock supports open file description locks: OK
diff --git a/files/waf-cross-answers/cross-answers-i686.txt b/files/waf-cross-answers/cross-answers-i686.txt
new file mode 100644
index 0000000..a5cd998
--- /dev/null
+++ b/files/waf-cross-answers/cross-answers-i686.txt
@@ -0,0 +1,40 @@
+Checking uname sysname type: "Linux"
+Checking uname version type: "# Wed May 20 10:34:39 UTC 2015"
+Checking simple C program: "hello world"
+rpath library support: OK
+-Wl,--version-script support: OK
+Checking getconf LFS_CFLAGS: NO
+Checking correct behavior of strtoll: NO
+Checking for working strptime: OK
+Checking for C99 vsnprintf: "1"
+Checking for HAVE_SHARED_MMAP: OK
+Checking for HAVE_MREMAP: OK
+Checking for HAVE_SECURE_MKSTEMP: OK
+Checking for HAVE_IFACE_GETIFADDRS: NO
+Checking for HAVE_IFACE_IFCONF: NO
+Checking for HAVE_IFACE_IFREQ: NO
+Checking for large file support without additional flags: NO
+Checking for -D_FILE_OFFSET_BITS=64: OK
+Checking for HAVE_INCOHERENT_MMAP: NO
+Checking value of NSIG: "65"
+Checking value of _NSIG: "65"
+Checking value of SIGRTMAX: "64"
+Checking value of SIGRTMIN: "34"
+Checking whether the WRFILE -keytab is supported: OK
+Checking for kernel change notify support: OK
+Checking for Linux kernel oplocks: OK
+Checking for kernel share modes: OK
+Checking whether POSIX capabilities are available: OK
+Checking if can we convert from CP850 to UCS-2LE: OK
+Checking if can we convert from UTF-8 to UCS-2LE: OK
+vfs_fileid checking for statfs() and struct statfs.f_fsid: OK
+Checking whether we can use Linux thread-specific credentials with 32-bit system calls: OK
+Checking whether fcntl locking is available: OK
+Checking for the maximum value of the 'time_t' type: NO
+Checking whether the realpath function allows a NULL argument: OK
+Checking for ftruncate extend: OK
+getcwd takes a NULL argument: OK
+Checking for small off_t: NO
+Checking whether blkcnt_t is 32 bit: NO
+Checking whether blkcnt_t is 64 bit: OK
+Checking whether fcntl lock supports open file description locks: OK
diff --git a/files/waf-cross-answers/cross-answers-mips.txt b/files/waf-cross-answers/cross-answers-mips.txt
new file mode 100644
index 0000000..3e239e7
--- /dev/null
+++ b/files/waf-cross-answers/cross-answers-mips.txt
@@ -0,0 +1,40 @@
+Checking uname sysname type: "Linux"
+Checking uname version type: "# Wed May 20 10:34:39 UTC 2015"
+Checking simple C program: "hello world"
+rpath library support: OK
+-Wl,--version-script support: OK
+Checking getconf LFS_CFLAGS: NO
+Checking correct behavior of strtoll: NO
+Checking for working strptime: OK
+Checking for C99 vsnprintf: "1"
+Checking for HAVE_SHARED_MMAP: OK
+Checking for HAVE_MREMAP: OK
+Checking for HAVE_SECURE_MKSTEMP: OK
+Checking for HAVE_IFACE_GETIFADDRS: NO
+Checking for HAVE_IFACE_IFCONF: NO
+Checking for HAVE_IFACE_IFREQ: NO
+Checking for large file support without additional flags: NO
+Checking for -D_FILE_OFFSET_BITS=64: OK
+Checking for HAVE_INCOHERENT_MMAP: NO
+Checking value of NSIG: "128"
+Checking value of _NSIG: "128"
+Checking value of SIGRTMAX: "127"
+Checking value of SIGRTMIN: "34"
+Checking whether the WRFILE -keytab is supported: OK
+Checking for kernel change notify support: OK
+Checking for Linux kernel oplocks: OK
+Checking for kernel share modes: OK
+Checking whether POSIX capabilities are available: OK
+Checking if can we convert from CP850 to UCS-2LE: OK
+Checking if can we convert from UTF-8 to UCS-2LE: OK
+vfs_fileid checking for statfs() and struct statfs.f_fsid: OK
+Checking whether we can use Linux thread-specific credentials: OK
+Checking whether fcntl locking is available: OK
+Checking for the maximum value of the 'time_t' type: NO
+Checking whether the realpath function allows a NULL argument: OK
+Checking for ftruncate extend: OK
+getcwd takes a NULL argument: OK
+Checking for small off_t: NO
+Checking whether blkcnt_t is 32 bit: NO
+Checking whether blkcnt_t is 64 bit: OK
+Checking whether fcntl lock supports open file description locks: OK
diff --git a/files/waf-cross-answers/cross-answers-mips64.txt b/files/waf-cross-answers/cross-answers-mips64.txt
new file mode 100644
index 0000000..82e694f
--- /dev/null
+++ b/files/waf-cross-answers/cross-answers-mips64.txt
@@ -0,0 +1,39 @@
+Checking uname sysname type: "Linux"
+Checking uname version type: "# Wed May 20 10:34:39 UTC 2015"
+Checking simple C program: "hello world"
+rpath library support: OK
+-Wl,--version-script support: OK
+Checking getconf LFS_CFLAGS: NO
+Checking correct behavior of strtoll: NO
+Checking for working strptime: OK
+Checking for C99 vsnprintf: "1"
+Checking for HAVE_SHARED_MMAP: OK
+Checking for HAVE_MREMAP: OK
+Checking for HAVE_SECURE_MKSTEMP: OK
+Checking for HAVE_IFACE_GETIFADDRS: NO
+Checking for HAVE_IFACE_IFCONF: NO
+Checking for HAVE_IFACE_IFREQ: NO
+Checking for large file support without additional flags: OK
+Checking for HAVE_INCOHERENT_MMAP: OK
+Checking value of NSIG: "128"
+Checking value of _NSIG: "128"
+Checking value of SIGRTMAX: "127"
+Checking value of SIGRTMIN: "34"
+Checking whether the WRFILE -keytab is supported: OK
+Checking for kernel change notify support: OK
+Checking for Linux kernel oplocks: OK
+Checking for kernel share modes: OK
+Checking whether POSIX capabilities are available: OK
+Checking if can we convert from CP850 to UCS-2LE: OK
+Checking if can we convert from UTF-8 to UCS-2LE: OK
+vfs_fileid checking for statfs() and struct statfs.f_fsid: OK
+Checking whether we can use Linux thread-specific credentials: OK
+Checking whether fcntl locking is available: OK
+Checking for the maximum value of the 'time_t' type: OK
+Checking whether the realpath function allows a NULL argument: OK
+Checking for ftruncate extend: OK
+getcwd takes a NULL argument: OK
+Checking for small off_t: NO
+Checking whether blkcnt_t is 32 bit: NO
+Checking whether blkcnt_t is 64 bit: OK
+Checking whether fcntl lock supports open file description locks: OK
diff --git a/files/waf-cross-answers/cross-answers-mips64el.txt b/files/waf-cross-answers/cross-answers-mips64el.txt
new file mode 100644
index 0000000..82e694f
--- /dev/null
+++ b/files/waf-cross-answers/cross-answers-mips64el.txt
@@ -0,0 +1,39 @@
+Checking uname sysname type: "Linux"
+Checking uname version type: "# Wed May 20 10:34:39 UTC 2015"
+Checking simple C program: "hello world"
+rpath library support: OK
+-Wl,--version-script support: OK
+Checking getconf LFS_CFLAGS: NO
+Checking correct behavior of strtoll: NO
+Checking for working strptime: OK
+Checking for C99 vsnprintf: "1"
+Checking for HAVE_SHARED_MMAP: OK
+Checking for HAVE_MREMAP: OK
+Checking for HAVE_SECURE_MKSTEMP: OK
+Checking for HAVE_IFACE_GETIFADDRS: NO
+Checking for HAVE_IFACE_IFCONF: NO
+Checking for HAVE_IFACE_IFREQ: NO
+Checking for large file support without additional flags: OK
+Checking for HAVE_INCOHERENT_MMAP: OK
+Checking value of NSIG: "128"
+Checking value of _NSIG: "128"
+Checking value of SIGRTMAX: "127"
+Checking value of SIGRTMIN: "34"
+Checking whether the WRFILE -keytab is supported: OK
+Checking for kernel change notify support: OK
+Checking for Linux kernel oplocks: OK
+Checking for kernel share modes: OK
+Checking whether POSIX capabilities are available: OK
+Checking if can we convert from CP850 to UCS-2LE: OK
+Checking if can we convert from UTF-8 to UCS-2LE: OK
+vfs_fileid checking for statfs() and struct statfs.f_fsid: OK
+Checking whether we can use Linux thread-specific credentials: OK
+Checking whether fcntl locking is available: OK
+Checking for the maximum value of the 'time_t' type: OK
+Checking whether the realpath function allows a NULL argument: OK
+Checking for ftruncate extend: OK
+getcwd takes a NULL argument: OK
+Checking for small off_t: NO
+Checking whether blkcnt_t is 32 bit: NO
+Checking whether blkcnt_t is 64 bit: OK
+Checking whether fcntl lock supports open file description locks: OK
diff --git a/files/waf-cross-answers/cross-answers-mipsel.txt b/files/waf-cross-answers/cross-answers-mipsel.txt
new file mode 100644
index 0000000..3e239e7
--- /dev/null
+++ b/files/waf-cross-answers/cross-answers-mipsel.txt
@@ -0,0 +1,40 @@
+Checking uname sysname type: "Linux"
+Checking uname version type: "# Wed May 20 10:34:39 UTC 2015"
+Checking simple C program: "hello world"
+rpath library support: OK
+-Wl,--version-script support: OK
+Checking getconf LFS_CFLAGS: NO
+Checking correct behavior of strtoll: NO
+Checking for working strptime: OK
+Checking for C99 vsnprintf: "1"
+Checking for HAVE_SHARED_MMAP: OK
+Checking for HAVE_MREMAP: OK
+Checking for HAVE_SECURE_MKSTEMP: OK
+Checking for HAVE_IFACE_GETIFADDRS: NO
+Checking for HAVE_IFACE_IFCONF: NO
+Checking for HAVE_IFACE_IFREQ: NO
+Checking for large file support without additional flags: NO
+Checking for -D_FILE_OFFSET_BITS=64: OK
+Checking for HAVE_INCOHERENT_MMAP: NO
+Checking value of NSIG: "128"
+Checking value of _NSIG: "128"
+Checking value of SIGRTMAX: "127"
+Checking value of SIGRTMIN: "34"
+Checking whether the WRFILE -keytab is supported: OK
+Checking for kernel change notify support: OK
+Checking for Linux kernel oplocks: OK
+Checking for kernel share modes: OK
+Checking whether POSIX capabilities are available: OK
+Checking if can we convert from CP850 to UCS-2LE: OK
+Checking if can we convert from UTF-8 to UCS-2LE: OK
+vfs_fileid checking for statfs() and struct statfs.f_fsid: OK
+Checking whether we can use Linux thread-specific credentials: OK
+Checking whether fcntl locking is available: OK
+Checking for the maximum value of the 'time_t' type: NO
+Checking whether the realpath function allows a NULL argument: OK
+Checking for ftruncate extend: OK
+getcwd takes a NULL argument: OK
+Checking for small off_t: NO
+Checking whether blkcnt_t is 32 bit: NO
+Checking whether blkcnt_t is 64 bit: OK
+Checking whether fcntl lock supports open file description locks: OK
diff --git a/files/waf-cross-answers/cross-answers-powerpc.txt b/files/waf-cross-answers/cross-answers-powerpc.txt
new file mode 100644
index 0000000..27b9378
--- /dev/null
+++ b/files/waf-cross-answers/cross-answers-powerpc.txt
@@ -0,0 +1,40 @@
+Checking uname sysname type: "Linux"
+Checking uname version type: "# Wed May 20 10:34:39 UTC 2015"
+Checking simple C program: "hello world"
+rpath library support: OK
+-Wl,--version-script support: OK
+Checking getconf LFS_CFLAGS: NO
+Checking correct behavior of strtoll: NO
+Checking for working strptime: OK
+Checking for C99 vsnprintf: "1"
+Checking for HAVE_SHARED_MMAP: OK
+Checking for HAVE_MREMAP: OK
+Checking for HAVE_SECURE_MKSTEMP: OK
+Checking for HAVE_IFACE_GETIFADDRS: NO
+Checking for HAVE_IFACE_IFCONF: NO
+Checking for HAVE_IFACE_IFREQ: NO
+Checking for large file support without additional flags: NO
+Checking for -D_FILE_OFFSET_BITS=64: OK
+Checking for HAVE_INCOHERENT_MMAP: NO
+Checking value of NSIG: "65"
+Checking value of _NSIG: "65"
+Checking value of SIGRTMAX: "64"
+Checking value of SIGRTMIN: "34"
+Checking whether the WRFILE -keytab is supported: OK
+Checking for kernel change notify support: OK
+Checking for Linux kernel oplocks: OK
+Checking for kernel share modes: OK
+Checking whether POSIX capabilities are available: OK
+Checking if can we convert from CP850 to UCS-2LE: OK
+Checking if can we convert from UTF-8 to UCS-2LE: OK
+vfs_fileid checking for statfs() and struct statfs.f_fsid: OK
+Checking whether we can use Linux thread-specific credentials: OK
+Checking whether fcntl locking is available: OK
+Checking for the maximum value of the 'time_t' type: NO
+Checking whether the realpath function allows a NULL argument: OK
+Checking for ftruncate extend: OK
+getcwd takes a NULL argument: OK
+Checking for small off_t: NO
+Checking whether blkcnt_t is 32 bit: NO
+Checking whether blkcnt_t is 64 bit: OK
+Checking whether fcntl lock supports open file description locks: OK
diff --git a/files/waf-cross-answers/cross-answers-powerpc64.txt b/files/waf-cross-answers/cross-answers-powerpc64.txt
new file mode 100644
index 0000000..7fd3092
--- /dev/null
+++ b/files/waf-cross-answers/cross-answers-powerpc64.txt
@@ -0,0 +1,40 @@
+Checking uname sysname type: "Linux"
+Checking uname version type: "# Wed May 20 10:34:39 UTC 2015"
+Checking simple C program: "hello world"
+rpath library support: OK
+-Wl,--version-script support: OK
+Checking getconf LFS_CFLAGS: NO
+Checking correct behavior of strtoll: NO
+Checking for working strptime: OK
+Checking for C99 vsnprintf: "1"
+Checking for HAVE_SHARED_MMAP: OK
+Checking for HAVE_MREMAP: OK
+Checking for HAVE_SECURE_MKSTEMP: OK
+Checking for HAVE_IFACE_GETIFADDRS: NO
+Checking for HAVE_IFACE_IFCONF: NO
+Checking for HAVE_IFACE_IFREQ: NO
+Checking for large file support without additional flags: OK
+Checking for HAVE_INCOHERENT_MMAP: NO
+Checking value of NSIG: "65"
+Checking value of _NSIG: "65"
+Checking value of SIGRTMAX: "64"
+Checking value of SIGRTMIN: "34"
+Checking whether the WRFILE -keytab is supported: OK
+Checking for kernel change notify support: OK
+Checking for Linux kernel oplocks: OK
+Checking for kernel share modes: OK
+Checking whether POSIX capabilities are available: OK
+Checking if can we convert from CP850 to UCS-2LE: (255, "")
+Checking if can we convert from IBM850 to UCS-2LE: (255, "")
+Checking if can we convert from UTF-8 to UCS-2LE: OK
+vfs_fileid checking for statfs() and struct statfs.f_fsid: OK
+Checking whether we can use Linux thread-specific credentials: OK
+Checking whether fcntl locking is available: OK
+Checking for the maximum value of the 'time_t' type: OK
+Checking whether the realpath function allows a NULL argument: OK
+Checking for ftruncate extend: OK
+getcwd takes a NULL argument: OK
+Checking for small off_t: NO
+Checking whether blkcnt_t is 32 bit: NO
+Checking whether blkcnt_t is 64 bit: OK
+Checking whether fcntl lock supports open file description locks: OK
diff --git a/files/waf-cross-answers/cross-answers-riscv64.txt b/files/waf-cross-answers/cross-answers-riscv64.txt
new file mode 100644
index 0000000..1023f6a
--- /dev/null
+++ b/files/waf-cross-answers/cross-answers-riscv64.txt
@@ -0,0 +1,39 @@
+Checking uname sysname type: "Linux"
+Checking uname version type: "# Wed May 20 10:34:39 UTC 2015"
+Checking simple C program: "hello world"
+rpath library support: OK
+-Wl,--version-script support: OK
+Checking getconf LFS_CFLAGS: NO
+Checking correct behavior of strtoll: NO
+Checking for working strptime: OK
+Checking for C99 vsnprintf: "1"
+Checking for HAVE_SHARED_MMAP: OK
+Checking for HAVE_MREMAP: OK
+Checking for HAVE_SECURE_MKSTEMP: OK
+Checking for HAVE_IFACE_GETIFADDRS: NO
+Checking for HAVE_IFACE_IFCONF: NO
+Checking for HAVE_IFACE_IFREQ: NO
+Checking for large file support without additional flags: OK
+Checking for HAVE_INCOHERENT_MMAP: NO
+Checking value of NSIG: "65"
+Checking value of _NSIG: "65"
+Checking value of SIGRTMAX: "64"
+Checking value of SIGRTMIN: "34"
+Checking whether the WRFILE -keytab is supported: OK
+Checking for kernel change notify support: OK
+Checking for Linux kernel oplocks: OK
+Checking for kernel share modes: OK
+Checking whether POSIX capabilities are available: OK
+Checking if can we convert from CP850 to UCS-2LE: OK
+Checking if can we convert from UTF-8 to UCS-2LE: OK
+vfs_fileid checking for statfs() and struct statfs.f_fsid: OK
+Checking whether we can use Linux thread-specific credentials: OK
+Checking whether fcntl locking is available: OK
+Checking for the maximum value of the 'time_t' type: OK
+Checking whether the realpath function allows a NULL argument: OK
+Checking for ftruncate extend: OK
+getcwd takes a NULL argument: OK
+Checking for small off_t: NO
+Checking whether blkcnt_t is 32 bit: NO
+Checking whether blkcnt_t is 64 bit: OK
+Checking whether fcntl lock supports open file description locks: OK
diff --git a/files/waf-cross-answers/cross-answers-x86_64.txt b/files/waf-cross-answers/cross-answers-x86_64.txt
new file mode 100644
index 0000000..1023f6a
--- /dev/null
+++ b/files/waf-cross-answers/cross-answers-x86_64.txt
@@ -0,0 +1,39 @@
+Checking uname sysname type: "Linux"
+Checking uname version type: "# Wed May 20 10:34:39 UTC 2015"
+Checking simple C program: "hello world"
+rpath library support: OK
+-Wl,--version-script support: OK
+Checking getconf LFS_CFLAGS: NO
+Checking correct behavior of strtoll: NO
+Checking for working strptime: OK
+Checking for C99 vsnprintf: "1"
+Checking for HAVE_SHARED_MMAP: OK
+Checking for HAVE_MREMAP: OK
+Checking for HAVE_SECURE_MKSTEMP: OK
+Checking for HAVE_IFACE_GETIFADDRS: NO
+Checking for HAVE_IFACE_IFCONF: NO
+Checking for HAVE_IFACE_IFREQ: NO
+Checking for large file support without additional flags: OK
+Checking for HAVE_INCOHERENT_MMAP: NO
+Checking value of NSIG: "65"
+Checking value of _NSIG: "65"
+Checking value of SIGRTMAX: "64"
+Checking value of SIGRTMIN: "34"
+Checking whether the WRFILE -keytab is supported: OK
+Checking for kernel change notify support: OK
+Checking for Linux kernel oplocks: OK
+Checking for kernel share modes: OK
+Checking whether POSIX capabilities are available: OK
+Checking if can we convert from CP850 to UCS-2LE: OK
+Checking if can we convert from UTF-8 to UCS-2LE: OK
+vfs_fileid checking for statfs() and struct statfs.f_fsid: OK
+Checking whether we can use Linux thread-specific credentials: OK
+Checking whether fcntl locking is available: OK
+Checking for the maximum value of the 'time_t' type: OK
+Checking whether the realpath function allows a NULL argument: OK
+Checking for ftruncate extend: OK
+getcwd takes a NULL argument: OK
+Checking for small off_t: NO
+Checking whether blkcnt_t is 32 bit: NO
+Checking whether blkcnt_t is 64 bit: OK
+Checking whether fcntl lock supports open file description locks: OK
-- 
2.17.1


