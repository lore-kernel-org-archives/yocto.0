Return-Path: <elizabeth.flanagan@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CE41E004E9
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2011 16:57:16 -0700 (PDT)
Received: from mail-qy0-f180.google.com ([209.85.216.180])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 17 Oct 2011 16:57:15 -0700
Received: by qyk10 with SMTP id 10so20933qyk.4
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2011 16:57:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.229.73.87 with SMTP id p23mr4571621qcj.267.1318895834388; Mon,
	17 Oct 2011 16:57:14 -0700 (PDT)
Received: by 10.229.237.141 with HTTP; Mon, 17 Oct 2011 16:57:14 -0700 (PDT)
Date: Mon, 17 Oct 2011 16:57:14 -0700
Message-ID: <CAPhnLPDjzOVOc+tUxjUYw96=gxkr_LrcLgRir=wDLLsOi-=eUw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Subject: [ANNOUNCEMENT] Yocto 1.1 "Edison" Released
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 17 Oct 2011 23:57:16 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

All,

We are pleased to announce the release of Yocto 1.1 "Edison"

This release of the yocto project is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/poky-edison-6.0.=
tar.bz2
or
http://mirrors.kernel.org/yocto/yocto/yocto-1.1/poky-edison-6.0.tar.bz2

Additional tarballs for the meta-qt3, meta-x32 and eclipse plugin are
available at:
http://mirrors.kernel.org/yocto/yocto/yocto-1.1/eclipse-poky-edison-6.0.tar=
.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.1/meta-qt3-edison-6.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.1/meta-x32-edison-6.0.tar.bz2

Thank you everyone for all the hard work. For further info please see:
http://www.yoctoproject.org/download/yocto/yocto-project-1.1-release-notes-=
poky-6.0

--=20
Elizabeth Flanagan
Yocto Project
Build and Release

YOCTO 1.1 RELEASE NOTES
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Version: 1.1 "Edison"
Location: http://downloads.yoctoproject.org/releases/yocto/yocto-1.1
Mirror: http://mirrors.kernel.org/yocto/yocto/yocto-1.1
Sources: http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/sources
QA Test Results:
https://wiki.yoctoproject.org/wiki/Yocto_1.1_Milestone_Test_Report#Yocto_1.=
1_M4_RC4_Fullpass_Test_Report
Checksums: http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/ediso=
n-6.0.md5sum

RELEASE INFO
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
* poky
  - Git location: git://git.yoctoproject.org/poky.git
  - Git branch: edison
  - Git tag: edison-6.0
  - Git rev: 1924f52cc894d4dd6b9d9c1a2248b32fc0a24c8c
  - Download: http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/po=
ky-edison-6.0.tar.bz2
  - Mirror: http://mirrors.kernel.org/yocto/yocto/yocto-1.1/poky-edison-6.0=
.tar.bz2
  - md5sum: 053050367116124075ba5eaba57e0e88
* meta-qt3
  - Git location: git://git.yoctoproject.org/meta-qt3.git
  - Git branch: edison
  - Git tag: edison-6.0
  - Git rev: 0e9784d26df51bd564b8f23bd40a6c36969abd5c
  - Download Links:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/meta-qt3-edison-=
6.0.tar.bz2
  - Mirror: http://mirrors.kernel.org/yocto/yocto/yocto-1.1/meta-qt3-edison=
-6.0.tar.bz2
  - md5sum: 6feac672080c471774e64d3b7474d35e
* meta-x32
  - Git location: git://git.yoctoproject.org/experimental/meta-x32.git
  - Git branch: edison
  - Git tag: edison-6.0
  - Git rev: 78a8f65718b7ad7c93103a82026575687271cf5d
  - Download Links:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/meta-x32-edison-=
6.0.tar.bz2
  - Mirror: http://mirrors.kernel.org/yocto/yocto/yocto-1.1/meta-x32-edison=
-6.0.tar.bz2
  - md5sum: 72487d69975fa5f2b70adaddbd6f3f77
