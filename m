Return-Path: <Brian.Wenholz@med.ge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 360E3E0043F; Fri, 18 Jul 2014 16:00:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [67.231.149.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 8907 seconds by postgrey-1.32 at yocto-www;
	Fri, 18 Jul 2014 16:00:28 PDT
Received: from mx0a-00176a03.pphosted.com (mx0a-00176a03.pphosted.com
	[67.231.149.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F24DCE00342
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 16:00:28 -0700 (PDT)
Received: from pps.filterd (m0048275.ppops.net [127.0.0.1])
	by m0048275.ppops.net-00176a03. (8.14.7/8.14.7) with SMTP id
	s6IKUDJ8030556
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 16:32:01 -0400
Received: from cinmlip11.e2k.ad.ge.com (n165-156-000-000.static.ge.com
	[165.156.4.1] (may be forged))
	by m0048275.ppops.net-00176a03. with ESMTP id 1n7a5cr3dd-1
	(version=TLSv1/SSLv3 cipher=RC4-SHA bits=128 verify=NOT)
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 16:31:58 -0400
X-GEattachmentname: ATT21755.config
X-GEattachmentsize: 87482
Received: from unknown (HELO ALPMBHT04.e2k.ad.ge.com) ([3.159.19.197])
	by cinmlip11.e2k.ad.ge.com with ESMTP/TLS/AES128-SHA;
	18 Jul 2014 18:26:06 -0400
Received: from ALPURAPA21.e2k.ad.ge.com (3.159.19.142) by
	ALPMBHT04.e2k.ad.ge.com (3.159.19.197) with Microsoft SMTP Server (TLS)
	id 14.3.195.1; Fri, 18 Jul 2014 16:31:56 -0400
Received: from ALPURAPA22.e2k.ad.ge.com ([169.254.4.70]) by
	ALPURAPA21.e2k.ad.ge.com ([169.254.3.9]) with mapi id 14.03.0174.002;
	Fri, 18 Jul 2014 16:31:56 -0400
From: "Wenholz, Brian (GE Healthcare)" <Brian.Wenholz@med.ge.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: What kernel configs are needed for using DM_CRYPT with
	cryptsetup?
Thread-Index: Ac+ixR9isSA+Su5xSOmDA+MsKzpe/A==
Date: Fri, 18 Jul 2014 20:31:56 +0000
Message-ID: <4F1B91CF7B31604FABE8442530201B78122055CD@ALPURAPA22.e2k.ad.ge.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-dg-ref: PG1ldGE+PGF0IG5tPSIuY29uZmlnIiBwPSJcXHN1bnJpc2UtYnVpbGRcc3VucmlzZWJ1aWxkc1x5b2N0b1xwb2t5XGJ1aWxkLXN1bnJpc2VcdG1wXHdvcmtcc3VucmlzZS1wb2t5LWxpbnV4XGxpbnV4LXlvY3RvXDMuOC40K2dpdGF1dG9pbmMrMmE2ZDM2ZTc1Y2EwYTEyMTU3MGEzODlkN2JhYjc2ZWMyNDBjYmZkYV80N2FlZDBjMTdjMWM1NTk4ODE5OGFkMzlmODZhZTg4ODk0YzhlMGE0LXI1LjBcbGludXgtc3VucmlzZS1zdGFuZGFyZC1idWlsZFwuY29uZmlnIiBzej0iODc0ODIiIHQ9IjEzMDUwMTgxMTkwNjMxNzY3OSIgaD0iRzNtaC95czB2dnVObHJRSzhYSjlFY1Jielc0PSIgaWQ9IiIgYmw9IjAiLz48L21ldGE+
x-originating-ip: [3.159.19.187]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.12.52, 1.0.14,
	0.0.0000
	definitions=2014-07-18_05:2014-07-18, 2014-07-18,
	1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
	suspectscore=0 phishscore=0
	adultscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1
	engine=7.0.1-1402240000 definitions=main-1407180240
Subject: What kernel configs are needed for using DM_CRYPT with cryptsetup?
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
X-List-Received-Date: Fri, 18 Jul 2014 23:00:36 -0000
X-Groupsio-MsgNum: 20641
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_4F1B91CF7B31604FABE8442530201B78122055CDALPURAPA22e2kad_"

--_004_4F1B91CF7B31604FABE8442530201B78122055CDALPURAPA22e2kad_
Content-Type: multipart/alternative;
	boundary="_000_4F1B91CF7B31604FABE8442530201B78122055CDALPURAPA22e2kad_"

--_000_4F1B91CF7B31604FABE8442530201B78122055CDALPURAPA22e2kad_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

I have been struggling to get this working. I intend to use an encrypted lo=
op device during runtime (not at boot time). I have included the meta-oe cr=
yptsetup recipe (V1.6.2) and am trying to "create" (or open) the loop file =
on my Yocto system.

The basic attempt is:

head -c 100M /dev/zero > test
cryptsetup create t1  test

The passphrase is requested and then cryptsetup hangs. Strace reveals that =
cryptsetup is hanging on a kernel semaphore that never returns, but I have =
been unable to decipher (pun intended) what the meaning of the strace log i=
s.

Any help would be appreciated.

Brian Wenholz

The strace log follows and kernel config is attached:

execve("/usr/sbin/cryptsetup", ["cryptsetup", "create", "t1", "test"], [/* =
15 vars */]) =3D 0
brk(0)                                  =3D 0x8056000
mmap2(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) =
=3D 0xb77ca000
access("/etc/ld.so.preload", R_OK)      =3D -1 ENOENT (No such file or dire=
ctory)
open("/etc/ld.so.cache", O_RDONLY|O_CLOEXEC) =3D 3
fstat64(3, {st_mode=3DS_IFREG|0644, st_size=3D43040, ...}) =3D 0
mmap2(NULL, 43040, PROT_READ, MAP_PRIVATE, 3, 0) =3D 0xb77bf000
close(3)                                =3D 0
open("/usr/lib/libcryptsetup.so.4", O_RDONLY|O_CLOEXEC) =3D 3
read(3, "\177ELF\1\1\1\0\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0\220\320\207H4\0\0\=
0"..., 512) =3D 512
fstat64(3, {st_mode=3DS_IFREG|0755, st_size=3D158244, ...}) =3D 0
mmap2(0x4887a000, 155620, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3=
, 0) =3D 0x4887a000
mmap2(0x4889f000, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DEN=
YWRITE, 3, 0x25) =3D 0x4889f000
close(3)                                =3D 0
open("/usr/lib/libpopt.so.0", O_RDONLY|O_CLOEXEC) =3D 3
read(3, "\177ELF\1\1\1\0\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0P:\213H4\0\0\0"...,=
 512) =3D 512
fstat64(3, {st_mode=3DS_IFREG|0755, st_size=3D47060, ...}) =3D 0
mmap2(0x488b2000, 48332, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3,=
 0) =3D 0x488b2000
mmap2(0x488bd000, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DEN=
YWRITE, 3, 0xa) =3D 0x488bd000
close(3)                                =3D 0
open("/lib/libc.so.6", O_RDONLY|O_CLOEXEC) =3D 3
read(3, "\177ELF\1\1\1\0\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0p6\272I4\0\0\0"...,=
 512) =3D 512
fstat64(3, {st_mode=3DS_IFREG|0755, st_size=3D1527200, ...}) =3D 0
mmap2(0x49b8a000, 1534652, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, =
3, 0) =3D 0x49b8a000
mmap2(0x49cfb000, 12288, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DE=
NYWRITE, 3, 0x171) =3D 0x49cfb000
mmap2(0x49cfe000, 10940, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_AN=
ONYMOUS, -1, 0) =3D 0x49cfe000
close(3)                                =3D 0
open("/lib/libuuid.so.1", O_RDONLY|O_CLOEXEC) =3D 3
read(3, "\177ELF\1\1\1\0\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0\320N{H4\0\0\0"...,=
 512) =3D 512
fstat64(3, {st_mode=3DS_IFREG|0755, st_size=3D15820, ...}) =3D 0
mmap2(0x487b4000, 12776, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3,=
 0) =3D 0x487b4000
mmap2(0x487b7000, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DEN=
YWRITE, 3, 0x3) =3D 0x487b7000
close(3)                                =3D 0
open("/usr/lib/libdevmapper.so.1.02", O_RDONLY|O_CLOEXEC) =3D 3
read(3, "\177ELF\1\1\1\0\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0\300\361{H4\0\0\0".=
.., 512) =3D 512
fstat64(3, {st_mode=3DS_IFREG|0555, st_size=3D242320, ...}) =3D 0
mmap2(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) =
=3D 0xb77be000
mmap2(0x487ba000, 243612, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3=
, 0) =3D 0x487ba000
mmap2(0x487f2000, 12288, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DE=
NYWRITE, 3, 0x38) =3D 0x487f2000
mmap2(0x487f5000, 1948, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANO=
NYMOUS, -1, 0) =3D 0x487f5000
close(3)                                =3D 0
open("/usr/lib/libssl.so.1.0.0", O_RDONLY|O_CLOEXEC) =3D 3
read(3, "\177ELF\1\1\1\0\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0\220a\202H4\0\0\0".=
.., 512) =3D 512
fstat64(3, {st_mode=3DS_IFREG|0755, st_size=3D387880, ...}) =3D 0
mmap2(0x4881a000, 385004, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3=
, 0) =3D 0x4881a000
mmap2(0x48873000, 20480, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DE=
NYWRITE, 3, 0x59) =3D 0x48873000
close(3)                                =3D 0
open("/lib/libcrypto.so.1.0.0", O_RDONLY|O_CLOEXEC) =3D 3
read(3, "\177ELF\1\1\1\0\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0@\211\222H4\0\0\0".=
.., 512) =3D 512
fstat64(3, {st_mode=3DS_IFREG|0755, st_size=3D1798156, ...}) =3D 0
mmap2(0x488e6000, 1808880, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, =
3, 0) =3D 0x488e6000
mmap2(0x48a85000, 98304, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DE=
NYWRITE, 3, 0x19f) =3D 0x48a85000
mmap2(0x48a9d000, 10736, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_AN=
ONYMOUS, -1, 0) =3D 0x48a9d000
close(3)                                =3D 0
open("/lib/libudev.so.0", O_RDONLY|O_CLOEXEC) =3D 3
read(3, "\177ELF\1\1\1\0\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0`\264\200H4\0\0\0".=
.., 512) =3D 512
fstat64(3, {st_mode=3DS_IFREG|0755, st_size=3D56976, ...}) =3D 0
mmap2(0x48809000, 58164, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3,=
 0) =3D 0x48809000
mmap2(0x48817000, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DEN=
YWRITE, 3, 0xd) =3D 0x48817000
close(3)                                =3D 0
open("/lib/libdl.so.2", O_RDONLY|O_CLOEXEC) =3D 3
read(3, "\177ELF\1\1\1\0\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0\260:\320I4\0\0\0".=
.., 512) =3D 512
fstat64(3, {st_mode=3DS_IFREG|0755, st_size=3D15576, ...}) =3D 0
mmap2(0x49d03000, 16516, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3,=
 0) =3D 0x49d03000
mmap2(0x49d06000, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DEN=
YWRITE, 3, 0x2) =3D 0x49d06000
close(3)                                =3D 0
open("/lib/librt.so.1", O_RDONLY|O_CLOEXEC) =3D 3
read(3, "\177ELF\1\1\1\0\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0\220)\327I4\0\0\0".=
.., 512) =3D 512
fstat64(3, {st_mode=3DS_IFREG|0755, st_size=3D32476, ...}) =3D 0
mmap2(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) =
=3D 0xb77bd000
mmap2(0x49d71000, 33356, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3,=
 0) =3D 0x49d71000
mmap2(0x49d78000, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DEN=
YWRITE, 3, 0x6) =3D 0x49d78000
close(3)                                =3D 0
open("/lib/libpthread.so.0", O_RDONLY|O_CLOEXEC) =3D 3
read(3, "\177ELF\1\1\1\0\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0@\372\320I4\0\0\0".=
.., 512) =3D 512
fstat64(3, {st_mode=3DS_IFREG|0755, st_size=3D93860, ...}) =3D 0
mmap2(0x49d0a000, 102920, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3=
, 0) =3D 0x49d0a000
mmap2(0x49d20000, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DEN=
YWRITE, 3, 0x15) =3D 0x49d20000
mmap2(0x49d22000, 4616, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANO=
NYMOUS, -1, 0) =3D 0x49d22000
close(3)                                =3D 0
mmap2(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) =
=3D 0xb77bc000
mmap2(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) =
=3D 0xb77bb000
set_thread_area({entry_number:-1 -> 6, base_addr:0xb77bcac0, limit:1048575,=
 seg_32bit:1, contents:0, read_exec_only:0, limit_in_pages:1, seg_not_prese=
nt:0, useable:1}) =3D 0
mprotect(0x49cfb000, 8192, PROT_READ)   =3D 0
mprotect(0x487b0000, 4096, PROT_READ)   =3D 0
mprotect(0x49d06000, 4096, PROT_READ)   =3D 0
mprotect(0x49d78000, 4096, PROT_READ)   =3D 0
mprotect(0x49d20000, 4096, PROT_READ)   =3D 0
munmap(0xb77bf000, 43040)               =3D 0
set_tid_address(0xb77bcb28)             =3D 1310
set_robust_list(0xb77bcb30, 12)         =3D 0
futex(0xbfc4f218, FUTEX_WAKE_PRIVATE, 1) =3D 0
futex(0xbfc4f214, FUTEX_WAIT_BITSET_PRIVATE|FUTEX_CLOCK_REALTIME, 1, NULL, =
b77bcac0) =3D -1 EAGAIN (Resource temporarily unavailable)
rt_sigaction(SIGRTMIN, {0x49d0f460, [], SA_SIGINFO}, NULL, 8) =3D 0
rt_sigaction(SIGRT_1, {0x49d0f4f0, [], SA_RESTART|SA_SIGINFO}, NULL, 8) =3D=
 0
rt_sigprocmask(SIG_UNBLOCK, [RTMIN RT_1], NULL, 8) =3D 0
getrlimit(RLIMIT_STACK, {rlim_cur=3D8192*1024, rlim_max=3DRLIM_INFINITY}) =
=3D 0
uname({sys=3D"Linux", node=3D"lintest", ...}) =3D 0
brk(0)                                  =3D 0x8056000
brk(0x8077000)                          =3D 0x8077000
mlockall(MCL_CURRENT|MCL_FUTURE)        =3D 0
getpriority(PRIO_PROCESS, 0)            =3D 20
setpriority(PRIO_PROCESS, 0, -18)       =3D 0
rt_sigaction(SIGINT, {0x804c2d0, [], 0}, NULL, 8) =3D 0
rt_sigaction(SIGTERM, {0x804c2d0, [], 0}, NULL, 8) =3D 0
rt_sigprocmask(SIG_UNBLOCK, [INT TERM], NULL, 8) =3D 0
open("test", O_RDONLY|O_LARGEFILE)      =3D 3
fstat64(3, {st_mode=3DS_IFREG|0644, st_size=3D104857600, ...}) =3D 0
close(3)                                =3D 0
open("/dev/urandom", O_RDONLY|O_LARGEFILE) =3D 3
open("/dev/random", O_RDONLY|O_NONBLOCK|O_LARGEFILE) =3D 4
open("/dev/crypto", O_RDWR)             =3D -1 ENOENT (No such file or dire=
ctory)
ioctl(0, SNDCTL_TMR_TIMEBASE or SNDRV_TIMER_IOCTL_NEXT_DEVICE or TCGETS, {B=
115200 opost isig icanon echo ...}) =3D 0
open("/dev/tty", O_RDWR|O_LARGEFILE)    =3D 5
ioctl(5, SNDCTL_TMR_TIMEBASE or SNDRV_TIMER_IOCTL_NEXT_DEVICE or TCGETS, {B=
115200 opost isig icanon echo ...}) =3D 0
write(5, "Enter passphrase: ", 18Enter passphrase: )      =3D 18
ioctl(5, SNDCTL_TMR_CONTINUE or SNDRV_TIMER_IOCTL_GPARAMS or TCSETSF, {B115=
200 opost isig icanon -echo ...}) =3D 0
read(5, "gehc-mic\n", 512)              =3D 9
ioctl(5, SNDCTL_TMR_CONTINUE or SNDRV_TIMER_IOCTL_GPARAMS or TCSETSF, {B115=
200 opost isig icanon echo ...}) =3D 0
write(5, "\n", 1
)                       =3D 1
close(5)                                =3D 0
uname({sys=3D"Linux", node=3D"sunrise", ...}) =3D 0
uname({sys=3D"Linux", node=3D"sunrise", ...}) =3D 0
stat64("/dev/mapper/control", {st_mode=3DS_IFCHR|0600, st_rdev=3Dmakedev(10=
, 236), ...}) =3D 0
open("/dev/mapper/control", O_RDWR|O_LARGEFILE) =3D 5
open("/proc/devices", O_RDONLY|O_LARGEFILE) =3D 6
fstat64(6, {st_mode=3DS_IFREG|0444, st_size=3D0, ...}) =3D 0
mmap2(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) =
=3D 0xb77c9000
read(6, "Character devices:\n  1 mem\n  2 p"..., 1024) =3D 513
close(6)                                =3D 0
munmap(0xb77c9000, 4096)                =3D 0
ioctl(5, DM_VERSION, 0x8059ba8)         =3D 0
ioctl(5, DM_LIST_VERSIONS, 0x8059b10)   =3D 0
semctl(0, 0, IPC_64|SEM_INFO, 0xbfc4f0a8) =3D 0
open("/etc/udev/udev.conf", O_RDONLY|O_LARGEFILE|O_CLOEXEC) =3D 6
fcntl64(6, F_GETFD)                     =3D 0x1 (flags FD_CLOEXEC)
fstat64(6, {st_mode=3DS_IFREG|0644, st_size=3D69, ...}) =3D 0
mmap2(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) =
=3D 0xb77c9000
read(6, "# see udev(7) for details\n\n#udev"..., 1024) =3D 69
read(6, "", 1024)                       =3D 0
close(6)                                =3D 0
munmap(0xb77c9000, 4096)                =3D 0
open("/var/run/udev/queue.bin", O_RDONLY|O_LARGEFILE|O_CLOEXEC) =3D 6
fstat64(6, {st_mode=3DS_IFREG|0644, st_size=3D8, ...}) =3D 0
mmap2(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) =
=3D 0xb77c9000
read(6, "\337\5\0\0\0\0\0\0", 4096)     =3D 8
close(6)                                =3D 0
munmap(0xb77c9000, 4096)                =3D 0
ioctl(5, DM_TABLE_STATUS, 0x8059a40)    =3D -1 ENXIO (No such device or add=
ress)
open("/dev/loop-control", O_RDONLY|O_LARGEFILE) =3D 6
ioctl(6, LOOP_CTL_GET_FREE)             =3D 1
close(6)                                =3D 0
stat64("/dev/loop1", {st_mode=3DS_IFBLK|0660, st_rdev=3Dmakedev(7, 1), ...}=
) =3D 0
open("test", O_RDWR|O_EXCL|O_LARGEFILE) =3D 6
open("/dev/loop1", O_RDWR|O_LARGEFILE)  =3D 7
ioctl(7, LOOP_SET_FD, 0x6)              =3D 0
ioctl(7, LOOP_SET_STATUS64, {offset=3D0, number=3D0, flags=3DLO_FLAGS_AUTOC=
LEAR, file_name=3D"test", ...}) =3D 0
ioctl(7, LOOP_GET_STATUS64, {offset=3D0, number=3D1, flags=3DLO_FLAGS_AUTOC=
LEAR, file_name=3D"test", ...}) =3D 0
close(6)                                =3D 0
open("/dev/loop1", O_RDONLY|O_LARGEFILE) =3D 6
fstat64(6, {st_mode=3DS_IFBLK|0660, st_rdev=3Dmakedev(7, 1), ...}) =3D 0
close(6)                                =3D 0
stat64("/dev/loop1", {st_mode=3DS_IFBLK|0660, st_rdev=3Dmakedev(7, 1), ...}=
) =3D 0
open("/dev/loop1", O_RDWR|O_EXCL|O_LARGEFILE) =3D 6
ioctl(6, BLKROGET, 0)                   =3D 0
ioctl(6, BLKGETSIZE64, 104857600)       =3D 0
close(6)                                =3D 0
open("/dev/urandom", O_RDONLY|O_LARGEFILE) =3D 6
read(6, "L|", 2)                        =3D 2
semget(0xd4d7c4c, 1, IPC_CREAT|IPC_EXCL|0600) =3D 0
semctl(0, 0, IPC_64|SETVAL, 0xbfc4efa8) =3D 0
semctl(0, 0, IPC_64|GETVAL, 0xbfc4efa8) =3D 1
close(6)                                =3D 0
semop(0, {{0, 1, 0}}, 1)                =3D 0
semctl(0, 0, IPC_64|GETVAL, 0xbfc4f008) =3D 2
open("/dev/loop1", O_RDONLY|O_LARGEFILE) =3D 6
ioctl(6, BLKRAGET, 256)                 =3D 0
close(6)                                =3D 0
ioctl(5, DM_DEV_CREATE, 0x805dad8)      =3D 0
ioctl(5, DM_TABLE_LOAD, 0x805dad8)      =3D 0
ioctl(5, DM_DEV_SUSPEND, 0x805dad8)     =3D 0
semget(0xd4d7c4c, 1, 0)                 =3D 0
semctl(0, 0, IPC_64|GETVAL, 0xbfc4eff8) =3D 2
semop(0, {{0, -1, IPC_NOWAIT}}, 1)      =3D 0
semop(0, {{0, 0, 0}}, 1



--_000_4F1B91CF7B31604FABE8442530201B78122055CDALPURAPA22e2kad_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Arial","sans-serif";
	color:black;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">All,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">I have been struggling to get=
 this working. I intend to use an encrypted loop device during runtime (not=
 at boot time). I have included the meta-oe cryptsetup recipe
 (V1.6.2) and am trying to &#8220;create&#8221; (or open) the loop file on =
my Yocto system.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">The basic attempt is:<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">head -c 100M /dev/zero &gt; t=
est<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">cryptsetup create t1&nbsp; te=
st<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">The passphrase is requested a=
nd then cryptsetup hangs. Strace reveals that cryptsetup is hanging on a ke=
rnel semaphore that never returns, but I have been unable
 to decipher (pun intended) what the meaning of the strace log is. <o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">Any help would be appreciated=
.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">Brian Wenholz<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">The strace log follows and ke=
rnel config is attached:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">execve(&quot;/usr/sbin/crypts=
etup&quot;, [&quot;cryptsetup&quot;, &quot;create&quot;, &quot;t1&quot;, &q=
uot;test&quot;], [/* 15 vars */]) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">brk(0)&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; =3D 0x8056000<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(NULL, 4096, PROT_READ|P=
ROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) =3D 0xb77ca000<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">access(&quot;/etc/ld.so.prelo=
ad&quot;, R_OK)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D -1 ENOENT (No such file o=
r directory)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/etc/ld.so.cache&q=
uot;, O_RDONLY|O_CLOEXEC) =3D 3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">fstat64(3, {st_mode=3DS_IFREG=
|0644, st_size=3D43040, ...}) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(NULL, 43040, PROT_READ,=
 MAP_PRIVATE, 3, 0) =3D 0xb77bf000<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(3)&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/usr/lib/libcrypts=
