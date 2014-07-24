Return-Path: <maxim.radugin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D471E0078E; Thu, 24 Jul 2014 01:55:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (maxim.radugin[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-we0-f173.google.com (mail-we0-f173.google.com
	[74.125.82.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B87F0E006B7
	for <yocto@yoctoproject.org>; Thu, 24 Jul 2014 01:55:38 -0700 (PDT)
Received: by mail-we0-f173.google.com with SMTP id q58so2427900wes.4
	for <yocto@yoctoproject.org>; Thu, 24 Jul 2014 01:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=HXReRTMlPI0rxztOn8cwKqrrFUU4kT3X3bl95g32PVk=;
	b=GGIpMf+vkeyvM0z/r1CXCeUkMWjRoYxfkvvZHrPvwXQg8YzFHIBZXgahV98prnBcrg
	tvL0v/Hi5w/yXdaK/9T0PBMWIOtIpg/6S0NYNYqAE6BLlhssQgJA/uFHbXPtBu4RC1iu
	0iSzaQr5II6GdtcceXJB74hB+QeWTmN9cJKBCUHZLeIOKFHXSLiM0+NtzNTdOSdp11pB
	gJrnAus7hB+4OTOw0sdWmeQxsp91cCnpoRmxTPWQskdJgrp4eF8rCQwgQ8RkC3uSfq92
	8+u2tj7ghEC7GZynjsVNnPzhhMLKHyaysHsOjBq4Qqo5GQOMJjpKpMF8PlTwcuDyLDjG
	9n6g==
MIME-Version: 1.0
X-Received: by 10.180.212.12 with SMTP id ng12mr11062785wic.9.1406192138055;
	Thu, 24 Jul 2014 01:55:38 -0700 (PDT)
Received: by 10.194.136.12 with HTTP; Thu, 24 Jul 2014 01:55:38 -0700 (PDT)
In-Reply-To: <4F1B91CF7B31604FABE8442530201B78122055CD@ALPURAPA22.e2k.ad.ge.com>
References: <4F1B91CF7B31604FABE8442530201B78122055CD@ALPURAPA22.e2k.ad.ge.com>
Date: Thu, 24 Jul 2014 11:55:38 +0300
Message-ID: <CABWuD8f_QrDhNSmy03cfE01J_NgDJb5MsE3MZKEKxaUL3R2oFQ@mail.gmail.com>
From: Maxim Radugin <maxim.radugin@gmail.com>
To: "Wenholz, Brian (GE Healthcare)" <Brian.Wenholz@med.ge.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: What kernel configs are needed for using DM_CRYPT with cryptsetup?
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
X-List-Received-Date: Thu, 24 Jul 2014 08:55:46 -0000
Content-Type: multipart/alternative; boundary=001a11c35470dff39104feec9ea6

--001a11c35470dff39104feec9ea6
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Brian,

You have to enable CONFIG_DM_CRYPT and CONFIG_BLK_DEV_DM in kernel;
Also make sure you have corresponding CONFIG_CRYPTO* enabled. And, if
compiled as modules, make sure that modules are loaded before running
cryptsetup during runtime

See https://code.google.com/p/cryptsetup/wiki for more info.

BR,
Maxim.


On Fri, Jul 18, 2014 at 11:31 PM, Wenholz, Brian (GE Healthcare) <
Brian.Wenholz@med.ge.com> wrote:

>  All,
>
>
>
> I have been struggling to get this working. I intend to use an encrypted
> loop device during runtime (not at boot time). I have included the meta-o=
e
> cryptsetup recipe (V1.6.2) and am trying to =E2=80=9Ccreate=E2=80=9D (or =
open) the loop
> file on my Yocto system.
>
>
>
> The basic attempt is:
>
>
>
> head -c 100M /dev/zero > test
>
> cryptsetup create t1  test
>
>
>
> The passphrase is requested and then cryptsetup hangs. Strace reveals tha=
t
> cryptsetup is hanging on a kernel semaphore that never returns, but I hav=
e
> been unable to decipher (pun intended) what the meaning of the strace log
> is.
>
>
>
> Any help would be appreciated.
>
>
>
> Brian Wenholz
>
>
>
> The strace log follows and kernel config is attached:
>
>
>
> execve("/usr/sbin/cryptsetup", ["cryptsetup", "create", "t1", "test"], [/=
*
> 15 vars */]) =3D 0
>
> brk(0)                                  =3D 0x8056000
>
> mmap2(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0)
> =3D 0xb77ca000
>
> access("/etc/ld.so.preload", R_OK)      =3D -1 ENOENT (No such file or
> directory)
>
> open("/etc/ld.so.cache", O_RDONLY|O_CLOEXEC) =3D 3
>
> fstat64(3, {st_mode=3DS_IFREG|0644, st_size=3D43040, ...}) =3D 0
>
> mmap2(NULL, 43040, PROT_READ, MAP_PRIVATE, 3, 0) =3D 0xb77bf000
>
> close(3)                                =3D 0
>
> open("/usr/lib/libcryptsetup.so.4", O_RDONLY|O_CLOEXEC) =3D 3
>
> read(3,
> "\177ELF\1\1\1\0\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0\220\320\207H4\0\0\0"...,
> 512) =3D 512
>
> fstat64(3, {st_mode=3DS_IFREG|0755, st_size=3D158244, ...}) =3D 0
>
> mmap2(0x4887a000, 155620, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE,
> 3, 0) =3D 0x4887a000
>
> mmap2(0x4889f000, 4096, PROT_READ|PROT_WRITE,
> MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x25) =3D 0x4889f000
>
> close(3)                                =3D 0
>
> open("/usr/lib/libpopt.so.0", O_RDONLY|O_CLOEXEC) =3D 3
>
> read(3,
> "\177ELF\1\1\1\0\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0P:\213H4\0\0\0"..., 512) =
=3D
> 512
>
> fstat64(3, {st_mode=3DS_IFREG|0755, st_size=3D47060, ...}) =3D 0
>
> mmap2(0x488b2000, 48332, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE,
> 3, 0) =3D 0x488b2000
>
> mmap2(0x488bd000, 4096, PROT_READ|PROT_WRITE,
> MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0xa) =3D 0x488bd000
>
> close(3)                                =3D 0
>
> open("/lib/libc.so.6", O_RDONLY|O_CLOEXEC) =3D 3
>
> read(3,
> "\177ELF\1\1\1\0\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0p6\272I4\0\0\0"..., 512) =
=3D
> 512
>
> fstat64(3, {st_mode=3DS_IFREG|0755, st_size=3D1527200, ...}) =3D 0
>
> mmap2(0x49b8a000, 1534652, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE=
,
> 3, 0) =3D 0x49b8a000
>
> mmap2(0x49cfb000, 12288, PROT_READ|PROT_WRITE,
> MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x171) =3D 0x49cfb000
>
> mmap2(0x49cfe000, 10940, PROT_READ|PROT_WRITE,
> MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) =3D 0x49cfe000
>
> close(3)                                =3D 0
>
> open("/lib/libuuid.so.1", O_RDONLY|O_CLOEXEC) =3D 3
>
> read(3,
> "\177ELF\1\1\1\0\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0\320N{H4\0\0\0"..., 512) =
=3D
> 512
>
> fstat64(3, {st_mode=3DS_IFREG|0755, st_size=3D15820, ...}) =3D 0
>
> mmap2(0x487b4000, 12776, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE,
> 3, 0) =3D 0x487b4000
>
> mmap2(0x487b7000, 4096, PROT_READ|PROT_WRITE,
> MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x3) =3D 0x487b7000
>
> close(3)                                =3D 0
>
> open("/usr/lib/libdevmapper.so.1.02", O_RDONLY|O_CLOEXEC) =3D 3
>
> read(3,
> "\177ELF\1\1\1\0\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0\300\361{H4\0\0\0"..., 51=
2)
> =3D 512
>
> fstat64(3, {st_mode=3DS_IFREG|0555, st_size=3D242320, ...}) =3D 0
>
> mmap2(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0)
> =3D 0xb77be000
>
> mmap2(0x487ba000, 243612, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE,
> 3, 0) =3D 0x487ba000
>
> mmap2(0x487f2000, 12288, PROT_READ|PROT_WRITE,
> MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x38) =3D 0x487f2000
>
> mmap2(0x487f5000, 1948, PROT_READ|PROT_WRITE,
> MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) =3D 0x487f5000
>
> close(3)                                =3D 0
>
> open("/usr/lib/libssl.so.1.0.0", O_RDONLY|O_CLOEXEC) =3D 3
>
> read(3,
> "\177ELF\1\1\1\0\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0\220a\202H4\0\0\0"..., 51=
2)
> =3D 512
>
> fstat64(3, {st_mode=3DS_IFREG|0755, st_size=3D387880, ...}) =3D 0
>
> mmap2(0x4881a000, 385004, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE,
> 3, 0) =3D 0x4881a000
>
> mmap2(0x48873000, 20480, PROT_READ|PROT_WRITE,
> MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x59) =3D 0x48873000
>
> close(3)                                =3D 0
>
> open("/lib/libcrypto.so.1.0.0", O_RDONLY|O_CLOEXEC) =3D 3
>
> read(3, "\177ELF\1\1\1\0\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0@\211\222H4\0\0\0=
"...,
> 512) =3D 512
>
> fstat64(3, {st_mode=3DS_IFREG|0755, st_size=3D1798156, ...}) =3D 0
>
> mmap2(0x488e6000, 1808880, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE=
,
> 3, 0) =3D 0x488e6000
>
> mmap2(0x48a85000, 98304, PROT_READ|PROT_WRITE,
> MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x19f) =3D 0x48a85000
>
> mmap2(0x48a9d000, 10736, PROT_READ|PROT_WRITE,
> MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) =3D 0x48a9d000
>
> close(3)                                =3D 0
>
> open("/lib/libudev.so.0", O_RDONLY|O_CLOEXEC) =3D 3
>
> read(3,
> "\177ELF\1\1\1\0\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0`\264\200H4\0\0\0"..., 51=
2)
> =3D 512
>
> fstat64(3, {st_mode=3DS_IFREG|0755, st_size=3D56976, ...}) =3D 0
>
> mmap2(0x48809000, 58164, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE,
> 3, 0) =3D 0x48809000
>
> mmap2(0x48817000, 4096, PROT_READ|PROT_WRITE,
> MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0xd) =3D 0x48817000
>
> close(3)                                =3D 0
>
> open("/lib/libdl.so.2", O_RDONLY|O_CLOEXEC) =3D 3
>
> read(3,
> "\177ELF\1\1\1\0\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0\260:\320I4\0\0\0"..., 51=
2)
> =3D 512
>
> fstat64(3, {st_mode=3DS_IFREG|0755, st_size=3D15576, ...}) =3D 0
>
> mmap2(0x49d03000, 16516, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE,
> 3, 0) =3D 0x49d03000
>
> mmap2(0x49d06000, 8192, PROT_READ|PROT_WRITE,
> MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x2) =3D 0x49d06000
>
> close(3)                                =3D 0
>
> open("/lib/librt.so.1", O_RDONLY|O_CLOEXEC) =3D 3
>
> read(3,
> "\177ELF\1\1\1\0\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0\220)\327I4\0\0\0"..., 51=
2)
> =3D 512
>
> fstat64(3, {st_mode=3DS_IFREG|0755, st_size=3D32476, ...}) =3D 0
>
> mmap2(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0)
> =3D 0xb77bd000
>
> mmap2(0x49d71000, 33356, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE,
> 3, 0) =3D 0x49d71000
>
> mmap2(0x49d78000, 8192, PROT_READ|PROT_WRITE,
> MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x6) =3D 0x49d78000
>
> close(3)                                =3D 0
>
> open("/lib/libpthread.so.0", O_RDONLY|O_CLOEXEC) =3D 3
>
> read(3, "\177ELF\1\1\1\0\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0@\372\320I4\0\0\0=
"...,
> 512) =3D 512
>
> fstat64(3, {st_mode=3DS_IFREG|0755, st_size=3D93860, ...}) =3D 0
>
> mmap2(0x49d0a000, 102920, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE,
> 3, 0) =3D 0x49d0a000
>
> mmap2(0x49d20000, 8192, PROT_READ|PROT_WRITE,
> MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x15) =3D 0x49d20000
>
> mmap2(0x49d22000, 4616, PROT_READ|PROT_WRITE,
> MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) =3D 0x49d22000
>
> close(3)                                =3D 0
>
> mmap2(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0)
> =3D 0xb77bc000
>
> mmap2(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0)
> =3D 0xb77bb000
>
> set_thread_area({entry_number:-1 -> 6, base_addr:0xb77bcac0,
> limit:1048575, seg_32bit:1, contents:0, read_exec_only:0, limit_in_pages:=
1,
> seg_not_present:0, useable:1}) =3D 0
>
> mprotect(0x49cfb000, 8192, PROT_READ)   =3D 0
>
> mprotect(0x487b0000, 4096, PROT_READ)   =3D 0
>
> mprotect(0x49d06000, 4096, PROT_READ)   =3D 0
>
> mprotect(0x49d78000, 4096, PROT_READ)   =3D 0
>
> mprotect(0x49d20000, 4096, PROT_READ)   =3D 0
>
> munmap(0xb77bf000, 43040)               =3D 0
>
> set_tid_address(0xb77bcb28)             =3D 1310
>
> set_robust_list(0xb77bcb30, 12)         =3D 0
>
> futex(0xbfc4f218, FUTEX_WAKE_PRIVATE, 1) =3D 0
>
> futex(0xbfc4f214, FUTEX_WAIT_BITSET_PRIVATE|FUTEX_CLOCK_REALTIME, 1, NULL=
,
> b77bcac0) =3D -1 EAGAIN (Resource temporarily unavailable)
>
> rt_sigaction(SIGRTMIN, {0x49d0f460, [], SA_SIGINFO}, NULL, 8) =3D 0
>
> rt_sigaction(SIGRT_1, {0x49d0f4f0, [], SA_RESTART|SA_SIGINFO}, NULL, 8) =
=3D 0
>
> rt_sigprocmask(SIG_UNBLOCK, [RTMIN RT_1], NULL, 8) =3D 0
>
> getrlimit(RLIMIT_STACK, {rlim_cur=3D8192*1024, rlim_max=3DRLIM_INFINITY})=
 =3D 0
>
> uname({sys=3D"Linux", node=3D"lintest", ...}) =3D 0
>
> brk(0)                                  =3D 0x8056000
>
> brk(0x8077000)                          =3D 0x8077000
>
> mlockall(MCL_CURRENT|MCL_FUTURE)        =3D 0
>
> getpriority(PRIO_PROCESS, 0)            =3D 20
>
> setpriority(PRIO_PROCESS, 0, -18)       =3D 0
>
> rt_sigaction(SIGINT, {0x804c2d0, [], 0}, NULL, 8) =3D 0
>
> rt_sigaction(SIGTERM, {0x804c2d0, [], 0}, NULL, 8) =3D 0
>
> rt_sigprocmask(SIG_UNBLOCK, [INT TERM], NULL, 8) =3D 0
>
> open("test", O_RDONLY|O_LARGEFILE)      =3D 3
>
> fstat64(3, {st_mode=3DS_IFREG|0644, st_size=3D104857600, ...}) =3D 0
>
> close(3)                                =3D 0
>
> open("/dev/urandom", O_RDONLY|O_LARGEFILE) =3D 3
>
> open("/dev/random", O_RDONLY|O_NONBLOCK|O_LARGEFILE) =3D 4
>
> open("/dev/crypto", O_RDWR)             =3D -1 ENOENT (No such file or
> directory)
>
> ioctl(0, SNDCTL_TMR_TIMEBASE or SNDRV_TIMER_IOCTL_NEXT_DEVICE or TCGETS,
> {B115200 opost isig icanon echo ...}) =3D 0
>
> open("/dev/tty", O_RDWR|O_LARGEFILE)    =3D 5
>
> ioctl(5, SNDCTL_TMR_TIMEBASE or SNDRV_TIMER_IOCTL_NEXT_DEVICE or TCGETS,
> {B115200 opost isig icanon echo ...}) =3D 0
>
> write(5, "Enter passphrase: ", 18Enter passphrase: )      =3D 18
>
> ioctl(5, SNDCTL_TMR_CONTINUE or SNDRV_TIMER_IOCTL_GPARAMS or TCSETSF,
> {B115200 opost isig icanon -echo ...}) =3D 0
>
> read(5, "gehc-mic\n", 512)              =3D 9
>
> ioctl(5, SNDCTL_TMR_CONTINUE or SNDRV_TIMER_IOCTL_GPARAMS or TCSETSF,
> {B115200 opost isig icanon echo ...}) =3D 0
>
> write(5, "\n", 1
>
> )                       =3D 1
>
> close(5)                                =3D 0
>
> uname({sys=3D"Linux", node=3D"sunrise", ...}) =3D 0
>
> uname({sys=3D"Linux", node=3D"sunrise", ...}) =3D 0
>
> stat64("/dev/mapper/control", {st_mode=3DS_IFCHR|0600, st_rdev=3Dmakedev(=
10,
> 236), ...}) =3D 0
>
> open("/dev/mapper/control", O_RDWR|O_LARGEFILE) =3D 5
>
> open("/proc/devices", O_RDONLY|O_LARGEFILE) =3D 6
>
> fstat64(6, {st_mode=3DS_IFREG|0444, st_size=3D0, ...}) =3D 0
>
> mmap2(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0)
> =3D 0xb77c9000
>
> read(6, "Character devices:\n  1 mem\n  2 p"..., 1024) =3D 513
>
> close(6)                                =3D 0
>
> munmap(0xb77c9000, 4096)                =3D 0
>
> ioctl(5, DM_VERSION, 0x8059ba8)         =3D 0
>
> ioctl(5, DM_LIST_VERSIONS, 0x8059b10)   =3D 0
>
> semctl(0, 0, IPC_64|SEM_INFO, 0xbfc4f0a8) =3D 0
>
> open("/etc/udev/udev.conf", O_RDONLY|O_LARGEFILE|O_CLOEXEC) =3D 6
>
> fcntl64(6, F_GETFD)                     =3D 0x1 (flags FD_CLOEXEC)
>
> fstat64(6, {st_mode=3DS_IFREG|0644, st_size=3D69, ...}) =3D 0
>
> mmap2(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0)
> =3D 0xb77c9000
>
> read(6, "# see udev(7) for details\n\n#udev"..., 1024) =3D 69
>
> read(6, "", 1024)                       =3D 0
>
> close(6)                                =3D 0
>
> munmap(0xb77c9000, 4096)                =3D 0
>
> open("/var/run/udev/queue.bin", O_RDONLY|O_LARGEFILE|O_CLOEXEC) =3D 6
>
> fstat64(6, {st_mode=3DS_IFREG|0644, st_size=3D8, ...}) =3D 0
>
> mmap2(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0)
> =3D 0xb77c9000
>
> read(6, "\337\5\0\0\0\0\0\0", 4096)     =3D 8
>
> close(6)                                =3D 0
>
> munmap(0xb77c9000, 4096)                =3D 0
>
> ioctl(5, DM_TABLE_STATUS, 0x8059a40)    =3D -1 ENXIO (No such device or
> address)
>
> open("/dev/loop-control", O_RDONLY|O_LARGEFILE) =3D 6
>
> ioctl(6, LOOP_CTL_GET_FREE)             =3D 1
>
> close(6)                                =3D 0
>
> stat64("/dev/loop1", {st_mode=3DS_IFBLK|0660, st_rdev=3Dmakedev(7, 1), ..=
.}) =3D
> 0
>
> open("test", O_RDWR|O_EXCL|O_LARGEFILE) =3D 6
>
> open("/dev/loop1", O_RDWR|O_LARGEFILE)  =3D 7
>
> ioctl(7, LOOP_SET_FD, 0x6)              =3D 0
>
> ioctl(7, LOOP_SET_STATUS64, {offset=3D0, number=3D0, flags=3DLO_FLAGS_AUT=
OCLEAR,
> file_name=3D"test", ...}) =3D 0
>
> ioctl(7, LOOP_GET_STATUS64, {offset=3D0, number=3D1, flags=3DLO_FLAGS_AUT=
OCLEAR,
> file_name=3D"test", ...}) =3D 0
>
> close(6)                                =3D 0
>
> open("/dev/loop1", O_RDONLY|O_LARGEFILE) =3D 6
>
> fstat64(6, {st_mode=3DS_IFBLK|0660, st_rdev=3Dmakedev(7, 1), ...}) =3D 0
>
> close(6)                                =3D 0
>
> stat64("/dev/loop1", {st_mode=3DS_IFBLK|0660, st_rdev=3Dmakedev(7, 1), ..=
.}) =3D
> 0
>
> open("/dev/loop1", O_RDWR|O_EXCL|O_LARGEFILE) =3D 6
>
> ioctl(6, BLKROGET, 0)                   =3D 0
>
> ioctl(6, BLKGETSIZE64, 104857600)       =3D 0
>
> close(6)                                =3D 0
>
> open("/dev/urandom", O_RDONLY|O_LARGEFILE) =3D 6
>
> read(6, "L|", 2)                        =3D 2
>
> semget(0xd4d7c4c, 1, IPC_CREAT|IPC_EXCL|0600) =3D 0
>
> semctl(0, 0, IPC_64|SETVAL, 0xbfc4efa8) =3D 0
>
> semctl(0, 0, IPC_64|GETVAL, 0xbfc4efa8) =3D 1
>
> close(6)                                =3D 0
>
> semop(0, {{0, 1, 0}}, 1)                =3D 0
>
> semctl(0, 0, IPC_64|GETVAL, 0xbfc4f008) =3D 2
>
> open("/dev/loop1", O_RDONLY|O_LARGEFILE) =3D 6
>
> ioctl(6, BLKRAGET, 256)                 =3D 0
>
> close(6)                                =3D 0
>
> ioctl(5, DM_DEV_CREATE, 0x805dad8)      =3D 0
>
> ioctl(5, DM_TABLE_LOAD, 0x805dad8)      =3D 0
>
> ioctl(5, DM_DEV_SUSPEND, 0x805dad8)     =3D 0
>
> semget(0xd4d7c4c, 1, 0)                 =3D 0
>
> semctl(0, 0, IPC_64|GETVAL, 0xbfc4eff8) =3D 2
>
> semop(0, {{0, -1, IPC_NOWAIT}}, 1)      =3D 0
>
> semop(0, {{0, 0, 0}}, 1
>
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a11c35470dff39104feec9ea6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Brian,<div><br></div><div>You have to enable=C2=A0CO=
NFIG_DM_CRYPT and CONFIG_BLK_DEV_DM=C2=A0in kernel;</div><div>Also make sur=
e you have corresponding CONFIG_CRYPTO* enabled. And, if compiled as module=
s, make sure that modules are loaded before running cryptsetup during runti=
me</div>
<div><br></div><div>See <a href=3D"https://code.google.com/p/cryptsetup/wik=
i">https://code.google.com/p/cryptsetup/wiki</a> for more info.<br></div><d=
iv><br></div><div>BR,</div><div>Maxim.</div></div><div class=3D"gmail_extra=
">
<br><br><div class=3D"gmail_quote">On Fri, Jul 18, 2014 at 11:31 PM, Wenhol=
z, Brian (GE Healthcare) <span dir=3D"ltr">&lt;<a href=3D"mailto:Brian.Wenh=
olz@med.ge.com" target=3D"_blank">Brian.Wenholz@med.ge.com</a>&gt;</span> w=
rote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">All,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black"><u></u>=C2=A0<u></u></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">I have been struggling to get=
 this working. I intend to use an encrypted loop device during runtime (not=
 at boot time). I have included the meta-oe cryptsetup recipe
 (V1.6.2) and am trying to =E2=80=9Ccreate=E2=80=9D (or open) the loop file=
 on my Yocto system.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black"><u></u>=C2=A0<u></u></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">The basic attempt is:<u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black"><u></u>=C2=A0<u></u></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">head -c 100M /dev/zero &gt; t=
est<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">cryptsetup create t1=C2=A0 te=
st<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black"><u></u>=C2=A0<u></u></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">The passphrase is requested a=
nd then cryptsetup hangs. Strace reveals that cryptsetup is hanging on a ke=
rnel semaphore that never returns, but I have been unable
 to decipher (pun intended) what the meaning of the strace log is. <u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black"><u></u>=C2=A0<u></u></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">Any help would be appreciated=
.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black"><u></u>=C2=A0<u></u></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">Brian Wenholz<u></u><u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black"><u></u>=C2=A0<u></u></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">The strace log follows and ke=
rnel config is attached:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black"><u></u>=C2=A0<u></u></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">execve(&quot;/usr/sbin/crypts=
etup&quot;, [&quot;cryptsetup&quot;, &quot;create&quot;, &quot;t1&quot;, &q=
uot;test&quot;], [/* 15 vars */]) =3D 0<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">brk(0)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D 0x8056000<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(NULL, 4096, PROT_READ|P=
ROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) =3D 0xb77ca000<u></u><u></u></=
span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">access(&quot;/etc/ld.so.prelo=
ad&quot;, R_OK)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D -1 ENOENT (No such file o=
r directory)<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/etc/ld.so.cache&q=
uot;, O_RDONLY|O_CLOEXEC) =3D 3<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">fstat64(3, {st_mode=3DS_IFREG=
|0644, st_size=3D43040, ...}) =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(NULL, 43040, PROT_READ,=
 MAP_PRIVATE, 3, 0) =3D 0xb77bf000<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(3)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/usr/lib/libcrypts=