* eclipse-poky
  - Git location: git://git.yoctoproject.org/experimental/eclipse-poky.git
  - Git branch: edison
  - Git tag: edison-6.0
  - Git rev: 63bad411b63fe2913ac7dff44e1e8b03ee4f8505
  - Download Links:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/eclipse-poky-edi=
son-6.0.tar.bz2
  - Mirror: http://mirrors.kernel.org/yocto/yocto/yocto-1.1/eclipse-poky-ed=
ison-6.0.tar.bz2
  - md5sum: a91b2abf7fe42c07f7d2974faf93f286

FEATURES AND UPDATES
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
* Integration of the Yocto Project and OE core completed.
* Multi-lib chooses different architectures on a per-package basis.
For example,
  32 or 64-bit.  This lowers the footprint and results in higher performanc=
e.
* Introduction of Hob, which is a GUI-based, customized image builder.
* Layer tooling error checking and repository collecting and
flattening completed.
* Initial support for X32 completed.  This allows running applications that=
 use
  32-bit pointers in a 64-bit environment (i.e. with 64-bit registers).
  The infrastructure was completed and support exists for minimal images.
* ADT improvements made, which include an Eclipse plug-in that
supports system developers.
* Additional testcases added for ADT.
* Broader BSP support for PREEMPT_RT added.
* BeagleboardXM support pulled in from OE.
* btrfs support added.
* A new Yocto Project Developer Manual provided.
* Disk I/O information is now collected using build statistics.
* The ability to create user/group at preinstall added.
* Shared gcc work directory added.
* Cache redesigned and reimplemented.
* Performance improvement measures, such as splitting libc and
removing perl-native from build dependency
  added.
* Tracing enhanced by adding Systemtap support for user space tracing.
* 3G support added.
* Linux kernel upgraded to 3.0.4.
* gcc upgraded to 4.6.1+svnr178924.
* License infrastructure standardized on SPDX license naming
conventions with improved parser.

YOCTO 1.1 STATISTICS
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
* Build time: 11 hrs, 33 mins, 42 secs (4.1622 =D7 10^28 yoctoseconds)
* Build date: October 6th 2011
  - 66 builds
  - 137 images
* 76 unique contributors to poky.git from bernard..edison
  - git log --format=3D"%an" bernard..edison |sort -u|wc -l
* 3045 commits
  - git log --format=3D"%h" bernard..edison |wc -l
* 3783 files changed 237390 insertions 190021 deletions
  - git diff --stat bernard edison
* 247 bugs marked as RESOLVED between yocto-1.0 and yocto-1.1
  - http://tinyurl.com/3sp42ju

KNOWN ISSUES
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
The Yocto project uses bugzilla at http://bugzilla.yoctoproject.org/
to handle bug tracking. You should always consult that source first when
experiencing any issue with a Yocto Project release.

[1443] segfault of lttng-ust applications in qemuarm: caused by
prelink: on x86-64 Ubuntu host
[1096] Sanity checks should grumble if the distro hasn't been tested
[1489] tcf-agent segmentaion fault cause the re-running remote debug
fail in Eclipse (qemu). Workaround is to restart tcf-agent in qemu
terminal.
[1258] [crownbay] Xorg eats lots of CPU time after standby
[1260] color ghosting on BeagleBoard xM rev C
[1665] [HOB] deb/ipk build not proceed by showing some packages being
built.  The walk around is to set package format to "ipk" in
conf/local.conf in the build directory instead of "rpm" which caused
the issue.
[1452] 32bit kernel generated oprofile data file can not be read by
remote 64bit opreport, the walk around is to NOT "prelink" during
do_rootfs time, the problem is gone.

-----BEGIN PGP PUBLIC KEY BLOCK-----
Version: SKS 1.1.0