etup.so.4&quot;, O_RDONLY|O_CLOEXEC) =3D 3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">read(3, &quot;\177ELF\1\1\1\0=
\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0\220\320\207H4\0\0\0&quot;..., 512) =3D 512=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">fstat64(3, {st_mode=3DS_IFREG=
|0755, st_size=3D158244, ...}) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x4887a000, 155620, PRO=
T_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) =3D 0x4887a000<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x4889f000, 4096, PROT_=
READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x25) =3D 0x4889f0=
00<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(3)&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/usr/lib/libpopt.s=
o.0&quot;, O_RDONLY|O_CLOEXEC) =3D 3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">read(3, &quot;\177ELF\1\1\1\0=
\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0P:\213H4\0\0\0&quot;..., 512) =3D 512<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">fstat64(3, {st_mode=3DS_IFREG=
|0755, st_size=3D47060, ...}) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x488b2000, 48332, PROT=
_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) =3D 0x488b2000<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x488bd000, 4096, PROT_=
READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0xa) =3D 0x488bd00=
0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(3)&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/lib/libc.so.6&quo=
t;, O_RDONLY|O_CLOEXEC) =3D 3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">read(3, &quot;\177ELF\1\1\1\0=
\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0p6\272I4\0\0\0&quot;..., 512) =3D 512<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">fstat64(3, {st_mode=3DS_IFREG=
|0755, st_size=3D1527200, ...}) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x49b8a000, 1534652, PR=
OT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) =3D 0x49b8a000<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x49cfb000, 12288, PROT=
_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x171) =3D 0x49cf=
b000<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x49cfe000, 10940, PROT=
_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) =3D 0x49cfe00=
0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(3)&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/lib/libuuid.so.1&=
quot;, O_RDONLY|O_CLOEXEC) =3D 3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">read(3, &quot;\177ELF\1\1\1\0=
\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0\320N{H4\0\0\0&quot;..., 512) =3D 512<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">fstat64(3, {st_mode=3DS_IFREG=
|0755, st_size=3D15820, ...}) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x487b4000, 12776, PROT=
_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) =3D 0x487b4000<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x487b7000, 4096, PROT_=
READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x3) =3D 0x487b700=
0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(3)&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/usr/lib/libdevmap=
per.so.1.02&quot;, O_RDONLY|O_CLOEXEC) =3D 3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">read(3, &quot;\177ELF\1\1\1\0=
\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0\300\361{H4\0\0\0&quot;..., 512) =3D 512<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">fstat64(3, {st_mode=3DS_IFREG=
|0555, st_size=3D242320, ...}) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(NULL, 4096, PROT_READ|P=
ROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) =3D 0xb77be000<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x487ba000, 243612, PRO=
T_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) =3D 0x487ba000<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x487f2000, 12288, PROT=
_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x38) =3D 0x487f2=
000<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x487f5000, 1948, PROT_=
READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) =3D 0x487f5000=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(3)&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/usr/lib/libssl.so=
.1.0.0&quot;, O_RDONLY|O_CLOEXEC) =3D 3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">read(3, &quot;\177ELF\1\1\1\0=
\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0\220a\202H4\0\0\0&quot;..., 512) =3D 512<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">fstat64(3, {st_mode=3DS_IFREG=
|0755, st_size=3D387880, ...}) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x4881a000, 385004, PRO=
T_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) =3D 0x4881a000<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x48873000, 20480, PROT=
_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x59) =3D 0x48873=
000<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(3)&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/lib/libcrypto.so.=
1.0.0&quot;, O_RDONLY|O_CLOEXEC) =3D 3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">read(3, &quot;\177ELF\1\1\1\0=
\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0@\211\222H4\0\0\0&quot;..., 512) =3D 512<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">fstat64(3, {st_mode=3DS_IFREG=
|0755, st_size=3D1798156, ...}) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x488e6000, 1808880, PR=
OT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) =3D 0x488e6000<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x48a85000, 98304, PROT=
_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x19f) =3D 0x48a8=
5000<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x48a9d000, 10736, PROT=
_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) =3D 0x48a9d00=
0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(3)&nbsp;&nbsp;&nbsp;&nb=
sp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;=3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/lib/libudev.so.0&=
quot;, O_RDONLY|O_CLOEXEC) =3D 3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">read(3, &quot;\177ELF\1\1\1\0=
\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0`\264\200H4\0\0\0&quot;..., 512) =3D 512<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">fstat64(3, {st_mode=3DS_IFREG=
|0755, st_size=3D56976, ...}) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x48809000, 58164, PROT=
_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) =3D 0x48809000<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x48817000, 4096, PROT_=
READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0xd) =3D 0x4881700=
0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(3)&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/lib/libdl.so.2&qu=
ot;, O_RDONLY|O_CLOEXEC) =3D 3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">read(3, &quot;\177ELF\1\1\1\0=
\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0\260:\320I4\0\0\0&quot;..., 512) =3D 512<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">fstat64(3, {st_mode=3DS_IFREG=
|0755, st_size=3D15576, ...}) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x49d03000, 16516, PROT=
_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) =3D 0x49d03000<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x49d06000, 8192, PROT_=
READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x2) =3D 0x49d0600=
0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(3)&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/lib/librt.so.1&qu=
ot;, O_RDONLY|O_CLOEXEC) =3D 3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">read(3, &quot;\177ELF\1\1\1\0=
\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0\220)\327I4\0\0\0&quot;..., 512) =3D 512<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">fstat64(3, {st_mode=3DS_IFREG=
|0755, st_size=3D32476, ...}) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(NULL, 4096, PROT_READ|P=
ROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) =3D 0xb77bd000<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x49d71000, 33356, PROT=
_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) =3D 0x49d71000<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x49d78000, 8192, PROT_=
READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x6) =3D 0x49d7800=
0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(3)&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/lib/libpthread.so=
.0&quot;, O_RDONLY|O_CLOEXEC) =3D 3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">read(3, &quot;\177ELF\1\1\1\0=
\0\0\0\0\0\0\0\0\3\0\3\0\1\0\0\0@\372\320I4\0\0\0&quot;..., 512) =3D 512<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">fstat64(3, {st_mode=3DS_IFREG=
|0755, st_size=3D93860, ...}) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x49d0a000, 102920, PRO=
T_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) =3D 0x49d0a000<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x49d20000, 8192, PROT_=
READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x15) =3D 0x49d200=
00<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(0x49d22000, 4616, PROT_=
READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) =3D 0x49d22000=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(3)&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(NULL, 4096, PROT_READ|P=
ROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) =3D 0xb77bc000<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(NULL, 4096, PROT_READ|P=
ROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) =3D 0xb77bb000<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">set_thread_area({entry_number=
:-1 -&gt; 6, base_addr:0xb77bcac0, limit:1048575, seg_32bit:1, contents:0, =
read_exec_only:0, limit_in_pages:1, seg_not_present:0, useable:1})
 =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mprotect(0x49cfb000, 8192, PR=
OT_READ)&nbsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mprotect(0x487b0000, 4096, PR=
OT_READ)&nbsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mprotect(0x49d06000, 4096, PR=
OT_READ)&nbsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mprotect(0x49d78000, 4096, PR=
OT_READ)&nbsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mprotect(0x49d20000, 4096, PR=
OT_READ)&nbsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">munmap(0xb77bf000, 43040)&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">set_tid_address(0xb77bcb28)&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
1310<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">set_robust_list(0xb77bcb30, 1=
2)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D 0<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">futex(0xbfc4f218, FUTEX_WAKE_=
PRIVATE, 1) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">futex(0xbfc4f214, FUTEX_WAIT_=
BITSET_PRIVATE|FUTEX_CLOCK_REALTIME, 1, NULL, b77bcac0) =3D -1 EAGAIN (Reso=
urce temporarily unavailable)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">rt_sigaction(SIGRTMIN, {0x49d=
0f460, [], SA_SIGINFO}, NULL, 8) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">rt_sigaction(SIGRT_1, {0x49d0=
f4f0, [], SA_RESTART|SA_SIGINFO}, NULL, 8) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">rt_sigprocmask(SIG_UNBLOCK, [=
RTMIN RT_1], NULL, 8) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">getrlimit(RLIMIT_STACK, {rlim=
_cur=3D8192*1024, rlim_max=3DRLIM_INFINITY}) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">uname({sys=3D&quot;Linux&quot=
;, node=3D&quot;lintest&quot;, ...}) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">brk(0)&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; =3D 0x8056000<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">brk(0x8077000)&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D 0x8077000<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mlockall(MCL_CURRENT|MCL_FUTU=
RE)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">getpriority(PRIO_PROCESS, 0)&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D 20<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">setpriority(PRIO_PROCESS, 0, =
-18)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">rt_sigaction(SIGINT, {0x804c2=
d0, [], 0}, NULL, 8) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">rt_sigaction(SIGTERM, {0x804c=
2d0, [], 0}, NULL, 8) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">rt_sigprocmask(SIG_UNBLOCK, [=
INT TERM], NULL, 8) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;test&quot;, O_RDON=
LY|O_LARGEFILE)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D 3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">fstat64(3, {st_mode=3DS_IFREG=
|0644, st_size=3D104857600, ...}) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(3)&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/dev/urandom&quot;=
, O_RDONLY|O_LARGEFILE) =3D 3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/dev/random&quot;,=
 O_RDONLY|O_NONBLOCK|O_LARGEFILE) =3D 4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/dev/crypto&quot;,=
 O_RDWR)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; =3D -1 ENOENT (No such file or directory)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">ioctl(0, SNDCTL_TMR_TIMEBASE =
or SNDRV_TIMER_IOCTL_NEXT_DEVICE or TCGETS, {B115200 opost isig icanon echo=
 ...}) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/dev/tty&quot;, O_=
RDWR|O_LARGEFILE)&nbsp;&nbsp;&nbsp; =3D 5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">ioctl(5, SNDCTL_TMR_TIMEBASE =
or SNDRV_TIMER_IOCTL_NEXT_DEVICE or TCGETS, {B115200 opost isig icanon echo=
 ...}) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">write(5, &quot;Enter passphra=
se: &quot;, 18Enter passphrase: )&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D 18<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">ioctl(5, SNDCTL_TMR_CONTINUE =
or SNDRV_TIMER_IOCTL_GPARAMS or TCSETSF, {B115200 opost isig icanon -echo .=
..}) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">read(5, &quot;gehc-mic\n&quot=
;, 512)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; =3D 9<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">ioctl(5, SNDCTL_TMR_CONTINUE =
or SNDRV_TIMER_IOCTL_GPARAMS or TCSETSF, {B115200 opost isig icanon echo ..=
.}) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">write(5, &quot;\n&quot;, 1<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">)&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=3D 1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(5)&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">uname({sys=3D&quot;Linux&quot=
;, node=3D&quot;sunrise&quot;, ...}) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">uname({sys=3D&quot;Linux&quot=
;, node=3D&quot;sunrise&quot;, ...}) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">stat64(&quot;/dev/mapper/cont=
rol&quot;, {st_mode=3DS_IFCHR|0600, st_rdev=3Dmakedev(10, 236), ...}) =3D 0=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/dev/mapper/contro=
l&quot;, O_RDWR|O_LARGEFILE) =3D 5<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/proc/devices&quot=
;, O_RDONLY|O_LARGEFILE) =3D 6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">fstat64(6, {st_mode=3DS_IFREG=
|0444, st_size=3D0, ...}) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(NULL, 4096, PROT_READ|P=
ROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) =3D 0xb77c9000<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">read(6, &quot;Character devic=
es:\n &nbsp;1 mem\n&nbsp; 2 p&quot;..., 1024) =3D 513<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(6)&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">munmap(0xb77c9000, 4096)&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">ioctl(5, DM_VERSION, 0x8059ba=
8)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D 0<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">ioctl(5, DM_LIST_VERSIONS, 0x=
8059b10)&nbsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">semctl(0, 0, IPC_64|SEM_INFO,=
 0xbfc4f0a8) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/etc/udev/udev.con=
f&quot;, O_RDONLY|O_LARGEFILE|O_CLOEXEC) =3D 6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">fcntl64(6, F_GETFD)&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D 0x1 (flags FD_CLOEXEC)<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">fstat64(6, {st_mode=3DS_IFREG=
|0644, st_size=3D69, ...}) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(NULL, 4096, PROT_READ|P=
ROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) =3D 0xb77c9000<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">read(6, &quot;# see udev(7) f=
or details\n\n#udev&quot;..., 1024) =3D 69<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">read(6, &quot;&quot;, 1024)&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D 0<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(6)&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">munmap(0xb77c9000, 4096)&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/var/run/udev/queu=
e.bin&quot;, O_RDONLY|O_LARGEFILE|O_CLOEXEC) =3D 6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">fstat64(6, {st_mode=3DS_IFREG=
|0644, st_size=3D8, ...}) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">mmap2(NULL, 4096, PROT_READ|P=
ROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) =3D 0xb77c9000<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">read(6, &quot;\337\5\0\0\0\0\=
0\0&quot;, 4096)&nbsp;&nbsp;&nbsp;&nbsp; =3D 8<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(6)&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">munmap(0xb77c9000, 4096)&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">ioctl(5, DM_TABLE_STATUS, 0x8=
059a40)&nbsp;&nbsp;&nbsp; =3D -1 ENXIO (No such device or address)<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/dev/loop-control&=
quot;, O_RDONLY|O_LARGEFILE) =3D 6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">ioctl(6, LOOP_CTL_GET_FREE)&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(6)&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">stat64(&quot;/dev/loop1&quot;=
, {st_mode=3DS_IFBLK|0660, st_rdev=3Dmakedev(7, 1), ...}) =3D 0<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;test&quot;, O_RDWR=
|O_EXCL|O_LARGEFILE) =3D 6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/dev/loop1&quot;, =
O_RDWR|O_LARGEFILE)&nbsp; =3D 7<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">ioctl(7, LOOP_SET_FD, 0x6)&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">ioctl(7, LOOP_SET_STATUS64, {=
offset=3D0, number=3D0, flags=3DLO_FLAGS_AUTOCLEAR, file_name=3D&quot;test&=
quot;, ...}) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">ioctl(7, LOOP_GET_STATUS64, {=
offset=3D0, number=3D1, flags=3DLO_FLAGS_AUTOCLEAR, file_name=3D&quot;test&=
quot;, ...}) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(6)&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/dev/loop1&quot;, =
O_RDONLY|O_LARGEFILE) =3D 6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">fstat64(6, {st_mode=3DS_IFBLK=
|0660, st_rdev=3Dmakedev(7, 1), ...}) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(6)&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">stat64(&quot;/dev/loop1&quot;=
, {st_mode=3DS_IFBLK|0660, st_rdev=3Dmakedev(7, 1), ...}) =3D 0<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/dev/loop1&quot;, =
O_RDWR|O_EXCL|O_LARGEFILE) =3D 6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">ioctl(6, BLKROGET, 0)&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">ioctl(6, BLKGETSIZE64, 104857=
600)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(6)&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/dev/urandom&quot;=
, O_RDONLY|O_LARGEFILE) =3D 6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">read(6, &quot;L|&quot;, 2)&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D 2<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">semget(0xd4d7c4c, 1, IPC_CREA=
T|IPC_EXCL|0600) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">semctl(0, 0, IPC_64|SETVAL, 0=
xbfc4efa8) =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">semctl(0, 0, IPC_64|GETVAL, 0=
xbfc4efa8) =3D 1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(6)&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">semop(0, {{0, 1, 0}}, 1)&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">semctl(0, 0, IPC_64|GETVAL, 0=
xbfc4f008) =3D 2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">open(&quot;/dev/loop1&quot;, =
O_RDONLY|O_LARGEFILE) =3D 6<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">ioctl(6, BLKRAGET, 256)&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">close(6)&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">ioctl(5, DM_DEV_CREATE, 0x805=
dad8)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">ioctl(5, DM_TABLE_LOAD, 0x805=
dad8)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">ioctl(5, DM_DEV_SUSPEND, 0x80=
5dad8)&nbsp;&nbsp;&nbsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">semget(0xd4d7c4c, 1, 0)&nbsp;=
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;=3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">semctl(0, 0, IPC_64|GETVAL, 0=
xbfc4eff8) =3D 2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">semop(0, {{0, -1, IPC_NOWAIT}=
}, 1)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">semop(0, {{0, 0, 0}}, 1<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_4F1B91CF7B31604FABE8442530201B78122055CDALPURAPA22e2kad_--

--_004_4F1B91CF7B31604FABE8442530201B78122055CDALPURAPA22e2kad_
Content-Type: application/octet-stream; name="ATT21755.config"
Content-Description: ATT21755.config
Content-Disposition: attachment; filename="ATT21755.config"; size=87482;
	creation-date="Fri, 18 Jul 2014 18:19:50 GMT";
	modification-date="Fri, 18 Jul 2014 18:19:50 GMT"
Content-Transfer-Encoding: base64

IwojIEF1dG9tYXRpY2FsbHkgZ2VuZXJhdGVkIGZpbGU7IERPIE5PVCBFRElULgojIExpbnV4L3g4
NiAzLjguMTEgS2VybmVsIENvbmZpZ3VyYXRpb24KIwojIENPTkZJR182NEJJVCBpcyBub3Qgc2V0
CkNPTkZJR19YODZfMzI9eQpDT05GSUdfWDg2PXkKQ09ORklHX0lOU1RSVUNUSU9OX0RFQ09ERVI9
eQpDT05GSUdfT1VUUFVUX0ZPUk1BVD0iZWxmMzItaTM4NiIKQ09ORklHX0FSQ0hfREVGQ09ORklH
PSJhcmNoL3g4Ni9jb25maWdzL2kzODZfZGVmY29uZmlnIgpDT05GSUdfTE9DS0RFUF9TVVBQT1JU
PXkKQ09ORklHX1NUQUNLVFJBQ0VfU1VQUE9SVD15CkNPTkZJR19IQVZFX0xBVEVOQ1lUT1BfU1VQ
UE9SVD15CkNPTkZJR19NTVU9eQpDT05GSUdfTkVFRF9TR19ETUFfTEVOR1RIPXkKQ09ORklHX0dF
TkVSSUNfSVNBX0RNQT15CkNPTkZJR19HRU5FUklDX0JVRz15CkNPTkZJR19HRU5FUklDX0hXRUlH
SFQ9eQpDT05GSUdfR0VORVJJQ19HUElPPXkKQ09ORklHX0FSQ0hfTUFZX0hBVkVfUENfRkRDPXkK
Q09ORklHX1JXU0VNX1hDSEdBRERfQUxHT1JJVEhNPXkKQ09ORklHX0dFTkVSSUNfQ0FMSUJSQVRF
X0RFTEFZPXkKQ09ORklHX0FSQ0hfSEFTX0NQVV9SRUxBWD15CkNPTkZJR19BUkNIX0hBU19ERUZB
VUxUX0lETEU9eQpDT05GSUdfQVJDSF9IQVNfQ0FDSEVfTElORV9TSVpFPXkKQ09ORklHX0FSQ0hf
SEFTX0NQVV9BVVRPUFJPQkU9eQpDT05GSUdfSEFWRV9TRVRVUF9QRVJfQ1BVX0FSRUE9eQpDT05G
SUdfTkVFRF9QRVJfQ1BVX0VNQkVEX0ZJUlNUX0NIVU5LPXkKQ09ORklHX05FRURfUEVSX0NQVV9Q
QUdFX0ZJUlNUX0NIVU5LPXkKQ09ORklHX0FSQ0hfSElCRVJOQVRJT05fUE9TU0lCTEU9eQpDT05G
SUdfQVJDSF9TVVNQRU5EX1BPU1NJQkxFPXkKIyBDT05GSUdfWk9ORV9ETUEzMiBpcyBub3Qgc2V0
CiMgQ09ORklHX0FVRElUX0FSQ0ggaXMgbm90IHNldApDT05GSUdfQVJDSF9TVVBQT1JUU19PUFRJ
TUlaRURfSU5MSU5JTkc9eQpDT05GSUdfQVJDSF9TVVBQT1JUU19ERUJVR19QQUdFQUxMT0M9eQpD
T05GSUdfWDg2XzMyX1NNUD15CkNPTkZJR19YODZfSFQ9eQpDT05GSUdfWDg2XzMyX0xBWllfR1M9
eQpDT05GSUdfQVJDSF9IV0VJR0hUX0NGTEFHUz0iLWZjYWxsLXNhdmVkLWVjeCAtZmNhbGwtc2F2
ZWQtZWR4IgpDT05GSUdfQVJDSF9DUFVfUFJPQkVfUkVMRUFTRT15CkNPTkZJR19BUkNIX1NVUFBP
UlRTX1VQUk9CRVM9eQpDT05GSUdfREVGQ09ORklHX0xJU1Q9Ii9saWIvbW9kdWxlcy8kVU5BTUVf
UkVMRUFTRS8uY29uZmlnIgpDT05GSUdfSEFWRV9JUlFfV09SSz15CkNPTkZJR19JUlFfV09SSz15
CkNPTkZJR19CVUlMRFRJTUVfRVhUQUJMRV9TT1JUPXkKCiMKIyBHZW5lcmFsIHNldHVwCiMKQ09O
RklHX0VYUEVSSU1FTlRBTD15CkNPTkZJR19JTklUX0VOVl9BUkdfTElNSVQ9MzIKQ09ORklHX0NS
T1NTX0NPTVBJTEU9IiIKQ09ORklHX0xPQ0FMVkVSU0lPTj0iLXlvY3RvLXN0YW5kYXJkIgojIENP
TkZJR19MT0NBTFZFUlNJT05fQVVUTyBpcyBub3Qgc2V0CkNPTkZJR19IQVZFX0tFUk5FTF9HWklQ
PXkKQ09ORklHX0hBVkVfS0VSTkVMX0JaSVAyPXkKQ09ORklHX0hBVkVfS0VSTkVMX0xaTUE9eQpD
T05GSUdfSEFWRV9LRVJORUxfWFo9eQpDT05GSUdfSEFWRV9LRVJORUxfTFpPPXkKQ09ORklHX0tF
Uk5FTF9HWklQPXkKIyBDT05GSUdfS0VSTkVMX0JaSVAyIGlzIG5vdCBzZXQKIyBDT05GSUdfS0VS
TkVMX0xaTUEgaXMgbm90IHNldAojIENPTkZJR19LRVJORUxfWFogaXMgbm90IHNldAojIENPTkZJ
R19LRVJORUxfTFpPIGlzIG5vdCBzZXQKQ09ORklHX0RFRkFVTFRfSE9TVE5BTUU9Iihub25lKSIK
Q09ORklHX1NXQVA9eQpDT05GSUdfU1lTVklQQz15CkNPTkZJR19TWVNWSVBDX1NZU0NUTD15CkNP
TkZJR19QT1NJWF9NUVVFVUU9eQpDT05GSUdfUE9TSVhfTVFVRVVFX1NZU0NUTD15CiMgQ09ORklH
X0ZIQU5ETEUgaXMgbm90IHNldAojIENPTkZJR19BVURJVCBpcyBub3Qgc2V0CkNPTkZJR19IQVZF
X0dFTkVSSUNfSEFSRElSUVM9eQoKIwojIElSUSBzdWJzeXN0ZW0KIwpDT05GSUdfR0VORVJJQ19I
QVJESVJRUz15CkNPTkZJR19HRU5FUklDX0lSUV9QUk9CRT15CkNPTkZJR19HRU5FUklDX0lSUV9T
SE9XPXkKQ09ORklHX0dFTkVSSUNfUEVORElOR19JUlE9eQpDT05GSUdfR0VORVJJQ19JUlFfQ0hJ
UD15CkNPTkZJR19JUlFfRE9NQUlOPXkKIyBDT05GSUdfSVJRX0RPTUFJTl9ERUJVRyBpcyBub3Qg
c2V0CkNPTkZJR19JUlFfRk9SQ0VEX1RIUkVBRElORz15CkNPTkZJR19TUEFSU0VfSVJRPXkKQ09O
RklHX0NMT0NLU09VUkNFX1dBVENIRE9HPXkKQ09ORklHX0tUSU1FX1NDQUxBUj15CkNPTkZJR19H
RU5FUklDX0NMT0NLRVZFTlRTPXkKQ09ORklHX0dFTkVSSUNfQ0xPQ0tFVkVOVFNfQlVJTEQ9eQpD
T05GSUdfR0VORVJJQ19DTE9DS0VWRU5UU19CUk9BRENBU1Q9eQpDT05GSUdfR0VORVJJQ19DTE9D
S0VWRU5UU19NSU5fQURKVVNUPXkKQ09ORklHX0dFTkVSSUNfQ01PU19VUERBVEU9eQoKIwojIFRp
bWVycyBzdWJzeXN0ZW0KIwpDT05GSUdfVElDS19PTkVTSE9UPXkKQ09ORklHX05PX0haPXkKQ09O
RklHX0hJR0hfUkVTX1RJTUVSUz15CgojCiMgQ1BVL1Rhc2sgdGltZSBhbmQgc3RhdHMgYWNjb3Vu
dGluZwojCkNPTkZJR19USUNLX0NQVV9BQ0NPVU5USU5HPXkKIyBDT05GSUdfSVJRX1RJTUVfQUND
T1VOVElORyBpcyBub3Qgc2V0CkNPTkZJR19CU0RfUFJPQ0VTU19BQ0NUPXkKQ09ORklHX0JTRF9Q
Uk9DRVNTX0FDQ1RfVjM9eQojIENPTkZJR19UQVNLU1RBVFMgaXMgbm90IHNldAoKIwojIFJDVSBT
dWJzeXN0ZW0KIwpDT05GSUdfVFJFRV9QUkVFTVBUX1JDVT15CkNPTkZJR19QUkVFTVBUX1JDVT15
CkNPTkZJR19SQ1VfRkFOT1VUPTMyCkNPTkZJR19SQ1VfRkFOT1VUX0xFQUY9MTYKIyBDT05GSUdf
UkNVX0ZBTk9VVF9FWEFDVCBpcyBub3Qgc2V0CiMgQ09ORklHX1JDVV9GQVNUX05PX0haIGlzIG5v
dCBzZXQKIyBDT05GSUdfVFJFRV9SQ1VfVFJBQ0UgaXMgbm90IHNldAojIENPTkZJR19SQ1VfQk9P
U1QgaXMgbm90IHNldAojIENPTkZJR19SQ1VfTk9DQl9DUFUgaXMgbm90IHNldApDT05GSUdfSUtD
T05GSUc9eQpDT05GSUdfSUtDT05GSUdfUFJPQz15CkNPTkZJR19MT0dfQlVGX1NISUZUPTE3CkNP
TkZJR19IQVZFX1VOU1RBQkxFX1NDSEVEX0NMT0NLPXkKQ09ORklHX0FSQ0hfU1VQUE9SVFNfTlVN
QV9CQUxBTkNJTkc9eQpDT05GSUdfQVJDSF9XQU5UU19QUk9UX05VTUFfUFJPVF9OT05FPXkKQ09O
RklHX0NHUk9VUFM9eQpDT05GSUdfQ0dST1VQX0RFQlVHPXkKQ09ORklHX0NHUk9VUF9GUkVFWkVS
PXkKQ09ORklHX0NHUk9VUF9ERVZJQ0U9eQpDT05GSUdfQ1BVU0VUUz15CkNPTkZJR19QUk9DX1BJ
RF9DUFVTRVQ9eQpDT05GSUdfQ0dST1VQX0NQVUFDQ1Q9eQpDT05GSUdfUkVTT1VSQ0VfQ09VTlRF
UlM9eQpDT05GSUdfTUVNQ0c9eQpDT05GSUdfTUVNQ0dfU1dBUD15CkNPTkZJR19NRU1DR19TV0FQ
X0VOQUJMRUQ9eQpDT05GSUdfTUVNQ0dfS01FTT15CiMgQ09ORklHX0NHUk9VUF9QRVJGIGlzIG5v
dCBzZXQKQ09ORklHX0NHUk9VUF9TQ0hFRD15CkNPTkZJR19GQUlSX0dST1VQX1NDSEVEPXkKIyBD
T05GSUdfQ0ZTX0JBTkRXSURUSCBpcyBub3Qgc2V0CkNPTkZJR19SVF9HUk9VUF9TQ0hFRD15CkNP
TkZJR19CTEtfQ0dST1VQPXkKIyBDT05GSUdfREVCVUdfQkxLX0NHUk9VUCBpcyBub3Qgc2V0CiMg
Q09ORklHX0NIRUNLUE9JTlRfUkVTVE9SRSBpcyBub3Qgc2V0CkNPTkZJR19OQU1FU1BBQ0VTPXkK
Q09ORklHX1VUU19OUz15CkNPTkZJR19JUENfTlM9eQpDT05GSUdfUElEX05TPXkKQ09ORklHX05F
VF9OUz15CiMgQ09ORklHX1NDSEVEX0FVVE9HUk9VUCBpcyBub3Qgc2V0CkNPTkZJR19NTV9PV05F
Uj15CiMgQ09ORklHX1NZU0ZTX0RFUFJFQ0FURUQgaXMgbm90IHNldApDT05GSUdfUkVMQVk9eQpD
T05GSUdfQkxLX0RFVl9JTklUUkQ9eQpDT05GSUdfSU5JVFJBTUZTX1NPVVJDRT0iIgpDT05GSUdf
UkRfR1pJUD15CiMgQ09ORklHX1JEX0JaSVAyIGlzIG5vdCBzZXQKIyBDT05GSUdfUkRfTFpNQSBp
cyBub3Qgc2V0CiMgQ09ORklHX1JEX1haIGlzIG5vdCBzZXQKIyBDT05GSUdfUkRfTFpPIGlzIG5v
dCBzZXQKIyBDT05GSUdfQ0NfT1BUSU1JWkVfRk9SX1NJWkUgaXMgbm90IHNldApDT05GSUdfU1lT
Q1RMPXkKQ09ORklHX0FOT05fSU5PREVTPXkKQ09ORklHX0VYUEVSVD15CkNPTkZJR19IQVZFX1VJ
RDE2PXkKIyBDT05GSUdfVVBUSU1FX0xJTUlURURfS0VSTkVMIGlzIG5vdCBzZXQKQ09ORklHX1VJ
RDE2PXkKIyBDT05GSUdfU1lTQ1RMX1NZU0NBTEwgaXMgbm90IHNldApDT05GSUdfU1lTQ1RMX0VY
Q0VQVElPTl9UUkFDRT15CkNPTkZJR19LQUxMU1lNUz15CkNPTkZJR19LQUxMU1lNU19BTEw9eQpD
T05GSUdfSE9UUExVRz15CkNPTkZJR19QUklOVEs9eQpDT05GSUdfQlVHPXkKQ09ORklHX0VMRl9D
T1JFPXkKQ09ORklHX1BDU1BLUl9QTEFURk9STT15CkNPTkZJR19IQVZFX1BDU1BLUl9QTEFURk9S
TT15CkNPTkZJR19CQVNFX0ZVTEw9eQpDT05GSUdfRlVURVg9eQpDT05GSUdfRVBPTEw9eQpDT05G
SUdfU0lHTkFMRkQ9eQpDT05GSUdfVElNRVJGRD15CkNPTkZJR19FVkVOVEZEPXkKQ09ORklHX1NI
TUVNPXkKQ09ORklHX0FJTz15CkNPTkZJR19FTUJFRERFRD15CkNPTkZJR19IQVZFX1BFUkZfRVZF
TlRTPXkKCiMKIyBLZXJuZWwgUGVyZm9ybWFuY2UgRXZlbnRzIEFuZCBDb3VudGVycwojCkNPTkZJ
R19QRVJGX0VWRU5UUz15CiMgQ09ORklHX0RFQlVHX1BFUkZfVVNFX1ZNQUxMT0MgaXMgbm90IHNl
dApDT05GSUdfVk1fRVZFTlRfQ09VTlRFUlM9eQpDT05GSUdfUENJX1FVSVJLUz15CkNPTkZJR19T
TFVCX0RFQlVHPXkKQ09ORklHX0NPTVBBVF9CUks9eQojIENPTkZJR19TTEFCIGlzIG5vdCBzZXQK
Q09ORklHX1NMVUI9eQojIENPTkZJR19TTE9CIGlzIG5vdCBzZXQKQ09ORklHX1BST0ZJTElORz15
CkNPTkZJR19UUkFDRVBPSU5UUz15CkNPTkZJR19PUFJPRklMRT15CiMgQ09ORklHX09QUk9GSUxF
X0VWRU5UX01VTFRJUExFWCBpcyBub3Qgc2V0CkNPTkZJR19IQVZFX09QUk9GSUxFPXkKQ09ORklH
X09QUk9GSUxFX05NSV9USU1FUj15CkNPTkZJR19LUFJPQkVTPXkKIyBDT05GSUdfSlVNUF9MQUJF
TCBpcyBub3Qgc2V0CkNPTkZJR19VUFJPQkVTPXkKQ09ORklHX0hBVkVfRUZGSUNJRU5UX1VOQUxJ
R05FRF9BQ0NFU1M9eQpDT05GSUdfS1JFVFBST0JFUz15CkNPTkZJR19IQVZFX0lPUkVNQVBfUFJP
VD15CkNPTkZJR19IQVZFX0tQUk9CRVM9eQpDT05GSUdfSEFWRV9LUkVUUFJPQkVTPXkKQ09ORklH
X0hBVkVfT1BUUFJPQkVTPXkKQ09ORklHX0hBVkVfQVJDSF9UUkFDRUhPT0s9eQpDT05GSUdfSEFW
RV9ETUFfQVRUUlM9eQpDT05GSUdfSEFWRV9ETUFfQ09OVElHVU9VUz15CkNPTkZJR19VU0VfR0VO
RVJJQ19TTVBfSEVMUEVSUz15CkNPTkZJR19HRU5FUklDX1NNUF9JRExFX1RIUkVBRD15CkNPTkZJ
R19IQVZFX1JFR1NfQU5EX1NUQUNLX0FDQ0VTU19BUEk9eQpDT05GSUdfSEFWRV9ETUFfQVBJX0RF
QlVHPXkKQ09ORklHX0hBVkVfSFdfQlJFQUtQT0lOVD15CkNPTkZJR19IQVZFX01JWEVEX0JSRUFL
UE9JTlRTX1JFR1M9eQpDT05GSUdfSEFWRV9VU0VSX1JFVFVSTl9OT1RJRklFUj15CkNPTkZJR19I
QVZFX1BFUkZfRVZFTlRTX05NST15CkNPTkZJR19IQVZFX1BFUkZfUkVHUz15CkNPTkZJR19IQVZF
X1BFUkZfVVNFUl9TVEFDS19EVU1QPXkKQ09ORklHX0hBVkVfQVJDSF9KVU1QX0xBQkVMPXkKQ09O
RklHX0FSQ0hfSEFWRV9OTUlfU0FGRV9DTVBYQ0hHPXkKQ09ORklHX0hBVkVfQUxJR05FRF9TVFJV
Q1RfUEFHRT15CkNPTkZJR19IQVZFX0NNUFhDSEdfTE9DQUw9eQpDT05GSUdfSEFWRV9DTVBYQ0hH
X0RPVUJMRT15CkNPTkZJR19BUkNIX1dBTlRfSVBDX1BBUlNFX1ZFUlNJT049eQpDT05GSUdfSEFW
RV9BUkNIX1NFQ0NPTVBfRklMVEVSPXkKQ09ORklHX1NFQ0NPTVBfRklMVEVSPXkKQ09ORklHX0hB
VkVfSVJRX1RJTUVfQUNDT1VOVElORz15CkNPTkZJR19IQVZFX0FSQ0hfVFJBTlNQQVJFTlRfSFVH
RVBBR0U9eQpDT05GSUdfTU9EVUxFU19VU0VfRUxGX1JFTD15CkNPTkZJR19HRU5FUklDX1NJR0FM
VFNUQUNLPXkKQ09ORklHX0NMT05FX0JBQ0tXQVJEUz15CgojCiMgR0NPVi1iYXNlZCBrZXJuZWwg
cHJvZmlsaW5nCiMKIyBDT05GSUdfR0NPVl9LRVJORUwgaXMgbm90IHNldApDT05GSUdfSEFWRV9H
RU5FUklDX0RNQV9DT0hFUkVOVD15CkNPTkZJR19TTEFCSU5GTz15CkNPTkZJR19SVF9NVVRFWEVT
PXkKQ09ORklHX0JBU0VfU01BTEw9MApDT05GSUdfTU9EVUxFUz15CiMgQ09ORklHX01PRFVMRV9G
T1JDRV9MT0FEIGlzIG5vdCBzZXQKQ09ORklHX01PRFVMRV9VTkxPQUQ9eQojIENPTkZJR19NT0RV
TEVfRk9SQ0VfVU5MT0FEIGlzIG5vdCBzZXQKIyBDT05GSUdfTU9EVkVSU0lPTlMgaXMgbm90IHNl
dAojIENPTkZJR19NT0RVTEVfU1JDVkVSU0lPTl9BTEwgaXMgbm90IHNldAojIENPTkZJR19NT0RV
TEVfU0lHIGlzIG5vdCBzZXQKQ09ORklHX1NUT1BfTUFDSElORT15CkNPTkZJR19CTE9DSz15CkNP
TkZJR19MQkRBRj15CkNPTkZJR19CTEtfREVWX0JTRz15CiMgQ09ORklHX0JMS19ERVZfQlNHTElC
IGlzIG5vdCBzZXQKIyBDT05GSUdfQkxLX0RFVl9JTlRFR1JJVFkgaXMgbm90IHNldAojIENPTkZJ
R19CTEtfREVWX1RIUk9UVExJTkcgaXMgbm90IHNldAoKIwojIFBhcnRpdGlvbiBUeXBlcwojCiMg
Q09ORklHX1BBUlRJVElPTl9BRFZBTkNFRCBpcyBub3Qgc2V0CkNPTkZJR19NU0RPU19QQVJUSVRJ
T049eQpDT05GSUdfRUZJX1BBUlRJVElPTj15CgojCiMgSU8gU2NoZWR1bGVycwojCkNPTkZJR19J
T1NDSEVEX05PT1A9eQpDT05GSUdfSU9TQ0hFRF9ERUFETElORT15CkNPTkZJR19JT1NDSEVEX0NG
UT15CiMgQ09ORklHX0NGUV9HUk9VUF9JT1NDSEVEIGlzIG5vdCBzZXQKIyBDT05GSUdfREVGQVVM
VF9ERUFETElORSBpcyBub3Qgc2V0CkNPTkZJR19ERUZBVUxUX0NGUT15CiMgQ09ORklHX0RFRkFV
TFRfTk9PUCBpcyBub3Qgc2V0CkNPTkZJR19ERUZBVUxUX0lPU0NIRUQ9ImNmcSIKQ09ORklHX1VO
SU5MSU5FX1NQSU5fVU5MT0NLPXkKQ09ORklHX01VVEVYX1NQSU5fT05fT1dORVI9eQpDT05GSUdf
RlJFRVpFUj15CgojCiMgUHJvY2Vzc29yIHR5cGUgYW5kIGZlYXR1cmVzCiMKQ09ORklHX1pPTkVf
RE1BPXkKQ09ORklHX1NNUD15CkNPTkZJR19YODZfTVBQQVJTRT15CiMgQ09ORklHX1g4Nl9CSUdT
TVAgaXMgbm90IHNldApDT05GSUdfWDg2X0VYVEVOREVEX1BMQVRGT1JNPXkKIyBDT05GSUdfWDg2
X1dBTlRfSU5URUxfTUlEIGlzIG5vdCBzZXQKIyBDT05GSUdfWDg2X1JEQzMyMVggaXMgbm90IHNl
dAojIENPTkZJR19YODZfMzJfTk9OX1NUQU5EQVJEIGlzIG5vdCBzZXQKQ09ORklHX1g4Nl9TVVBQ
T1JUU19NRU1PUllfRkFJTFVSRT15CiMgQ09ORklHX1g4Nl8zMl9JUklTIGlzIG5vdCBzZXQKQ09O
RklHX1NDSEVEX09NSVRfRlJBTUVfUE9JTlRFUj15CiMgQ09ORklHX1BBUkFWSVJUX0dVRVNUIGlz
IG5vdCBzZXQKQ09ORklHX05PX0JPT1RNRU09eQojIENPTkZJR19NRU1URVNUIGlzIG5vdCBzZXQK
IyBDT05GSUdfTTQ4NiBpcyBub3Qgc2V0CiMgQ09ORklHX001ODYgaXMgbm90IHNldAojIENPTkZJ
R19NNTg2VFNDIGlzIG5vdCBzZXQKIyBDT05GSUdfTTU4Nk1NWCBpcyBub3Qgc2V0CiMgQ09ORklH
X002ODYgaXMgbm90IHNldAojIENPTkZJR19NUEVOVElVTUlJIGlzIG5vdCBzZXQKIyBDT05GSUdf
TVBFTlRJVU1JSUkgaXMgbm90IHNldAojIENPTkZJR19NUEVOVElVTU0gaXMgbm90IHNldAojIENP
TkZJR19NUEVOVElVTTQgaXMgbm90IHNldAojIENPTkZJR19NSzYgaXMgbm90IHNldAojIENPTkZJ
R19NSzcgaXMgbm90IHNldAojIENPTkZJR19NSzggaXMgbm90IHNldAojIENPTkZJR19NQ1JVU09F
IGlzIG5vdCBzZXQKIyBDT05GSUdfTUVGRklDRU9OIGlzIG5vdCBzZXQKIyBDT05GSUdfTVdJTkNI
SVBDNiBpcyBub3Qgc2V0CiMgQ09ORklHX01XSU5DSElQM0QgaXMgbm90IHNldAojIENPTkZJR19N
RUxBTiBpcyBub3Qgc2V0CiMgQ09ORklHX01HRU9ERUdYMSBpcyBub3Qgc2V0CiMgQ09ORklHX01H
RU9ERV9MWCBpcyBub3Qgc2V0CiMgQ09ORklHX01DWVJJWElJSSBpcyBub3Qgc2V0CiMgQ09ORklH
X01WSUFDM18yIGlzIG5vdCBzZXQKIyBDT05GSUdfTVZJQUM3IGlzIG5vdCBzZXQKIyBDT05GSUdf
TUNPUkUyIGlzIG5vdCBzZXQKQ09ORklHX01BVE9NPXkKIyBDT05GSUdfWDg2X0dFTkVSSUMgaXMg
bm90IHNldApDT05GSUdfWDg2X0lOVEVSTk9ERV9DQUNIRV9TSElGVD02CkNPTkZJR19YODZfTDFf
Q0FDSEVfU0hJRlQ9NgpDT05GSUdfWDg2X1VTRV9QUFJPX0NIRUNLU1VNPXkKQ09ORklHX1g4Nl9U
U0M9eQpDT05GSUdfWDg2X0NNUFhDSEc2ND15CkNPTkZJR19YODZfQ01PVj15CkNPTkZJR19YODZf
TUlOSU1VTV9DUFVfRkFNSUxZPTUKQ09ORklHX1g4Nl9ERUJVR0NUTE1TUj15CiMgQ09ORklHX1BS
T0NFU1NPUl9TRUxFQ1QgaXMgbm90IHNldApDT05GSUdfQ1BVX1NVUF9JTlRFTD15CkNPTkZJR19D
UFVfU1VQX0NZUklYXzMyPXkKQ09ORklHX0NQVV9TVVBfQU1EPXkKQ09ORklHX0NQVV9TVVBfQ0VO
VEFVUj15CkNPTkZJR19DUFVfU1VQX1RSQU5TTUVUQV8zMj15CkNPTkZJR19DUFVfU1VQX1VNQ18z
Mj15CkNPTkZJR19IUEVUX1RJTUVSPXkKQ09ORklHX0hQRVRfRU1VTEFURV9SVEM9eQpDT05GSUdf
RE1JPXkKQ09ORklHX05SX0NQVVM9OApDT05GSUdfU0NIRURfU01UPXkKQ09ORklHX1NDSEVEX01D
PXkKIyBDT05GSUdfUFJFRU1QVF9OT05FIGlzIG5vdCBzZXQKIyBDT05GSUdfUFJFRU1QVF9WT0xV
TlRBUlkgaXMgbm90IHNldApDT05GSUdfUFJFRU1QVD15CkNPTkZJR19QUkVFTVBUX0NPVU5UPXkK
Q09ORklHX1g4Nl9MT0NBTF9BUElDPXkKQ09ORklHX1g4Nl9JT19BUElDPXkKQ09ORklHX1g4Nl9S
RVJPVVRFX0ZPUl9CUk9LRU5fQk9PVF9JUlFTPXkKQ09ORklHX1g4Nl9NQ0U9eQpDT05GSUdfWDg2
X01DRV9JTlRFTD15CkNPTkZJR19YODZfTUNFX0FNRD15CiMgQ09ORklHX1g4Nl9BTkNJRU5UX01D
RSBpcyBub3Qgc2V0CkNPTkZJR19YODZfTUNFX1RIUkVTSE9MRD15CiMgQ09ORklHX1g4Nl9NQ0Vf
SU5KRUNUIGlzIG5vdCBzZXQKQ09ORklHX1g4Nl9USEVSTUFMX1ZFQ1RPUj15CkNPTkZJR19WTTg2
PXkKIyBDT05GSUdfVE9TSElCQSBpcyBub3Qgc2V0CiMgQ09ORklHX0k4SyBpcyBub3Qgc2V0CkNP
TkZJR19YODZfUkVCT09URklYVVBTPXkKIyBDT05GSUdfTUlDUk9DT0RFIGlzIG5vdCBzZXQKIyBD
T05GSUdfWDg2X01TUiBpcyBub3Qgc2V0CkNPTkZJR19YODZfQ1BVSUQ9eQojIENPTkZJR19OT0hJ
R0hNRU0gaXMgbm90IHNldApDT05GSUdfSElHSE1FTTRHPXkKIyBDT05GSUdfSElHSE1FTTY0RyBp
cyBub3Qgc2V0CkNPTkZJR19WTVNQTElUXzNHPXkKIyBDT05GSUdfVk1TUExJVF8zR19PUFQgaXMg
bm90IHNldAojIENPTkZJR19WTVNQTElUXzJHIGlzIG5vdCBzZXQKIyBDT05GSUdfVk1TUExJVF8y
R19PUFQgaXMgbm90IHNldAojIENPTkZJR19WTVNQTElUXzFHIGlzIG5vdCBzZXQKQ09ORklHX1BB
R0VfT0ZGU0VUPTB4QzAwMDAwMDAKQ09ORklHX0hJR0hNRU09eQpDT05GSUdfQVJDSF9GTEFUTUVN
X0VOQUJMRT15CkNPTkZJR19BUkNIX1NQQVJTRU1FTV9FTkFCTEU9eQpDT05GSUdfQVJDSF9TRUxF
Q1RfTUVNT1JZX01PREVMPXkKQ09ORklHX0lMTEVHQUxfUE9JTlRFUl9WQUxVRT0wCkNPTkZJR19T
RUxFQ1RfTUVNT1JZX01PREVMPXkKQ09ORklHX0ZMQVRNRU1fTUFOVUFMPXkKIyBDT05GSUdfU1BB
UlNFTUVNX01BTlVBTCBpcyBub3Qgc2V0CkNPTkZJR19GTEFUTUVNPXkKQ09ORklHX0ZMQVRfTk9E
RV9NRU1fTUFQPXkKQ09ORklHX1NQQVJTRU1FTV9TVEFUSUM9eQpDT05GSUdfSEFWRV9NRU1CTE9D
Sz15CkNPTkZJR19IQVZFX01FTUJMT0NLX05PREVfTUFQPXkKQ09ORklHX0FSQ0hfRElTQ0FSRF9N
RU1CTE9DSz15CkNPTkZJR19QQUdFRkxBR1NfRVhURU5ERUQ9eQpDT05GSUdfU1BMSVRfUFRMT0NL
X0NQVVM9NApDT05GSUdfQ09NUEFDVElPTj15CkNPTkZJR19NSUdSQVRJT049eQojIENPTkZJR19Q
SFlTX0FERFJfVF82NEJJVCBpcyBub3Qgc2V0CkNPTkZJR19aT05FX0RNQV9GTEFHPTEKQ09ORklH
X0JPVU5DRT15CkNPTkZJR19WSVJUX1RPX0JVUz15CiMgQ09ORklHX0tTTSBpcyBub3Qgc2V0CkNP
TkZJR19ERUZBVUxUX01NQVBfTUlOX0FERFI9NDA5NgpDT05GSUdfQVJDSF9TVVBQT1JUU19NRU1P
UllfRkFJTFVSRT15CiMgQ09ORklHX01FTU9SWV9GQUlMVVJFIGlzIG5vdCBzZXQKIyBDT05GSUdf
VFJBTlNQQVJFTlRfSFVHRVBBR0UgaXMgbm90IHNldApDT05GSUdfQ1JPU1NfTUVNT1JZX0FUVEFD
SD15CiMgQ09ORklHX0NMRUFOQ0FDSEUgaXMgbm90IHNldAojIENPTkZJR19GUk9OVFNXQVAgaXMg
bm90IHNldApDT05GSUdfSElHSFBURT15CkNPTkZJR19YODZfQ0hFQ0tfQklPU19DT1JSVVBUSU9O
PXkKQ09ORklHX1g4Nl9CT09UUEFSQU1fTUVNT1JZX0NPUlJVUFRJT05fQ0hFQ0s9eQpDT05GSUdf
WDg2X1JFU0VSVkVfTE9XPTY0CiMgQ09ORklHX01BVEhfRU1VTEFUSU9OIGlzIG5vdCBzZXQKQ09O
RklHX01UUlI9eQojIENPTkZJR19NVFJSX1NBTklUSVpFUiBpcyBub3Qgc2V0CkNPTkZJR19YODZf
UEFUPXkKQ09ORklHX0FSQ0hfVVNFU19QR19VTkNBQ0hFRD15CkNPTkZJR19BUkNIX1JBTkRPTT15
CkNPTkZJR19YODZfU01BUD15CkNPTkZJR19FRkk9eQpDT05GSUdfRUZJX1NUVUI9eQpDT05GSUdf
U0VDQ09NUD15CiMgQ09ORklHX0NDX1NUQUNLUFJPVEVDVE9SIGlzIG5vdCBzZXQKIyBDT05GSUdf
SFpfMTAwIGlzIG5vdCBzZXQKIyBDT05GSUdfSFpfMjUwIGlzIG5vdCBzZXQKIyBDT05GSUdfSFpf
MzAwIGlzIG5vdCBzZXQKQ09ORklHX0haXzEwMDA9eQpDT05GSUdfSFo9MTAwMApDT05GSUdfU0NI
RURfSFJUSUNLPXkKIyBDT05GSUdfS0VYRUMgaXMgbm90IHNldAojIENPTkZJR19DUkFTSF9EVU1Q
IGlzIG5vdCBzZXQKQ09ORklHX1BIWVNJQ0FMX1NUQVJUPTB4MTAwMDAwMApDT05GSUdfUkVMT0NB
VEFCTEU9eQpDT05GSUdfWDg2X05FRURfUkVMT0NTPXkKQ09ORklHX1BIWVNJQ0FMX0FMSUdOPTB4
MTAwMDAwMApDT05GSUdfSE9UUExVR19DUFU9eQojIENPTkZJR19CT09UUEFSQU1fSE9UUExVR19D
UFUwIGlzIG5vdCBzZXQKIyBDT05GSUdfREVCVUdfSE9UUExVR19DUFUwIGlzIG5vdCBzZXQKQ09O
RklHX0NPTVBBVF9WRFNPPXkKIyBDT05GSUdfQ01ETElORV9CT09MIGlzIG5vdCBzZXQKQ09ORklH
X0FSQ0hfRU5BQkxFX01FTU9SWV9IT1RQTFVHPXkKCiMKIyBQb3dlciBtYW5hZ2VtZW50IGFuZCBB
Q1BJIG9wdGlvbnMKIwpDT05GSUdfU1VTUEVORD15CkNPTkZJR19TVVNQRU5EX0ZSRUVaRVI9eQoj
IENPTkZJR19ISUJFUk5BVElPTiBpcyBub3Qgc2V0CkNPTkZJR19QTV9TTEVFUD15CkNPTkZJR19Q
TV9TTEVFUF9TTVA9eQojIENPTkZJR19QTV9BVVRPU0xFRVAgaXMgbm90IHNldAojIENPTkZJR19Q
TV9XQUtFTE9DS1MgaXMgbm90IHNldApDT05GSUdfUE1fUlVOVElNRT15CkNPTkZJR19QTT15CkNP
TkZJR19QTV9ERUJVRz15CkNPTkZJR19QTV9BRFZBTkNFRF9ERUJVRz15CiMgQ09ORklHX1BNX1RF
U1RfU1VTUEVORCBpcyBub3Qgc2V0CkNPTkZJR19QTV9TTEVFUF9ERUJVRz15CiMgQ09ORklHX1BN
X1RSQUNFX1JUQyBpcyBub3Qgc2V0CkNPTkZJR19BQ1BJPXkKQ09ORklHX0FDUElfU0xFRVA9eQoj
IENPTkZJR19BQ1BJX1BST0NGUyBpcyBub3Qgc2V0CiMgQ09ORklHX0FDUElfUFJPQ0ZTX1BPV0VS
IGlzIG5vdCBzZXQKIyBDT05GSUdfQUNQSV9FQ19ERUJVR0ZTIGlzIG5vdCBzZXQKQ09ORklHX0FD
UElfUFJPQ19FVkVOVD15CkNPTkZJR19BQ1BJX0FDPXkKQ09ORklHX0FDUElfQkFUVEVSWT15CkNP
TkZJR19BQ1BJX0JVVFRPTj15CkNPTkZJR19BQ1BJX0ZBTj15CiMgQ09ORklHX0FDUElfRE9DSyBp
cyBub3Qgc2V0CkNPTkZJR19BQ1BJX0kyQz15CkNPTkZJR19BQ1BJX1BST0NFU1NPUj15CkNPTkZJ
R19BQ1BJX0hPVFBMVUdfQ1BVPXkKIyBDT05GSUdfQUNQSV9QUk9DRVNTT1JfQUdHUkVHQVRPUiBp
cyBub3Qgc2V0CkNPTkZJR19BQ1BJX1RIRVJNQUw9eQojIENPTkZJR19BQ1BJX0NVU1RPTV9EU0RU
IGlzIG5vdCBzZXQKIyBDT05GSUdfQUNQSV9JTklUUkRfVEFCTEVfT1ZFUlJJREUgaXMgbm90IHNl
dApDT05GSUdfQUNQSV9CTEFDS0xJU1RfWUVBUj0wCiMgQ09ORklHX0FDUElfREVCVUcgaXMgbm90
IHNldAojIENPTkZJR19BQ1BJX1BDSV9TTE9UIGlzIG5vdCBzZXQKQ09ORklHX1g4Nl9QTV9USU1F
Uj15CkNPTkZJR19BQ1BJX0NPTlRBSU5FUj15CiMgQ09ORklHX0FDUElfU0JTIGlzIG5vdCBzZXQK
IyBDT05GSUdfQUNQSV9IRUQgaXMgbm90IHNldAojIENPTkZJR19BQ1BJX0NVU1RPTV9NRVRIT0Qg
aXMgbm90IHNldAojIENPTkZJR19BQ1BJX0JHUlQgaXMgbm90IHNldAojIENPTkZJR19BQ1BJX0FQ
RUkgaXMgbm90IHNldAojIENPTkZJR19TRkkgaXMgbm90IHNldAojIENPTkZJR19BUE0gaXMgbm90
IHNldAoKIwojIENQVSBGcmVxdWVuY3kgc2NhbGluZwojCkNPTkZJR19DUFVfRlJFUT15CkNPTkZJ
R19DUFVfRlJFUV9UQUJMRT15CkNPTkZJR19DUFVfRlJFUV9HT1ZfQ09NTU9OPXkKQ09ORklHX0NQ
VV9GUkVRX1NUQVQ9eQojIENPTkZJR19DUFVfRlJFUV9TVEFUX0RFVEFJTFMgaXMgbm90IHNldAoj
IENPTkZJR19DUFVfRlJFUV9ERUZBVUxUX0dPVl9QRVJGT1JNQU5DRSBpcyBub3Qgc2V0CiMgQ09O
RklHX0NQVV9GUkVRX0RFRkFVTFRfR09WX1BPV0VSU0FWRSBpcyBub3Qgc2V0CiMgQ09ORklHX0NQ
VV9GUkVRX0RFRkFVTFRfR09WX1VTRVJTUEFDRSBpcyBub3Qgc2V0CkNPTkZJR19DUFVfRlJFUV9E
RUZBVUxUX0dPVl9PTkRFTUFORD15CiMgQ09ORklHX0NQVV9GUkVRX0RFRkFVTFRfR09WX0NPTlNF
UlZBVElWRSBpcyBub3Qgc2V0CkNPTkZJR19DUFVfRlJFUV9HT1ZfUEVSRk9STUFOQ0U9eQojIENP
TkZJR19DUFVfRlJFUV9HT1ZfUE9XRVJTQVZFIGlzIG5vdCBzZXQKIyBDT05GSUdfQ1BVX0ZSRVFf
R09WX1VTRVJTUEFDRSBpcyBub3Qgc2V0CkNPTkZJR19DUFVfRlJFUV9HT1ZfT05ERU1BTkQ9eQoj
IENPTkZJR19DUFVfRlJFUV9HT1ZfQ09OU0VSVkFUSVZFIGlzIG5vdCBzZXQKCiMKIyB4ODYgQ1BV
IGZyZXF1ZW5jeSBzY2FsaW5nIGRyaXZlcnMKIwojIENPTkZJR19YODZfUENDX0NQVUZSRVEgaXMg
bm90IHNldApDT05GSUdfWDg2X0FDUElfQ1BVRlJFUT15CkNPTkZJR19YODZfQUNQSV9DUFVGUkVR
X0NQQj15CiMgQ09ORklHX1g4Nl9QT1dFUk5PV19LNiBpcyBub3Qgc2V0CiMgQ09ORklHX1g4Nl9Q
T1dFUk5PV19LNyBpcyBub3Qgc2V0CiMgQ09ORklHX1g4Nl9QT1dFUk5PV19LOCBpcyBub3Qgc2V0
CiMgQ09ORklHX1g4Nl9HWF9TVVNQTU9EIGlzIG5vdCBzZXQKIyBDT05GSUdfWDg2X1NQRUVEU1RF
UF9DRU5UUklOTyBpcyBub3Qgc2V0CiMgQ09ORklHX1g4Nl9TUEVFRFNURVBfSUNIIGlzIG5vdCBz
ZXQKIyBDT05GSUdfWDg2X1NQRUVEU1RFUF9TTUkgaXMgbm90IHNldAojIENPTkZJR19YODZfUDRf
Q0xPQ0tNT0QgaXMgbm90IHNldAojIENPTkZJR19YODZfQ1BVRlJFUV9ORk9SQ0UyIGlzIG5vdCBz
ZXQKIyBDT05GSUdfWDg2X0xPTkdSVU4gaXMgbm90IHNldAojIENPTkZJR19YODZfTE9OR0hBVUwg
aXMgbm90IHNldAojIENPTkZJR19YODZfRV9QT1dFUlNBVkVSIGlzIG5vdCBzZXQKCiMKIyBzaGFy
ZWQgb3B0aW9ucwojCiMgQ09ORklHX1g4Nl9TUEVFRFNURVBfTElCIGlzIG5vdCBzZXQKQ09ORklH
X0NQVV9JRExFPXkKIyBDT05GSUdfQ1BVX0lETEVfTVVMVElQTEVfRFJJVkVSUyBpcyBub3Qgc2V0
CkNPTkZJR19DUFVfSURMRV9HT1ZfTEFEREVSPXkKQ09ORklHX0NQVV9JRExFX0dPVl9NRU5VPXkK
IyBDT05GSUdfQVJDSF9ORUVEU19DUFVfSURMRV9DT1VQTEVEIGlzIG5vdCBzZXQKQ09ORklHX0lO
VEVMX0lETEU9eQoKIwojIEJ1cyBvcHRpb25zIChQQ0kgZXRjLikKIwpDT05GSUdfUENJPXkKIyBD
T05GSUdfUENJX0dPQklPUyBpcyBub3Qgc2V0CiMgQ09ORklHX1BDSV9HT01NQ09ORklHIGlzIG5v
dCBzZXQKIyBDT05GSUdfUENJX0dPRElSRUNUIGlzIG5vdCBzZXQKQ09ORklHX1BDSV9HT0FOWT15
CkNPTkZJR19QQ0lfQklPUz15CkNPTkZJR19QQ0lfRElSRUNUPXkKQ09ORklHX1BDSV9NTUNPTkZJ
Rz15CkNPTkZJR19QQ0lfRE9NQUlOUz15CiMgQ09ORklHX1BDSV9DTkIyMExFX1FVSVJLIGlzIG5v
dCBzZXQKQ09ORklHX1BDSUVQT1JUQlVTPXkKIyBDT05GSUdfSE9UUExVR19QQ0lfUENJRSBpcyBu
b3Qgc2V0CkNPTkZJR19QQ0lFQUVSPXkKIyBDT05GSUdfUENJRV9FQ1JDIGlzIG5vdCBzZXQKIyBD
T05GSUdfUENJRUFFUl9JTkpFQ1QgaXMgbm90IHNldApDT05GSUdfUENJRUFTUE09eQojIENPTkZJ
R19QQ0lFQVNQTV9ERUJVRyBpcyBub3Qgc2V0CkNPTkZJR19QQ0lFQVNQTV9ERUZBVUxUPXkKIyBD
T05GSUdfUENJRUFTUE1fUE9XRVJTQVZFIGlzIG5vdCBzZXQKIyBDT05GSUdfUENJRUFTUE1fUEVS
Rk9STUFOQ0UgaXMgbm90IHNldApDT05GSUdfUENJRV9QTUU9eQpDT05GSUdfQVJDSF9TVVBQT1JU
U19NU0k9eQpDT05GSUdfUENJX01TST15CiMgQ09ORklHX1BDSV9ERUJVRyBpcyBub3Qgc2V0CiMg
Q09ORklHX1BDSV9SRUFMTE9DX0VOQUJMRV9BVVRPIGlzIG5vdCBzZXQKIyBDT05GSUdfUENJX1NU
VUIgaXMgbm90IHNldApDT05GSUdfSFRfSVJRPXkKIyBDT05GSUdfUENJX0lPViBpcyBub3Qgc2V0
CiMgQ09ORklHX1BDSV9QUkkgaXMgbm90IHNldAojIENPTkZJR19QQ0lfUEFTSUQgaXMgbm90IHNl
dAojIENPTkZJR19QQ0lfSU9BUElDIGlzIG5vdCBzZXQKQ09ORklHX1BDSV9MQUJFTD15CkNPTkZJ
R19JU0FfRE1BX0FQST15CiMgQ09ORklHX0lTQSBpcyBub3Qgc2V0CiMgQ09ORklHX1NDeDIwMCBp
cyBub3Qgc2V0CiMgQ09ORklHX09MUEMgaXMgbm90IHNldAojIENPTkZJR19BTElYIGlzIG5vdCBz
ZXQKIyBDT05GSUdfTkVUNTUwMSBpcyBub3Qgc2V0CiMgQ09ORklHX0dFT1MgaXMgbm90IHNldApD
T05GSUdfQU1EX05CPXkKIyBDT05GSUdfUENDQVJEIGlzIG5vdCBzZXQKQ09ORklHX0hPVFBMVUdf
UENJPXkKIyBDT05GSUdfSE9UUExVR19QQ0lfQ09NUEFRIGlzIG5vdCBzZXQKIyBDT05GSUdfSE9U
UExVR19QQ0lfSUJNIGlzIG5vdCBzZXQKIyBDT05GSUdfSE9UUExVR19QQ0lfQUNQSSBpcyBub3Qg
c2V0CiMgQ09ORklHX0hPVFBMVUdfUENJX0NQQ0kgaXMgbm90IHNldAojIENPTkZJR19IT1RQTFVH
X1BDSV9TSFBDIGlzIG5vdCBzZXQKIyBDT05GSUdfUkFQSURJTyBpcyBub3Qgc2V0CgojCiMgRXhl
Y3V0YWJsZSBmaWxlIGZvcm1hdHMgLyBFbXVsYXRpb25zCiMKQ09ORklHX0JJTkZNVF9FTEY9eQpD
T05GSUdfQVJDSF9CSU5GTVRfRUxGX1JBTkRPTUlaRV9QSUU9eQpDT05GSUdfQ09SRV9EVU1QX0RF
RkFVTFRfRUxGX0hFQURFUlM9eQpDT05GSUdfSEFWRV9BT1VUPXkKIyBDT05GSUdfQklORk1UX0FP
VVQgaXMgbm90IHNldApDT05GSUdfQklORk1UX01JU0M9bQpDT05GSUdfQ09SRURVTVA9eQpDT05G
SUdfSEFWRV9BVE9NSUNfSU9NQVA9eQpDT05GSUdfSEFWRV9URVhUX1BPS0VfU01QPXkKQ09ORklH
X05FVD15CgojCiMgTmV0d29ya2luZyBvcHRpb25zCiMKQ09ORklHX1BBQ0tFVD15CiMgQ09ORklH
X1BBQ0tFVF9ESUFHIGlzIG5vdCBzZXQKQ09ORklHX1VOSVg9eQojIENPTkZJR19VTklYX0RJQUcg
aXMgbm90IHNldApDT05GSUdfWEZSTT15CkNPTkZJR19YRlJNX0FMR089eQpDT05GSUdfWEZSTV9V
U0VSPW0KQ09ORklHX1hGUk1fU1VCX1BPTElDWT15CkNPTkZJR19YRlJNX01JR1JBVEU9eQojIENP
TkZJR19YRlJNX1NUQVRJU1RJQ1MgaXMgbm90IHNldApDT05GSUdfWEZSTV9JUENPTVA9bQpDT05G
SUdfTkVUX0tFWT1tCkNPTkZJR19ORVRfS0VZX01JR1JBVEU9eQpDT05GSUdfSU5FVD15CkNPTkZJ
R19JUF9NVUxUSUNBU1Q9eQpDT05GSUdfSVBfQURWQU5DRURfUk9VVEVSPXkKIyBDT05GSUdfSVBf
RklCX1RSSUVfU1RBVFMgaXMgbm90IHNldApDT05GSUdfSVBfTVVMVElQTEVfVEFCTEVTPXkKQ09O
RklHX0lQX1JPVVRFX01VTFRJUEFUSD15CkNPTkZJR19JUF9ST1VURV9WRVJCT1NFPXkKQ09ORklH
X0lQX1BOUD15CkNPTkZJR19JUF9QTlBfREhDUD15CkNPTkZJR19JUF9QTlBfQk9PVFA9eQpDT05G
SUdfSVBfUE5QX1JBUlA9eQpDT05GSUdfTkVUX0lQSVA9bQojIENPTkZJR19ORVRfSVBHUkVfREVN
VVggaXMgbm90IHNldApDT05GSUdfSVBfTVJPVVRFPXkKIyBDT05GSUdfSVBfTVJPVVRFX01VTFRJ
UExFX1RBQkxFUyBpcyBub3Qgc2V0CkNPTkZJR19JUF9QSU1TTV9WMT15CkNPTkZJR19JUF9QSU1T
TV9WMj15CiMgQ09ORklHX0FSUEQgaXMgbm90IHNldApDT05GSUdfU1lOX0NPT0tJRVM9eQojIENP
TkZJR19ORVRfSVBWVEkgaXMgbm90IHNldApDT05GSUdfSU5FVF9BSD1tCkNPTkZJR19JTkVUX0VT
UD1tCkNPTkZJR19JTkVUX0lQQ09NUD1tCkNPTkZJR19JTkVUX1hGUk1fVFVOTkVMPW0KQ09ORklH
X0lORVRfVFVOTkVMPXkKQ09ORklHX0lORVRfWEZSTV9NT0RFX1RSQU5TUE9SVD15CkNPTkZJR19J
TkVUX1hGUk1fTU9ERV9UVU5ORUw9eQpDT05GSUdfSU5FVF9YRlJNX01PREVfQkVFVD15CkNPTkZJ
R19JTkVUX0xSTz15CkNPTkZJR19JTkVUX0RJQUc9eQpDT05GSUdfSU5FVF9UQ1BfRElBRz15CiMg
Q09ORklHX0lORVRfVURQX0RJQUcgaXMgbm90IHNldAojIENPTkZJR19UQ1BfQ09OR19BRFZBTkNF
RCBpcyBub3Qgc2V0CkNPTkZJR19UQ1BfQ09OR19DVUJJQz15CkNPTkZJR19ERUZBVUxUX1RDUF9D
T05HPSJjdWJpYyIKIyBDT05GSUdfVENQX01ENVNJRyBpcyBub3Qgc2V0CkNPTkZJR19JUFY2PXkK
IyBDT05GSUdfSVBWNl9QUklWQUNZIGlzIG5vdCBzZXQKQ09ORklHX0lQVjZfUk9VVEVSX1BSRUY9
eQojIENPTkZJR19JUFY2X1JPVVRFX0lORk8gaXMgbm90IHNldAojIENPTkZJR19JUFY2X09QVElN
SVNUSUNfREFEIGlzIG5vdCBzZXQKQ09ORklHX0lORVQ2X0FIPXkKQ09ORklHX0lORVQ2X0VTUD15
CkNPTkZJR19JTkVUNl9JUENPTVA9bQojIENPTkZJR19JUFY2X01JUDYgaXMgbm90IHNldApDT05G
SUdfSU5FVDZfWEZSTV9UVU5ORUw9bQpDT05GSUdfSU5FVDZfVFVOTkVMPW0KQ09ORklHX0lORVQ2
X1hGUk1fTU9ERV9UUkFOU1BPUlQ9eQpDT05GSUdfSU5FVDZfWEZSTV9NT0RFX1RVTk5FTD15CkNP
TkZJR19JTkVUNl9YRlJNX01PREVfQkVFVD15CiMgQ09ORklHX0lORVQ2X1hGUk1fTU9ERV9ST1VU
RU9QVElNSVpBVElPTiBpcyBub3Qgc2V0CkNPTkZJR19JUFY2X1NJVD15CiMgQ09ORklHX0lQVjZf
U0lUXzZSRCBpcyBub3Qgc2V0CkNPTkZJR19JUFY2X05ESVNDX05PREVUWVBFPXkKQ09ORklHX0lQ
VjZfVFVOTkVMPW0KIyBDT05GSUdfSVBWNl9HUkUgaXMgbm90IHNldAojIENPTkZJR19JUFY2X01V
TFRJUExFX1RBQkxFUyBpcyBub3Qgc2V0CiMgQ09ORklHX0lQVjZfTVJPVVRFIGlzIG5vdCBzZXQK
IyBDT05GSUdfTkVUTEFCRUwgaXMgbm90IHNldAojIENPTkZJR19ORVRXT1JLX1NFQ01BUksgaXMg
bm90IHNldAojIENPTkZJR19ORVRXT1JLX1BIWV9USU1FU1RBTVBJTkcgaXMgbm90IHNldApDT05G
SUdfTkVURklMVEVSPXkKIyBDT05GSUdfTkVURklMVEVSX0RFQlVHIGlzIG5vdCBzZXQKQ09ORklH
X05FVEZJTFRFUl9BRFZBTkNFRD15CkNPTkZJR19CUklER0VfTkVURklMVEVSPXkKCiMKIyBDb3Jl
IE5ldGZpbHRlciBDb25maWd1cmF0aW9uCiMKIyBDT05GSUdfTkVURklMVEVSX05FVExJTktfQUND
VCBpcyBub3Qgc2V0CiMgQ09ORklHX05FVEZJTFRFUl9ORVRMSU5LX1FVRVVFIGlzIG5vdCBzZXQK
IyBDT05GSUdfTkVURklMVEVSX05FVExJTktfTE9HIGlzIG5vdCBzZXQKIyBDT05GSUdfTkZfQ09O
TlRSQUNLIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVURklMVEVSX1RQUk9YWSBpcyBub3Qgc2V0CkNP
TkZJR19ORVRGSUxURVJfWFRBQkxFUz1tCgojCiMgWHRhYmxlcyBjb21iaW5lZCBtb2R1bGVzCiMK
IyBDT05GSUdfTkVURklMVEVSX1hUX01BUksgaXMgbm90IHNldAoKIwojIFh0YWJsZXMgdGFyZ2V0
cwojCiMgQ09ORklHX05FVEZJTFRFUl9YVF9UQVJHRVRfQ0hFQ0tTVU0gaXMgbm90IHNldAojIENP
TkZJR19ORVRGSUxURVJfWFRfVEFSR0VUX0NMQVNTSUZZIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVU
RklMVEVSX1hUX1RBUkdFVF9EU0NQIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVURklMVEVSX1hUX1RB
UkdFVF9ITCBpcyBub3Qgc2V0CiMgQ09ORklHX05FVEZJTFRFUl9YVF9UQVJHRVRfSE1BUksgaXMg
bm90IHNldAojIENPTkZJR19ORVRGSUxURVJfWFRfVEFSR0VUX0lETEVUSU1FUiBpcyBub3Qgc2V0
CiMgQ09ORklHX05FVEZJTFRFUl9YVF9UQVJHRVRfTE9HIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVU
RklMVEVSX1hUX1RBUkdFVF9NQVJLIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVURklMVEVSX1hUX1RB
UkdFVF9ORkxPRyBpcyBub3Qgc2V0CiMgQ09ORklHX05FVEZJTFRFUl9YVF9UQVJHRVRfTkZRVUVV
RSBpcyBub3Qgc2V0CiMgQ09ORklHX05FVEZJTFRFUl9YVF9UQVJHRVRfUkFURUVTVCBpcyBub3Qg
c2V0CiMgQ09ORklHX05FVEZJTFRFUl9YVF9UQVJHRVRfVEVFIGlzIG5vdCBzZXQKIyBDT05GSUdf
TkVURklMVEVSX1hUX1RBUkdFVF9UUkFDRSBpcyBub3Qgc2V0CiMgQ09ORklHX05FVEZJTFRFUl9Y
VF9UQVJHRVRfVENQTVNTIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVURklMVEVSX1hUX1RBUkdFVF9U
Q1BPUFRTVFJJUCBpcyBub3Qgc2V0CgojCiMgWHRhYmxlcyBtYXRjaGVzCiMKIyBDT05GSUdfTkVU
RklMVEVSX1hUX01BVENIX0FERFJUWVBFIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVURklMVEVSX1hU
X01BVENIX0NPTU1FTlQgaXMgbm90IHNldAojIENPTkZJR19ORVRGSUxURVJfWFRfTUFUQ0hfQ1BV
IGlzIG5vdCBzZXQKIyBDT05GSUdfTkVURklMVEVSX1hUX01BVENIX0RDQ1AgaXMgbm90IHNldAoj
IENPTkZJR19ORVRGSUxURVJfWFRfTUFUQ0hfREVWR1JPVVAgaXMgbm90IHNldAojIENPTkZJR19O
RVRGSUxURVJfWFRfTUFUQ0hfRFNDUCBpcyBub3Qgc2V0CkNPTkZJR19ORVRGSUxURVJfWFRfTUFU
Q0hfRUNOPW0KIyBDT05GSUdfTkVURklMVEVSX1hUX01BVENIX0VTUCBpcyBub3Qgc2V0CiMgQ09O
RklHX05FVEZJTFRFUl9YVF9NQVRDSF9IQVNITElNSVQgaXMgbm90IHNldApDT05GSUdfTkVURklM
VEVSX1hUX01BVENIX0hMPW0KIyBDT05GSUdfTkVURklMVEVSX1hUX01BVENIX0lQUkFOR0UgaXMg
bm90IHNldAojIENPTkZJR19ORVRGSUxURVJfWFRfTUFUQ0hfTEVOR1RIIGlzIG5vdCBzZXQKIyBD
T05GSUdfTkVURklMVEVSX1hUX01BVENIX0xJTUlUIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVURklM
VEVSX1hUX01BVENIX01BQyBpcyBub3Qgc2V0CiMgQ09ORklHX05FVEZJTFRFUl9YVF9NQVRDSF9N
QVJLIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVURklMVEVSX1hUX01BVENIX01VTFRJUE9SVCBpcyBu
b3Qgc2V0CiMgQ09ORklHX05FVEZJTFRFUl9YVF9NQVRDSF9ORkFDQ1QgaXMgbm90IHNldAojIENP
TkZJR19ORVRGSUxURVJfWFRfTUFUQ0hfT1dORVIgaXMgbm90IHNldAojIENPTkZJR19ORVRGSUxU
RVJfWFRfTUFUQ0hfUE9MSUNZIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVURklMVEVSX1hUX01BVENI
X1BIWVNERVYgaXMgbm90IHNldAojIENPTkZJR19ORVRGSUxURVJfWFRfTUFUQ0hfUEtUVFlQRSBp
cyBub3Qgc2V0CiMgQ09ORklHX05FVEZJTFRFUl9YVF9NQVRDSF9RVU9UQSBpcyBub3Qgc2V0CiMg
Q09ORklHX05FVEZJTFRFUl9YVF9NQVRDSF9SQVRFRVNUIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVU
RklMVEVSX1hUX01BVENIX1JFQUxNIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVURklMVEVSX1hUX01B
VENIX1JFQ0VOVCBpcyBub3Qgc2V0CkNPTkZJR19ORVRGSUxURVJfWFRfTUFUQ0hfU0NUUD1tCiMg
Q09ORklHX05FVEZJTFRFUl9YVF9NQVRDSF9TVEFUSVNUSUMgaXMgbm90IHNldAojIENPTkZJR19O
RVRGSUxURVJfWFRfTUFUQ0hfU1RSSU5HIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVURklMVEVSX1hU
X01BVENIX1RDUE1TUyBpcyBub3Qgc2V0CiMgQ09ORklHX05FVEZJTFRFUl9YVF9NQVRDSF9USU1F
IGlzIG5vdCBzZXQKIyBDT05GSUdfTkVURklMVEVSX1hUX01BVENIX1UzMiBpcyBub3Qgc2V0CiMg
Q09ORklHX0lQX1ZTIGlzIG5vdCBzZXQKCiMKIyBJUDogTmV0ZmlsdGVyIENvbmZpZ3VyYXRpb24K
IwojIENPTkZJR19ORl9ERUZSQUdfSVBWNCBpcyBub3Qgc2V0CkNPTkZJR19JUF9ORl9RVUVVRT1t
CkNPTkZJR19JUF9ORl9JUFRBQkxFUz1tCiMgQ09ORklHX0lQX05GX01BVENIX0FIIGlzIG5vdCBz
ZXQKQ09ORklHX0lQX05GX01BVENIX0VDTj1tCiMgQ09ORklHX0lQX05GX01BVENIX1JQRklMVEVS
IGlzIG5vdCBzZXQKQ09ORklHX0lQX05GX01BVENIX1RUTD1tCkNPTkZJR19JUF9ORl9GSUxURVI9
bQpDT05GSUdfSVBfTkZfVEFSR0VUX1JFSkVDVD1tCkNPTkZJR19JUF9ORl9UQVJHRVRfVUxPRz1t
CkNPTkZJR19JUF9ORl9NQU5HTEU9bQpDT05GSUdfSVBfTkZfVEFSR0VUX0VDTj1tCiMgQ09ORklH
X0lQX05GX1RBUkdFVF9UVEwgaXMgbm90IHNldApDT05GSUdfSVBfTkZfUkFXPW0KIyBDT05GSUdf
SVBfTkZfU0VDVVJJVFkgaXMgbm90IHNldApDT05GSUdfSVBfTkZfQVJQVEFCTEVTPW0KQ09ORklH
X0lQX05GX0FSUEZJTFRFUj1tCkNPTkZJR19JUF9ORl9BUlBfTUFOR0xFPW0KCiMKIyBJUHY2OiBO
ZXRmaWx0ZXIgQ29uZmlndXJhdGlvbgojCiMgQ09ORklHX05GX0RFRlJBR19JUFY2IGlzIG5vdCBz
ZXQKQ09ORklHX0lQNl9ORl9JUFRBQkxFUz1tCiMgQ09ORklHX0lQNl9ORl9NQVRDSF9BSCBpcyBu
b3Qgc2V0CkNPTkZJR19JUDZfTkZfTUFUQ0hfRVVJNjQ9bQpDT05GSUdfSVA2X05GX01BVENIX0ZS
QUc9bQpDT05GSUdfSVA2X05GX01BVENIX09QVFM9bQpDT05GSUdfSVA2X05GX01BVENIX0hMPW0K
Q09ORklHX0lQNl9ORl9NQVRDSF9JUFY2SEVBREVSPW0KIyBDT05GSUdfSVA2X05GX01BVENIX01I
IGlzIG5vdCBzZXQKIyBDT05GSUdfSVA2X05GX01BVENIX1JQRklMVEVSIGlzIG5vdCBzZXQKQ09O
RklHX0lQNl9ORl9NQVRDSF9SVD1tCiMgQ09ORklHX0lQNl9ORl9UQVJHRVRfSEwgaXMgbm90IHNl
dApDT05GSUdfSVA2X05GX0ZJTFRFUj1tCiMgQ09ORklHX0lQNl9ORl9UQVJHRVRfUkVKRUNUIGlz
IG5vdCBzZXQKQ09ORklHX0lQNl9ORl9NQU5HTEU9bQpDT05GSUdfSVA2X05GX1JBVz1tCiMgQ09O
RklHX0lQNl9ORl9TRUNVUklUWSBpcyBub3Qgc2V0CiMgQ09ORklHX0JSSURHRV9ORl9FQlRBQkxF
UyBpcyBub3Qgc2V0CiMgQ09ORklHX0lQX0RDQ1AgaXMgbm90IHNldApDT05GSUdfSVBfU0NUUD1t
CiMgQ09ORklHX05FVF9TQ1RQUFJPQkUgaXMgbm90IHNldAojIENPTkZJR19TQ1RQX0RCR19NU0cg
aXMgbm90IHNldAojIENPTkZJR19TQ1RQX0RCR19PQkpDTlQgaXMgbm90IHNldApDT05GSUdfU0NU
UF9ERUZBVUxUX0NPT0tJRV9ITUFDX01ENT15CiMgQ09ORklHX1NDVFBfREVGQVVMVF9DT09LSUVf
SE1BQ19TSEExIGlzIG5vdCBzZXQKIyBDT05GSUdfU0NUUF9ERUZBVUxUX0NPT0tJRV9ITUFDX05P
TkUgaXMgbm90IHNldApDT05GSUdfU0NUUF9DT09LSUVfSE1BQ19NRDU9eQojIENPTkZJR19TQ1RQ
X0NPT0tJRV9ITUFDX1NIQTEgaXMgbm90IHNldAojIENPTkZJR19SRFMgaXMgbm90IHNldApDT05G
SUdfVElQQz1tCkNPTkZJR19USVBDX1BPUlRTPTgxOTEKIyBDT05GSUdfQVRNIGlzIG5vdCBzZXQK
IyBDT05GSUdfTDJUUCBpcyBub3Qgc2V0CkNPTkZJR19TVFA9bQpDT05GSUdfQlJJREdFPW0KQ09O
RklHX0JSSURHRV9JR01QX1NOT09QSU5HPXkKQ09ORklHX0hBVkVfTkVUX0RTQT15CkNPTkZJR19W
TEFOXzgwMjFRPW0KIyBDT05GSUdfVkxBTl84MDIxUV9HVlJQIGlzIG5vdCBzZXQKIyBDT05GSUdf
REVDTkVUIGlzIG5vdCBzZXQKQ09ORklHX0xMQz1tCiMgQ09ORklHX0xMQzIgaXMgbm90IHNldAoj
IENPTkZJR19JUFggaXMgbm90IHNldAojIENPTkZJR19BVEFMSyBpcyBub3Qgc2V0CiMgQ09ORklH
X1gyNSBpcyBub3Qgc2V0CiMgQ09ORklHX0xBUEIgaXMgbm90IHNldAojIENPTkZJR19XQU5fUk9V
VEVSIGlzIG5vdCBzZXQKIyBDT05GSUdfUEhPTkVUIGlzIG5vdCBzZXQKIyBDT05GSUdfSUVFRTgw
MjE1NCBpcyBub3Qgc2V0CkNPTkZJR19ORVRfU0NIRUQ9eQoKIwojIFF1ZXVlaW5nL1NjaGVkdWxp
bmcKIwpDT05GSUdfTkVUX1NDSF9DQlE9bQpDT05GSUdfTkVUX1NDSF9IVEI9bQpDT05GSUdfTkVU
X1NDSF9IRlNDPW0KQ09ORklHX05FVF9TQ0hfUFJJTz1tCiMgQ09ORklHX05FVF9TQ0hfTVVMVElR
IGlzIG5vdCBzZXQKQ09ORklHX05FVF9TQ0hfUkVEPW0KIyBDT05GSUdfTkVUX1NDSF9TRkIgaXMg
bm90IHNldApDT05GSUdfTkVUX1NDSF9TRlE9bQpDT05GSUdfTkVUX1NDSF9URVFMPW0KQ09ORklH
X05FVF9TQ0hfVEJGPW0KQ09ORklHX05FVF9TQ0hfR1JFRD1tCkNPTkZJR19ORVRfU0NIX0RTTUFS
Sz1tCkNPTkZJR19ORVRfU0NIX05FVEVNPW0KIyBDT05GSUdfTkVUX1NDSF9EUlIgaXMgbm90IHNl
dAojIENPTkZJR19ORVRfU0NIX01RUFJJTyBpcyBub3Qgc2V0CiMgQ09ORklHX05FVF9TQ0hfQ0hP
S0UgaXMgbm90IHNldAojIENPTkZJR19ORVRfU0NIX1FGUSBpcyBub3Qgc2V0CkNPTkZJR19ORVRf
U0NIX0NPREVMPW0KIyBDT05GSUdfTkVUX1NDSF9GUV9DT0RFTCBpcyBub3Qgc2V0CkNPTkZJR19O
RVRfU0NIX0lOR1JFU1M9bQojIENPTkZJR19ORVRfU0NIX1BMVUcgaXMgbm90IHNldAoKIwojIENs
YXNzaWZpY2F0aW9uCiMKQ09ORklHX05FVF9DTFM9eQpDT05GSUdfTkVUX0NMU19CQVNJQz15CiMg
Q09ORklHX05FVF9DTFNfVENJTkRFWCBpcyBub3Qgc2V0CiMgQ09ORklHX05FVF9DTFNfUk9VVEU0
IGlzIG5vdCBzZXQKIyBDT05GSUdfTkVUX0NMU19GVyBpcyBub3Qgc2V0CiMgQ09ORklHX05FVF9D
TFNfVTMyIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVUX0NMU19SU1ZQIGlzIG5vdCBzZXQKIyBDT05G
SUdfTkVUX0NMU19SU1ZQNiBpcyBub3Qgc2V0CiMgQ09ORklHX05FVF9DTFNfRkxPVyBpcyBub3Qg
c2V0CkNPTkZJR19ORVRfQ0xTX0NHUk9VUD15CiMgQ09ORklHX05FVF9FTUFUQ0ggaXMgbm90IHNl
dApDT05GSUdfTkVUX0NMU19BQ1Q9eQojIENPTkZJR19ORVRfQUNUX1BPTElDRSBpcyBub3Qgc2V0
CiMgQ09ORklHX05FVF9BQ1RfR0FDVCBpcyBub3Qgc2V0CiMgQ09ORklHX05FVF9BQ1RfTUlSUkVE
IGlzIG5vdCBzZXQKIyBDT05GSUdfTkVUX0FDVF9JUFQgaXMgbm90IHNldAojIENPTkZJR19ORVRf
QUNUX05BVCBpcyBub3Qgc2V0CiMgQ09ORklHX05FVF9BQ1RfUEVESVQgaXMgbm90IHNldAojIENP
TkZJR19ORVRfQUNUX1NJTVAgaXMgbm90IHNldAojIENPTkZJR19ORVRfQUNUX1NLQkVESVQgaXMg
bm90IHNldAojIENPTkZJR19ORVRfQUNUX0NTVU0gaXMgbm90IHNldApDT05GSUdfTkVUX1NDSF9G
SUZPPXkKIyBDT05GSUdfRENCIGlzIG5vdCBzZXQKQ09ORklHX0ROU19SRVNPTFZFUj15CiMgQ09O
RklHX0JBVE1BTl9BRFYgaXMgbm90IHNldAojIENPTkZJR19PUEVOVlNXSVRDSCBpcyBub3Qgc2V0
CkNPTkZJR19SUFM9eQpDT05GSUdfUkZTX0FDQ0VMPXkKQ09ORklHX1hQUz15CiMgQ09ORklHX05F
VFBSSU9fQ0dST1VQIGlzIG5vdCBzZXQKQ09ORklHX0JRTD15CgojCiMgTmV0d29yayB0ZXN0aW5n
CiMKQ09ORklHX05FVF9QS1RHRU49bQojIENPTkZJR19ORVRfVENQUFJPQkUgaXMgbm90IHNldAoj
IENPTkZJR19ORVRfRFJPUF9NT05JVE9SIGlzIG5vdCBzZXQKIyBDT05GSUdfSEFNUkFESU8gaXMg
bm90IHNldApDT05GSUdfQ0FOPXkKQ09ORklHX0NBTl9SQVc9eQojIENPTkZJR19DQU5fQkNNIGlz
IG5vdCBzZXQKIyBDT05GSUdfQ0FOX0dXIGlzIG5vdCBzZXQKCiMKIyBDQU4gRGV2aWNlIERyaXZl
cnMKIwojIENPTkZJR19DQU5fVkNBTiBpcyBub3Qgc2V0CiMgQ09ORklHX0NBTl9TTENBTiBpcyBu
b3Qgc2V0CkNPTkZJR19DQU5fREVWPXkKQ09ORklHX0NBTl9DQUxDX0JJVFRJTUlORz15CiMgQ09O
RklHX0NBTl9NQ1AyNTFYIGlzIG5vdCBzZXQKQ09ORklHX1BDSF9DQU49eQojIENPTkZJR19DQU5f
U0pBMTAwMCBpcyBub3Qgc2V0CiMgQ09ORklHX0NBTl9DX0NBTiBpcyBub3Qgc2V0CiMgQ09ORklH
X0NBTl9DQzc3MCBpcyBub3Qgc2V0CgojCiMgQ0FOIFVTQiBpbnRlcmZhY2VzCiMKIyBDT05GSUdf
Q0FOX0VNU19VU0IgaXMgbm90IHNldAojIENPTkZJR19DQU5fRVNEX1VTQjIgaXMgbm90IHNldAoj
IENPTkZJR19DQU5fS1ZBU0VSX1VTQiBpcyBub3Qgc2V0CiMgQ09ORklHX0NBTl9QRUFLX1VTQiBp
cyBub3Qgc2V0CiMgQ09ORklHX0NBTl9TT0ZUSU5HIGlzIG5vdCBzZXQKIyBDT05GSUdfQ0FOX0RF
QlVHX0RFVklDRVMgaXMgbm90IHNldAojIENPTkZJR19JUkRBIGlzIG5vdCBzZXQKIyBDT05GSUdf
QlQgaXMgbm90IHNldAojIENPTkZJR19BRl9SWFJQQyBpcyBub3Qgc2V0CkNPTkZJR19GSUJfUlVM
RVM9eQpDT05GSUdfV0lSRUxFU1M9eQojIENPTkZJR19DRkc4MDIxMSBpcyBub3Qgc2V0CiMgQ09O
RklHX0xJQjgwMjExIGlzIG5vdCBzZXQKCiMKIyBDRkc4MDIxMSBuZWVkcyB0byBiZSBlbmFibGVk
IGZvciBNQUM4MDIxMQojCiMgQ09ORklHX1dJTUFYIGlzIG5vdCBzZXQKIyBDT05GSUdfUkZLSUxM
IGlzIG5vdCBzZXQKIyBDT05GSUdfTkVUXzlQIGlzIG5vdCBzZXQKIyBDT05GSUdfQ0FJRiBpcyBu
b3Qgc2V0CiMgQ09ORklHX0NFUEhfTElCIGlzIG5vdCBzZXQKIyBDT05GSUdfTkZDIGlzIG5vdCBz
ZXQKCiMKIyBEZXZpY2UgRHJpdmVycwojCgojCiMgR2VuZXJpYyBEcml2ZXIgT3B0aW9ucwojCkNP
TkZJR19VRVZFTlRfSEVMUEVSX1BBVEg9IiIKQ09ORklHX0RFVlRNUEZTPXkKQ09ORklHX0RFVlRN
UEZTX01PVU5UPXkKQ09ORklHX1NUQU5EQUxPTkU9eQpDT05GSUdfUFJFVkVOVF9GSVJNV0FSRV9C
VUlMRD15CiMgQ09ORklHX0ZXX0xPQURFUiBpcyBub3Qgc2V0CiMgQ09ORklHX0RFQlVHX0RSSVZF
UiBpcyBub3Qgc2V0CiMgQ09ORklHX0RFQlVHX0RFVlJFUyBpcyBub3Qgc2V0CiMgQ09ORklHX1NZ
U19IWVBFUlZJU09SIGlzIG5vdCBzZXQKIyBDT05GSUdfR0VORVJJQ19DUFVfREVWSUNFUyBpcyBu
b3Qgc2V0CkNPTkZJR19ETUFfU0hBUkVEX0JVRkZFUj15CiMgQ09ORklHX0NNQSBpcyBub3Qgc2V0
CgojCiMgQnVzIGRldmljZXMKIwojIENPTkZJR19DT05ORUNUT1IgaXMgbm90IHNldAojIENPTkZJ
R19NVEQgaXMgbm90IHNldAojIENPTkZJR19QQVJQT1JUIGlzIG5vdCBzZXQKQ09ORklHX1BOUD15
CkNPTkZJR19QTlBfREVCVUdfTUVTU0FHRVM9eQoKIwojIFByb3RvY29scwojCkNPTkZJR19QTlBB
Q1BJPXkKQ09ORklHX0JMS19ERVY9eQojIENPTkZJR19CTEtfREVWX0ZEIGlzIG5vdCBzZXQKIyBD
T05GSUdfQkxLX0RFVl9QQ0lFU1NEX01USVAzMlhYIGlzIG5vdCBzZXQKIyBDT05GSUdfQkxLX0NQ
UV9EQSBpcyBub3Qgc2V0CiMgQ09ORklHX0JMS19DUFFfQ0lTU19EQSBpcyBub3Qgc2V0CiMgQ09O
RklHX0JMS19ERVZfREFDOTYwIGlzIG5vdCBzZXQKIyBDT05GSUdfQkxLX0RFVl9VTUVNIGlzIG5v
dCBzZXQKIyBDT05GSUdfQkxLX0RFVl9DT1dfQ09NTU9OIGlzIG5vdCBzZXQKQ09ORklHX0JMS19E
RVZfTE9PUD15CkNPTkZJR19CTEtfREVWX0xPT1BfTUlOX0NPVU5UPTgKQ09ORklHX0JMS19ERVZf
Q1JZUFRPTE9PUD15CiMgQ09ORklHX0JMS19ERVZfRFJCRCBpcyBub3Qgc2V0CkNPTkZJR19CTEtf
REVWX05CRD1tCiMgQ09ORklHX0JMS19ERVZfTlZNRSBpcyBub3Qgc2V0CiMgQ09ORklHX0JMS19E
RVZfU1g4IGlzIG5vdCBzZXQKQ09ORklHX0JMS19ERVZfUkFNPXkKQ09ORklHX0JMS19ERVZfUkFN
X0NPVU5UPTE2CkNPTkZJR19CTEtfREVWX1JBTV9TSVpFPTQwOTYKIyBDT05GSUdfQkxLX0RFVl9Y
SVAgaXMgbm90IHNldAojIENPTkZJR19DRFJPTV9QS1RDRFZEIGlzIG5vdCBzZXQKIyBDT05GSUdf
QVRBX09WRVJfRVRIIGlzIG5vdCBzZXQKIyBDT05GSUdfQkxLX0RFVl9IRCBpcyBub3Qgc2V0CiMg
Q09ORklHX0JMS19ERVZfUkJEIGlzIG5vdCBzZXQKCiMKIyBNaXNjIGRldmljZXMKIwojIENPTkZJ
R19TRU5TT1JTX0xJUzNMVjAyRCBpcyBub3Qgc2V0CiMgQ09ORklHX0FENTI1WF9EUE9UIGlzIG5v
dCBzZXQKIyBDT05GSUdfSUJNX0FTTSBpcyBub3Qgc2V0CiMgQ09ORklHX1BIQU5UT00gaXMgbm90
IHNldAojIENPTkZJR19JTlRFTF9NSURfUFRJIGlzIG5vdCBzZXQKIyBDT05GSUdfU0dJX0lPQzQg
aXMgbm90IHNldAojIENPTkZJR19USUZNX0NPUkUgaXMgbm90IHNldAojIENPTkZJR19JQ1M5MzJT
NDAxIGlzIG5vdCBzZXQKIyBDT05GSUdfRU5DTE9TVVJFX1NFUlZJQ0VTIGlzIG5vdCBzZXQKIyBD
T05GSUdfSFBfSUxPIGlzIG5vdCBzZXQKIyBDT05GSUdfQVBEUzk4MDJBTFMgaXMgbm90IHNldAoj
IENPTkZJR19JU0wyOTAwMyBpcyBub3Qgc2V0CiMgQ09ORklHX0lTTDI5MDIwIGlzIG5vdCBzZXQK
IyBDT05GSUdfU0VOU09SU19UU0wyNTUwIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19CSDE3
ODAgaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX0JIMTc3MCBpcyBub3Qgc2V0CiMgQ09ORklH
X1NFTlNPUlNfQVBEUzk5MFggaXMgbm90IHNldAojIENPTkZJR19ITUM2MzUyIGlzIG5vdCBzZXQK
IyBDT05GSUdfRFMxNjgyIGlzIG5vdCBzZXQKIyBDT05GSUdfVElfREFDNzUxMiBpcyBub3Qgc2V0
CiMgQ09ORklHX1ZNV0FSRV9CQUxMT09OIGlzIG5vdCBzZXQKIyBDT05GSUdfQk1QMDg1X0kyQyBp
cyBub3Qgc2V0CiMgQ09ORklHX0JNUDA4NV9TUEkgaXMgbm90IHNldApDT05GSUdfUENIX1BIVUI9
eQojIENPTkZJR19VU0JfU1dJVENIX0ZTQTk0ODAgaXMgbm90IHNldAojIENPTkZJR19DMlBPUlQg
aXMgbm90IHNldAoKIwojIEVFUFJPTSBzdXBwb3J0CiMKIyBDT05GSUdfRUVQUk9NX0FUMjQgaXMg
bm90IHNldAojIENPTkZJR19FRVBST01fQVQyNSBpcyBub3Qgc2V0CiMgQ09ORklHX0VFUFJPTV9M
RUdBQ1kgaXMgbm90IHNldAojIENPTkZJR19FRVBST01fTUFYNjg3NSBpcyBub3Qgc2V0CiMgQ09O
RklHX0VFUFJPTV85M0NYNiBpcyBub3Qgc2V0CiMgQ09ORklHX0VFUFJPTV85M1hYNDYgaXMgbm90
IHNldAojIENPTkZJR19DQjcxMF9DT1JFIGlzIG5vdCBzZXQKCiMKIyBUZXhhcyBJbnN0cnVtZW50
cyBzaGFyZWQgdHJhbnNwb3J0IGxpbmUgZGlzY2lwbGluZQojCiMgQ09ORklHX1RJX1NUIGlzIG5v
dCBzZXQKIyBDT05GSUdfU0VOU09SU19MSVMzX0kyQyBpcyBub3Qgc2V0CgojCiMgQWx0ZXJhIEZQ
R0EgZmlybXdhcmUgZG93bmxvYWQgbW9kdWxlCiMKIyBDT05GSUdfQUxURVJBX1NUQVBMIGlzIG5v
dCBzZXQKIyBDT05GSUdfSU5URUxfTUVJIGlzIG5vdCBzZXQKQ09ORklHX0hBVkVfSURFPXkKIyBD
T05GSUdfSURFIGlzIG5vdCBzZXQKCiMKIyBTQ1NJIGRldmljZSBzdXBwb3J0CiMKQ09ORklHX1ND
U0lfTU9EPXkKIyBDT05GSUdfUkFJRF9BVFRSUyBpcyBub3Qgc2V0CkNPTkZJR19TQ1NJPXkKQ09O
RklHX1NDU0lfRE1BPXkKIyBDT05GSUdfU0NTSV9UR1QgaXMgbm90IHNldAojIENPTkZJR19TQ1NJ
X05FVExJTksgaXMgbm90IHNldApDT05GSUdfU0NTSV9QUk9DX0ZTPXkKCiMKIyBTQ1NJIHN1cHBv
cnQgdHlwZSAoZGlzaywgdGFwZSwgQ0QtUk9NKQojCkNPTkZJR19CTEtfREVWX1NEPXkKIyBDT05G
SUdfQ0hSX0RFVl9TVCBpcyBub3Qgc2V0CiMgQ09ORklHX0NIUl9ERVZfT1NTVCBpcyBub3Qgc2V0
CkNPTkZJR19CTEtfREVWX1NSPXkKIyBDT05GSUdfQkxLX0RFVl9TUl9WRU5ET1IgaXMgbm90IHNl
dApDT05GSUdfQ0hSX0RFVl9TRz15CiMgQ09ORklHX0NIUl9ERVZfU0NIIGlzIG5vdCBzZXQKIyBD
T05GSUdfU0NTSV9NVUxUSV9MVU4gaXMgbm90IHNldAojIENPTkZJR19TQ1NJX0NPTlNUQU5UUyBp
cyBub3Qgc2V0CiMgQ09ORklHX1NDU0lfTE9HR0lORyBpcyBub3Qgc2V0CiMgQ09ORklHX1NDU0lf
U0NBTl9BU1lOQyBpcyBub3Qgc2V0CgojCiMgU0NTSSBUcmFuc3BvcnRzCiMKIyBDT05GSUdfU0NT
SV9TUElfQVRUUlMgaXMgbm90IHNldAojIENPTkZJR19TQ1NJX0ZDX0FUVFJTIGlzIG5vdCBzZXQK
IyBDT05GSUdfU0NTSV9JU0NTSV9BVFRSUyBpcyBub3Qgc2V0CiMgQ09ORklHX1NDU0lfU0FTX0FU
VFJTIGlzIG5vdCBzZXQKIyBDT05GSUdfU0NTSV9TQVNfTElCU0FTIGlzIG5vdCBzZXQKIyBDT05G
SUdfU0NTSV9TUlBfQVRUUlMgaXMgbm90IHNldApDT05GSUdfU0NTSV9MT1dMRVZFTD15CiMgQ09O
RklHX0lTQ1NJX1RDUCBpcyBub3Qgc2V0CiMgQ09ORklHX0lTQ1NJX0JPT1RfU1lTRlMgaXMgbm90
IHNldAojIENPTkZJR19TQ1NJX0NYR0IzX0lTQ1NJIGlzIG5vdCBzZXQKIyBDT05GSUdfU0NTSV9D
WEdCNF9JU0NTSSBpcyBub3Qgc2V0CiMgQ09ORklHX1NDU0lfQk5YMl9JU0NTSSBpcyBub3Qgc2V0
CiMgQ09ORklHX1NDU0lfQk5YMlhfRkNPRSBpcyBub3Qgc2V0CiMgQ09ORklHX0JFMklTQ1NJIGlz
IG5vdCBzZXQKIyBDT05GSUdfQkxLX0RFVl8zV19YWFhYX1JBSUQgaXMgbm90IHNldAojIENPTkZJ
R19TQ1NJX0hQU0EgaXMgbm90IHNldAojIENPTkZJR19TQ1NJXzNXXzlYWFggaXMgbm90IHNldAoj
IENPTkZJR19TQ1NJXzNXX1NBUyBpcyBub3Qgc2V0CiMgQ09ORklHX1NDU0lfQUNBUkQgaXMgbm90
IHNldAojIENPTkZJR19TQ1NJX0FBQ1JBSUQgaXMgbm90IHNldAojIENPTkZJR19TQ1NJX0FJQzdY
WFggaXMgbm90IHNldAojIENPTkZJR19TQ1NJX0FJQzdYWFhfT0xEIGlzIG5vdCBzZXQKIyBDT05G
SUdfU0NTSV9BSUM3OVhYIGlzIG5vdCBzZXQKIyBDT05GSUdfU0NTSV9BSUM5NFhYIGlzIG5vdCBz
ZXQKIyBDT05GSUdfU0NTSV9NVlNBUyBpcyBub3Qgc2V0CiMgQ09ORklHX1NDU0lfTVZVTUkgaXMg
bm90IHNldAojIENPTkZJR19TQ1NJX0RQVF9JMk8gaXMgbm90IHNldAojIENPTkZJR19TQ1NJX0FE
VkFOU1lTIGlzIG5vdCBzZXQKIyBDT05GSUdfU0NTSV9BUkNNU1IgaXMgbm90IHNldAojIENPTkZJ
R19NRUdBUkFJRF9ORVdHRU4gaXMgbm90IHNldAojIENPTkZJR19NRUdBUkFJRF9MRUdBQ1kgaXMg
bm90IHNldAojIENPTkZJR19NRUdBUkFJRF9TQVMgaXMgbm90IHNldAojIENPTkZJR19TQ1NJX01Q
VDJTQVMgaXMgbm90IHNldAojIENPTkZJR19TQ1NJX01QVDNTQVMgaXMgbm90IHNldAojIENPTkZJ
R19TQ1NJX1VGU0hDRCBpcyBub3Qgc2V0CiMgQ09ORklHX1NDU0lfSFBUSU9QIGlzIG5vdCBzZXQK
IyBDT05GSUdfU0NTSV9CVVNMT0dJQyBpcyBub3Qgc2V0CiMgQ09ORklHX1ZNV0FSRV9QVlNDU0kg
aXMgbm90IHNldAojIENPTkZJR19MSUJGQyBpcyBub3Qgc2V0CiMgQ09ORklHX0xJQkZDT0UgaXMg
bm90IHNldAojIENPTkZJR19GQ09FIGlzIG5vdCBzZXQKIyBDT05GSUdfRkNPRV9GTklDIGlzIG5v
dCBzZXQKIyBDT05GSUdfU0NTSV9ETVgzMTkxRCBpcyBub3Qgc2V0CiMgQ09ORklHX1NDU0lfRUFU
QSBpcyBub3Qgc2V0CiMgQ09ORklHX1NDU0lfRlVUVVJFX0RPTUFJTiBpcyBub3Qgc2V0CiMgQ09O
RklHX1NDU0lfR0RUSCBpcyBub3Qgc2V0CiMgQ09ORklHX1NDU0lfSVNDSSBpcyBub3Qgc2V0CiMg
Q09ORklHX1NDU0lfSVBTIGlzIG5vdCBzZXQKIyBDT05GSUdfU0NTSV9JTklUSU8gaXMgbm90IHNl
dAojIENPTkZJR19TQ1NJX0lOSUExMDAgaXMgbm90IHNldAojIENPTkZJR19TQ1NJX1NURVggaXMg
bm90IHNldAojIENPTkZJR19TQ1NJX1NZTTUzQzhYWF8yIGlzIG5vdCBzZXQKIyBDT05GSUdfU0NT
SV9JUFIgaXMgbm90IHNldAojIENPTkZJR19TQ1NJX1FMT0dJQ18xMjgwIGlzIG5vdCBzZXQKIyBD
T05GSUdfU0NTSV9RTEFfRkMgaXMgbm90IHNldAojIENPTkZJR19TQ1NJX1FMQV9JU0NTSSBpcyBu
b3Qgc2V0CiMgQ09ORklHX1NDU0lfTFBGQyBpcyBub3Qgc2V0CiMgQ09ORklHX1NDU0lfREMzOTV4
IGlzIG5vdCBzZXQKIyBDT05GSUdfU0NTSV9EQzM5MFQgaXMgbm90IHNldAojIENPTkZJR19TQ1NJ
X05TUDMyIGlzIG5vdCBzZXQKIyBDT05GSUdfU0NTSV9ERUJVRyBpcyBub3Qgc2V0CiMgQ09ORklH
X1NDU0lfUE1DUkFJRCBpcyBub3Qgc2V0CiMgQ09ORklHX1NDU0lfUE04MDAxIGlzIG5vdCBzZXQK
IyBDT05GSUdfU0NTSV9TUlAgaXMgbm90IHNldAojIENPTkZJR19TQ1NJX0JGQV9GQyBpcyBub3Qg
c2V0CiMgQ09ORklHX1NDU0lfQ0hFTFNJT19GQ09FIGlzIG5vdCBzZXQKIyBDT05GSUdfU0NTSV9E
SCBpcyBub3Qgc2V0CiMgQ09ORklHX1NDU0lfT1NEX0lOSVRJQVRPUiBpcyBub3Qgc2V0CkNPTkZJ
R19BVEE9eQojIENPTkZJR19BVEFfTk9OU1RBTkRBUkQgaXMgbm90IHNldApDT05GSUdfQVRBX1ZF
UkJPU0VfRVJST1I9eQpDT05GSUdfQVRBX0FDUEk9eQpDT05GSUdfU0FUQV9QTVA9eQoKIwojIENv
bnRyb2xsZXJzIHdpdGggbm9uLVNGRiBuYXRpdmUgaW50ZXJmYWNlCiMKQ09ORklHX1NBVEFfQUhD
ST15CiMgQ09ORklHX1NBVEFfQUhDSV9QTEFURk9STSBpcyBub3Qgc2V0CiMgQ09ORklHX1NBVEFf
SU5JQzE2MlggaXMgbm90IHNldAojIENPTkZJR19TQVRBX0FDQVJEX0FIQ0kgaXMgbm90IHNldAoj
IENPTkZJR19TQVRBX1NJTDI0IGlzIG5vdCBzZXQKQ09ORklHX0FUQV9TRkY9eQoKIwojIFNGRiBj
b250cm9sbGVycyB3aXRoIGN1c3RvbSBETUEgaW50ZXJmYWNlCiMKIyBDT05GSUdfUERDX0FETUEg
aXMgbm90IHNldAojIENPTkZJR19TQVRBX1FTVE9SIGlzIG5vdCBzZXQKIyBDT05GSUdfU0FUQV9T
WDQgaXMgbm90IHNldApDT05GSUdfQVRBX0JNRE1BPXkKCiMKIyBTQVRBIFNGRiBjb250cm9sbGVy
cyB3aXRoIEJNRE1BCiMKIyBDT05GSUdfQVRBX1BJSVggaXMgbm90IHNldAojIENPTkZJR19TQVRB
X0hJR0hCQU5LIGlzIG5vdCBzZXQKIyBDT05GSUdfU0FUQV9NViBpcyBub3Qgc2V0CiMgQ09ORklH
X1NBVEFfTlYgaXMgbm90IHNldAojIENPTkZJR19TQVRBX1BST01JU0UgaXMgbm90IHNldAojIENP
TkZJR19TQVRBX1NJTCBpcyBub3Qgc2V0CiMgQ09ORklHX1NBVEFfU0lTIGlzIG5vdCBzZXQKIyBD
T05GSUdfU0FUQV9TVlcgaXMgbm90IHNldAojIENPTkZJR19TQVRBX1VMSSBpcyBub3Qgc2V0CiMg
Q09ORklHX1NBVEFfVklBIGlzIG5vdCBzZXQKIyBDT05GSUdfU0FUQV9WSVRFU1NFIGlzIG5vdCBz
ZXQKCiMKIyBQQVRBIFNGRiBjb250cm9sbGVycyB3aXRoIEJNRE1BCiMKIyBDT05GSUdfUEFUQV9B
TEkgaXMgbm90IHNldAojIENPTkZJR19QQVRBX0FNRCBpcyBub3Qgc2V0CiMgQ09ORklHX1BBVEFf
QVJBU0FOX0NGIGlzIG5vdCBzZXQKIyBDT05GSUdfUEFUQV9BUlRPUCBpcyBub3Qgc2V0CiMgQ09O
RklHX1BBVEFfQVRJSVhQIGlzIG5vdCBzZXQKIyBDT05GSUdfUEFUQV9BVFA4NjdYIGlzIG5vdCBz
ZXQKIyBDT05GSUdfUEFUQV9DTUQ2NFggaXMgbm90IHNldAojIENPTkZJR19QQVRBX0NTNTUyMCBp
cyBub3Qgc2V0CiMgQ09ORklHX1BBVEFfQ1M1NTMwIGlzIG5vdCBzZXQKIyBDT05GSUdfUEFUQV9D
UzU1MzUgaXMgbm90IHNldAojIENPTkZJR19QQVRBX0NTNTUzNiBpcyBub3Qgc2V0CiMgQ09ORklH
X1BBVEFfQ1lQUkVTUyBpcyBub3Qgc2V0CiMgQ09ORklHX1BBVEFfRUZBUiBpcyBub3Qgc2V0CiMg
Q09ORklHX1BBVEFfSFBUMzY2IGlzIG5vdCBzZXQKIyBDT05GSUdfUEFUQV9IUFQzN1ggaXMgbm90
IHNldAojIENPTkZJR19QQVRBX0hQVDNYMk4gaXMgbm90IHNldAojIENPTkZJR19QQVRBX0hQVDNY
MyBpcyBub3Qgc2V0CiMgQ09ORklHX1BBVEFfSVQ4MjEzIGlzIG5vdCBzZXQKIyBDT05GSUdfUEFU
QV9JVDgyMVggaXMgbm90IHNldAojIENPTkZJR19QQVRBX0pNSUNST04gaXMgbm90IHNldAojIENP
TkZJR19QQVRBX01BUlZFTEwgaXMgbm90IHNldAojIENPTkZJR19QQVRBX05FVENFTEwgaXMgbm90
IHNldAojIENPTkZJR19QQVRBX05JTkpBMzIgaXMgbm90IHNldAojIENPTkZJR19QQVRBX05TODc0
MTUgaXMgbm90IHNldAojIENPTkZJR19QQVRBX09MRFBJSVggaXMgbm90IHNldAojIENPTkZJR19Q
QVRBX09QVElETUEgaXMgbm90IHNldAojIENPTkZJR19QQVRBX1BEQzIwMjdYIGlzIG5vdCBzZXQK
IyBDT05GSUdfUEFUQV9QRENfT0xEIGlzIG5vdCBzZXQKIyBDT05GSUdfUEFUQV9SQURJU1lTIGlz
IG5vdCBzZXQKIyBDT05GSUdfUEFUQV9SREMgaXMgbm90IHNldAojIENPTkZJR19QQVRBX1NDMTIw
MCBpcyBub3Qgc2V0CkNPTkZJR19QQVRBX1NDSD15CiMgQ09ORklHX1BBVEFfU0VSVkVSV09SS1Mg
aXMgbm90IHNldAojIENPTkZJR19QQVRBX1NJTDY4MCBpcyBub3Qgc2V0CiMgQ09ORklHX1BBVEFf
U0lTIGlzIG5vdCBzZXQKIyBDT05GSUdfUEFUQV9UT1NISUJBIGlzIG5vdCBzZXQKIyBDT05GSUdf
UEFUQV9UUklGTEVYIGlzIG5vdCBzZXQKIyBDT05GSUdfUEFUQV9WSUEgaXMgbm90IHNldAojIENP
TkZJR19QQVRBX1dJTkJPTkQgaXMgbm90IHNldAoKIwojIFBJTy1vbmx5IFNGRiBjb250cm9sbGVy
cwojCiMgQ09ORklHX1BBVEFfQ01ENjQwX1BDSSBpcyBub3Qgc2V0CiMgQ09ORklHX1BBVEFfTVBJ
SVggaXMgbm90IHNldAojIENPTkZJR19QQVRBX05TODc0MTAgaXMgbm90IHNldAojIENPTkZJR19Q
QVRBX09QVEkgaXMgbm90IHNldAojIENPTkZJR19QQVRBX1BMQVRGT1JNIGlzIG5vdCBzZXQKIyBD
T05GSUdfUEFUQV9SWjEwMDAgaXMgbm90IHNldAoKIwojIEdlbmVyaWMgZmFsbGJhY2sgLyBsZWdh
Y3kgZHJpdmVycwojCiMgQ09ORklHX1BBVEFfQUNQSSBpcyBub3Qgc2V0CkNPTkZJR19BVEFfR0VO
RVJJQz15CiMgQ09ORklHX1BBVEFfTEVHQUNZIGlzIG5vdCBzZXQKQ09ORklHX01EPXkKQ09ORklH
X0JMS19ERVZfTUQ9eQpDT05GSUdfTURfQVVUT0RFVEVDVD15CkNPTkZJR19NRF9MSU5FQVI9eQpD
T05GSUdfTURfUkFJRDA9eQpDT05GSUdfTURfUkFJRDE9eQpDT05GSUdfTURfUkFJRDEwPXkKIyBD
T05GSUdfTURfUkFJRDQ1NiBpcyBub3Qgc2V0CkNPTkZJR19NRF9NVUxUSVBBVEg9eQpDT05GSUdf
TURfRkFVTFRZPXkKQ09ORklHX0JMS19ERVZfRE09eQojIENPTkZJR19ETV9ERUJVRyBpcyBub3Qg
c2V0CkNPTkZJR19ETV9DUllQVD15CkNPTkZJR19ETV9TTkFQU0hPVD15CiMgQ09ORklHX0RNX1RI
SU5fUFJPVklTSU9OSU5HIGlzIG5vdCBzZXQKQ09ORklHX0RNX01JUlJPUj15CiMgQ09ORklHX0RN
X1JBSUQgaXMgbm90IHNldAojIENPTkZJR19ETV9MT0dfVVNFUlNQQUNFIGlzIG5vdCBzZXQKQ09O
RklHX0RNX1pFUk89eQojIENPTkZJR19ETV9NVUxUSVBBVEggaXMgbm90IHNldAojIENPTkZJR19E
TV9ERUxBWSBpcyBub3Qgc2V0CiMgQ09ORklHX0RNX1VFVkVOVCBpcyBub3Qgc2V0CiMgQ09ORklH
X0RNX0ZMQUtFWSBpcyBub3Qgc2V0CiMgQ09ORklHX0RNX1ZFUklUWSBpcyBub3Qgc2V0CiMgQ09O
RklHX1RBUkdFVF9DT1JFIGlzIG5vdCBzZXQKIyBDT05GSUdfRlVTSU9OIGlzIG5vdCBzZXQKCiMK
IyBJRUVFIDEzOTQgKEZpcmVXaXJlKSBzdXBwb3J0CiMKIyBDT05GSUdfRklSRVdJUkUgaXMgbm90
IHNldAojIENPTkZJR19GSVJFV0lSRV9OT1NZIGlzIG5vdCBzZXQKIyBDT05GSUdfSTJPIGlzIG5v
dCBzZXQKIyBDT05GSUdfTUFDSU5UT1NIX0RSSVZFUlMgaXMgbm90IHNldApDT05GSUdfTkVUREVW
SUNFUz15CkNPTkZJR19ORVRfQ09SRT15CkNPTkZJR19CT05ESU5HPW0KQ09ORklHX0RVTU1ZPW0K
IyBDT05GSUdfRVFVQUxJWkVSIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVUX0ZDIGlzIG5vdCBzZXQK
Q09ORklHX01JST15CiMgQ09ORklHX0lGQiBpcyBub3Qgc2V0CiMgQ09ORklHX05FVF9URUFNIGlz
IG5vdCBzZXQKIyBDT05GSUdfTUFDVkxBTiBpcyBub3Qgc2V0CiMgQ09ORklHX1ZYTEFOIGlzIG5v
dCBzZXQKIyBDT05GSUdfTkVUQ09OU09MRSBpcyBub3Qgc2V0CiMgQ09ORklHX05FVFBPTEwgaXMg
bm90IHNldAojIENPTkZJR19ORVRfUE9MTF9DT05UUk9MTEVSIGlzIG5vdCBzZXQKQ09ORklHX1RV
Tj1tCiMgQ09ORklHX1ZFVEggaXMgbm90IHNldAojIENPTkZJR19BUkNORVQgaXMgbm90IHNldAoK
IwojIENBSUYgdHJhbnNwb3J0IGRyaXZlcnMKIwoKIwojIERpc3RyaWJ1dGVkIFN3aXRjaCBBcmNo
aXRlY3R1cmUgZHJpdmVycwojCiMgQ09ORklHX05FVF9EU0FfTVY4OEU2WFhYIGlzIG5vdCBzZXQK
IyBDT05GSUdfTkVUX0RTQV9NVjg4RTYwNjAgaXMgbm90IHNldAojIENPTkZJR19ORVRfRFNBX01W
ODhFNlhYWF9ORUVEX1BQVSBpcyBub3Qgc2V0CiMgQ09ORklHX05FVF9EU0FfTVY4OEU2MTMxIGlz
IG5vdCBzZXQKIyBDT05GSUdfTkVUX0RTQV9NVjg4RTYxMjNfNjFfNjUgaXMgbm90IHNldApDT05G
SUdfRVRIRVJORVQ9eQojIENPTkZJR19ORVRfVkVORE9SXzNDT00gaXMgbm90IHNldAojIENPTkZJ
R19ORVRfVkVORE9SX0FEQVBURUMgaXMgbm90IHNldAojIENPTkZJR19ORVRfVkVORE9SX0FMVEVP
TiBpcyBub3Qgc2V0CiMgQ09ORklHX05FVF9WRU5ET1JfQU1EIGlzIG5vdCBzZXQKIyBDT05GSUdf
TkVUX1ZFTkRPUl9BVEhFUk9TIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVUX0NBREVOQ0UgaXMgbm90
IHNldAojIENPTkZJR19ORVRfVkVORE9SX0JST0FEQ09NIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVU
X1ZFTkRPUl9CUk9DQURFIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVUX0NBTFhFREFfWEdNQUMgaXMg
bm90IHNldAojIENPTkZJR19ORVRfVkVORE9SX0NIRUxTSU8gaXMgbm90IHNldAojIENPTkZJR19O
RVRfVkVORE9SX0NJU0NPIGlzIG5vdCBzZXQKIyBDT05GSUdfRE5FVCBpcyBub3Qgc2V0CiMgQ09O
RklHX05FVF9WRU5ET1JfREVDIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVUX1ZFTkRPUl9ETElOSyBp
cyBub3Qgc2V0CiMgQ09ORklHX05FVF9WRU5ET1JfRU1VTEVYIGlzIG5vdCBzZXQKIyBDT05GSUdf
TkVUX1ZFTkRPUl9FWEFSIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVUX1ZFTkRPUl9IUCBpcyBub3Qg
c2V0CiMgQ09ORklHX05FVF9WRU5ET1JfSU5URUwgaXMgbm90IHNldAojIENPTkZJR19JUDEwMDAg
aXMgbm90IHNldAojIENPTkZJR19KTUUgaXMgbm90IHNldAojIENPTkZJR19ORVRfVkVORE9SX01B
UlZFTEwgaXMgbm90IHNldAojIENPTkZJR19ORVRfVkVORE9SX01FTExBTk9YIGlzIG5vdCBzZXQK
IyBDT05GSUdfTkVUX1ZFTkRPUl9NSUNSRUwgaXMgbm90IHNldAojIENPTkZJR19ORVRfVkVORE9S
X01JQ1JPQ0hJUCBpcyBub3Qgc2V0CiMgQ09ORklHX05FVF9WRU5ET1JfTVlSSSBpcyBub3Qgc2V0
CiMgQ09ORklHX0ZFQUxOWCBpcyBub3Qgc2V0CiMgQ09ORklHX05FVF9WRU5ET1JfTkFUU0VNSSBp
cyBub3Qgc2V0CiMgQ09ORklHX05FVF9WRU5ET1JfTlZJRElBIGlzIG5vdCBzZXQKQ09ORklHX05F
VF9WRU5ET1JfT0tJPXkKQ09ORklHX1BDSF9HQkU9eQojIENPTkZJR19FVEhPQyBpcyBub3Qgc2V0
CiMgQ09ORklHX05FVF9QQUNLRVRfRU5HSU5FIGlzIG5vdCBzZXQKIyBDT05GSUdfTkVUX1ZFTkRP
Ul9RTE9HSUMgaXMgbm90IHNldAojIENPTkZJR19ORVRfVkVORE9SX1JFQUxURUsgaXMgbm90IHNl
dAojIENPTkZJR19ORVRfVkVORE9SX1JEQyBpcyBub3Qgc2V0CiMgQ09ORklHX05FVF9WRU5ET1Jf
U0VFUSBpcyBub3Qgc2V0CiMgQ09ORklHX05FVF9WRU5ET1JfU0lMQU4gaXMgbm90IHNldAojIENP
TkZJR19ORVRfVkVORE9SX1NJUyBpcyBub3Qgc2V0CiMgQ09ORklHX1NGQyBpcyBub3Qgc2V0CiMg
Q09ORklHX05FVF9WRU5ET1JfU01TQyBpcyBub3Qgc2V0CiMgQ09ORklHX05FVF9WRU5ET1JfU1RN
SUNSTyBpcyBub3Qgc2V0CiMgQ09ORklHX05FVF9WRU5ET1JfU1VOIGlzIG5vdCBzZXQKIyBDT05G
SUdfTkVUX1ZFTkRPUl9URUhVVEkgaXMgbm90IHNldAojIENPTkZJR19ORVRfVkVORE9SX1RJIGlz
IG5vdCBzZXQKIyBDT05GSUdfTkVUX1ZFTkRPUl9WSUEgaXMgbm90IHNldAojIENPTkZJR19ORVRf
VkVORE9SX1dJWk5FVCBpcyBub3Qgc2V0CiMgQ09ORklHX0ZEREkgaXMgbm90IHNldAojIENPTkZJ
R19ISVBQSSBpcyBub3Qgc2V0CiMgQ09ORklHX05FVF9TQjEwMDAgaXMgbm90IHNldAojIENPTkZJ
R19QSFlMSUIgaXMgbm90IHNldAojIENPTkZJR19NSUNSRUxfS1M4OTk1TUEgaXMgbm90IHNldAoj
IENPTkZJR19QUFAgaXMgbm90IHNldAojIENPTkZJR19TTElQIGlzIG5vdCBzZXQKCiMKIyBVU0Ig
TmV0d29yayBBZGFwdGVycwojCiMgQ09ORklHX1VTQl9DQVRDIGlzIG5vdCBzZXQKIyBDT05GSUdf
VVNCX0tBV0VUSCBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9QRUdBU1VTIGlzIG5vdCBzZXQKIyBD
T05GSUdfVVNCX1JUTDgxNTAgaXMgbm90IHNldAojIENPTkZJR19VU0JfVVNCTkVUIGlzIG5vdCBz
ZXQKIyBDT05GSUdfVVNCX0lQSEVUSCBpcyBub3Qgc2V0CiMgQ09ORklHX1dMQU4gaXMgbm90IHNl
dAoKIwojIEVuYWJsZSBXaU1BWCAoTmV0d29ya2luZyBvcHRpb25zKSB0byBzZWUgdGhlIFdpTUFY
IGRyaXZlcnMKIwojIENPTkZJR19XQU4gaXMgbm90IHNldAojIENPTkZJR19WTVhORVQzIGlzIG5v
dCBzZXQKIyBDT05GSUdfSVNETiBpcyBub3Qgc2V0CgojCiMgSW5wdXQgZGV2aWNlIHN1cHBvcnQK
IwpDT05GSUdfSU5QVVQ9eQojIENPTkZJR19JTlBVVF9GRl9NRU1MRVNTIGlzIG5vdCBzZXQKIyBD
T05GSUdfSU5QVVRfUE9MTERFViBpcyBub3Qgc2V0CiMgQ09ORklHX0lOUFVUX1NQQVJTRUtNQVAg
aXMgbm90IHNldAojIENPTkZJR19JTlBVVF9NQVRSSVhLTUFQIGlzIG5vdCBzZXQKCiMKIyBVc2Vy
bGFuZCBpbnRlcmZhY2VzCiMKQ09ORklHX0lOUFVUX01PVVNFREVWPXkKQ09ORklHX0lOUFVUX01P
VVNFREVWX1BTQVVYPXkKQ09ORklHX0lOUFVUX01PVVNFREVWX1NDUkVFTl9YPTgwMApDT05GSUdf
SU5QVVRfTU9VU0VERVZfU0NSRUVOX1k9NjAwCiMgQ09ORklHX0lOUFVUX0pPWURFViBpcyBub3Qg
c2V0CkNPTkZJR19JTlBVVF9FVkRFVj15CiMgQ09ORklHX0lOUFVUX0VWQlVHIGlzIG5vdCBzZXQK
CiMKIyBJbnB1dCBEZXZpY2UgRHJpdmVycwojCkNPTkZJR19JTlBVVF9LRVlCT0FSRD15CiMgQ09O
RklHX0tFWUJPQVJEX0FEUDU1ODggaXMgbm90IHNldAojIENPTkZJR19LRVlCT0FSRF9BRFA1NTg5
IGlzIG5vdCBzZXQKQ09ORklHX0tFWUJPQVJEX0FUS0JEPXkKIyBDT05GSUdfS0VZQk9BUkRfUVQx
MDcwIGlzIG5vdCBzZXQKIyBDT05GSUdfS0VZQk9BUkRfUVQyMTYwIGlzIG5vdCBzZXQKIyBDT05G
SUdfS0VZQk9BUkRfTEtLQkQgaXMgbm90IHNldAojIENPTkZJR19LRVlCT0FSRF9HUElPIGlzIG5v
dCBzZXQKIyBDT05GSUdfS0VZQk9BUkRfR1BJT19QT0xMRUQgaXMgbm90IHNldAojIENPTkZJR19L
RVlCT0FSRF9UQ0E2NDE2IGlzIG5vdCBzZXQKIyBDT05GSUdfS0VZQk9BUkRfVENBODQxOCBpcyBu
b3Qgc2V0CiMgQ09ORklHX0tFWUJPQVJEX01BVFJJWCBpcyBub3Qgc2V0CiMgQ09ORklHX0tFWUJP
QVJEX0xNODMzMyBpcyBub3Qgc2V0CiMgQ09ORklHX0tFWUJPQVJEX01BWDczNTkgaXMgbm90IHNl
dAojIENPTkZJR19LRVlCT0FSRF9NQ1MgaXMgbm90IHNldAojIENPTkZJR19LRVlCT0FSRF9NUFIx
MjEgaXMgbm90IHNldAojIENPTkZJR19LRVlCT0FSRF9ORVdUT04gaXMgbm90IHNldAojIENPTkZJ
R19LRVlCT0FSRF9PUEVOQ09SRVMgaXMgbm90IHNldAojIENPTkZJR19LRVlCT0FSRF9TVE9XQVdB
WSBpcyBub3Qgc2V0CiMgQ09ORklHX0tFWUJPQVJEX1NVTktCRCBpcyBub3Qgc2V0CiMgQ09ORklH
X0tFWUJPQVJEX1hUS0JEIGlzIG5vdCBzZXQKQ09ORklHX0lOUFVUX01PVVNFPXkKQ09ORklHX01P
VVNFX1BTMj15CkNPTkZJR19NT1VTRV9QUzJfQUxQUz15CkNPTkZJR19NT1VTRV9QUzJfTE9HSVBT
MlBQPXkKQ09ORklHX01PVVNFX1BTMl9TWU5BUFRJQ1M9eQpDT05GSUdfTU9VU0VfUFMyX0xJRkVC
T09LPXkKQ09ORklHX01PVVNFX1BTMl9UUkFDS1BPSU5UPXkKIyBDT05GSUdfTU9VU0VfUFMyX0VM
QU5URUNIIGlzIG5vdCBzZXQKIyBDT05GSUdfTU9VU0VfUFMyX1NFTlRFTElDIGlzIG5vdCBzZXQK
IyBDT05GSUdfTU9VU0VfUFMyX1RPVUNIS0lUIGlzIG5vdCBzZXQKIyBDT05GSUdfTU9VU0VfU0VS
SUFMIGlzIG5vdCBzZXQKIyBDT05GSUdfTU9VU0VfQVBQTEVUT1VDSCBpcyBub3Qgc2V0CiMgQ09O
RklHX01PVVNFX0JDTTU5NzQgaXMgbm90IHNldAojIENPTkZJR19NT1VTRV9WU1hYWEFBIGlzIG5v
dCBzZXQKIyBDT05GSUdfTU9VU0VfR1BJTyBpcyBub3Qgc2V0CiMgQ09ORklHX01PVVNFX1NZTkFQ
VElDU19JMkMgaXMgbm90IHNldAojIENPTkZJR19NT1VTRV9TWU5BUFRJQ1NfVVNCIGlzIG5vdCBz
ZXQKIyBDT05GSUdfSU5QVVRfSk9ZU1RJQ0sgaXMgbm90IHNldAojIENPTkZJR19JTlBVVF9UQUJM
RVQgaXMgbm90IHNldApDT05GSUdfSU5QVVRfVE9VQ0hTQ1JFRU49eQojIENPTkZJR19UT1VDSFND
UkVFTl9BRFM3ODQ2IGlzIG5vdCBzZXQKIyBDT05GSUdfVE9VQ0hTQ1JFRU5fQUQ3ODc3IGlzIG5v
dCBzZXQKIyBDT05GSUdfVE9VQ0hTQ1JFRU5fQUQ3ODc5IGlzIG5vdCBzZXQKQ09ORklHX1RPVUNI
U0NSRUVOX0FUTUVMX01YVD15CiMgQ09ORklHX1RPVUNIU0NSRUVOX0FVT19QSVhDSVIgaXMgbm90
IHNldAojIENPTkZJR19UT1VDSFNDUkVFTl9CVTIxMDEzIGlzIG5vdCBzZXQKIyBDT05GSUdfVE9V
Q0hTQ1JFRU5fQ1k4Q1RNRzExMCBpcyBub3Qgc2V0CiMgQ09ORklHX1RPVUNIU0NSRUVOX0NZVFRT
UF9DT1JFIGlzIG5vdCBzZXQKIyBDT05GSUdfVE9VQ0hTQ1JFRU5fRFlOQVBSTyBpcyBub3Qgc2V0
CiMgQ09ORklHX1RPVUNIU0NSRUVOX0hBTVBTSElSRSBpcyBub3Qgc2V0CiMgQ09ORklHX1RPVUNI
U0NSRUVOX0VFVEkgaXMgbm90IHNldAojIENPTkZJR19UT1VDSFNDUkVFTl9GVUpJVFNVIGlzIG5v
dCBzZXQKIyBDT05GSUdfVE9VQ0hTQ1JFRU5fSUxJMjEwWCBpcyBub3Qgc2V0CiMgQ09ORklHX1RP
VUNIU0NSRUVOX0dVTlpFIGlzIG5vdCBzZXQKIyBDT05GSUdfVE9VQ0hTQ1JFRU5fRUxPIGlzIG5v
dCBzZXQKIyBDT05GSUdfVE9VQ0hTQ1JFRU5fV0FDT01fVzgwMDEgaXMgbm90IHNldAojIENPTkZJ
R19UT1VDSFNDUkVFTl9XQUNPTV9JMkMgaXMgbm90IHNldAojIENPTkZJR19UT1VDSFNDUkVFTl9N
QVgxMTgwMSBpcyBub3Qgc2V0CiMgQ09ORklHX1RPVUNIU0NSRUVOX01DUzUwMDAgaXMgbm90IHNl
dAojIENPTkZJR19UT1VDSFNDUkVFTl9NTVMxMTQgaXMgbm90IHNldAojIENPTkZJR19UT1VDSFND
UkVFTl9NVE9VQ0ggaXMgbm90IHNldAojIENPTkZJR19UT1VDSFNDUkVFTl9JTkVYSU8gaXMgbm90
IHNldAojIENPTkZJR19UT1VDSFNDUkVFTl9NSzcxMiBpcyBub3Qgc2V0CiMgQ09ORklHX1RPVUNI
U0NSRUVOX1BFTk1PVU5UIGlzIG5vdCBzZXQKIyBDT05GSUdfVE9VQ0hTQ1JFRU5fRURUX0ZUNVgw
NiBpcyBub3Qgc2V0CiMgQ09ORklHX1RPVUNIU0NSRUVOX1RPVUNIUklHSFQgaXMgbm90IHNldAoj
IENPTkZJR19UT1VDSFNDUkVFTl9UT1VDSFdJTiBpcyBub3Qgc2V0CiMgQ09ORklHX1RPVUNIU0NS
RUVOX1BJWENJUiBpcyBub3Qgc2V0CiMgQ09ORklHX1RPVUNIU0NSRUVOX1VTQl9DT01QT1NJVEUg
aXMgbm90IHNldAojIENPTkZJR19UT1VDSFNDUkVFTl9UT1VDSElUMjEzIGlzIG5vdCBzZXQKIyBD
T05GSUdfVE9VQ0hTQ1JFRU5fVFNDX1NFUklPIGlzIG5vdCBzZXQKIyBDT05GSUdfVE9VQ0hTQ1JF
RU5fVFNDMjAwNSBpcyBub3Qgc2V0CiMgQ09ORklHX1RPVUNIU0NSRUVOX1RTQzIwMDcgaXMgbm90
IHNldAojIENPTkZJR19UT1VDSFNDUkVFTl9TVDEyMzIgaXMgbm90IHNldAojIENPTkZJR19UT1VD
SFNDUkVFTl9UUFM2NTA3WCBpcyBub3Qgc2V0CiMgQ09ORklHX0lOUFVUX01JU0MgaXMgbm90IHNl
dAoKIwojIEhhcmR3YXJlIEkvTyBwb3J0cwojCkNPTkZJR19TRVJJTz15CkNPTkZJR19TRVJJT19J
ODA0Mj15CkNPTkZJR19TRVJJT19TRVJQT1JUPXkKIyBDT05GSUdfU0VSSU9fQ1Q4MkM3MTAgaXMg
bm90IHNldAojIENPTkZJR19TRVJJT19QQ0lQUzIgaXMgbm90IHNldApDT05GSUdfU0VSSU9fTElC
UFMyPXkKIyBDT05GSUdfU0VSSU9fUkFXIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VSSU9fQUxURVJB
X1BTMiBpcyBub3Qgc2V0CiMgQ09ORklHX1NFUklPX1BTMk1VTFQgaXMgbm90IHNldAojIENPTkZJ
R19TRVJJT19BUkNfUFMyIGlzIG5vdCBzZXQKIyBDT05GSUdfR0FNRVBPUlQgaXMgbm90IHNldAoK
IwojIENoYXJhY3RlciBkZXZpY2VzCiMKQ09ORklHX1ZUPXkKQ09ORklHX0NPTlNPTEVfVFJBTlNM
QVRJT05TPXkKQ09ORklHX1ZUX0NPTlNPTEU9eQpDT05GSUdfVlRfQ09OU09MRV9TTEVFUD15CkNP
TkZJR19IV19DT05TT0xFPXkKIyBDT05GSUdfVlRfSFdfQ09OU09MRV9CSU5ESU5HIGlzIG5vdCBz
ZXQKQ09ORklHX1VOSVg5OF9QVFlTPXkKIyBDT05GSUdfREVWUFRTX01VTFRJUExFX0lOU1RBTkNF
UyBpcyBub3Qgc2V0CkNPTkZJR19MRUdBQ1lfUFRZUz15CkNPTkZJR19MRUdBQ1lfUFRZX0NPVU5U
PTIKIyBDT05GSUdfU0VSSUFMX05PTlNUQU5EQVJEIGlzIG5vdCBzZXQKIyBDT05GSUdfTk9aT01J
IGlzIG5vdCBzZXQKIyBDT05GSUdfTl9HU00gaXMgbm90IHNldAojIENPTkZJR19UUkFDRV9TSU5L
IGlzIG5vdCBzZXQKQ09ORklHX0RFVktNRU09eQoKIwojIFNlcmlhbCBkcml2ZXJzCiMKQ09ORklH
X1NFUklBTF84MjUwPXkKQ09ORklHX1NFUklBTF84MjUwX1BOUD15CkNPTkZJR19TRVJJQUxfODI1
MF9DT05TT0xFPXkKQ09ORklHX0ZJWF9FQVJMWUNPTl9NRU09eQpDT05GSUdfU0VSSUFMXzgyNTBf
UENJPXkKQ09ORklHX1NFUklBTF84MjUwX05SX1VBUlRTPTQKQ09ORklHX1NFUklBTF84MjUwX1JV
TlRJTUVfVUFSVFM9NAojIENPTkZJR19TRVJJQUxfODI1MF9FWFRFTkRFRCBpcyBub3Qgc2V0Cgoj
CiMgTm9uLTgyNTAgc2VyaWFsIHBvcnQgc3VwcG9ydAojCiMgQ09ORklHX1NFUklBTF9LR0RCX05N
SSBpcyBub3Qgc2V0CiMgQ09ORklHX1NFUklBTF9NQVgzMTAwIGlzIG5vdCBzZXQKIyBDT05GSUdf
U0VSSUFMX01BWDMxMFggaXMgbm90IHNldAojIENPTkZJR19TRVJJQUxfTUZEX0hTVSBpcyBub3Qg
c2V0CkNPTkZJR19TRVJJQUxfQ09SRT15CkNPTkZJR19TRVJJQUxfQ09SRV9DT05TT0xFPXkKQ09O
RklHX0NPTlNPTEVfUE9MTD15CiMgQ09ORklHX1NFUklBTF9KU00gaXMgbm90IHNldAojIENPTkZJ
R19TRVJJQUxfU0NDTlhQIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VSSUFMX1RJTUJFUkRBTEUgaXMg
bm90IHNldAojIENPTkZJR19TRVJJQUxfQUxURVJBX0pUQUdVQVJUIGlzIG5vdCBzZXQKIyBDT05G
SUdfU0VSSUFMX0FMVEVSQV9VQVJUIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VSSUFMX0lGWDZYNjAg
aXMgbm90IHNldApDT05GSUdfU0VSSUFMX1BDSF9VQVJUPXkKQ09ORklHX1NFUklBTF9QQ0hfVUFS
VF9DT05TT0xFPXkKIyBDT05GSUdfU0VSSUFMX0FSQyBpcyBub3Qgc2V0CiMgQ09ORklHX1RUWV9Q
UklOVEsgaXMgbm90IHNldAojIENPTkZJR19JUE1JX0hBTkRMRVIgaXMgbm90IHNldApDT05GSUdf
SFdfUkFORE9NPW0KIyBDT05GSUdfSFdfUkFORE9NX1RJTUVSSU9NRU0gaXMgbm90IHNldApDT05G
SUdfSFdfUkFORE9NX0lOVEVMPW0KQ09ORklHX0hXX1JBTkRPTV9BTUQ9bQpDT05GSUdfSFdfUkFO
RE9NX0dFT0RFPW0KQ09ORklHX0hXX1JBTkRPTV9WSUE9bQojIENPTkZJR19OVlJBTSBpcyBub3Qg
c2V0CiMgQ09ORklHX1IzOTY0IGlzIG5vdCBzZXQKIyBDT05GSUdfQVBQTElDT00gaXMgbm90IHNl
dAojIENPTkZJR19TT05ZUEkgaXMgbm90IHNldAojIENPTkZJR19NV0FWRSBpcyBub3Qgc2V0CiMg
Q09ORklHX1BDODczNnhfR1BJTyBpcyBub3Qgc2V0CiMgQ09ORklHX05TQ19HUElPIGlzIG5vdCBz
ZXQKIyBDT05GSUdfUkFXX0RSSVZFUiBpcyBub3Qgc2V0CkNPTkZJR19IUEVUPXkKQ09ORklHX0hQ
RVRfTU1BUD15CiMgQ09ORklHX0hBTkdDSEVDS19USU1FUiBpcyBub3Qgc2V0CiMgQ09ORklHX1RD
R19UUE0gaXMgbm90IHNldAojIENPTkZJR19URUxDTE9DSyBpcyBub3Qgc2V0CkNPTkZJR19ERVZQ
T1JUPXkKQ09ORklHX0kyQz15CkNPTkZJR19JMkNfQk9BUkRJTkZPPXkKQ09ORklHX0kyQ19DT01Q
QVQ9eQpDT05GSUdfSTJDX0NIQVJERVY9eQojIENPTkZJR19JMkNfTVVYIGlzIG5vdCBzZXQKQ09O
RklHX0kyQ19IRUxQRVJfQVVUTz15CkNPTkZJR19JMkNfQUxHT0JJVD15CgojCiMgSTJDIEhhcmR3
YXJlIEJ1cyBzdXBwb3J0CiMKCiMKIyBQQyBTTUJ1cyBob3N0IGNvbnRyb2xsZXIgZHJpdmVycwoj
CiMgQ09ORklHX0kyQ19BTEkxNTM1IGlzIG5vdCBzZXQKIyBDT05GSUdfSTJDX0FMSTE1NjMgaXMg
bm90IHNldAojIENPTkZJR19JMkNfQUxJMTVYMyBpcyBub3Qgc2V0CiMgQ09ORklHX0kyQ19BTUQ3
NTYgaXMgbm90IHNldAojIENPTkZJR19JMkNfQU1EODExMSBpcyBub3Qgc2V0CiMgQ09ORklHX0ky
Q19JODAxIGlzIG5vdCBzZXQKIyBDT05GSUdfSTJDX0lTQ0ggaXMgbm90IHNldAojIENPTkZJR19J
MkNfUElJWDQgaXMgbm90IHNldAojIENPTkZJR19JMkNfTkZPUkNFMiBpcyBub3Qgc2V0CiMgQ09O
RklHX0kyQ19TSVM1NTk1IGlzIG5vdCBzZXQKIyBDT05GSUdfSTJDX1NJUzYzMCBpcyBub3Qgc2V0
CiMgQ09ORklHX0kyQ19TSVM5NlggaXMgbm90IHNldAojIENPTkZJR19JMkNfVklBIGlzIG5vdCBz
ZXQKIyBDT05GSUdfSTJDX1ZJQVBSTyBpcyBub3Qgc2V0CgojCiMgQUNQSSBkcml2ZXJzCiMKIyBD
T05GSUdfSTJDX1NDTUkgaXMgbm90IHNldAoKIwojIEkyQyBzeXN0ZW0gYnVzIGRyaXZlcnMgKG1v
c3RseSBlbWJlZGRlZCAvIHN5c3RlbS1vbi1jaGlwKQojCiMgQ09ORklHX0kyQ19DQlVTX0dQSU8g
aXMgbm90IHNldAojIENPTkZJR19JMkNfREVTSUdOV0FSRV9QQ0kgaXMgbm90IHNldApDT05GSUdf
STJDX0VHMjBUPXkKIyBDT05GSUdfSTJDX0dQSU8gaXMgbm90IHNldAojIENPTkZJR19JMkNfSU5U
RUxfTUlEIGlzIG5vdCBzZXQKIyBDT05GSUdfSTJDX09DT1JFUyBpcyBub3Qgc2V0CiMgQ09ORklH
X0kyQ19QQ0FfUExBVEZPUk0gaXMgbm90IHNldAojIENPTkZJR19JMkNfUFhBX1BDSSBpcyBub3Qg
c2V0CiMgQ09ORklHX0kyQ19TSU1URUMgaXMgbm90IHNldAojIENPTkZJR19JMkNfWElMSU5YIGlz
IG5vdCBzZXQKCiMKIyBFeHRlcm5hbCBJMkMvU01CdXMgYWRhcHRlciBkcml2ZXJzCiMKIyBDT05G
SUdfSTJDX0RJT0xBTl9VMkMgaXMgbm90IHNldAojIENPTkZJR19JMkNfUEFSUE9SVF9MSUdIVCBp
cyBub3Qgc2V0CiMgQ09ORklHX0kyQ19UQU9TX0VWTSBpcyBub3Qgc2V0CiMgQ09ORklHX0kyQ19U
SU5ZX1VTQiBpcyBub3Qgc2V0CgojCiMgT3RoZXIgSTJDL1NNQnVzIGJ1cyBkcml2ZXJzCiMKIyBD
T05GSUdfU0N4MjAwX0FDQiBpcyBub3Qgc2V0CiMgQ09ORklHX0kyQ19TVFVCIGlzIG5vdCBzZXQK
IyBDT05GSUdfSTJDX0RFQlVHX0NPUkUgaXMgbm90IHNldAojIENPTkZJR19JMkNfREVCVUdfQUxH
TyBpcyBub3Qgc2V0CiMgQ09ORklHX0kyQ19ERUJVR19CVVMgaXMgbm90IHNldApDT05GSUdfU1BJ
PXkKIyBDT05GSUdfU1BJX0RFQlVHIGlzIG5vdCBzZXQKQ09ORklHX1NQSV9NQVNURVI9eQoKIwoj
IFNQSSBNYXN0ZXIgQ29udHJvbGxlciBEcml2ZXJzCiMKIyBDT05GSUdfU1BJX0FMVEVSQSBpcyBu
b3Qgc2V0CkNPTkZJR19TUElfQklUQkFORz15CkNPTkZJR19TUElfR1BJTz15CiMgQ09ORklHX1NQ
SV9PQ19USU5ZIGlzIG5vdCBzZXQKIyBDT05GSUdfU1BJX1BYQTJYWCBpcyBub3Qgc2V0CiMgQ09O
RklHX1NQSV9QWEEyWFhfUENJIGlzIG5vdCBzZXQKIyBDT05GSUdfU1BJX1NDMThJUzYwMiBpcyBu
b3Qgc2V0CkNPTkZJR19TUElfVE9QQ0xJRkZfUENIPXkKIyBDT05GSUdfU1BJX1hDT01NIGlzIG5v
dCBzZXQKIyBDT05GSUdfU1BJX1hJTElOWCBpcyBub3Qgc2V0CiMgQ09ORklHX1NQSV9ERVNJR05X
QVJFIGlzIG5vdCBzZXQKCiMKIyBTUEkgUHJvdG9jb2wgTWFzdGVycwojCiMgQ09ORklHX1NQSV9T
UElERVYgaXMgbm90IHNldAojIENPTkZJR19TUElfVExFNjJYMCBpcyBub3Qgc2V0CiMgQ09ORklH
X0hTSSBpcyBub3Qgc2V0CgojCiMgUFBTIHN1cHBvcnQKIwpDT05GSUdfUFBTPXkKIyBDT05GSUdf
UFBTX0RFQlVHIGlzIG5vdCBzZXQKCiMKIyBQUFMgY2xpZW50cyBzdXBwb3J0CiMKIyBDT05GSUdf
UFBTX0NMSUVOVF9LVElNRVIgaXMgbm90IHNldAojIENPTkZJR19QUFNfQ0xJRU5UX0xESVNDIGlz
IG5vdCBzZXQKIyBDT05GSUdfUFBTX0NMSUVOVF9HUElPIGlzIG5vdCBzZXQKCiMKIyBQUFMgZ2Vu
ZXJhdG9ycyBzdXBwb3J0CiMKCiMKIyBQVFAgY2xvY2sgc3VwcG9ydAojCkNPTkZJR19QVFBfMTU4
OF9DTE9DSz15CgojCiMgRW5hYmxlIFBIWUxJQiBhbmQgTkVUV09SS19QSFlfVElNRVNUQU1QSU5H
IHRvIHNlZSB0aGUgYWRkaXRpb25hbCBjbG9ja3MuCiMKQ09ORklHX1BUUF8xNTg4X0NMT0NLX1BD
SD15CkNPTkZJR19BUkNIX1dBTlRfT1BUSU9OQUxfR1BJT0xJQj15CkNPTkZJR19HUElPTElCPXkK
Q09ORklHX0dQSU9fQUNQST15CiMgQ09ORklHX0RFQlVHX0dQSU8gaXMgbm90IHNldApDT05GSUdf
R1BJT19TWVNGUz15CgojCiMgTWVtb3J5IG1hcHBlZCBHUElPIGRyaXZlcnM6CiMKIyBDT05GSUdf
R1BJT19HRU5FUklDX1BMQVRGT1JNIGlzIG5vdCBzZXQKIyBDT05GSUdfR1BJT19JVDg3NjFFIGlz
IG5vdCBzZXQKIyBDT05GSUdfR1BJT19UUzU1MDAgaXMgbm90IHNldApDT05GSUdfR1BJT19TQ0g9
eQojIENPTkZJR19HUElPX0lDSCBpcyBub3Qgc2V0CiMgQ09ORklHX0dQSU9fVlg4NTUgaXMgbm90
IHNldAoKIwojIEkyQyBHUElPIGV4cGFuZGVyczoKIwojIENPTkZJR19HUElPX01BWDczMDAgaXMg
bm90IHNldAojIENPTkZJR19HUElPX01BWDczMlggaXMgbm90IHNldApDT05GSUdfR1BJT19QQ0E5
NTNYPXkKIyBDT05GSUdfR1BJT19QQ0E5NTNYX0lSUSBpcyBub3Qgc2V0CiMgQ09ORklHX0dQSU9f
UENGODU3WCBpcyBub3Qgc2V0CiMgQ09ORklHX0dQSU9fU1gxNTBYIGlzIG5vdCBzZXQKIyBDT05G
SUdfR1BJT19BRFA1NTg4IGlzIG5vdCBzZXQKCiMKIyBQQ0kgR1BJTyBleHBhbmRlcnM6CiMKIyBD
T05GSUdfR1BJT19CVDhYWCBpcyBub3Qgc2V0CiMgQ09ORklHX0dQSU9fQU1EODExMSBpcyBub3Qg
c2V0CiMgQ09ORklHX0dQSU9fTEFOR1dFTEwgaXMgbm90IHNldApDT05GSUdfR1BJT19QQ0g9eQoj
IENPTkZJR19HUElPX01MX0lPSCBpcyBub3Qgc2V0CiMgQ09ORklHX0dQSU9fUkRDMzIxWCBpcyBu
b3Qgc2V0CgojCiMgU1BJIEdQSU8gZXhwYW5kZXJzOgojCiMgQ09ORklHX0dQSU9fTUFYNzMwMSBp
cyBub3Qgc2V0CiMgQ09ORklHX0dQSU9fTUNQMjNTMDggaXMgbm90IHNldAojIENPTkZJR19HUElP
X01DMzM4ODAgaXMgbm90IHNldAojIENPTkZJR19HUElPXzc0WDE2NCBpcyBub3Qgc2V0CgojCiMg
QUM5NyBHUElPIGV4cGFuZGVyczoKIwoKIwojIE1PRFVMYnVzIEdQSU8gZXhwYW5kZXJzOgojCgoj
CiMgVVNCIEdQSU8gZXhwYW5kZXJzOgojCiMgQ09ORklHX1cxIGlzIG5vdCBzZXQKQ09ORklHX1BP
V0VSX1NVUFBMWT15CiMgQ09ORklHX1BPV0VSX1NVUFBMWV9ERUJVRyBpcyBub3Qgc2V0CiMgQ09O
RklHX1BEQV9QT1dFUiBpcyBub3Qgc2V0CiMgQ09ORklHX1RFU1RfUE9XRVIgaXMgbm90IHNldAoj
IENPTkZJR19CQVRURVJZX0RTMjc4MCBpcyBub3Qgc2V0CiMgQ09ORklHX0JBVFRFUllfRFMyNzgx
IGlzIG5vdCBzZXQKIyBDT05GSUdfQkFUVEVSWV9EUzI3ODIgaXMgbm90IHNldAojIENPTkZJR19C
QVRURVJZX1NCUyBpcyBub3Qgc2V0CiMgQ09ORklHX0JBVFRFUllfQlEyN3gwMCBpcyBub3Qgc2V0
CiMgQ09ORklHX0JBVFRFUllfTUFYMTcwNDAgaXMgbm90IHNldAojIENPTkZJR19CQVRURVJZX01B
WDE3MDQyIGlzIG5vdCBzZXQKIyBDT05GSUdfQ0hBUkdFUl9NQVg4OTAzIGlzIG5vdCBzZXQKIyBD
T05GSUdfQ0hBUkdFUl9MUDg3MjcgaXMgbm90IHNldAojIENPTkZJR19DSEFSR0VSX0dQSU8gaXMg
bm90IHNldAojIENPTkZJR19DSEFSR0VSX0JRMjQxNVggaXMgbm90IHNldAojIENPTkZJR19DSEFS
R0VSX1NNQjM0NyBpcyBub3Qgc2V0CiMgQ09ORklHX1BPV0VSX1JFU0VUIGlzIG5vdCBzZXQKIyBD
T05GSUdfUE9XRVJfQVZTIGlzIG5vdCBzZXQKQ09ORklHX0hXTU9OPXkKIyBDT05GSUdfSFdNT05f
VklEIGlzIG5vdCBzZXQKIyBDT05GSUdfSFdNT05fREVCVUdfQ0hJUCBpcyBub3Qgc2V0CgojCiMg
TmF0aXZlIGRyaXZlcnMKIwojIENPTkZJR19TRU5TT1JTX0FCSVRVR1VSVSBpcyBub3Qgc2V0CiMg
Q09ORklHX1NFTlNPUlNfQUJJVFVHVVJVMyBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfQUQ3
MzE0IGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19BRDc0MTQgaXMgbm90IHNldAojIENPTkZJ
R19TRU5TT1JTX0FENzQxOCBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfQURDWFggaXMgbm90
IHNldAojIENPTkZJR19TRU5TT1JTX0FETTEwMjEgaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JT
X0FETTEwMjUgaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX0FETTEwMjYgaXMgbm90IHNldAoj
IENPTkZJR19TRU5TT1JTX0FETTEwMjkgaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX0FETTEw
MzEgaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX0FETTkyNDAgaXMgbm90IHNldAojIENPTkZJ
R19TRU5TT1JTX0FEVDc0MTAgaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX0FEVDc0MTEgaXMg
bm90IHNldAojIENPTkZJR19TRU5TT1JTX0FEVDc0NjIgaXMgbm90IHNldAojIENPTkZJR19TRU5T
T1JTX0FEVDc0NzAgaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX0FEVDc0NzUgaXMgbm90IHNl
dAojIENPTkZJR19TRU5TT1JTX0FTQzc2MjEgaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX0s4
VEVNUCBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfSzEwVEVNUCBpcyBub3Qgc2V0CiMgQ09O
RklHX1NFTlNPUlNfRkFNMTVIX1BPV0VSIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19BU0Ix
MDAgaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX0FUWFAxIGlzIG5vdCBzZXQKIyBDT05GSUdf
U0VOU09SU19EUzYyMCBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfRFMxNjIxIGlzIG5vdCBz
ZXQKIyBDT05GSUdfU0VOU09SU19JNUtfQU1CIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19G
NzE4MDVGIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19GNzE4ODJGRyBpcyBub3Qgc2V0CiMg
Q09ORklHX1NFTlNPUlNfRjc1Mzc1UyBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfRlNDSE1E
IGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19HNzYwQSBpcyBub3Qgc2V0CiMgQ09ORklHX1NF
TlNPUlNfR0w1MThTTSBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfR0w1MjBTTSBpcyBub3Qg
c2V0CiMgQ09ORklHX1NFTlNPUlNfR1BJT19GQU4gaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JT
X0hJSDYxMzAgaXMgbm90IHNldApDT05GSUdfU0VOU09SU19DT1JFVEVNUD15CiMgQ09ORklHX1NF
TlNPUlNfSVQ4NyBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfSkM0MiBpcyBub3Qgc2V0CiMg
Q09ORklHX1NFTlNPUlNfTElORUFHRSBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfTE02MyBp
cyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfTE03MCBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNP
UlNfTE03MyBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfTE03NSBpcyBub3Qgc2V0CiMgQ09O
RklHX1NFTlNPUlNfTE03NyBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfTE03OCBpcyBub3Qg
c2V0CiMgQ09ORklHX1NFTlNPUlNfTE04MCBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfTE04
MyBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfTE04NSBpcyBub3Qgc2V0CiMgQ09ORklHX1NF
TlNPUlNfTE04NyBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfTE05MCBpcyBub3Qgc2V0CiMg
Q09ORklHX1NFTlNPUlNfTE05MiBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfTE05MyBpcyBu
b3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfTFRDNDE1MSBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNP
UlNfTFRDNDIxNSBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfTFRDNDI0NSBpcyBub3Qgc2V0
CiMgQ09ORklHX1NFTlNPUlNfTFRDNDI2MSBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfTE05
NTI0MSBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfTE05NTI0NSBpcyBub3Qgc2V0CiMgQ09O
RklHX1NFTlNPUlNfTUFYMTExMSBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfTUFYMTYwNjUg
aXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX01BWDE2MTkgaXMgbm90IHNldAojIENPTkZJR19T
RU5TT1JTX01BWDE2NjggaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX01BWDE5NyBpcyBub3Qg
c2V0CiMgQ09ORklHX1NFTlNPUlNfTUFYNjYzOSBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNf
TUFYNjY0MiBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfTUFYNjY1MCBpcyBub3Qgc2V0CiMg
Q09ORklHX1NFTlNPUlNfTUNQMzAyMSBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfTlRDX1RI
RVJNSVNUT1IgaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX1BDODczNjAgaXMgbm90IHNldAoj
IENPTkZJR19TRU5TT1JTX1BDODc0MjcgaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX1BDRjg1
OTEgaXMgbm90IHNldAojIENPTkZJR19QTUJVUyBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNf
U0hUMTUgaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX1NIVDIxIGlzIG5vdCBzZXQKIyBDT05G
SUdfU0VOU09SU19TSVM1NTk1IGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19TTU02NjUgaXMg
bm90IHNldAojIENPTkZJR19TRU5TT1JTX0RNRTE3MzcgaXMgbm90IHNldAojIENPTkZJR19TRU5T
T1JTX0VNQzE0MDMgaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX0VNQzIxMDMgaXMgbm90IHNl
dAojIENPTkZJR19TRU5TT1JTX0VNQzZXMjAxIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19T
TVNDNDdNMSBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfU01TQzQ3TTE5MiBpcyBub3Qgc2V0
CiMgQ09ORklHX1NFTlNPUlNfU01TQzQ3QjM5NyBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNf
U0NINTZYWF9DT01NT04gaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX1NDSDU2MjcgaXMgbm90
IHNldAojIENPTkZJR19TRU5TT1JTX1NDSDU2MzYgaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JT
X0FEUzEwMTUgaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX0FEUzc4MjggaXMgbm90IHNldAoj
IENPTkZJR19TRU5TT1JTX0FEUzc4NzEgaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX0FNQzY4
MjEgaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX0lOQTJYWCBpcyBub3Qgc2V0CiMgQ09ORklH
X1NFTlNPUlNfVEhNQzUwIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19UTVAxMDIgaXMgbm90
IHNldAojIENPTkZJR19TRU5TT1JTX1RNUDQwMSBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNf
VE1QNDIxIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19WSUFfQ1BVVEVNUCBpcyBub3Qgc2V0
CiMgQ09ORklHX1NFTlNPUlNfVklBNjg2QSBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfVlQx
MjExIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VOU09SU19WVDgyMzEgaXMgbm90IHNldAojIENPTkZJ
R19TRU5TT1JTX1c4Mzc4MUQgaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX1c4Mzc5MUQgaXMg
bm90IHNldAojIENPTkZJR19TRU5TT1JTX1c4Mzc5MkQgaXMgbm90IHNldAojIENPTkZJR19TRU5T
T1JTX1c4Mzc5MyBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfVzgzNzk1IGlzIG5vdCBzZXQK
IyBDT05GSUdfU0VOU09SU19XODNMNzg1VFMgaXMgbm90IHNldAojIENPTkZJR19TRU5TT1JTX1c4
M0w3ODZORyBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfVzgzNjI3SEYgaXMgbm90IHNldAoj
IENPTkZJR19TRU5TT1JTX1c4MzYyN0VIRiBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfQVBQ
TEVTTUMgaXMgbm90IHNldAoKIwojIEFDUEkgZHJpdmVycwojCiMgQ09ORklHX1NFTlNPUlNfQUNQ
SV9QT1dFUiBpcyBub3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfQVRLMDExMCBpcyBub3Qgc2V0CkNP
TkZJR19USEVSTUFMPXkKQ09ORklHX1RIRVJNQUxfSFdNT049eQpDT05GSUdfVEhFUk1BTF9ERUZB
VUxUX0dPVl9TVEVQX1dJU0U9eQojIENPTkZJR19USEVSTUFMX0RFRkFVTFRfR09WX0ZBSVJfU0hB
UkUgaXMgbm90IHNldAojIENPTkZJR19USEVSTUFMX0RFRkFVTFRfR09WX1VTRVJfU1BBQ0UgaXMg
bm90IHNldAojIENPTkZJR19GQUlSX1NIQVJFIGlzIG5vdCBzZXQKQ09ORklHX1NURVBfV0lTRT15
CiMgQ09ORklHX1VTRVJfU1BBQ0UgaXMgbm90IHNldAojIENPTkZJR19DUFVfVEhFUk1BTCBpcyBu
b3Qgc2V0CkNPTkZJR19XQVRDSERPRz15CkNPTkZJR19XQVRDSERPR19DT1JFPXkKIyBDT05GSUdf
V0FUQ0hET0dfTk9XQVlPVVQgaXMgbm90IHNldAoKIwojIFdhdGNoZG9nIERldmljZSBEcml2ZXJz
CiMKQ09ORklHX1NPRlRfV0FUQ0hET0c9bQojIENPTkZJR19BQ1FVSVJFX1dEVCBpcyBub3Qgc2V0
CiMgQ09ORklHX0FEVkFOVEVDSF9XRFQgaXMgbm90IHNldAojIENPTkZJR19BTElNMTUzNV9XRFQg
aXMgbm90IHNldAojIENPTkZJR19BTElNNzEwMV9XRFQgaXMgbm90IHNldAojIENPTkZJR19GNzE4
MDhFX1dEVCBpcyBub3Qgc2V0CiMgQ09ORklHX1NQNTEwMF9UQ08gaXMgbm90IHNldAojIENPTkZJ
R19TQzUyMF9XRFQgaXMgbm90IHNldAojIENPTkZJR19TQkNfRklUUEMyX1dBVENIRE9HIGlzIG5v
dCBzZXQKIyBDT05GSUdfRVVST1RFQ0hfV0RUIGlzIG5vdCBzZXQKIyBDT05GSUdfSUI3MDBfV0RU
IGlzIG5vdCBzZXQKIyBDT05GSUdfSUJNQVNSIGlzIG5vdCBzZXQKIyBDT05GSUdfV0FGRVJfV0RU
IGlzIG5vdCBzZXQKIyBDT05GSUdfSTYzMDBFU0JfV0RUIGlzIG5vdCBzZXQKIyBDT05GSUdfSUU2
WFhfV0RUIGlzIG5vdCBzZXQKIyBDT05GSUdfSVRDT19XRFQgaXMgbm90IHNldAojIENPTkZJR19J
VDg3MTJGX1dEVCBpcyBub3Qgc2V0CiMgQ09ORklHX0lUODdfV0RUIGlzIG5vdCBzZXQKIyBDT05G
SUdfSFBfV0FUQ0hET0cgaXMgbm90IHNldAojIENPTkZJR19TQzEyMDBfV0RUIGlzIG5vdCBzZXQK
IyBDT05GSUdfUEM4NzQxM19XRFQgaXMgbm90IHNldAojIENPTkZJR19OVl9UQ08gaXMgbm90IHNl
dAojIENPTkZJR182MFhYX1dEVCBpcyBub3Qgc2V0CiMgQ09ORklHX1NCQzgzNjBfV0RUIGlzIG5v
dCBzZXQKIyBDT05GSUdfU0JDNzI0MF9XRFQgaXMgbm90IHNldAojIENPTkZJR19DUFU1X1dEVCBp
cyBub3Qgc2V0CiMgQ09ORklHX1NNU0NfU0NIMzExWF9XRFQgaXMgbm90IHNldAojIENPTkZJR19T
TVNDMzdCNzg3X1dEVCBpcyBub3Qgc2V0CiMgQ09ORklHX1ZJQV9XRFQgaXMgbm90IHNldAojIENP
TkZJR19XODM2MjdIRl9XRFQgaXMgbm90IHNldAojIENPTkZJR19XODM2OTdIRl9XRFQgaXMgbm90
IHNldAojIENPTkZJR19XODM2OTdVR19XRFQgaXMgbm90IHNldAojIENPTkZJR19XODM4NzdGX1dE
VCBpcyBub3Qgc2V0CiMgQ09ORklHX1c4Mzk3N0ZfV0RUIGlzIG5vdCBzZXQKIyBDT05GSUdfTUFD
SFpfV0RUIGlzIG5vdCBzZXQKIyBDT05GSUdfU0JDX0VQWF9DM19XQVRDSERPRyBpcyBub3Qgc2V0
CgojCiMgUENJLWJhc2VkIFdhdGNoZG9nIENhcmRzCiMKIyBDT05GSUdfUENJUENXQVRDSERPRyBp
cyBub3Qgc2V0CiMgQ09ORklHX1dEVFBDSSBpcyBub3Qgc2V0CgojCiMgVVNCLWJhc2VkIFdhdGNo
ZG9nIENhcmRzCiMKIyBDT05GSUdfVVNCUENXQVRDSERPRyBpcyBub3Qgc2V0CkNPTkZJR19TU0Jf
UE9TU0lCTEU9eQoKIwojIFNvbmljcyBTaWxpY29uIEJhY2twbGFuZQojCiMgQ09ORklHX1NTQiBp
cyBub3Qgc2V0CkNPTkZJR19CQ01BX1BPU1NJQkxFPXkKCiMKIyBCcm9hZGNvbSBzcGVjaWZpYyBB
TUJBCiMKIyBDT05GSUdfQkNNQSBpcyBub3Qgc2V0CgojCiMgTXVsdGlmdW5jdGlvbiBkZXZpY2Ug
ZHJpdmVycwojCkNPTkZJR19NRkRfQ09SRT15CiMgQ09ORklHX01GRF84OFBNODYwWCBpcyBub3Qg
c2V0CiMgQ09ORklHX01GRF84OFBNODAwIGlzIG5vdCBzZXQKIyBDT05GSUdfTUZEXzg4UE04MDUg
aXMgbm90IHNldAojIENPTkZJR19NRkRfU001MDEgaXMgbm90IHNldAojIENPTkZJR19NRkRfUlRT
WF9QQ0kgaXMgbm90IHNldAojIENPTkZJR19NRkRfVElfQU0zMzVYX1RTQ0FEQyBpcyBub3Qgc2V0
CiMgQ09ORklHX0hUQ19QQVNJQzMgaXMgbm90IHNldAojIENPTkZJR19IVENfSTJDUExEIGlzIG5v
dCBzZXQKIyBDT05GSUdfTUZEX0xNMzUzMyBpcyBub3Qgc2V0CiMgQ09ORklHX1RQUzYxMDVYIGlz
IG5vdCBzZXQKIyBDT05GSUdfVFBTNjUwMTAgaXMgbm90IHNldAojIENPTkZJR19UUFM2NTA3WCBp
cyBub3Qgc2V0CiMgQ09ORklHX01GRF9UUFM2NTIxNyBpcyBub3Qgc2V0CiMgQ09ORklHX01GRF9U
UFM2NTg2WCBpcyBub3Qgc2V0CiMgQ09ORklHX01GRF9UUFM2NTkxMCBpcyBub3Qgc2V0CiMgQ09O
RklHX01GRF9UUFM2NTkxMl9JMkMgaXMgbm90IHNldAojIENPTkZJR19NRkRfVFBTNjU5MTJfU1BJ
IGlzIG5vdCBzZXQKIyBDT05GSUdfTUZEX1RQUzgwMDMxIGlzIG5vdCBzZXQKIyBDT05GSUdfVFdM
NDAzMF9DT1JFIGlzIG5vdCBzZXQKIyBDT05GSUdfVFdMNjA0MF9DT1JFIGlzIG5vdCBzZXQKIyBD
T05GSUdfTUZEX1NUTVBFIGlzIG5vdCBzZXQKIyBDT05GSUdfTUZEX1RDMzU4OVggaXMgbm90IHNl
dAojIENPTkZJR19NRkRfVE1JTyBpcyBub3Qgc2V0CiMgQ09ORklHX01GRF9TTVNDIGlzIG5vdCBz
ZXQKIyBDT05GSUdfUE1JQ19EQTkwM1ggaXMgbm90IHNldAojIENPTkZJR19NRkRfREE5MDUyX1NQ
SSBpcyBub3Qgc2V0CiMgQ09ORklHX01GRF9EQTkwNTJfSTJDIGlzIG5vdCBzZXQKIyBDT05GSUdf
TUZEX0RBOTA1NSBpcyBub3Qgc2V0CiMgQ09ORklHX1BNSUNfQURQNTUyMCBpcyBub3Qgc2V0CiMg
Q09ORklHX01GRF9MUDg3ODggaXMgbm90IHNldAojIENPTkZJR19NRkRfTUFYNzc2ODYgaXMgbm90
IHNldAojIENPTkZJR19NRkRfTUFYNzc2OTMgaXMgbm90IHNldAojIENPTkZJR19NRkRfTUFYODkw
NyBpcyBub3Qgc2V0CiMgQ09ORklHX01GRF9NQVg4OTI1IGlzIG5vdCBzZXQKIyBDT05GSUdfTUZE
X01BWDg5OTcgaXMgbm90IHNldAojIENPTkZJR19NRkRfTUFYODk5OCBpcyBub3Qgc2V0CiMgQ09O
RklHX01GRF9TRUNfQ09SRSBpcyBub3Qgc2V0CiMgQ09ORklHX01GRF9BUklaT05BX0kyQyBpcyBu
b3Qgc2V0CiMgQ09ORklHX01GRF9BUklaT05BX1NQSSBpcyBub3Qgc2V0CiMgQ09ORklHX01GRF9X
TTg0MDAgaXMgbm90IHNldAojIENPTkZJR19NRkRfV004MzFYX0kyQyBpcyBub3Qgc2V0CiMgQ09O
RklHX01GRF9XTTgzMVhfU1BJIGlzIG5vdCBzZXQKIyBDT05GSUdfTUZEX1dNODM1MF9JMkMgaXMg
bm90IHNldAojIENPTkZJR19NRkRfV004OTk0IGlzIG5vdCBzZXQKIyBDT05GSUdfTUZEX1BDRjUw
NjMzIGlzIG5vdCBzZXQKIyBDT05GSUdfTUZEX01DMTNYWFhfU1BJIGlzIG5vdCBzZXQKIyBDT05G
SUdfTUZEX01DMTNYWFhfSTJDIGlzIG5vdCBzZXQKIyBDT05GSUdfQUJYNTAwX0NPUkUgaXMgbm90
IHNldAojIENPTkZJR19FWlhfUENBUCBpcyBub3Qgc2V0CiMgQ09ORklHX01GRF9DUzU1MzUgaXMg
bm90IHNldAojIENPTkZJR19NRkRfVElNQkVSREFMRSBpcyBub3Qgc2V0CkNPTkZJR19MUENfU0NI
PXkKIyBDT05GSUdfTFBDX0lDSCBpcyBub3Qgc2V0CiMgQ09ORklHX01GRF9SREMzMjFYIGlzIG5v
dCBzZXQKIyBDT05GSUdfTUZEX0pBTlpfQ01PRElPIGlzIG5vdCBzZXQKIyBDT05GSUdfTUZEX1ZY
ODU1IGlzIG5vdCBzZXQKIyBDT05GSUdfTUZEX1dMMTI3M19DT1JFIGlzIG5vdCBzZXQKIyBDT05G
SUdfTUZEX1RQUzY1MDkwIGlzIG5vdCBzZXQKIyBDT05GSUdfTUZEX0FBVDI4NzBfQ09SRSBpcyBu
b3Qgc2V0CiMgQ09ORklHX01GRF9SQzVUNTgzIGlzIG5vdCBzZXQKIyBDT05GSUdfTUZEX1BBTE1B
UyBpcyBub3Qgc2V0CiMgQ09ORklHX01GRF9WSVBFUkJPQVJEIGlzIG5vdCBzZXQKIyBDT05GSUdf
TUZEX1JFVFUgaXMgbm90IHNldAojIENPTkZJR19NRkRfQVMzNzExIGlzIG5vdCBzZXQKIyBDT05G
SUdfUkVHVUxBVE9SIGlzIG5vdCBzZXQKQ09ORklHX01FRElBX1NVUFBPUlQ9eQoKIwojIE11bHRp
bWVkaWEgY29yZSBzdXBwb3J0CiMKIyBDT05GSUdfTUVESUFfQ0FNRVJBX1NVUFBPUlQgaXMgbm90
IHNldAojIENPTkZJR19NRURJQV9BTkFMT0dfVFZfU1VQUE9SVCBpcyBub3Qgc2V0CiMgQ09ORklH
X01FRElBX0RJR0lUQUxfVFZfU1VQUE9SVCBpcyBub3Qgc2V0CiMgQ09ORklHX01FRElBX1JBRElP
X1NVUFBPUlQgaXMgbm90IHNldAojIENPTkZJR19NRURJQV9SQ19TVVBQT1JUIGlzIG5vdCBzZXQK
IyBDT05GSUdfVklERU9fQURWX0RFQlVHIGlzIG5vdCBzZXQKIyBDT05GSUdfVklERU9fRklYRURf
TUlOT1JfUkFOR0VTIGlzIG5vdCBzZXQKCiMKIyBNZWRpYSBkcml2ZXJzCiMKIyBDT05GSUdfTUVE
SUFfVVNCX1NVUFBPUlQgaXMgbm90IHNldAojIENPTkZJR19NRURJQV9QQ0lfU1VQUE9SVCBpcyBu
b3Qgc2V0CgojCiMgU3VwcG9ydGVkIE1NQy9TRElPIGFkYXB0ZXJzCiMKCiMKIyBNZWRpYSBhbmNp
bGxhcnkgZHJpdmVycyAodHVuZXJzLCBzZW5zb3JzLCBpMmMsIGZyb250ZW5kcykKIwoKIwojIEN1
c3RvbWlzZSBEVkIgRnJvbnRlbmRzCiMKQ09ORklHX0RWQl9UVU5FUl9ESUIwMDcwPW0KQ09ORklH
X0RWQl9UVU5FUl9ESUIwMDkwPW0KCiMKIyBUb29scyB0byBkZXZlbG9wIG5ldyBmcm9udGVuZHMK
IwojIENPTkZJR19EVkJfRFVNTVlfRkUgaXMgbm90IHNldAoKIwojIEdyYXBoaWNzIHN1cHBvcnQK
IwpDT05GSUdfQUdQPXkKIyBDT05GSUdfQUdQX0FMSSBpcyBub3Qgc2V0CiMgQ09ORklHX0FHUF9B
VEkgaXMgbm90IHNldAojIENPTkZJR19BR1BfQU1EIGlzIG5vdCBzZXQKIyBDT05GSUdfQUdQX0FN
RDY0IGlzIG5vdCBzZXQKIyBDT05GSUdfQUdQX0lOVEVMIGlzIG5vdCBzZXQKIyBDT05GSUdfQUdQ
X05WSURJQSBpcyBub3Qgc2V0CiMgQ09ORklHX0FHUF9TSVMgaXMgbm90IHNldAojIENPTkZJR19B
R1BfU1dPUktTIGlzIG5vdCBzZXQKIyBDT05GSUdfQUdQX1ZJQSBpcyBub3Qgc2V0CiMgQ09ORklH
X0FHUF9FRkZJQ0VPTiBpcyBub3Qgc2V0CkNPTkZJR19WR0FfQVJCPXkKQ09ORklHX1ZHQV9BUkJf
TUFYX0dQVVM9MTYKIyBDT05GSUdfVkdBX1NXSVRDSEVST08gaXMgbm90IHNldApDT05GSUdfRFJN
PXkKQ09ORklHX0RSTV9LTVNfSEVMUEVSPW0KIyBDT05GSUdfRFJNX0xPQURfRURJRF9GSVJNV0FS
RSBpcyBub3Qgc2V0CiMgQ09ORklHX0RSTV9UREZYIGlzIG5vdCBzZXQKIyBDT05GSUdfRFJNX1Ix
MjggaXMgbm90IHNldAojIENPTkZJR19EUk1fUkFERU9OIGlzIG5vdCBzZXQKIyBDT05GSUdfRFJN
X05PVVZFQVUgaXMgbm90IHNldAoKIwojIEkyQyBlbmNvZGVyIG9yIGhlbHBlciBjaGlwcwojCiMg
Q09ORklHX0RSTV9JMkNfQ0g3MDA2IGlzIG5vdCBzZXQKIyBDT05GSUdfRFJNX0kyQ19TSUwxNjQg
aXMgbm90IHNldAojIENPTkZJR19EUk1fTUdBIGlzIG5vdCBzZXQKIyBDT05GSUdfRFJNX1NJUyBp
cyBub3Qgc2V0CiMgQ09ORklHX0RSTV9WSUEgaXMgbm90IHNldAojIENPTkZJR19EUk1fU0FWQUdF
IGlzIG5vdCBzZXQKQ09ORklHX0RSTV9FR0Q9bQojIENPTkZJR19EUk1fVk1XR0ZYIGlzIG5vdCBz
ZXQKIyBDT05GSUdfRFJNX0dNQTUwMCBpcyBub3Qgc2V0CiMgQ09ORklHX0RSTV9VREwgaXMgbm90
IHNldAojIENPTkZJR19EUk1fQVNUIGlzIG5vdCBzZXQKIyBDT05GSUdfRFJNX01HQUcyMDAgaXMg
bm90IHNldAojIENPTkZJR19EUk1fQ0lSUlVTX1FFTVUgaXMgbm90IHNldAojIENPTkZJR19TVFVC
X1BPVUxTQk8gaXMgbm90IHNldAojIENPTkZJR19WR0FTVEFURSBpcyBub3Qgc2V0CiMgQ09ORklH
X1ZJREVPX09VVFBVVF9DT05UUk9MIGlzIG5vdCBzZXQKQ09ORklHX0ZCPXkKIyBDT05GSUdfRklS
TVdBUkVfRURJRCBpcyBub3Qgc2V0CiMgQ09ORklHX0ZCX0REQyBpcyBub3Qgc2V0CkNPTkZJR19G
Ql9CT09UX1ZFU0FfU1VQUE9SVD15CkNPTkZJR19GQl9DRkJfRklMTFJFQ1Q9eQpDT05GSUdfRkJf
Q0ZCX0NPUFlBUkVBPXkKQ09ORklHX0ZCX0NGQl9JTUFHRUJMSVQ9eQojIENPTkZJR19GQl9DRkJf
UkVWX1BJWEVMU19JTl9CWVRFIGlzIG5vdCBzZXQKIyBDT05GSUdfRkJfU1lTX0ZJTExSRUNUIGlz
IG5vdCBzZXQKIyBDT05GSUdfRkJfU1lTX0NPUFlBUkVBIGlzIG5vdCBzZXQKIyBDT05GSUdfRkJf
U1lTX0lNQUdFQkxJVCBpcyBub3Qgc2V0CiMgQ09ORklHX0ZCX0ZPUkVJR05fRU5ESUFOIGlzIG5v
dCBzZXQKIyBDT05GSUdfRkJfU1lTX0ZPUFMgaXMgbm90IHNldAojIENPTkZJR19GQl9XTVRfR0Vf
Uk9QUyBpcyBub3Qgc2V0CiMgQ09ORklHX0ZCX1NWR0FMSUIgaXMgbm90IHNldAojIENPTkZJR19G
Ql9NQUNNT0RFUyBpcyBub3Qgc2V0CiMgQ09ORklHX0ZCX0JBQ0tMSUdIVCBpcyBub3Qgc2V0CkNP
TkZJR19GQl9NT0RFX0hFTFBFUlM9eQojIENPTkZJR19GQl9USUxFQkxJVFRJTkcgaXMgbm90IHNl
dAoKIwojIEZyYW1lIGJ1ZmZlciBoYXJkd2FyZSBkcml2ZXJzCiMKIyBDT05GSUdfRkJfQ0lSUlVT
IGlzIG5vdCBzZXQKIyBDT05GSUdfRkJfUE0yIGlzIG5vdCBzZXQKIyBDT05GSUdfRkJfQ1lCRVIy
MDAwIGlzIG5vdCBzZXQKIyBDT05GSUdfRkJfQVJDIGlzIG5vdCBzZXQKIyBDT05GSUdfRkJfQVNJ
TElBTlQgaXMgbm90IHNldAojIENPTkZJR19GQl9JTVNUVCBpcyBub3Qgc2V0CiMgQ09ORklHX0ZC
X1ZHQTE2IGlzIG5vdCBzZXQKQ09ORklHX0ZCX1ZFU0E9eQojIENPTkZJR19GQl9FRkkgaXMgbm90
IHNldAojIENPTkZJR19GQl9ONDExIGlzIG5vdCBzZXQKIyBDT05GSUdfRkJfSEdBIGlzIG5vdCBz
ZXQKIyBDT05GSUdfRkJfUzFEMTNYWFggaXMgbm90IHNldAojIENPTkZJR19GQl9OVklESUEgaXMg
bm90IHNldAojIENPTkZJR19GQl9SSVZBIGlzIG5vdCBzZXQKIyBDT05GSUdfRkJfSTc0MCBpcyBu
b3Qgc2V0CiMgQ09ORklHX0ZCX0xFODA1NzggaXMgbm90IHNldAojIENPTkZJR19GQl9NQVRST1gg
aXMgbm90IHNldAojIENPTkZJR19GQl9SQURFT04gaXMgbm90IHNldAojIENPTkZJR19GQl9BVFkx
MjggaXMgbm90IHNldAojIENPTkZJR19GQl9BVFkgaXMgbm90IHNldAojIENPTkZJR19GQl9TMyBp
cyBub3Qgc2V0CiMgQ09ORklHX0ZCX1NBVkFHRSBpcyBub3Qgc2V0CiMgQ09ORklHX0ZCX1NJUyBp
cyBub3Qgc2V0CiMgQ09ORklHX0ZCX1ZJQSBpcyBub3Qgc2V0CiMgQ09ORklHX0ZCX05FT01BR0lD
IGlzIG5vdCBzZXQKIyBDT05GSUdfRkJfS1lSTyBpcyBub3Qgc2V0CiMgQ09ORklHX0ZCXzNERlgg
aXMgbm90IHNldAojIENPTkZJR19GQl9WT09ET08xIGlzIG5vdCBzZXQKIyBDT05GSUdfRkJfVlQ4
NjIzIGlzIG5vdCBzZXQKIyBDT05GSUdfRkJfVFJJREVOVCBpcyBub3Qgc2V0CiMgQ09ORklHX0ZC
X0FSSyBpcyBub3Qgc2V0CiMgQ09ORklHX0ZCX1BNMyBpcyBub3Qgc2V0CiMgQ09ORklHX0ZCX0NB
Uk1JTkUgaXMgbm90IHNldAojIENPTkZJR19GQl9HRU9ERSBpcyBub3Qgc2V0CiMgQ09ORklHX0ZC
X1RNSU8gaXMgbm90IHNldAojIENPTkZJR19GQl9TTVNDVUZYIGlzIG5vdCBzZXQKIyBDT05GSUdf
RkJfVURMIGlzIG5vdCBzZXQKIyBDT05GSUdfRkJfVklSVFVBTCBpcyBub3Qgc2V0CiMgQ09ORklH
X0ZCX01FVFJPTk9NRSBpcyBub3Qgc2V0CiMgQ09ORklHX0ZCX01CODYyWFggaXMgbm90IHNldAoj
IENPTkZJR19GQl9CUk9BRFNIRUVUIGlzIG5vdCBzZXQKIyBDT05GSUdfRkJfQVVPX0sxOTBYIGlz
IG5vdCBzZXQKIyBDT05GSUdfRVhZTk9TX1ZJREVPIGlzIG5vdCBzZXQKQ09ORklHX0JBQ0tMSUdI
VF9MQ0RfU1VQUE9SVD15CkNPTkZJR19MQ0RfQ0xBU1NfREVWSUNFPW0KIyBDT05GSUdfTENEX0w0
RjAwMjQyVDAzIGlzIG5vdCBzZXQKIyBDT05GSUdfTENEX0xNUzI4M0dGMDUgaXMgbm90IHNldAoj
IENPTkZJR19MQ0RfTFRWMzUwUVYgaXMgbm90IHNldAojIENPTkZJR19MQ0RfSUxJOTMyMCBpcyBu
b3Qgc2V0CiMgQ09ORklHX0xDRF9URE8yNE0gaXMgbm90IHNldAojIENPTkZJR19MQ0RfVkdHMjQz
MkE0IGlzIG5vdCBzZXQKIyBDT05GSUdfTENEX1BMQVRGT1JNIGlzIG5vdCBzZXQKIyBDT05GSUdf
TENEX1M2RTYzTTAgaXMgbm90IHNldAojIENPTkZJR19MQ0RfTEQ5MDQwIGlzIG5vdCBzZXQKIyBD
T05GSUdfTENEX0FNUzM2OUZHMDYgaXMgbm90IHNldApDT05GSUdfQkFDS0xJR0hUX0NMQVNTX0RF
VklDRT15CkNPTkZJR19CQUNLTElHSFRfR0VORVJJQz15CiMgQ09ORklHX0JBQ0tMSUdIVF9BUFBM
RSBpcyBub3Qgc2V0CiMgQ09ORklHX0JBQ0tMSUdIVF9TQUhBUkEgaXMgbm90IHNldAojIENPTkZJ
R19CQUNLTElHSFRfQURQODg2MCBpcyBub3Qgc2V0CiMgQ09ORklHX0JBQ0tMSUdIVF9BRFA4ODcw
IGlzIG5vdCBzZXQKIyBDT05GSUdfQkFDS0xJR0hUX0xNMzYzMCBpcyBub3Qgc2V0CiMgQ09ORklH
X0JBQ0tMSUdIVF9MTTM2MzkgaXMgbm90IHNldAojIENPTkZJR19CQUNLTElHSFRfTFA4NTVYIGlz
IG5vdCBzZXQKCiMKIyBDb25zb2xlIGRpc3BsYXkgZHJpdmVyIHN1cHBvcnQKIwpDT05GSUdfVkdB
X0NPTlNPTEU9eQojIENPTkZJR19WR0FDT05fU09GVF9TQ1JPTExCQUNLIGlzIG5vdCBzZXQKQ09O
RklHX0RVTU1ZX0NPTlNPTEU9eQpDT05GSUdfRlJBTUVCVUZGRVJfQ09OU09MRT15CkNPTkZJR19G
UkFNRUJVRkZFUl9DT05TT0xFX0RFVEVDVF9QUklNQVJZPXkKIyBDT05GSUdfRlJBTUVCVUZGRVJf
Q09OU09MRV9ST1RBVElPTiBpcyBub3Qgc2V0CiMgQ09ORklHX0ZPTlRTIGlzIG5vdCBzZXQKQ09O
RklHX0ZPTlRfOHg4PXkKQ09ORklHX0ZPTlRfOHgxNj15CiMgQ09ORklHX0xPR08gaXMgbm90IHNl
dApDT05GSUdfU09VTkQ9eQojIENPTkZJR19TT1VORF9PU1NfQ09SRSBpcyBub3Qgc2V0CkNPTkZJ
R19TTkQ9eQpDT05GSUdfU05EX1RJTUVSPXkKQ09ORklHX1NORF9QQ009eQojIENPTkZJR19TTkRf
U0VRVUVOQ0VSIGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX01JWEVSX09TUyBpcyBub3Qgc2V0CiMg
Q09ORklHX1NORF9QQ01fT1NTIGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX0hSVElNRVIgaXMgbm90
IHNldApDT05GSUdfU05EX0RZTkFNSUNfTUlOT1JTPXkKQ09ORklHX1NORF9TVVBQT1JUX09MRF9B
UEk9eQpDT05GSUdfU05EX1ZFUkJPU0VfUFJPQ0ZTPXkKIyBDT05GSUdfU05EX1ZFUkJPU0VfUFJJ
TlRLIGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX0RFQlVHIGlzIG5vdCBzZXQKQ09ORklHX1NORF9W
TUFTVEVSPXkKQ09ORklHX1NORF9LQ1RMX0pBQ0s9eQpDT05GSUdfU05EX0RNQV9TR0JVRj15CiMg
Q09ORklHX1NORF9SQVdNSURJX1NFUSBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9PUEwzX0xJQl9T
RVEgaXMgbm90IHNldAojIENPTkZJR19TTkRfT1BMNF9MSUJfU0VRIGlzIG5vdCBzZXQKIyBDT05G
SUdfU05EX1NCQVdFX1NFUSBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9FTVUxMEsxX1NFUSBpcyBu
b3Qgc2V0CkNPTkZJR19TTkRfRFJJVkVSUz15CiMgQ09ORklHX1NORF9QQ1NQIGlzIG5vdCBzZXQK
IyBDT05GSUdfU05EX0RVTU1ZIGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX0FMT09QIGlzIG5vdCBz
ZXQKIyBDT05GSUdfU05EX01UUEFWIGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX1NFUklBTF9VMTY1
NTAgaXMgbm90IHNldAojIENPTkZJR19TTkRfTVBVNDAxIGlzIG5vdCBzZXQKQ09ORklHX1NORF9Q
Q0k9eQojIENPTkZJR19TTkRfQUQxODg5IGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX0FMUzMwMCBp
cyBub3Qgc2V0CiMgQ09ORklHX1NORF9BTFM0MDAwIGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX0FM
STU0NTEgaXMgbm90IHNldAojIENPTkZJR19TTkRfQVNJSFBJIGlzIG5vdCBzZXQKIyBDT05GSUdf
U05EX0FUSUlYUCBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9BVElJWFBfTU9ERU0gaXMgbm90IHNl
dAojIENPTkZJR19TTkRfQVU4ODEwIGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX0FVODgyMCBpcyBu
b3Qgc2V0CiMgQ09ORklHX1NORF9BVTg4MzAgaXMgbm90IHNldAojIENPTkZJR19TTkRfQVcyIGlz
IG5vdCBzZXQKIyBDT05GSUdfU05EX0FaVDMzMjggaXMgbm90IHNldAojIENPTkZJR19TTkRfQlQ4
N1ggaXMgbm90IHNldAojIENPTkZJR19TTkRfQ0EwMTA2IGlzIG5vdCBzZXQKIyBDT05GSUdfU05E
X0NNSVBDSSBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9PWFlHRU4gaXMgbm90IHNldAojIENPTkZJ
R19TTkRfQ1M0MjgxIGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX0NTNDZYWCBpcyBub3Qgc2V0CiMg
Q09ORklHX1NORF9DUzU1MzAgaXMgbm90IHNldAojIENPTkZJR19TTkRfQ1M1NTM1QVVESU8gaXMg
bm90IHNldAojIENPTkZJR19TTkRfQ1RYRkkgaXMgbm90IHNldAojIENPTkZJR19TTkRfREFSTEEy
MCBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9HSU5BMjAgaXMgbm90IHNldAojIENPTkZJR19TTkRf
TEFZTEEyMCBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9EQVJMQTI0IGlzIG5vdCBzZXQKIyBDT05G
SUdfU05EX0dJTkEyNCBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9MQVlMQTI0IGlzIG5vdCBzZXQK
IyBDT05GSUdfU05EX01PTkEgaXMgbm90IHNldAojIENPTkZJR19TTkRfTUlBIGlzIG5vdCBzZXQK
IyBDT05GSUdfU05EX0VDSE8zRyBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9JTkRJR08gaXMgbm90
IHNldAojIENPTkZJR19TTkRfSU5ESUdPSU8gaXMgbm90IHNldAojIENPTkZJR19TTkRfSU5ESUdP
REogaXMgbm90IHNldAojIENPTkZJR19TTkRfSU5ESUdPSU9YIGlzIG5vdCBzZXQKIyBDT05GSUdf
U05EX0lORElHT0RKWCBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9FTVUxMEsxIGlzIG5vdCBzZXQK
IyBDT05GSUdfU05EX0VNVTEwSzFYIGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX0VOUzEzNzAgaXMg
bm90IHNldAojIENPTkZJR19TTkRfRU5TMTM3MSBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9FUzE5
MzggaXMgbm90IHNldAojIENPTkZJR19TTkRfRVMxOTY4IGlzIG5vdCBzZXQKIyBDT05GSUdfU05E
X0ZNODAxIGlzIG5vdCBzZXQKQ09ORklHX1NORF9IREFfSU5URUw9eQpDT05GSUdfU05EX0hEQV9Q
UkVBTExPQ19TSVpFPTY0CiMgQ09ORklHX1NORF9IREFfSFdERVAgaXMgbm90IHNldAojIENPTkZJ
R19TTkRfSERBX0lOUFVUX0JFRVAgaXMgbm90IHNldAojIENPTkZJR19TTkRfSERBX0lOUFVUX0pB
Q0sgaXMgbm90IHNldAojIENPTkZJR19TTkRfSERBX1BBVENIX0xPQURFUiBpcyBub3Qgc2V0CkNP
TkZJR19TTkRfSERBX0NPREVDX1JFQUxURUs9eQpDT05GSUdfU05EX0hEQV9DT0RFQ19BTkFMT0c9
eQpDT05GSUdfU05EX0hEQV9DT0RFQ19TSUdNQVRFTD15CkNPTkZJR19TTkRfSERBX0NPREVDX1ZJ
QT15CkNPTkZJR19TTkRfSERBX0NPREVDX0hETUk9eQpDT05GSUdfU05EX0hEQV9DT0RFQ19DSVJS
VVM9eQpDT05GSUdfU05EX0hEQV9DT0RFQ19DT05FWEFOVD15CkNPTkZJR19TTkRfSERBX0NPREVD
X0NBMDExMD15CkNPTkZJR19TTkRfSERBX0NPREVDX0NBMDEzMj15CkNPTkZJR19TTkRfSERBX0NP
REVDX0NNRURJQT15CkNPTkZJR19TTkRfSERBX0NPREVDX1NJMzA1ND15CkNPTkZJR19TTkRfSERB
X0dFTkVSSUM9eQpDT05GSUdfU05EX0hEQV9QT1dFUl9TQVZFX0RFRkFVTFQ9MAojIENPTkZJR19T
TkRfSERTUCBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9IRFNQTSBpcyBub3Qgc2V0CiMgQ09ORklH
X1NORF9JQ0UxNzEyIGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX0lDRTE3MjQgaXMgbm90IHNldAoj
IENPTkZJR19TTkRfSU5URUw4WDAgaXMgbm90IHNldAojIENPTkZJR19TTkRfSU5URUw4WDBNIGlz
IG5vdCBzZXQKIyBDT05GSUdfU05EX0tPUkcxMjEyIGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX0xP
TEEgaXMgbm90IHNldAojIENPTkZJR19TTkRfTFg2NDY0RVMgaXMgbm90IHNldAojIENPTkZJR19T
TkRfTUFFU1RSTzMgaXMgbm90IHNldAojIENPTkZJR19TTkRfTUlYQVJUIGlzIG5vdCBzZXQKIyBD
T05GSUdfU05EX05NMjU2IGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX1BDWEhSIGlzIG5vdCBzZXQK
IyBDT05GSUdfU05EX1JJUFRJREUgaXMgbm90IHNldAojIENPTkZJR19TTkRfUk1FMzIgaXMgbm90
IHNldAojIENPTkZJR19TTkRfUk1FOTYgaXMgbm90IHNldAojIENPTkZJR19TTkRfUk1FOTY1MiBp
cyBub3Qgc2V0CiMgQ09ORklHX1NORF9TSVM3MDE5IGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX1NP
TklDVklCRVMgaXMgbm90IHNldAojIENPTkZJR19TTkRfVFJJREVOVCBpcyBub3Qgc2V0CiMgQ09O
RklHX1NORF9WSUE4MlhYIGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX1ZJQTgyWFhfTU9ERU0gaXMg
bm90IHNldAojIENPTkZJR19TTkRfVklSVFVPU08gaXMgbm90IHNldAojIENPTkZJR19TTkRfVlgy
MjIgaXMgbm90IHNldAojIENPTkZJR19TTkRfWU1GUENJIGlzIG5vdCBzZXQKQ09ORklHX1NORF9T
UEk9eQpDT05GSUdfU05EX1VTQj15CiMgQ09ORklHX1NORF9VU0JfQVVESU8gaXMgbm90IHNldAoj
IENPTkZJR19TTkRfVVNCX1VBMTAxIGlzIG5vdCBzZXQKIyBDT05GSUdfU05EX1VTQl9VU1gyWSBp
cyBub3Qgc2V0CiMgQ09ORklHX1NORF9VU0JfQ0FJQVEgaXMgbm90IHNldAojIENPTkZJR19TTkRf
VVNCX1VTMTIyTCBpcyBub3Qgc2V0CiMgQ09ORklHX1NORF9VU0JfNkZJUkUgaXMgbm90IHNldAoj
IENPTkZJR19TTkRfU09DIGlzIG5vdCBzZXQKIyBDT05GSUdfU09VTkRfUFJJTUUgaXMgbm90IHNl
dAoKIwojIEhJRCBzdXBwb3J0CiMKQ09ORklHX0hJRD15CiMgQ09ORklHX0hJRF9CQVRURVJZX1NU
UkVOR1RIIGlzIG5vdCBzZXQKQ09ORklHX0hJRFJBVz15CiMgQ09ORklHX1VISUQgaXMgbm90IHNl
dApDT05GSUdfSElEX0dFTkVSSUM9eQoKIwojIFNwZWNpYWwgSElEIGRyaXZlcnMKIwojIENPTkZJ
R19ISURfQTRURUNIIGlzIG5vdCBzZXQKIyBDT05GSUdfSElEX0FDUlVYIGlzIG5vdCBzZXQKIyBD
T05GSUdfSElEX0FQUExFIGlzIG5vdCBzZXQKIyBDT05GSUdfSElEX0FVUkVBTCBpcyBub3Qgc2V0
CiMgQ09ORklHX0hJRF9CRUxLSU4gaXMgbm90IHNldAojIENPTkZJR19ISURfQ0hFUlJZIGlzIG5v
dCBzZXQKIyBDT05GSUdfSElEX0NISUNPTlkgaXMgbm90IHNldAojIENPTkZJR19ISURfUFJPRElL
RVlTIGlzIG5vdCBzZXQKIyBDT05GSUdfSElEX0NZUFJFU1MgaXMgbm90IHNldAojIENPTkZJR19I
SURfRFJBR09OUklTRSBpcyBub3Qgc2V0CiMgQ09ORklHX0hJRF9FTVNfRkYgaXMgbm90IHNldAoj
IENPTkZJR19ISURfRVpLRVkgaXMgbm90IHNldAojIENPTkZJR19ISURfSE9MVEVLIGlzIG5vdCBz
ZXQKIyBDT05GSUdfSElEX0tFWVRPVUNIIGlzIG5vdCBzZXQKIyBDT05GSUdfSElEX0tZRSBpcyBu
b3Qgc2V0CiMgQ09ORklHX0hJRF9VQ0xPR0lDIGlzIG5vdCBzZXQKIyBDT05GSUdfSElEX1dBTFRP
UCBpcyBub3Qgc2V0CiMgQ09ORklHX0hJRF9HWVJBVElPTiBpcyBub3Qgc2V0CiMgQ09ORklHX0hJ
RF9UV0lOSEFOIGlzIG5vdCBzZXQKIyBDT05GSUdfSElEX0tFTlNJTkdUT04gaXMgbm90IHNldAoj
IENPTkZJR19ISURfTENQT1dFUiBpcyBub3Qgc2V0CiMgQ09ORklHX0hJRF9MRU5PVk9fVFBLQkQg
aXMgbm90IHNldAojIENPTkZJR19ISURfTE9HSVRFQ0ggaXMgbm90IHNldAojIENPTkZJR19ISURf
TUlDUk9TT0ZUIGlzIG5vdCBzZXQKIyBDT05GSUdfSElEX01PTlRFUkVZIGlzIG5vdCBzZXQKQ09O
RklHX0hJRF9NVUxUSVRPVUNIPXkKIyBDT05GSUdfSElEX05UUklHIGlzIG5vdCBzZXQKIyBDT05G
SUdfSElEX09SVEVLIGlzIG5vdCBzZXQKIyBDT05GSUdfSElEX1BBTlRIRVJMT1JEIGlzIG5vdCBz
ZXQKIyBDT05GSUdfSElEX1BFVEFMWU5YIGlzIG5vdCBzZXQKIyBDT05GSUdfSElEX1BJQ09MQ0Qg
aXMgbm90IHNldAojIENPTkZJR19ISURfUFJJTUFYIGlzIG5vdCBzZXQKIyBDT05GSUdfSElEX1JP
Q0NBVCBpcyBub3Qgc2V0CiMgQ09ORklHX0hJRF9TQUlURUsgaXMgbm90IHNldAojIENPTkZJR19I
SURfU0FNU1VORyBpcyBub3Qgc2V0CiMgQ09ORklHX0hJRF9TT05ZIGlzIG5vdCBzZXQKIyBDT05G
SUdfSElEX1NQRUVETElOSyBpcyBub3Qgc2V0CiMgQ09ORklHX0hJRF9TVU5QTFVTIGlzIG5vdCBz
ZXQKIyBDT05GSUdfSElEX0dSRUVOQVNJQSBpcyBub3Qgc2V0CiMgQ09ORklHX0hJRF9TTUFSVEpP
WVBMVVMgaXMgbm90IHNldAojIENPTkZJR19ISURfVElWTyBpcyBub3Qgc2V0CiMgQ09ORklHX0hJ
RF9UT1BTRUVEIGlzIG5vdCBzZXQKIyBDT05GSUdfSElEX1RIUlVTVE1BU1RFUiBpcyBub3Qgc2V0
CiMgQ09ORklHX0hJRF9aRVJPUExVUyBpcyBub3Qgc2V0CiMgQ09ORklHX0hJRF9aWURBQ1JPTiBp
cyBub3Qgc2V0CiMgQ09ORklHX0hJRF9TRU5TT1JfSFVCIGlzIG5vdCBzZXQKCiMKIyBVU0IgSElE
IHN1cHBvcnQKIwpDT05GSUdfVVNCX0hJRD15CiMgQ09ORklHX0hJRF9QSUQgaXMgbm90IHNldAoj
IENPTkZJR19VU0JfSElEREVWIGlzIG5vdCBzZXQKCiMKIyBJMkMgSElEIHN1cHBvcnQKIwojIENP
TkZJR19JMkNfSElEIGlzIG5vdCBzZXQKQ09ORklHX1VTQl9BUkNIX0hBU19PSENJPXkKQ09ORklH
X1VTQl9BUkNIX0hBU19FSENJPXkKQ09ORklHX1VTQl9BUkNIX0hBU19YSENJPXkKQ09ORklHX1VT
Ql9TVVBQT1JUPXkKQ09ORklHX1VTQl9DT01NT049eQpDT05GSUdfVVNCX0FSQ0hfSEFTX0hDRD15
CkNPTkZJR19VU0I9eQojIENPTkZJR19VU0JfREVCVUcgaXMgbm90IHNldAojIENPTkZJR19VU0Jf
QU5OT1VOQ0VfTkVXX0RFVklDRVMgaXMgbm90IHNldAoKIwojIE1pc2NlbGxhbmVvdXMgVVNCIG9w
dGlvbnMKIwojIENPTkZJR19VU0JfRFlOQU1JQ19NSU5PUlMgaXMgbm90IHNldApDT05GSUdfVVNC
X1NVU1BFTkQ9eQojIENPTkZJR19VU0JfT1RHIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX09UR19X
SElURUxJU1QgaXMgbm90IHNldAojIENPTkZJR19VU0JfT1RHX0JMQUNLTElTVF9IVUIgaXMgbm90
IHNldAojIENPTkZJR19VU0JfRFdDMyBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9NT04gaXMgbm90
IHNldAojIENPTkZJR19VU0JfV1VTQl9DQkFGIGlzIG5vdCBzZXQKCiMKIyBVU0IgSG9zdCBDb250
cm9sbGVyIERyaXZlcnMKIwojIENPTkZJR19VU0JfQzY3WDAwX0hDRCBpcyBub3Qgc2V0CiMgQ09O
RklHX1VTQl9YSENJX0hDRCBpcyBub3Qgc2V0CkNPTkZJR19VU0JfRUhDSV9IQ0Q9eQpDT05GSUdf
VVNCX0VIQ0lfUk9PVF9IVUJfVFQ9eQpDT05GSUdfVVNCX0VIQ0lfVFRfTkVXU0NIRUQ9eQpDT05G
SUdfVVNCX0VIQ0lfUENJPXkKIyBDT05GSUdfVVNCX09YVTIxMEhQX0hDRCBpcyBub3Qgc2V0CiMg
Q09ORklHX1VTQl9JU1AxMTZYX0hDRCBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9JU1AxNzYwX0hD
RCBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9JU1AxMzYyX0hDRCBpcyBub3Qgc2V0CkNPTkZJR19V
U0JfT0hDSV9IQ0Q9eQojIENPTkZJR19VU0JfT0hDSV9IQ0RfUExBVEZPUk0gaXMgbm90IHNldAoj
IENPTkZJR19VU0JfRUhDSV9IQ0RfUExBVEZPUk0gaXMgbm90IHNldAojIENPTkZJR19VU0JfT0hD
SV9CSUdfRU5ESUFOX0RFU0MgaXMgbm90IHNldAojIENPTkZJR19VU0JfT0hDSV9CSUdfRU5ESUFO
X01NSU8gaXMgbm90IHNldApDT05GSUdfVVNCX09IQ0lfTElUVExFX0VORElBTj15CiMgQ09ORklH
X1VTQl9VSENJX0hDRCBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9TTDgxMV9IQ0QgaXMgbm90IHNl
dAojIENPTkZJR19VU0JfUjhBNjY1OTdfSENEIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX01VU0Jf
SERSQyBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9DSElQSURFQSBpcyBub3Qgc2V0CiMgQ09ORklH
X1VTQl9SRU5FU0FTX1VTQkhTIGlzIG5vdCBzZXQKCiMKIyBVU0IgRGV2aWNlIENsYXNzIGRyaXZl
cnMKIwojIENPTkZJR19VU0JfQUNNIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX1BSSU5URVIgaXMg
bm90IHNldAojIENPTkZJR19VU0JfV0RNIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX1RNQyBpcyBu
b3Qgc2V0CgojCiMgTk9URTogVVNCX1NUT1JBR0UgZGVwZW5kcyBvbiBTQ1NJIGJ1dCBCTEtfREVW
X1NEIG1heQojCgojCiMgYWxzbyBiZSBuZWVkZWQ7IHNlZSBVU0JfU1RPUkFHRSBIZWxwIGZvciBt
b3JlIGluZm8KIwpDT05GSUdfVVNCX1NUT1JBR0U9eQojIENPTkZJR19VU0JfU1RPUkFHRV9ERUJV
RyBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9TVE9SQUdFX1JFQUxURUsgaXMgbm90IHNldAojIENP
TkZJR19VU0JfU1RPUkFHRV9EQVRBRkFCIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX1NUT1JBR0Vf
RlJFRUNPTSBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9TVE9SQUdFX0lTRDIwMCBpcyBub3Qgc2V0
CiMgQ09ORklHX1VTQl9TVE9SQUdFX1VTQkFUIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX1NUT1JB
R0VfU0REUjA5IGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX1NUT1JBR0VfU0REUjU1IGlzIG5vdCBz
ZXQKIyBDT05GSUdfVVNCX1NUT1JBR0VfSlVNUFNIT1QgaXMgbm90IHNldAojIENPTkZJR19VU0Jf
U1RPUkFHRV9BTEFVREEgaXMgbm90IHNldAojIENPTkZJR19VU0JfU1RPUkFHRV9PTkVUT1VDSCBp
cyBub3Qgc2V0CiMgQ09ORklHX1VTQl9TVE9SQUdFX0tBUk1BIGlzIG5vdCBzZXQKIyBDT05GSUdf
VVNCX1NUT1JBR0VfQ1lQUkVTU19BVEFDQiBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9TVE9SQUdF
X0VORV9VQjYyNTAgaXMgbm90IHNldAoKIwojIFVTQiBJbWFnaW5nIGRldmljZXMKIwojIENPTkZJ
R19VU0JfTURDODAwIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX01JQ1JPVEVLIGlzIG5vdCBzZXQK
CiMKIyBVU0IgcG9ydCBkcml2ZXJzCiMKIyBDT05GSUdfVVNCX1NFUklBTCBpcyBub3Qgc2V0Cgoj
CiMgVVNCIE1pc2NlbGxhbmVvdXMgZHJpdmVycwojCiMgQ09ORklHX1VTQl9FTUk2MiBpcyBub3Qg
c2V0CiMgQ09ORklHX1VTQl9FTUkyNiBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9BRFVUVVggaXMg
bm90IHNldAojIENPTkZJR19VU0JfU0VWU0VHIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX1JJTzUw
MCBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9MRUdPVE9XRVIgaXMgbm90IHNldAojIENPTkZJR19V
U0JfTENEIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX0xFRCBpcyBub3Qgc2V0CiMgQ09ORklHX1VT
Ql9DWVBSRVNTX0NZN0M2MyBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9DWVRIRVJNIGlzIG5vdCBz
ZXQKIyBDT05GSUdfVVNCX0lETU9VU0UgaXMgbm90IHNldAojIENPTkZJR19VU0JfRlRESV9FTEFO
IGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX0FQUExFRElTUExBWSBpcyBub3Qgc2V0CiMgQ09ORklH
X1VTQl9TSVNVU0JWR0EgaXMgbm90IHNldAojIENPTkZJR19VU0JfTEQgaXMgbm90IHNldAojIENP
TkZJR19VU0JfVFJBTkNFVklCUkFUT1IgaXMgbm90IHNldAojIENPTkZJR19VU0JfSU9XQVJSSU9S
IGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX1RFU1QgaXMgbm90IHNldAojIENPTkZJR19VU0JfSVNJ
R0hURlcgaXMgbm90IHNldAojIENPTkZJR19VU0JfWVVSRVggaXMgbm90IHNldAojIENPTkZJR19V
U0JfRVpVU0JfRlgyIGlzIG5vdCBzZXQKCiMKIyBVU0IgUGh5c2ljYWwgTGF5ZXIgZHJpdmVycwoj
CiMgQ09ORklHX1VTQl9JU1AxMzAxIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX1JDQVJfUEhZIGlz
IG5vdCBzZXQKQ09ORklHX1VTQl9HQURHRVQ9eQojIENPTkZJR19VU0JfR0FER0VUX0RFQlVHIGlz
IG5vdCBzZXQKIyBDT05GSUdfVVNCX0dBREdFVF9ERUJVR19GSUxFUyBpcyBub3Qgc2V0CiMgQ09O
RklHX1VTQl9HQURHRVRfREVCVUdfRlMgaXMgbm90IHNldApDT05GSUdfVVNCX0dBREdFVF9WQlVT
X0RSQVc9MgpDT05GSUdfVVNCX0dBREdFVF9TVE9SQUdFX05VTV9CVUZGRVJTPTIKCiMKIyBVU0Ig
UGVyaXBoZXJhbCBDb250cm9sbGVyCiMKIyBDT05GSUdfVVNCX0ZVU0IzMDAgaXMgbm90IHNldAoj
IENPTkZJR19VU0JfUjhBNjY1OTcgaXMgbm90IHNldAojIENPTkZJR19VU0JfTVZfVURDIGlzIG5v
dCBzZXQKIyBDT05GSUdfVVNCX002NjU5MiBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9BTUQ1NTM2
VURDIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX05FVDIyNzIgaXMgbm90IHNldAojIENPTkZJR19V
U0JfTkVUMjI4MCBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9HT0tVIGlzIG5vdCBzZXQKQ09ORklH
X1VTQl9FRzIwVD15CiMgQ09ORklHX1VTQl9EVU1NWV9IQ0QgaXMgbm90IHNldAojIENPTkZJR19V
U0JfWkVSTyBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9BVURJTyBpcyBub3Qgc2V0CiMgQ09ORklH
X1VTQl9FVEggaXMgbm90IHNldAojIENPTkZJR19VU0JfR19OQ00gaXMgbm90IHNldAojIENPTkZJ
R19VU0JfR0FER0VURlMgaXMgbm90IHNldAojIENPTkZJR19VU0JfRlVOQ1RJT05GUyBpcyBub3Qg
c2V0CiMgQ09ORklHX1VTQl9NQVNTX1NUT1JBR0UgaXMgbm90IHNldAojIENPTkZJR19VU0JfR19T
RVJJQUwgaXMgbm90IHNldAojIENPTkZJR19VU0JfTUlESV9HQURHRVQgaXMgbm90IHNldAojIENP
TkZJR19VU0JfR19QUklOVEVSIGlzIG5vdCBzZXQKIyBDT05GSUdfVVNCX0NEQ19DT01QT1NJVEUg
aXMgbm90IHNldAojIENPTkZJR19VU0JfR19BQ01fTVMgaXMgbm90IHNldAojIENPTkZJR19VU0Jf
R19NVUxUSSBpcyBub3Qgc2V0CiMgQ09ORklHX1VTQl9HX0hJRCBpcyBub3Qgc2V0CiMgQ09ORklH
X1VTQl9HX0RCR1AgaXMgbm90IHNldAoKIwojIE9URyBhbmQgcmVsYXRlZCBpbmZyYXN0cnVjdHVy
ZQojCiMgQ09ORklHX1VTQl9HUElPX1ZCVVMgaXMgbm90IHNldAojIENPTkZJR19OT1BfVVNCX1hD
RUlWIGlzIG5vdCBzZXQKIyBDT05GSUdfVVdCIGlzIG5vdCBzZXQKQ09ORklHX01NQz15CiMgQ09O
RklHX01NQ19ERUJVRyBpcyBub3Qgc2V0CiMgQ09ORklHX01NQ19VTlNBRkVfUkVTVU1FIGlzIG5v
dCBzZXQKIyBDT05GSUdfTU1DX0NMS0dBVEUgaXMgbm90IHNldAoKIwojIE1NQy9TRC9TRElPIENh
cmQgRHJpdmVycwojCkNPTkZJR19NTUNfQkxPQ0s9eQpDT05GSUdfTU1DX0JMT0NLX01JTk9SUz04
CkNPTkZJR19NTUNfQkxPQ0tfQk9VTkNFPXkKIyBDT05GSUdfU0RJT19VQVJUIGlzIG5vdCBzZXQK
IyBDT05GSUdfTU1DX1RFU1QgaXMgbm90IHNldAoKIwojIE1NQy9TRC9TRElPIEhvc3QgQ29udHJv
bGxlciBEcml2ZXJzCiMKQ09ORklHX01NQ19TREhDST15CkNPTkZJR19NTUNfU0RIQ0lfUENJPXkK
IyBDT05GSUdfTU1DX1JJQ09IX01NQyBpcyBub3Qgc2V0CiMgQ09ORklHX01NQ19TREhDSV9BQ1BJ
IGlzIG5vdCBzZXQKIyBDT05GSUdfTU1DX1NESENJX1BMVEZNIGlzIG5vdCBzZXQKIyBDT05GSUdf
TU1DX1dCU0QgaXMgbm90IHNldAojIENPTkZJR19NTUNfVElGTV9TRCBpcyBub3Qgc2V0CiMgQ09O
RklHX01NQ19DQjcxMCBpcyBub3Qgc2V0CiMgQ09ORklHX01NQ19WSUFfU0RNTUMgaXMgbm90IHNl
dAojIENPTkZJR19NTUNfVlVCMzAwIGlzIG5vdCBzZXQKIyBDT05GSUdfTU1DX1VTSEMgaXMgbm90
IHNldAojIENPTkZJR19NRU1TVElDSyBpcyBub3Qgc2V0CiMgQ09ORklHX05FV19MRURTIGlzIG5v
dCBzZXQKIyBDT05GSUdfQUNDRVNTSUJJTElUWSBpcyBub3Qgc2V0CiMgQ09ORklHX0lORklOSUJB
TkQgaXMgbm90IHNldAojIENPTkZJR19FREFDIGlzIG5vdCBzZXQKQ09ORklHX1JUQ19MSUI9eQpD
T05GSUdfUlRDX0NMQVNTPXkKQ09ORklHX1JUQ19IQ1RPU1lTPXkKQ09ORklHX1JUQ19IQ1RPU1lT
X0RFVklDRT0icnRjMCIKIyBDT05GSUdfUlRDX0RFQlVHIGlzIG5vdCBzZXQKCiMKIyBSVEMgaW50
ZXJmYWNlcwojCkNPTkZJR19SVENfSU5URl9TWVNGUz15CkNPTkZJR19SVENfSU5URl9QUk9DPXkK
Q09ORklHX1JUQ19JTlRGX0RFVj15CiMgQ09ORklHX1JUQ19JTlRGX0RFVl9VSUVfRU1VTCBpcyBu
b3Qgc2V0CiMgQ09ORklHX1JUQ19EUlZfVEVTVCBpcyBub3Qgc2V0CgojCiMgSTJDIFJUQyBkcml2
ZXJzCiMKIyBDT05GSUdfUlRDX0RSVl9EUzEzMDcgaXMgbm90IHNldAojIENPTkZJR19SVENfRFJW
X0RTMTM3NCBpcyBub3Qgc2V0CiMgQ09ORklHX1JUQ19EUlZfRFMxNjcyIGlzIG5vdCBzZXQKIyBD
T05GSUdfUlRDX0RSVl9EUzMyMzIgaXMgbm90IHNldAojIENPTkZJR19SVENfRFJWX01BWDY5MDAg
aXMgbm90IHNldAojIENPTkZJR19SVENfRFJWX1JTNUMzNzIgaXMgbm90IHNldAojIENPTkZJR19S
VENfRFJWX0lTTDEyMDggaXMgbm90IHNldAojIENPTkZJR19SVENfRFJWX0lTTDEyMDIyIGlzIG5v
dCBzZXQKIyBDT05GSUdfUlRDX0RSVl9YMTIwNSBpcyBub3Qgc2V0CiMgQ09ORklHX1JUQ19EUlZf
UENGODUyMyBpcyBub3Qgc2V0CiMgQ09ORklHX1JUQ19EUlZfUENGODU2MyBpcyBub3Qgc2V0CiMg
Q09ORklHX1JUQ19EUlZfUENGODU4MyBpcyBub3Qgc2V0CiMgQ09ORklHX1JUQ19EUlZfTTQxVDgw
IGlzIG5vdCBzZXQKIyBDT05GSUdfUlRDX0RSVl9CUTMySyBpcyBub3Qgc2V0CiMgQ09ORklHX1JU
Q19EUlZfUzM1MzkwQSBpcyBub3Qgc2V0CiMgQ09ORklHX1JUQ19EUlZfRk0zMTMwIGlzIG5vdCBz
ZXQKIyBDT05GSUdfUlRDX0RSVl9SWDg1ODEgaXMgbm90IHNldAojIENPTkZJR19SVENfRFJWX1JY
ODAyNSBpcyBub3Qgc2V0CiMgQ09ORklHX1JUQ19EUlZfRU0zMDI3IGlzIG5vdCBzZXQKIyBDT05G
SUdfUlRDX0RSVl9SVjMwMjlDMiBpcyBub3Qgc2V0CgojCiMgU1BJIFJUQyBkcml2ZXJzCiMKIyBD
T05GSUdfUlRDX0RSVl9NNDFUOTMgaXMgbm90IHNldAojIENPTkZJR19SVENfRFJWX000MVQ5NCBp
cyBub3Qgc2V0CiMgQ09ORklHX1JUQ19EUlZfRFMxMzA1IGlzIG5vdCBzZXQKIyBDT05GSUdfUlRD
X0RSVl9EUzEzOTAgaXMgbm90IHNldAojIENPTkZJR19SVENfRFJWX01BWDY5MDIgaXMgbm90IHNl
dAojIENPTkZJR19SVENfRFJWX1I5NzAxIGlzIG5vdCBzZXQKIyBDT05GSUdfUlRDX0RSVl9SUzVD
MzQ4IGlzIG5vdCBzZXQKIyBDT05GSUdfUlRDX0RSVl9EUzMyMzQgaXMgbm90IHNldAojIENPTkZJ
R19SVENfRFJWX1BDRjIxMjMgaXMgbm90IHNldAoKIwojIFBsYXRmb3JtIFJUQyBkcml2ZXJzCiMK
Q09ORklHX1JUQ19EUlZfQ01PUz15CiMgQ09ORklHX1JUQ19EUlZfRFMxMjg2IGlzIG5vdCBzZXQK
IyBDT05GSUdfUlRDX0RSVl9EUzE1MTEgaXMgbm90IHNldAojIENPTkZJR19SVENfRFJWX0RTMTU1
MyBpcyBub3Qgc2V0CiMgQ09ORklHX1JUQ19EUlZfRFMxNzQyIGlzIG5vdCBzZXQKIyBDT05GSUdf
UlRDX0RSVl9TVEsxN1RBOCBpcyBub3Qgc2V0CiMgQ09ORklHX1JUQ19EUlZfTTQ4VDg2IGlzIG5v
dCBzZXQKIyBDT05GSUdfUlRDX0RSVl9NNDhUMzUgaXMgbm90IHNldAojIENPTkZJR19SVENfRFJW
X000OFQ1OSBpcyBub3Qgc2V0CiMgQ09ORklHX1JUQ19EUlZfTVNNNjI0MiBpcyBub3Qgc2V0CiMg
Q09ORklHX1JUQ19EUlZfQlE0ODAyIGlzIG5vdCBzZXQKIyBDT05GSUdfUlRDX0RSVl9SUDVDMDEg
aXMgbm90IHNldAojIENPTkZJR19SVENfRFJWX1YzMDIwIGlzIG5vdCBzZXQKIyBDT05GSUdfUlRD
X0RSVl9EUzI0MDQgaXMgbm90IHNldAoKIwojIG9uLUNQVSBSVEMgZHJpdmVycwojCkNPTkZJR19E
TUFERVZJQ0VTPXkKIyBDT05GSUdfRE1BREVWSUNFU19ERUJVRyBpcyBub3Qgc2V0CgojCiMgRE1B
IERldmljZXMKIwojIENPTkZJR19JTlRFTF9NSURfRE1BQyBpcyBub3Qgc2V0CiMgQ09ORklHX0lO
VEVMX0lPQVRETUEgaXMgbm90IHNldAojIENPTkZJR19USU1CX0RNQSBpcyBub3Qgc2V0CkNPTkZJ
R19QQ0hfRE1BPXkKQ09ORklHX0RNQV9FTkdJTkU9eQoKIwojIERNQSBDbGllbnRzCiMKIyBDT05G
SUdfTkVUX0RNQSBpcyBub3Qgc2V0CiMgQ09ORklHX0FTWU5DX1RYX0RNQSBpcyBub3Qgc2V0CiMg
Q09ORklHX0RNQVRFU1QgaXMgbm90IHNldAojIENPTkZJR19BVVhESVNQTEFZIGlzIG5vdCBzZXQK
IyBDT05GSUdfVUlPIGlzIG5vdCBzZXQKCiMKIyBWaXJ0aW8gZHJpdmVycwojCiMgQ09ORklHX1ZJ
UlRJT19QQ0kgaXMgbm90IHNldAojIENPTkZJR19WSVJUSU9fTU1JTyBpcyBub3Qgc2V0CgojCiMg
TWljcm9zb2Z0IEh5cGVyLVYgZ3Vlc3Qgc3VwcG9ydAojCiMgQ09ORklHX0hZUEVSViBpcyBub3Qg
c2V0CiMgQ09ORklHX1NUQUdJTkcgaXMgbm90IHNldApDT05GSUdfWDg2X1BMQVRGT1JNX0RFVklD
RVM9eQojIENPTkZJR19BQ0VSSERGIGlzIG5vdCBzZXQKIyBDT05GSUdfQVNVU19MQVBUT1AgaXMg
bm90IHNldAojIENPTkZJR19GVUpJVFNVX0xBUFRPUCBpcyBub3Qgc2V0CiMgQ09ORklHX0ZVSklU
U1VfVEFCTEVUIGlzIG5vdCBzZXQKIyBDT05GSUdfSFBfQUNDRUwgaXMgbm90IHNldAojIENPTkZJ
R19QQU5BU09OSUNfTEFQVE9QIGlzIG5vdCBzZXQKIyBDT05GSUdfVEhJTktQQURfQUNQSSBpcyBu
b3Qgc2V0CiMgQ09ORklHX1NFTlNPUlNfSERBUFMgaXMgbm90IHNldAojIENPTkZJR19JTlRFTF9N
RU5MT1cgaXMgbm90IHNldAojIENPTkZJR19FRUVQQ19MQVBUT1AgaXMgbm90IHNldAojIENPTkZJ
R19BQ1BJX1dNSSBpcyBub3Qgc2V0CiMgQ09ORklHX1RPUFNUQVJfTEFQVE9QIGlzIG5vdCBzZXQK
IyBDT05GSUdfVE9TSElCQV9CVF9SRktJTEwgaXMgbm90IHNldAojIENPTkZJR19BQ1BJX0NNUEMg
aXMgbm90IHNldAojIENPTkZJR19JTlRFTF9JUFMgaXMgbm90IHNldAojIENPTkZJR19JQk1fUlRM
IGlzIG5vdCBzZXQKIyBDT05GSUdfWE8xNV9FQk9PSyBpcyBub3Qgc2V0CiMgQ09ORklHX1NBTVNV
TkdfTEFQVE9QIGlzIG5vdCBzZXQKIyBDT05GSUdfU0FNU1VOR19RMTAgaXMgbm90IHNldAojIENP
TkZJR19BUFBMRV9HTVVYIGlzIG5vdCBzZXQKCiMKIyBIYXJkd2FyZSBTcGlubG9jayBkcml2ZXJz
CiMKQ09ORklHX0NMS1NSQ19JODI1Mz15CkNPTkZJR19DTEtFVlRfSTgyNTM9eQpDT05GSUdfSTgy
NTNfTE9DSz15CkNPTkZJR19DTEtCTERfSTgyNTM9eQpDT05GSUdfSU9NTVVfU1VQUE9SVD15CiMg
Q09ORklHX0lOVEVMX0lPTU1VIGlzIG5vdCBzZXQKCiMKIyBSZW1vdGVwcm9jIGRyaXZlcnMgKEVY
UEVSSU1FTlRBTCkKIwojIENPTkZJR19TVEVfTU9ERU1fUlBST0MgaXMgbm90IHNldAoKIwojIFJw
bXNnIGRyaXZlcnMgKEVYUEVSSU1FTlRBTCkKIwojIENPTkZJR19WSVJUX0RSSVZFUlMgaXMgbm90
IHNldAojIENPTkZJR19QTV9ERVZGUkVRIGlzIG5vdCBzZXQKIyBDT05GSUdfRVhUQ09OIGlzIG5v
dCBzZXQKIyBDT05GSUdfTUVNT1JZIGlzIG5vdCBzZXQKIyBDT05GSUdfSUlPIGlzIG5vdCBzZXQK
IyBDT05GSUdfVk1FX0JVUyBpcyBub3Qgc2V0CiMgQ09ORklHX1BXTSBpcyBub3Qgc2V0CiMgQ09O
RklHX0lQQUNLX0JVUyBpcyBub3Qgc2V0CgojCiMgRmlybXdhcmUgRHJpdmVycwojCiMgQ09ORklH
X0VERCBpcyBub3Qgc2V0CkNPTkZJR19GSVJNV0FSRV9NRU1NQVA9eQpDT05GSUdfRUZJX1ZBUlM9
eQojIENPTkZJR19ERUxMX1JCVSBpcyBub3Qgc2V0CiMgQ09ORklHX0RDREJBUyBpcyBub3Qgc2V0
CkNPTkZJR19ETUlJRD15CkNPTkZJR19ETUlfU1lTRlM9eQojIENPTkZJR19JU0NTSV9JQkZUX0ZJ
TkQgaXMgbm90IHNldAojIENPTkZJR19HT09HTEVfRklSTVdBUkUgaXMgbm90IHNldAoKIwojIEZp
bGUgc3lzdGVtcwojCkNPTkZJR19EQ0FDSEVfV09SRF9BQ0NFU1M9eQpDT05GSUdfRVhUMl9GUz15
CkNPTkZJR19FWFQyX0ZTX1hBVFRSPXkKQ09ORklHX0VYVDJfRlNfUE9TSVhfQUNMPXkKIyBDT05G
SUdfRVhUMl9GU19TRUNVUklUWSBpcyBub3Qgc2V0CiMgQ09ORklHX0VYVDJfRlNfWElQIGlzIG5v
dCBzZXQKQ09ORklHX0VYVDNfRlM9eQpDT05GSUdfRVhUM19ERUZBVUxUU19UT19PUkRFUkVEPXkK
Q09ORklHX0VYVDNfRlNfWEFUVFI9eQpDT05GSUdfRVhUM19GU19QT1NJWF9BQ0w9eQpDT05GSUdf
RVhUM19GU19TRUNVUklUWT15CkNPTkZJR19FWFQ0X0ZTPXkKQ09ORklHX0VYVDRfRlNfUE9TSVhf
QUNMPXkKQ09ORklHX0VYVDRfRlNfU0VDVVJJVFk9eQojIENPTkZJR19FWFQ0X0RFQlVHIGlzIG5v
dCBzZXQKQ09ORklHX0pCRD15CiMgQ09ORklHX0pCRF9ERUJVRyBpcyBub3Qgc2V0CkNPTkZJR19K
QkQyPXkKIyBDT05GSUdfSkJEMl9ERUJVRyBpcyBub3Qgc2V0CkNPTkZJR19GU19NQkNBQ0hFPXkK
Q09ORklHX1JFSVNFUkZTX0ZTPW0KIyBDT05GSUdfUkVJU0VSRlNfQ0hFQ0sgaXMgbm90IHNldAoj
IENPTkZJR19SRUlTRVJGU19QUk9DX0lORk8gaXMgbm90IHNldApDT05GSUdfUkVJU0VSRlNfRlNf
WEFUVFI9eQpDT05GSUdfUkVJU0VSRlNfRlNfUE9TSVhfQUNMPXkKIyBDT05GSUdfUkVJU0VSRlNf
RlNfU0VDVVJJVFkgaXMgbm90IHNldAojIENPTkZJR19KRlNfRlMgaXMgbm90IHNldAojIENPTkZJ
R19YRlNfRlMgaXMgbm90IHNldAojIENPTkZJR19HRlMyX0ZTIGlzIG5vdCBzZXQKIyBDT05GSUdf
T0NGUzJfRlMgaXMgbm90IHNldApDT05GSUdfQlRSRlNfRlM9eQpDT05GSUdfQlRSRlNfRlNfUE9T
SVhfQUNMPXkKIyBDT05GSUdfQlRSRlNfRlNfQ0hFQ0tfSU5URUdSSVRZIGlzIG5vdCBzZXQKIyBD
T05GSUdfTklMRlMyX0ZTIGlzIG5vdCBzZXQKQ09ORklHX0ZTX1BPU0lYX0FDTD15CkNPTkZJR19G
SUxFX0xPQ0tJTkc9eQpDT05GSUdfRlNOT1RJRlk9eQpDT05GSUdfRE5PVElGWT15CkNPTkZJR19J
Tk9USUZZX1VTRVI9eQojIENPTkZJR19GQU5PVElGWSBpcyBub3Qgc2V0CiMgQ09ORklHX1FVT1RB
IGlzIG5vdCBzZXQKIyBDT05GSUdfUVVPVEFDVEwgaXMgbm90IHNldApDT05GSUdfQVVUT0ZTNF9G
Uz1tCkNPTkZJR19GVVNFX0ZTPW0KQ09ORklHX0NVU0U9bQoKIwojIENhY2hlcwojCiMgQ09ORklH
X0ZTQ0FDSEUgaXMgbm90IHNldAoKIwojIENELVJPTS9EVkQgRmlsZXN5c3RlbXMKIwpDT05GSUdf
SVNPOTY2MF9GUz15CiMgQ09ORklHX0pPTElFVCBpcyBub3Qgc2V0CiMgQ09ORklHX1pJU09GUyBp
cyBub3Qgc2V0CiMgQ09ORklHX1VERl9GUyBpcyBub3Qgc2V0CgojCiMgRE9TL0ZBVC9OVCBGaWxl
c3lzdGVtcwojCkNPTkZJR19GQVRfRlM9eQpDT05GSUdfTVNET1NfRlM9eQpDT05GSUdfVkZBVF9G
Uz15CiMgQ09ORklHX1ZGQVRfRlNfTk9fRFVBTE5BTUVTIGlzIG5vdCBzZXQKQ09ORklHX0ZBVF9E
RUZBVUxUX0NPREVQQUdFPTQzNwpDT05GSUdfRkFUX0RFRkFVTFRfSU9DSEFSU0VUPSJpc284ODU5
LTEiCiMgQ09ORklHX1ZGQVRfTk9fQ1JFQVRFX1dJVEhfTE9OR05BTUVTIGlzIG5vdCBzZXQKIyBD
T05GSUdfTlRGU19GUyBpcyBub3Qgc2V0CgojCiMgUHNldWRvIGZpbGVzeXN0ZW1zCiMKQ09ORklH
X1BST0NfRlM9eQpDT05GSUdfUFJPQ19LQ09SRT15CkNPTkZJR19QUk9DX1NZU0NUTD15CkNPTkZJ
R19QUk9DX1BBR0VfTU9OSVRPUj15CkNPTkZJR19TWVNGUz15CkNPTkZJR19UTVBGUz15CiMgQ09O
RklHX1RNUEZTX1BPU0lYX0FDTCBpcyBub3Qgc2V0CiMgQ09ORklHX1RNUEZTX1hBVFRSIGlzIG5v
dCBzZXQKIyBDT05GSUdfSFVHRVRMQkZTIGlzIG5vdCBzZXQKIyBDT05GSUdfSFVHRVRMQl9QQUdF
IGlzIG5vdCBzZXQKQ09ORklHX0NPTkZJR0ZTX0ZTPW0KQ09ORklHX01JU0NfRklMRVNZU1RFTVM9
eQojIENPTkZJR19BREZTX0ZTIGlzIG5vdCBzZXQKIyBDT05GSUdfQUZGU19GUyBpcyBub3Qgc2V0
CiMgQ09ORklHX0VDUllQVF9GUyBpcyBub3Qgc2V0CiMgQ09ORklHX0hGU19GUyBpcyBub3Qgc2V0
CiMgQ09ORklHX0hGU1BMVVNfRlMgaXMgbm90IHNldAojIENPTkZJR19CRUZTX0ZTIGlzIG5vdCBz
ZXQKIyBDT05GSUdfQkZTX0ZTIGlzIG5vdCBzZXQKIyBDT05GSUdfRUZTX0ZTIGlzIG5vdCBzZXQK
IyBDT05GSUdfTE9HRlMgaXMgbm90IHNldAojIENPTkZJR19DUkFNRlMgaXMgbm90IHNldAojIENP
TkZJR19TUVVBU0hGUyBpcyBub3Qgc2V0CiMgQ09ORklHX1ZYRlNfRlMgaXMgbm90IHNldApDT05G
SUdfTUlOSVhfRlM9bQojIENPTkZJR19PTUZTX0ZTIGlzIG5vdCBzZXQKIyBDT05GSUdfSFBGU19G
UyBpcyBub3Qgc2V0CiMgQ09ORklHX1FOWDRGU19GUyBpcyBub3Qgc2V0CiMgQ09ORklHX1FOWDZG
U19GUyBpcyBub3Qgc2V0CkNPTkZJR19ST01GU19GUz1tCkNPTkZJR19ST01GU19CQUNLRURfQllf
QkxPQ0s9eQpDT05GSUdfUk9NRlNfT05fQkxPQ0s9eQojIENPTkZJR19QU1RPUkUgaXMgbm90IHNl
dAojIENPTkZJR19TWVNWX0ZTIGlzIG5vdCBzZXQKIyBDT05GSUdfVUZTX0ZTIGlzIG5vdCBzZXQK
IyBDT05GSUdfRjJGU19GUyBpcyBub3Qgc2V0CkNPTkZJR19ORVRXT1JLX0ZJTEVTWVNURU1TPXkK
Q09ORklHX05GU19GUz15CkNPTkZJR19ORlNfVjI9eQpDT05GSUdfTkZTX0RFRl9GSUxFX0lPX1NJ
WkU9NDA5NgpDT05GSUdfTkZTX1YzPXkKIyBDT05GSUdfTkZTX1YzX0FDTCBpcyBub3Qgc2V0CkNP
TkZJR19ORlNfVjQ9eQojIENPTkZJR19ORlNfU1dBUCBpcyBub3Qgc2V0CiMgQ09ORklHX05GU19W
NF8xIGlzIG5vdCBzZXQKQ09ORklHX1JPT1RfTkZTPXkKIyBDT05GSUdfTkZTX1VTRV9MRUdBQ1lf
RE5TIGlzIG5vdCBzZXQKQ09ORklHX05GU19VU0VfS0VSTkVMX0ROUz15CiMgQ09ORklHX05GU0Qg
aXMgbm90IHNldApDT05GSUdfTE9DS0Q9eQpDT05GSUdfTE9DS0RfVjQ9eQpDT05GSUdfTkZTX0NP
TU1PTj15CkNPTkZJR19TVU5SUEM9eQpDT05GSUdfU1VOUlBDX0dTUz15CiMgQ09ORklHX1NVTlJQ
Q19ERUJVRyBpcyBub3Qgc2V0CiMgQ09ORklHX0NFUEhfRlMgaXMgbm90IHNldApDT05GSUdfQ0lG
Uz1tCiMgQ09ORklHX0NJRlNfU1RBVFMgaXMgbm90IHNldAojIENPTkZJR19DSUZTX1dFQUtfUFdf
SEFTSCBpcyBub3Qgc2V0CiMgQ09ORklHX0NJRlNfVVBDQUxMIGlzIG5vdCBzZXQKQ09ORklHX0NJ
RlNfWEFUVFI9eQpDT05GSUdfQ0lGU19QT1NJWD15CiMgQ09ORklHX0NJRlNfQUNMIGlzIG5vdCBz
ZXQKQ09ORklHX0NJRlNfREVCVUc9eQojIENPTkZJR19DSUZTX0RFQlVHMiBpcyBub3Qgc2V0CiMg
Q09ORklHX0NJRlNfREZTX1VQQ0FMTCBpcyBub3Qgc2V0CiMgQ09ORklHX0NJRlNfU01CMiBpcyBu
b3Qgc2V0CiMgQ09ORklHX05DUF9GUyBpcyBub3Qgc2V0CiMgQ09ORklHX0NPREFfRlMgaXMgbm90
IHNldAojIENPTkZJR19BRlNfRlMgaXMgbm90IHNldApDT05GSUdfTkxTPXkKQ09ORklHX05MU19E
RUZBVUxUPSJpc284ODU5LTEiCkNPTkZJR19OTFNfQ09ERVBBR0VfNDM3PXkKQ09ORklHX05MU19D
T0RFUEFHRV83Mzc9bQpDT05GSUdfTkxTX0NPREVQQUdFXzc3NT1tCkNPTkZJR19OTFNfQ09ERVBB
R0VfODUwPW0KQ09ORklHX05MU19DT0RFUEFHRV84NTI9bQpDT05GSUdfTkxTX0NPREVQQUdFXzg1
NT1tCkNPTkZJR19OTFNfQ09ERVBBR0VfODU3PW0KQ09ORklHX05MU19DT0RFUEFHRV84NjA9bQpD
T05GSUdfTkxTX0NPREVQQUdFXzg2MT1tCkNPTkZJR19OTFNfQ09ERVBBR0VfODYyPW0KQ09ORklH
X05MU19DT0RFUEFHRV84NjM9bQpDT05GSUdfTkxTX0NPREVQQUdFXzg2ND1tCkNPTkZJR19OTFNf
Q09ERVBBR0VfODY1PW0KQ09ORklHX05MU19DT0RFUEFHRV84NjY9bQpDT05GSUdfTkxTX0NPREVQ
QUdFXzg2OT1tCkNPTkZJR19OTFNfQ09ERVBBR0VfOTM2PW0KQ09ORklHX05MU19DT0RFUEFHRV85
NTA9bQpDT05GSUdfTkxTX0NPREVQQUdFXzkzMj1tCkNPTkZJR19OTFNfQ09ERVBBR0VfOTQ5PW0K
Q09ORklHX05MU19DT0RFUEFHRV84NzQ9bQpDT05GSUdfTkxTX0lTTzg4NTlfOD1tCkNPTkZJR19O
TFNfQ09ERVBBR0VfMTI1MD1tCkNPTkZJR19OTFNfQ09ERVBBR0VfMTI1MT1tCkNPTkZJR19OTFNf
QVNDSUk9bQpDT05GSUdfTkxTX0lTTzg4NTlfMT15CkNPTkZJR19OTFNfSVNPODg1OV8yPW0KQ09O
RklHX05MU19JU084ODU5XzM9bQpDT05GSUdfTkxTX0lTTzg4NTlfND1tCkNPTkZJR19OTFNfSVNP
ODg1OV81PW0KQ09ORklHX05MU19JU084ODU5XzY9bQpDT05GSUdfTkxTX0lTTzg4NTlfNz1tCkNP
TkZJR19OTFNfSVNPODg1OV85PW0KQ09ORklHX05MU19JU084ODU5XzEzPW0KQ09ORklHX05MU19J
U084ODU5XzE0PW0KQ09ORklHX05MU19JU084ODU5XzE1PW0KQ09ORklHX05MU19LT0k4X1I9bQpD
T05GSUdfTkxTX0tPSThfVT1tCiMgQ09ORklHX05MU19NQUNfUk9NQU4gaXMgbm90IHNldAojIENP
TkZJR19OTFNfTUFDX0NFTFRJQyBpcyBub3Qgc2V0CiMgQ09ORklHX05MU19NQUNfQ0VOVEVVUk8g
aXMgbm90IHNldAojIENPTkZJR19OTFNfTUFDX0NST0FUSUFOIGlzIG5vdCBzZXQKIyBDT05GSUdf
TkxTX01BQ19DWVJJTExJQyBpcyBub3Qgc2V0CiMgQ09ORklHX05MU19NQUNfR0FFTElDIGlzIG5v
dCBzZXQKIyBDT05GSUdfTkxTX01BQ19HUkVFSyBpcyBub3Qgc2V0CiMgQ09ORklHX05MU19NQUNf
SUNFTEFORCBpcyBub3Qgc2V0CiMgQ09ORklHX05MU19NQUNfSU5VSVQgaXMgbm90IHNldAojIENP
TkZJR19OTFNfTUFDX1JPTUFOSUFOIGlzIG5vdCBzZXQKIyBDT05GSUdfTkxTX01BQ19UVVJLSVNI
IGlzIG5vdCBzZXQKQ09ORklHX05MU19VVEY4PW0KIyBDT05GSUdfRExNIGlzIG5vdCBzZXQKCiMK
IyBLZXJuZWwgaGFja2luZwojCkNPTkZJR19UUkFDRV9JUlFGTEFHU19TVVBQT1JUPXkKIyBDT05G
SUdfUFJJTlRLX1RJTUUgaXMgbm90IHNldApDT05GSUdfREVGQVVMVF9NRVNTQUdFX0xPR0xFVkVM
PTQKQ09ORklHX0VOQUJMRV9XQVJOX0RFUFJFQ0FURUQ9eQpDT05GSUdfRU5BQkxFX01VU1RfQ0hF
Q0s9eQpDT05GSUdfRlJBTUVfV0FSTj0xMDI0CkNPTkZJR19NQUdJQ19TWVNSUT15CiMgQ09ORklH
X1NUUklQX0FTTV9TWU1TIGlzIG5vdCBzZXQKIyBDT05GSUdfUkVBREFCTEVfQVNNIGlzIG5vdCBz
ZXQKQ09ORklHX1VOVVNFRF9TWU1CT0xTPXkKQ09ORklHX0RFQlVHX0ZTPXkKIyBDT05GSUdfSEVB
REVSU19DSEVDSyBpcyBub3Qgc2V0CiMgQ09ORklHX0RFQlVHX1NFQ1RJT05fTUlTTUFUQ0ggaXMg
bm90IHNldApDT05GSUdfREVCVUdfS0VSTkVMPXkKIyBDT05GSUdfREVCVUdfU0hJUlEgaXMgbm90
IHNldAojIENPTkZJR19MT0NLVVBfREVURUNUT1IgaXMgbm90IHNldAojIENPTkZJR19QQU5JQ19P
Tl9PT1BTIGlzIG5vdCBzZXQKQ09ORklHX1BBTklDX09OX09PUFNfVkFMVUU9MAojIENPTkZJR19E
RVRFQ1RfSFVOR19UQVNLIGlzIG5vdCBzZXQKQ09ORklHX1NDSEVEX0RFQlVHPXkKQ09ORklHX1ND
SEVEU1RBVFM9eQpDT05GSUdfVElNRVJfU1RBVFM9eQojIENPTkZJR19ERUJVR19PQkpFQ1RTIGlz
IG5vdCBzZXQKIyBDT05GSUdfU0xVQl9ERUJVR19PTiBpcyBub3Qgc2V0CiMgQ09ORklHX1NMVUJf
U1RBVFMgaXMgbm90IHNldApDT05GSUdfSEFWRV9ERUJVR19LTUVNTEVBSz15CiMgQ09ORklHX0RF
QlVHX0tNRU1MRUFLIGlzIG5vdCBzZXQKQ09ORklHX0RFQlVHX1BSRUVNUFQ9eQojIENPTkZJR19E
RUJVR19SVF9NVVRFWEVTIGlzIG5vdCBzZXQKIyBDT05GSUdfUlRfTVVURVhfVEVTVEVSIGlzIG5v
dCBzZXQKIyBDT05GSUdfREVCVUdfU1BJTkxPQ0sgaXMgbm90IHNldAojIENPTkZJR19ERUJVR19N
VVRFWEVTIGlzIG5vdCBzZXQKIyBDT05GSUdfREVCVUdfTE9DS19BTExPQyBpcyBub3Qgc2V0CiMg
Q09ORklHX1BST1ZFX0xPQ0tJTkcgaXMgbm90IHNldAojIENPTkZJR19QUk9WRV9SQ1VfREVMQVkg
aXMgbm90IHNldAojIENPTkZJR19TUEFSU0VfUkNVX1BPSU5URVIgaXMgbm90IHNldAojIENPTkZJ
R19MT0NLX1NUQVQgaXMgbm90IHNldAojIENPTkZJR19ERUJVR19BVE9NSUNfU0xFRVAgaXMgbm90
IHNldAojIENPTkZJR19ERUJVR19MT0NLSU5HX0FQSV9TRUxGVEVTVFMgaXMgbm90IHNldApDT05G
SUdfU1RBQ0tUUkFDRT15CiMgQ09ORklHX0RFQlVHX1NUQUNLX1VTQUdFIGlzIG5vdCBzZXQKIyBD
T05GSUdfREVCVUdfS09CSkVDVCBpcyBub3Qgc2V0CiMgQ09ORklHX0RFQlVHX0hJR0hNRU0gaXMg
bm90IHNldApDT05GSUdfREVCVUdfQlVHVkVSQk9TRT15CkNPTkZJR19ERUJVR19JTkZPPXkKIyBD
T05GSUdfREVCVUdfSU5GT19SRURVQ0VEIGlzIG5vdCBzZXQKIyBDT05GSUdfREVCVUdfVk0gaXMg
bm90IHNldAojIENPTkZJR19ERUJVR19WSVJUVUFMIGlzIG5vdCBzZXQKIyBDT05GSUdfREVCVUdf
V1JJVEVDT1VOVCBpcyBub3Qgc2V0CiMgQ09ORklHX0RFQlVHX01FTU9SWV9JTklUIGlzIG5vdCBz
ZXQKIyBDT05GSUdfREVCVUdfTElTVCBpcyBub3Qgc2V0CiMgQ09ORklHX1RFU1RfTElTVF9TT1JU
IGlzIG5vdCBzZXQKIyBDT05GSUdfREVCVUdfU0cgaXMgbm90IHNldAojIENPTkZJR19ERUJVR19O
T1RJRklFUlMgaXMgbm90IHNldAojIENPTkZJR19ERUJVR19DUkVERU5USUFMUyBpcyBub3Qgc2V0
CkNPTkZJR19BUkNIX1dBTlRfRlJBTUVfUE9JTlRFUlM9eQpDT05GSUdfRlJBTUVfUE9JTlRFUj15
CiMgQ09ORklHX0JPT1RfUFJJTlRLX0RFTEFZIGlzIG5vdCBzZXQKIyBDT05GSUdfUkNVX1RPUlRV
UkVfVEVTVCBpcyBub3Qgc2V0CkNPTkZJR19SQ1VfQ1BVX1NUQUxMX1RJTUVPVVQ9MjEKQ09ORklH
X1JDVV9DUFVfU1RBTExfVkVSQk9TRT15CiMgQ09ORklHX1JDVV9DUFVfU1RBTExfSU5GTyBpcyBu
b3Qgc2V0CiMgQ09ORklHX1JDVV9UUkFDRSBpcyBub3Qgc2V0CiMgQ09ORklHX0tQUk9CRVNfU0FO
SVRZX1RFU1QgaXMgbm90IHNldAojIENPTkZJR19CQUNLVFJBQ0VfU0VMRl9URVNUIGlzIG5vdCBz
ZXQKIyBDT05GSUdfREVCVUdfQkxPQ0tfRVhUX0RFVlQgaXMgbm90IHNldAojIENPTkZJR19ERUJV
R19GT1JDRV9XRUFLX1BFUl9DUFUgaXMgbm90IHNldAojIENPTkZJR19ERUJVR19QRVJfQ1BVX01B
UFMgaXMgbm90IHNldAojIENPTkZJR19MS0RUTSBpcyBub3Qgc2V0CiMgQ09ORklHX05PVElGSUVS
X0VSUk9SX0lOSkVDVElPTiBpcyBub3Qgc2V0CiMgQ09ORklHX0ZBVUxUX0lOSkVDVElPTiBpcyBu
b3Qgc2V0CkNPTkZJR19MQVRFTkNZVE9QPXkKIyBDT05GSUdfREVCVUdfUEFHRUFMTE9DIGlzIG5v
dCBzZXQKQ09ORklHX1VTRVJfU1RBQ0tUUkFDRV9TVVBQT1JUPXkKQ09ORklHX05PUF9UUkFDRVI9
eQpDT05GSUdfSEFWRV9GVU5DVElPTl9UUkFDRVI9eQpDT05GSUdfSEFWRV9GVU5DVElPTl9HUkFQ
SF9UUkFDRVI9eQpDT05GSUdfSEFWRV9GVU5DVElPTl9HUkFQSF9GUF9URVNUPXkKQ09ORklHX0hB
VkVfRlVOQ1RJT05fVFJBQ0VfTUNPVU5UX1RFU1Q9eQpDT05GSUdfSEFWRV9EWU5BTUlDX0ZUUkFD
RT15CkNPTkZJR19IQVZFX0ZUUkFDRV9NQ09VTlRfUkVDT1JEPXkKQ09ORklHX0hBVkVfU1lTQ0FM
TF9UUkFDRVBPSU5UUz15CkNPTkZJR19IQVZFX0NfUkVDT1JETUNPVU5UPXkKQ09ORklHX1RSQUNF
X0NMT0NLPXkKQ09ORklHX1JJTkdfQlVGRkVSPXkKQ09ORklHX0VWRU5UX1RSQUNJTkc9eQpDT05G
SUdfRVZFTlRfUE9XRVJfVFJBQ0lOR19ERVBSRUNBVEVEPXkKQ09ORklHX0NPTlRFWFRfU1dJVENI
X1RSQUNFUj15CkNPTkZJR19SSU5HX0JVRkZFUl9BTExPV19TV0FQPXkKQ09ORklHX1RSQUNJTkc9
eQpDT05GSUdfR0VORVJJQ19UUkFDRVI9eQpDT05GSUdfVFJBQ0lOR19TVVBQT1JUPXkKQ09ORklH
X0ZUUkFDRT15CkNPTkZJR19GVU5DVElPTl9UUkFDRVI9eQpDT05GSUdfRlVOQ1RJT05fR1JBUEhf
VFJBQ0VSPXkKIyBDT05GSUdfSVJRU09GRl9UUkFDRVIgaXMgbm90IHNldAojIENPTkZJR19QUkVF
TVBUX1RSQUNFUiBpcyBub3Qgc2V0CiMgQ09ORklHX1NDSEVEX1RSQUNFUiBpcyBub3Qgc2V0CkNP
TkZJR19GVFJBQ0VfU1lTQ0FMTFM9eQpDT05GSUdfQlJBTkNIX1BST0ZJTEVfTk9ORT15CiMgQ09O
RklHX1BST0ZJTEVfQU5OT1RBVEVEX0JSQU5DSEVTIGlzIG5vdCBzZXQKIyBDT05GSUdfUFJPRklM
RV9BTExfQlJBTkNIRVMgaXMgbm90IHNldAojIENPTkZJR19TVEFDS19UUkFDRVIgaXMgbm90IHNl
dApDT05GSUdfQkxLX0RFVl9JT19UUkFDRT15CkNPTkZJR19LUFJPQkVfRVZFTlQ9eQpDT05GSUdf
VVBST0JFX0VWRU5UPXkKQ09ORklHX1BST0JFX0VWRU5UUz15CkNPTkZJR19EWU5BTUlDX0ZUUkFD
RT15CiMgQ09ORklHX0ZVTkNUSU9OX1BST0ZJTEVSIGlzIG5vdCBzZXQKQ09ORklHX0ZUUkFDRV9N
Q09VTlRfUkVDT1JEPXkKIyBDT05GSUdfRlRSQUNFX1NUQVJUVVBfVEVTVCBpcyBub3Qgc2V0CiMg
Q09ORklHX01NSU9UUkFDRSBpcyBub3Qgc2V0CiMgQ09ORklHX1JJTkdfQlVGRkVSX0JFTkNITUFS
SyBpcyBub3Qgc2V0CiMgQ09ORklHX1JCVFJFRV9URVNUIGlzIG5vdCBzZXQKIyBDT05GSUdfSU5U
RVJWQUxfVFJFRV9URVNUIGlzIG5vdCBzZXQKIyBDT05GSUdfUFJPVklERV9PSENJMTM5NF9ETUFf
SU5JVCBpcyBub3Qgc2V0CiMgQ09ORklHX0RZTkFNSUNfREVCVUcgaXMgbm90IHNldAojIENPTkZJ
R19ETUFfQVBJX0RFQlVHIGlzIG5vdCBzZXQKIyBDT05GSUdfQVRPTUlDNjRfU0VMRlRFU1QgaXMg
bm90IHNldAojIENPTkZJR19TQU1QTEVTIGlzIG5vdCBzZXQKQ09ORklHX0hBVkVfQVJDSF9LR0RC
PXkKQ09ORklHX0tHREI9eQpDT05GSUdfS0dEQl9TRVJJQUxfQ09OU09MRT15CiMgQ09ORklHX0tH
REJfVEVTVFMgaXMgbm90IHNldApDT05GSUdfS0dEQl9MT1dfTEVWRUxfVFJBUD15CkNPTkZJR19L
R0RCX0tEQj15CkNPTkZJR19LREJfS0VZQk9BUkQ9eQpDT05GSUdfSEFWRV9BUkNIX0tNRU1DSEVD
Sz15CiMgQ09ORklHX1RFU1RfS1NUUlRPWCBpcyBub3Qgc2V0CiMgQ09ORklHX1NUUklDVF9ERVZN
RU0gaXMgbm90IHNldApDT05GSUdfWDg2X1ZFUkJPU0VfQk9PVFVQPXkKQ09ORklHX0VBUkxZX1BS
SU5USz15CiMgQ09ORklHX0VBUkxZX1BSSU5US19EQkdQIGlzIG5vdCBzZXQKIyBDT05GSUdfREVC
VUdfU1RBQ0tPVkVSRkxPVyBpcyBub3Qgc2V0CiMgQ09ORklHX1g4Nl9QVERVTVAgaXMgbm90IHNl
dApDT05GSUdfREVCVUdfUk9EQVRBPXkKQ09ORklHX0RFQlVHX1JPREFUQV9URVNUPXkKIyBDT05G
SUdfREVCVUdfU0VUX01PRFVMRV9ST05YIGlzIG5vdCBzZXQKIyBDT05GSUdfREVCVUdfTlhfVEVT
VCBpcyBub3Qgc2V0CkNPTkZJR19ET1VCTEVGQVVMVD15CiMgQ09ORklHX0lPTU1VX1NUUkVTUyBp
cyBub3Qgc2V0CkNPTkZJR19IQVZFX01NSU9UUkFDRV9TVVBQT1JUPXkKIyBDT05GSUdfWDg2X0RF
Q09ERVJfU0VMRlRFU1QgaXMgbm90IHNldApDT05GSUdfSU9fREVMQVlfVFlQRV8wWDgwPTAKQ09O
RklHX0lPX0RFTEFZX1RZUEVfMFhFRD0xCkNPTkZJR19JT19ERUxBWV9UWVBFX1VERUxBWT0yCkNP
TkZJR19JT19ERUxBWV9UWVBFX05PTkU9MwpDT05GSUdfSU9fREVMQVlfMFg4MD15CiMgQ09ORklH
X0lPX0RFTEFZXzBYRUQgaXMgbm90IHNldAojIENPTkZJR19JT19ERUxBWV9VREVMQVkgaXMgbm90
IHNldAojIENPTkZJR19JT19ERUxBWV9OT05FIGlzIG5vdCBzZXQKQ09ORklHX0RFRkFVTFRfSU9f
REVMQVlfVFlQRT0wCiMgQ09ORklHX0RFQlVHX0JPT1RfUEFSQU1TIGlzIG5vdCBzZXQKIyBDT05G
SUdfQ1BBX0RFQlVHIGlzIG5vdCBzZXQKIyBDT05GSUdfT1BUSU1JWkVfSU5MSU5JTkcgaXMgbm90
IHNldAojIENPTkZJR19ERUJVR19TVFJJQ1RfVVNFUl9DT1BZX0NIRUNLUyBpcyBub3Qgc2V0CiMg
Q09ORklHX0RFQlVHX05NSV9TRUxGVEVTVCBpcyBub3Qgc2V0CgojCiMgU2VjdXJpdHkgb3B0aW9u
cwojCkNPTkZJR19LRVlTPXkKIyBDT05GSUdfRU5DUllQVEVEX0tFWVMgaXMgbm90IHNldAojIENP
TkZJR19LRVlTX0RFQlVHX1BST0NfS0VZUyBpcyBub3Qgc2V0CiMgQ09ORklHX1NFQ1VSSVRZX0RN
RVNHX1JFU1RSSUNUIGlzIG5vdCBzZXQKQ09ORklHX1NFQ1VSSVRZPXkKIyBDT05GSUdfU0VDVVJJ
VFlGUyBpcyBub3Qgc2V0CiMgQ09ORklHX1NFQ1VSSVRZX05FVFdPUksgaXMgbm90IHNldAojIENP
TkZJR19TRUNVUklUWV9QQVRIIGlzIG5vdCBzZXQKIyBDT05GSUdfU0VDVVJJVFlfU01BQ0sgaXMg
bm90IHNldAojIENPTkZJR19TRUNVUklUWV9UT01PWU8gaXMgbm90IHNldAojIENPTkZJR19TRUNV
UklUWV9BUFBBUk1PUiBpcyBub3Qgc2V0CiMgQ09ORklHX1NFQ1VSSVRZX1lBTUEgaXMgbm90IHNl
dAojIENPTkZJR19JTUEgaXMgbm90IHNldAojIENPTkZJR19FVk0gaXMgbm90IHNldApDT05GSUdf
REVGQVVMVF9TRUNVUklUWV9EQUM9eQpDT05GSUdfREVGQVVMVF9TRUNVUklUWT0iIgpDT05GSUdf
Q1JZUFRPPXkKCiMKIyBDcnlwdG8gY29yZSBvciBoZWxwZXIKIwpDT05GSUdfQ1JZUFRPX0FMR0FQ
ST15CkNPTkZJR19DUllQVE9fQUxHQVBJMj15CkNPTkZJR19DUllQVE9fQUVBRD15CkNPTkZJR19D
UllQVE9fQUVBRDI9eQpDT05GSUdfQ1JZUFRPX0JMS0NJUEhFUj15CkNPTkZJR19DUllQVE9fQkxL
Q0lQSEVSMj15CkNPTkZJR19DUllQVE9fSEFTSD15CkNPTkZJR19DUllQVE9fSEFTSDI9eQpDT05G
SUdfQ1JZUFRPX1JORz15CkNPTkZJR19DUllQVE9fUk5HMj15CkNPTkZJR19DUllQVE9fUENPTVAy
PXkKQ09ORklHX0NSWVBUT19NQU5BR0VSPXkKQ09ORklHX0NSWVBUT19NQU5BR0VSMj15CkNPTkZJ
R19DUllQVE9fVVNFUj15CkNPTkZJR19DUllQVE9fTUFOQUdFUl9ESVNBQkxFX1RFU1RTPXkKQ09O
RklHX0NSWVBUT19HRjEyOE1VTD15CkNPTkZJR19DUllQVE9fTlVMTD15CiMgQ09ORklHX0NSWVBU
T19QQ1JZUFQgaXMgbm90IHNldApDT05GSUdfQ1JZUFRPX1dPUktRVUVVRT15CkNPTkZJR19DUllQ
VE9fQ1JZUFREPXkKQ09ORklHX0NSWVBUT19BVVRIRU5DPXkKQ09ORklHX0NSWVBUT19URVNUPW0K
CiMKIyBBdXRoZW50aWNhdGVkIEVuY3J5cHRpb24gd2l0aCBBc3NvY2lhdGVkIERhdGEKIwpDT05G
SUdfQ1JZUFRPX0NDTT15CkNPTkZJR19DUllQVE9fR0NNPXkKQ09ORklHX0NSWVBUT19TRVFJVj15
CgojCiMgQmxvY2sgbW9kZXMKIwpDT05GSUdfQ1JZUFRPX0NCQz15CkNPTkZJR19DUllQVE9fQ1RS
PXkKIyBDT05GSUdfQ1JZUFRPX0NUUyBpcyBub3Qgc2V0CkNPTkZJR19DUllQVE9fRUNCPW0KIyBD
T05GSUdfQ1JZUFRPX0xSVyBpcyBub3Qgc2V0CiMgQ09ORklHX0NSWVBUT19QQ0JDIGlzIG5vdCBz
ZXQKIyBDT05GSUdfQ1JZUFRPX1hUUyBpcyBub3Qgc2V0CgojCiMgSGFzaCBtb2RlcwojCkNPTkZJ
R19DUllQVE9fSE1BQz15CkNPTkZJR19DUllQVE9fWENCQz15CiMgQ09ORklHX0NSWVBUT19WTUFD
IGlzIG5vdCBzZXQKCiMKIyBEaWdlc3QKIwpDT05GSUdfQ1JZUFRPX0NSQzMyQz15CiMgQ09ORklH
X0NSWVBUT19DUkMzMkNfSU5URUwgaXMgbm90IHNldApDT05GSUdfQ1JZUFRPX0dIQVNIPXkKQ09O
RklHX0NSWVBUT19NRDQ9bQpDT05GSUdfQ1JZUFRPX01ENT15CkNPTkZJR19DUllQVE9fTUlDSEFF
TF9NSUM9bQojIENPTkZJR19DUllQVE9fUk1EMTI4IGlzIG5vdCBzZXQKQ09ORklHX0NSWVBUT19S
TUQxNjA9eQojIENPTkZJR19DUllQVE9fUk1EMjU2IGlzIG5vdCBzZXQKIyBDT05GSUdfQ1JZUFRP
X1JNRDMyMCBpcyBub3Qgc2V0CkNPTkZJR19DUllQVE9fU0hBMT15CkNPTkZJR19DUllQVE9fU0hB
MjU2PXkKQ09ORklHX0NSWVBUT19TSEE1MTI9bQojIENPTkZJR19DUllQVE9fVEdSMTkyIGlzIG5v
dCBzZXQKQ09ORklHX0NSWVBUT19XUDUxMj1tCgojCiMgQ2lwaGVycwojCkNPTkZJR19DUllQVE9f
QUVTPXkKIyBDT05GSUdfQ1JZUFRPX0FFU181ODYgaXMgbm90IHNldAojIENPTkZJR19DUllQVE9f
QUVTX05JX0lOVEVMIGlzIG5vdCBzZXQKQ09ORklHX0NSWVBUT19BTlVCSVM9bQpDT05GSUdfQ1JZ
UFRPX0FSQzQ9bQpDT05GSUdfQ1JZUFRPX0JMT1dGSVNIPW0KQ09ORklHX0NSWVBUT19CTE9XRklT
SF9DT01NT049bQpDT05GSUdfQ1JZUFRPX0NBTUVMTElBPW0KQ09ORklHX0NSWVBUT19DQVNUX0NP
TU1PTj1tCkNPTkZJR19DUllQVE9fQ0FTVDU9bQpDT05GSUdfQ1JZUFRPX0NBU1Q2PW0KQ09ORklH
X0NSWVBUT19ERVM9eQojIENPTkZJR19DUllQVE9fRkNSWVBUIGlzIG5vdCBzZXQKQ09ORklHX0NS
WVBUT19LSEFaQUQ9bQojIENPTkZJR19DUllQVE9fU0FMU0EyMCBpcyBub3Qgc2V0CiMgQ09ORklH
X0NSWVBUT19TQUxTQTIwXzU4NiBpcyBub3Qgc2V0CiMgQ09ORklHX0NSWVBUT19TRUVEIGlzIG5v
dCBzZXQKQ09ORklHX0NSWVBUT19TRVJQRU5UPW0KIyBDT05GSUdfQ1JZUFRPX1NFUlBFTlRfU1NF
Ml81ODYgaXMgbm90IHNldApDT05GSUdfQ1JZUFRPX1RFQT1tCkNPTkZJR19DUllQVE9fVFdPRklT
SD1tCkNPTkZJR19DUllQVE9fVFdPRklTSF9DT01NT049bQojIENPTkZJR19DUllQVE9fVFdPRklT
SF81ODYgaXMgbm90IHNldAoKIwojIENvbXByZXNzaW9uCiMKQ09ORklHX0NSWVBUT19ERUZMQVRF
PW0KIyBDT05GSUdfQ1JZUFRPX1pMSUIgaXMgbm90IHNldAojIENPTkZJR19DUllQVE9fTFpPIGlz
IG5vdCBzZXQKCiMKIyBSYW5kb20gTnVtYmVyIEdlbmVyYXRpb24KIwpDT05GSUdfQ1JZUFRPX0FO
U0lfQ1BSTkc9bQpDT05GSUdfQ1JZUFRPX1VTRVJfQVBJPXkKIyBDT05GSUdfQ1JZUFRPX1VTRVJf
QVBJX0hBU0ggaXMgbm90IHNldApDT05GSUdfQ1JZUFRPX1VTRVJfQVBJX1NLQ0lQSEVSPXkKQ09O
RklHX0NSWVBUT19IVz15CiMgQ09ORklHX0NSWVBUT19ERVZfUEFETE9DSyBpcyBub3Qgc2V0CiMg
Q09ORklHX0NSWVBUT19ERVZfR0VPREUgaXMgbm90IHNldAojIENPTkZJR19DUllQVE9fREVWX0hJ
Rk5fNzk1WCBpcyBub3Qgc2V0CiMgQ09ORklHX0FTWU1NRVRSSUNfS0VZX1RZUEUgaXMgbm90IHNl
dApDT05GSUdfSEFWRV9LVk09eQpDT05GSUdfVklSVFVBTElaQVRJT049eQojIENPTkZJR19LVk0g
aXMgbm90IHNldAojIENPTkZJR19WSE9TVF9ORVQgaXMgbm90IHNldAojIENPTkZJR19MR1VFU1Qg
aXMgbm90IHNldApDT05GSUdfQklOQVJZX1BSSU5URj15CgojCiMgTGlicmFyeSByb3V0aW5lcwoj
CkNPTkZJR19CSVRSRVZFUlNFPXkKQ09ORklHX0dFTkVSSUNfU1RSTkNQWV9GUk9NX1VTRVI9eQpD
T05GSUdfR0VORVJJQ19TVFJOTEVOX1VTRVI9eQpDT05GSUdfR0VORVJJQ19GSU5EX0ZJUlNUX0JJ
VD15CkNPTkZJR19HRU5FUklDX1BDSV9JT01BUD15CkNPTkZJR19HRU5FUklDX0lPTUFQPXkKQ09O
RklHX0dFTkVSSUNfSU89eQpDT05GSUdfUEVSQ1BVX1JXU0VNPXkKIyBDT05GSUdfQ1JDX0NDSVRU
IGlzIG5vdCBzZXQKQ09ORklHX0NSQzE2PXkKIyBDT05GSUdfQ1JDX1QxMERJRiBpcyBub3Qgc2V0
CiMgQ09ORklHX0NSQ19JVFVfVCBpcyBub3Qgc2V0CkNPTkZJR19DUkMzMj15CiMgQ09ORklHX0NS
QzMyX1NFTEZURVNUIGlzIG5vdCBzZXQKQ09ORklHX0NSQzMyX1NMSUNFQlk4PXkKIyBDT05GSUdf
Q1JDMzJfU0xJQ0VCWTQgaXMgbm90IHNldAojIENPTkZJR19DUkMzMl9TQVJXQVRFIGlzIG5vdCBz
ZXQKIyBDT05GSUdfQ1JDMzJfQklUIGlzIG5vdCBzZXQKIyBDT05GSUdfQ1JDNyBpcyBub3Qgc2V0
CkNPTkZJR19MSUJDUkMzMkM9eQojIENPTkZJR19DUkM4IGlzIG5vdCBzZXQKQ09ORklHX1pMSUJf
SU5GTEFURT15CkNPTkZJR19aTElCX0RFRkxBVEU9eQpDT05GSUdfTFpPX0NPTVBSRVNTPXkKQ09O
RklHX0xaT19ERUNPTVBSRVNTPXkKIyBDT05GSUdfWFpfREVDIGlzIG5vdCBzZXQKIyBDT05GSUdf
WFpfREVDX0JDSiBpcyBub3Qgc2V0CkNPTkZJR19ERUNPTVBSRVNTX0daSVA9eQpDT05GSUdfSEFT
X0lPTUVNPXkKQ09ORklHX0hBU19JT1BPUlQ9eQpDT05GSUdfSEFTX0RNQT15CkNPTkZJR19DUFVf
Uk1BUD15CkNPTkZJR19EUUw9eQpDT05GSUdfTkxBVFRSPXkKQ09ORklHX0FSQ0hfSEFTX0FUT01J
QzY0X0RFQ19JRl9QT1NJVElWRT15CiMgQ09ORklHX0FWRVJBR0UgaXMgbm90IHNldAojIENPTkZJ
R19DT1JESUMgaXMgbm90IHNldAojIENPTkZJR19ERFIgaXMgbm90IHNldAo=

--_004_4F1B91CF7B31604FABE8442530201B78122055CDALPURAPA22e2kad_--