etup.so.4&quot;, O_RDONLY|O_CLOEXEC) =3D 3<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">read(3, &quot;\177ELF\1\1\1\0=
\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0\220\320\207H4\0\0\0&quot;..., 512) =3D 512=
<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">fstat64(3, {st_mode=3DS_IFREG=
|0755, st_size=3D158244, ...}) =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x4887a000, 155620, PRO=
T_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) =3D 0x4887a000<u></u><u>=
</u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x4889f000, 4096, PROT_=
READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x25) =3D 0x4889f0=
00<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(3)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/usr/lib/libpopt.s=
o.0&quot;, O_RDONLY|O_CLOEXEC) =3D 3<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">read(3, &quot;\177ELF\1\1\1\0=
\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0P:\213H4\0\0\0&quot;..., 512) =3D 512<u></u=
><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">fstat64(3, {st_mode=3DS_IFREG=
|0755, st_size=3D47060, ...}) =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x488b2000, 48332, PROT=
_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) =3D 0x488b2000<u></u><u><=
/u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x488bd000, 4096, PROT_=
READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0xa) =3D 0x488bd00=
0<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(3)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/lib/libc.so.6&quo=
t;, O_RDONLY|O_CLOEXEC) =3D 3<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">read(3, &quot;\177ELF\1\1\1\0=
\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0p6\272I4\0\0\0&quot;..., 512) =3D 512<u></u=
><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">fstat64(3, {st_mode=3DS_IFREG=
|0755, st_size=3D1527200, ...}) =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x49b8a000, 1534652, PR=
OT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) =3D 0x49b8a000<u></u><u=
></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x49cfb000, 12288, PROT=
_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x171) =3D 0x49cf=
b000<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x49cfe000, 10940, PROT=
_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) =3D 0x49cfe00=
0<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(3)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/lib/libuuid.so.1&=
quot;, O_RDONLY|O_CLOEXEC) =3D 3<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">read(3, &quot;\177ELF\1\1\1\0=
\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0\320N{H4\0\0\0&quot;..., 512) =3D 512<u></u=
><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">fstat64(3, {st_mode=3DS_IFREG=
|0755, st_size=3D15820, ...}) =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x487b4000, 12776, PROT=
_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) =3D 0x487b4000<u></u><u><=
/u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x487b7000, 4096, PROT_=
READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x3) =3D 0x487b700=
0<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(3)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/usr/lib/libdevmap=
per.so.1.02&quot;, O_RDONLY|O_CLOEXEC) =3D 3<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">read(3, &quot;\177ELF\1\1\1\0=
\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0\300\361{H4\0\0\0&quot;..., 512) =3D 512<u>=
</u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">fstat64(3, {st_mode=3DS_IFREG=
|0555, st_size=3D242320, ...}) =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(NULL, 4096, PROT_READ|P=
ROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) =3D 0xb77be000<u></u><u></u></=
span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x487ba000, 243612, PRO=
T_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) =3D 0x487ba000<u></u><u>=
</u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x487f2000, 12288, PROT=
_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x38) =3D 0x487f2=
000<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x487f5000, 1948, PROT_=
READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) =3D 0x487f5000=
<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(3)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/usr/lib/libssl.so=
.1.0.0&quot;, O_RDONLY|O_CLOEXEC) =3D 3<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">read(3, &quot;\177ELF\1\1\1\0=
\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0\220a\202H4\0\0\0&quot;..., 512) =3D 512<u>=
</u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">fstat64(3, {st_mode=3DS_IFREG=
|0755, st_size=3D387880, ...}) =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x4881a000, 385004, PRO=
T_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) =3D 0x4881a000<u></u><u>=
</u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x48873000, 20480, PROT=
_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x59) =3D 0x48873=
000<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(3)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/lib/libcrypto.so.=
1.0.0&quot;, O_RDONLY|O_CLOEXEC) =3D 3<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">read(3, &quot;\177ELF\1\1\1\0=
\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0@\211\222H4\0\0\0&quot;..., 512) =3D 512<u>=
</u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">fstat64(3, {st_mode=3DS_IFREG=
|0755, st_size=3D1798156, ...}) =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x488e6000, 1808880, PR=
OT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) =3D 0x488e6000<u></u><u=
></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x48a85000, 98304, PROT=
_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x19f) =3D 0x48a8=
5000<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x48a9d000, 10736, PROT=
_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) =3D 0x48a9d00=
0<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(3)=C2=A0=C2=A0=C2=A0=C2=
=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/lib/libudev.so.0&=
quot;, O_RDONLY|O_CLOEXEC) =3D 3<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">read(3, &quot;\177ELF\1\1\1\0=
\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0`\264\200H4\0\0\0&quot;..., 512) =3D 512<u>=
</u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">fstat64(3, {st_mode=3DS_IFREG=
|0755, st_size=3D56976, ...}) =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x48809000, 58164, PROT=
_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) =3D 0x48809000<u></u><u><=
/u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x48817000, 4096, PROT_=
READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0xd) =3D 0x4881700=
0<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(3)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/lib/libdl.so.2&qu=
ot;, O_RDONLY|O_CLOEXEC) =3D 3<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">read(3, &quot;\177ELF\1\1\1\0=
\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0\260:\320I4\0\0\0&quot;..., 512) =3D 512<u>=
</u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">fstat64(3, {st_mode=3DS_IFREG=
|0755, st_size=3D15576, ...}) =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x49d03000, 16516, PROT=
_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) =3D 0x49d03000<u></u><u><=
/u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x49d06000, 8192, PROT_=
READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x2) =3D 0x49d0600=
0<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(3)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/lib/librt.so.1&qu=
ot;, O_RDONLY|O_CLOEXEC) =3D 3<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">read(3, &quot;\177ELF\1\1\1\0=
\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0\220)\327I4\0\0\0&quot;..., 512) =3D 512<u>=
</u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">fstat64(3, {st_mode=3DS_IFREG=
|0755, st_size=3D32476, ...}) =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(NULL, 4096, PROT_READ|P=
ROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) =3D 0xb77bd000<u></u><u></u></=
span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x49d71000, 33356, PROT=
_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) =3D 0x49d71000<u></u><u><=
/u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x49d78000, 8192, PROT_=
READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x6) =3D 0x49d7800=
0<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(3)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/lib/libpthread.so=
.0&quot;, O_RDONLY|O_CLOEXEC) =3D 3<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">read(3, &quot;\177ELF\1\1\1\0=
\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0@\372\320I4\0\0\0&quot;..., 512) =3D 512<u>=
</u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">fstat64(3, {st_mode=3DS_IFREG=
|0755, st_size=3D93860, ...}) =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x49d0a000, 102920, PRO=
T_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) =3D 0x49d0a000<u></u><u>=
</u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x49d20000, 8192, PROT_=
READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x15) =3D 0x49d200=
00<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x49d22000, 4616, PROT_=
READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) =3D 0x49d22000=
<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(3)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(NULL, 4096, PROT_READ|P=
ROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) =3D 0xb77bc000<u></u><u></u></=
span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(NULL, 4096, PROT_READ|P=
ROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) =3D 0xb77bb000<u></u><u></u></=
span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">set_thread_area({entry_number=
:-1 -&gt; 6, base_addr:0xb77bcac0, limit:1048575, seg_32bit:1, contents:0, =
read_exec_only:0, limit_in_pages:1, seg_not_present:0, useable:1})
 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mprotect(0x49cfb000, 8192, PR=
OT_READ)=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mprotect(0x487b0000, 4096, PR=
OT_READ)=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mprotect(0x49d06000, 4096, PR=
OT_READ)=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mprotect(0x49d78000, 4096, PR=
OT_READ)=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mprotect(0x49d20000, 4096, PR=
OT_READ)=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">munmap(0xb77bf000, 43040)=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">set_tid_address(0xb77bcb28)=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
=3D 1310<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">set_robust_list(0xb77bcb30, 1=
2)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D 0<u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">futex(0xbfc4f218, FUTEX_WAKE_=
PRIVATE, 1) =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">futex(0xbfc4f214, FUTEX_WAIT_=
BITSET_PRIVATE|FUTEX_CLOCK_REALTIME, 1, NULL, b77bcac0) =3D -1 EAGAIN (Reso=
urce temporarily unavailable)<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">rt_sigaction(SIGRTMIN, {0x49d=
0f460, [], SA_SIGINFO}, NULL, 8) =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">rt_sigaction(SIGRT_1, {0x49d0=
f4f0, [], SA_RESTART|SA_SIGINFO}, NULL, 8) =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">rt_sigprocmask(SIG_UNBLOCK, [=
RTMIN RT_1], NULL, 8) =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">getrlimit(RLIMIT_STACK, {rlim=
_cur=3D8192*1024, rlim_max=3DRLIM_INFINITY}) =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">uname({sys=3D&quot;Linux&quot=
;, node=3D&quot;lintest&quot;, ...}) =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">brk(0)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D 0x8056000<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">brk(0x8077000)=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D 0x8077000<=
u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mlockall(MCL_CURRENT|MCL_FUTU=
RE)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">getpriority(PRIO_PROCESS, 0)=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D 20<u=
></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">setpriority(PRIO_PROCESS, 0, =
-18)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">rt_sigaction(SIGINT, {0x804c2=
d0, [], 0}, NULL, 8) =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">rt_sigaction(SIGTERM, {0x804c=
2d0, [], 0}, NULL, 8) =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">rt_sigprocmask(SIG_UNBLOCK, [=
INT TERM], NULL, 8) =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;test&quot;, O_RDON=
LY|O_LARGEFILE)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D 3<u></u><u></u></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">fstat64(3, {st_mode=3DS_IFREG=
|0644, st_size=3D104857600, ...}) =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(3)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/dev/urandom&quot;=
, O_RDONLY|O_LARGEFILE) =3D 3<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/dev/random&quot;,=
 O_RDONLY|O_NONBLOCK|O_LARGEFILE) =3D 4<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/dev/crypto&quot;,=
 O_RDWR)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =3D -1 ENOENT (No such file or directory)<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">ioctl(0, SNDCTL_TMR_TIMEBASE =
or SNDRV_TIMER_IOCTL_NEXT_DEVICE or TCGETS, {B115200 opost isig icanon echo=
 ...}) =3D 0<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/dev/tty&quot;, O_=
RDWR|O_LARGEFILE)=C2=A0=C2=A0=C2=A0 =3D 5<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">ioctl(5, SNDCTL_TMR_TIMEBASE =
or SNDRV_TIMER_IOCTL_NEXT_DEVICE or TCGETS, {B115200 opost isig icanon echo=
 ...}) =3D 0<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">write(5, &quot;Enter passphra=
se: &quot;, 18Enter passphrase: )=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D 18<u></=
u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">ioctl(5, SNDCTL_TMR_CONTINUE =
or SNDRV_TIMER_IOCTL_GPARAMS or TCSETSF, {B115200 opost isig icanon -echo .=
..}) =3D 0<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">read(5, &quot;gehc-mic\n&quot=
;, 512)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D 9<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">ioctl(5, SNDCTL_TMR_CONTINUE =
or SNDRV_TIMER_IOCTL_GPARAMS or TCSETSF, {B115200 opost isig icanon echo ..=
.}) =3D 0<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">write(5, &quot;\n&quot;, 1<u>=
</u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">)=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=3D 1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(5)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">uname({sys=3D&quot;Linux&quot=
;, node=3D&quot;sunrise&quot;, ...}) =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">uname({sys=3D&quot;Linux&quot=
;, node=3D&quot;sunrise&quot;, ...}) =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">stat64(&quot;/dev/mapper/cont=
rol&quot;, {st_mode=3DS_IFCHR|0600, st_rdev=3Dmakedev(10, 236), ...}) =3D 0=
<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/dev/mapper/contro=
l&quot;, O_RDWR|O_LARGEFILE) =3D 5<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/proc/devices&quot=
;, O_RDONLY|O_LARGEFILE) =3D 6<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">fstat64(6, {st_mode=3DS_IFREG=
|0444, st_size=3D0, ...}) =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(NULL, 4096, PROT_READ|P=
ROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) =3D 0xb77c9000<u></u><u></u></=
span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">read(6, &quot;Character devic=
es:\n =C2=A01 mem\n=C2=A0 2 p&quot;..., 1024) =3D 513<u></u><u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(6)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">munmap(0xb77c9000, 4096)=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">ioctl(5, DM_VERSION, 0x8059ba=
8)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D 0<u></u><u></u></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">ioctl(5, DM_LIST_VERSIONS, 0x=
8059b10)=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">semctl(0, 0, IPC_64|SEM_INFO,=
 0xbfc4f0a8) =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/etc/udev/udev.con=
f&quot;, O_RDONLY|O_LARGEFILE|O_CLOEXEC) =3D 6<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">fcntl64(6, F_GETFD)=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D 0x1 (flags FD_CLOEXEC)<u></u><u></=
u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">fstat64(6, {st_mode=3DS_IFREG=
|0644, st_size=3D69, ...}) =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(NULL, 4096, PROT_READ|P=
ROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) =3D 0xb77c9000<u></u><u></u></=
span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">read(6, &quot;# see udev(7) f=
or details\n\n#udev&quot;..., 1024) =3D 69<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">read(6, &quot;&quot;, 1024)=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D 0<u></u><u></=
u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(6)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">munmap(0xb77c9000, 4096)=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/var/run/udev/queu=
e.bin&quot;, O_RDONLY|O_LARGEFILE|O_CLOEXEC) =3D 6<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">fstat64(6, {st_mode=3DS_IFREG=
|0644, st_size=3D8, ...}) =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(NULL, 4096, PROT_READ|P=
ROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) =3D 0xb77c9000<u></u><u></u></=
span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">read(6, &quot;\337\5\0\0\0\0\=
0\0&quot;, 4096)=C2=A0=C2=A0=C2=A0=C2=A0 =3D 8<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(6)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">munmap(0xb77c9000, 4096)=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">ioctl(5, DM_TABLE_STATUS, 0x8=
059a40)=C2=A0=C2=A0=C2=A0 =3D -1 ENXIO (No such device or address)<u></u><u=
></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/dev/loop-control&=
quot;, O_RDONLY|O_LARGEFILE) =3D 6<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">ioctl(6, LOOP_CTL_GET_FREE)=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
=3D 1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(6)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">stat64(&quot;/dev/loop1&quot;=
, {st_mode=3DS_IFBLK|0660, st_rdev=3Dmakedev(7, 1), ...}) =3D 0<u></u><u></=
u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;test&quot;, O_RDWR=
|O_EXCL|O_LARGEFILE) =3D 6<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/dev/loop1&quot;, =
O_RDWR|O_LARGEFILE)=C2=A0 =3D 7<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">ioctl(7, LOOP_SET_FD, 0x6)=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">ioctl(7, LOOP_SET_STATUS64, {=
offset=3D0, number=3D0, flags=3DLO_FLAGS_AUTOCLEAR, file_name=3D&quot;test&=
quot;, ...}) =3D 0<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">ioctl(7, LOOP_GET_STATUS64, {=
offset=3D0, number=3D1, flags=3DLO_FLAGS_AUTOCLEAR, file_name=3D&quot;test&=
quot;, ...}) =3D 0<u></u><u></u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(6)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/dev/loop1&quot;, =
O_RDONLY|O_LARGEFILE) =3D 6<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">fstat64(6, {st_mode=3DS_IFBLK=
|0660, st_rdev=3Dmakedev(7, 1), ...}) =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(6)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">stat64(&quot;/dev/loop1&quot;=
, {st_mode=3DS_IFBLK|0660, st_rdev=3Dmakedev(7, 1), ...}) =3D 0<u></u><u></=
u></span></p>

<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/dev/loop1&quot;, =
O_RDWR|O_EXCL|O_LARGEFILE) =3D 6<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">ioctl(6, BLKROGET, 0)=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">ioctl(6, BLKGETSIZE64, 104857=
600)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(6)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/dev/urandom&quot;=
, O_RDONLY|O_LARGEFILE) =3D 6<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">read(6, &quot;L|&quot;, 2)=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D 2<u></u><u=
></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">semget(0xd4d7c4c, 1, IPC_CREA=
T|IPC_EXCL|0600) =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">semctl(0, 0, IPC_64|SETVAL, 0=
xbfc4efa8) =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">semctl(0, 0, IPC_64|GETVAL, 0=
xbfc4efa8) =3D 1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(6)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">semop(0, {{0, 1, 0}}, 1)=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">semctl(0, 0, IPC_64|GETVAL, 0=
xbfc4f008) =3D 2<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/dev/loop1&quot;, =
O_RDONLY|O_LARGEFILE) =3D 6<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">ioctl(6, BLKRAGET, 256)=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(6)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">ioctl(5, DM_DEV_CREATE, 0x805=
dad8)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">ioctl(5, DM_TABLE_LOAD, 0x805=
dad8)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">ioctl(5, DM_DEV_SUSPEND, 0x80=
5dad8)=C2=A0=C2=A0=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">semget(0xd4d7c4c, 1, 0)=C2=A0=
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">semctl(0, 0, IPC_64|GETVAL, 0=
xbfc4eff8) =3D 2<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">semop(0, {{0, -1, IPC_NOWAIT}=
}, 1)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">semop(0, {{0, 0, 0}}, 1<u></u=
><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black"><u></u>=C2=A0<u></u></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black"><u></u>=C2=A0<u></u></span></=
p>
</div>
</div>

<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--001a11c35470dff39104feec9ea6--