mQENBE4OGnABCADkoQS7rxP+G22SZG5wzXXxOOcEuazauluIeKaaB4bNwoErvpknDtbpZk2H
BiHzZ8+BQhA7KNQzua5hY1Tygz2N54BfnMKj6fDWfU+TVzdlbkFxTfzqxuUbIWL9IQ3p5rYY
LRHKtKrg65lawWWqrKafAymWMFutXLbN+Fx7ri74/5e2KqEZ3pcWWdDmuNJRphplPgCysLBl
f7wWPHyJ0/xwmUpU33buYLS7Jd2I3GKILYmlNp2Qx5Gk8CpKUhij9mMRWxgc0CzWym5QqAKy
zdMsJ07E594MdazL91AMdGJ8BYk76KqdgtVA1l4WfPPU7fJbwuK1scESAOkm9oAXyBfZABEB
AAG0TFlvY3RvIEJ1aWxkIGFuZCBSZWxlYXNlIChZb2N0byBQcm9qZWN0IFJlbGVhc2VzKSA8
cmVsZWFzZXNAeW9jdG9wcm9qZWN0Lm9yZz6JATgEEwECACIFAk4OGnACGwMGCwkIBwMCBhUI
AgkKCwQWAgMBAh4BAheAAAoJEEyK+E/MEkQPUnQIANEYOx/XZj0wAiFwrkgbibWOs6JCq3pz
CFCzSya7ncH6heyYu1wr+R3yH92IdxRkVHXfS1sixdcND9BT/Xtq73d034+OMMGlRkoBpDbT
JXkuKjKkeq4wJ4m3gp+a6t9GOHahgJLcuqyXAleGdAPA5DYQFKrgunJB+4AzkxQAdzzM9Fwn
o/2QD3aI7kUcL4psl/QfWj6rf9LlPK8YHsZv1mTGEilhXaG2vHhvaQxjusZn1WnsCrpe7sin
RW6EAq12zZYWuREIKuEVfGILDzYC/YNoyk6cplM2GxFdSxVbzWbNxFD8ikdxCNOnUzuFzDny
l6Bq95Vth1Gy/luUwqLIZAu5AQ0ETg4acAEIAMebDhmV0t0BudBFTnTSkcr/aago5Jj6zR/6
z+OfLz/Gk4CSD0MfC2Tz0cPTcREH40KU4VaLlsxjneFFfM6YTcvWbErg59R87WEwB5i/0hOM
t298uEYQCbmlGpaB1Fk9BzhRBDgpGrFjrSUiHbjzdorsbo7x/EXtr+jWVB9CkNrlxjH4h3nA
eZ3P2Q8JrAI/A0Xbso5V93SdendWuC45/2L+elIXSUdNqKeYV5AAWzA+mbeAeJQTg2xhYRon
2B9Qv9XQvJOf+7fnSZ4xGM8IZYL9S+kBlIYEedE+JDnPHHRhKV3hKyaaJFelmm9zppRE90i0
9SKYDJWFkvyenYTE0ZMAEQEAAYkBHwQYAQIACQUCTg4acAIbDAAKCRBMivhPzBJEDzSpCACs
5JtovgnaTlmni4ACS2m6XODgHHYIIhwk0NhGFq8N9G1x/tZmlxoOpxhvXpveTojJLYY8OCpY
Z5qhgfqClAQyE4xJdrSxXagto98rhMHV1+Rx3UXJXxxVEcdYTxfLjT6s+iz53/pVi/xMS8tU
Kwhzy33YBdyFzRsn0fFO1L5NtZ3o1OxA89FUsWGu11spXvfGWmw0ND+OflWBIMA2a7oDqx1x
9phZYJ6OFpVRreWjl6Sd7gEg95+gyJtpU2xgFS+Mx5jRkIw6qiVe2vMwIqN4jDRyMAm4CIFC
QMEzXvM0d9WZxA9uChypVFlvBubw3QUd9GKF3KE85rkzjx46TpzH
=3DhBpm
-----END PGP PUBLIC KEY BLOCK-----

