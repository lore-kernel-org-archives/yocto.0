Return-Path: <nathan.rossi@xilinx.com>
Received: from va3outboundpool.messaging.microsoft.com
	(va3ehsobe010.messaging.microsoft.com [216.32.180.30])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB67FE00798;
	Wed, 27 Nov 2013 23:10:42 -0800 (PST)
Received: from mail34-va3-R.bigfish.com (10.7.14.235) by
	VA3EHSOBE014.bigfish.com (10.7.40.64) with Microsoft SMTP Server id
	14.1.225.22; Thu, 28 Nov 2013 07:10:41 +0000
Received: from mail34-va3 (localhost [127.0.0.1])	by mail34-va3-R.bigfish.com
	(Postfix) with ESMTP id 12C1E4E017D;
	Thu, 28 Nov 2013 07:10:41 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:149.199.60.83; KIP:(null); UIP:(null); IPV:NLI;
	H:xsj-gw1; RD:unknown-60-83.xilinx.com; EFVD:NLI
X-SpamScore: -1
X-BigFish: VPS-1(zz4015I14ffIzz1f42h2148h208ch1ee6h1de0h1fdah2073h2146h1202h1e76h1d1ah1d2ah1fc6hzz1de098h8275bh8275dh1de097hz2fh95h109h839h944hd24hf0ah119dh1220h1288h12a5h12a9h12bdh137ah13b6h1441h14ddh1504h1537h153bh162dh1631h1758h18e1h1946h19b5h1b0ah224fh1d0ch1d2eh1d3fh1dc1h1dfeh1dffh1e1dh1fe8h1ff5h2216h906i1155h)
Received-SPF: pass (mail34-va3: domain of xilinx.com designates 149.199.60.83
	as permitted sender) client-ip=149.199.60.83;
	envelope-from=nathan.rossi@xilinx.com; helo=xsj-gw1 ;
	helo=xsj-gw1 ; 
Received: from mail34-va3 (localhost.localdomain [127.0.0.1]) by mail34-va3
	(MessageSwitch) id 1385622638959717_27756;
	Thu, 28 Nov 2013 07:10:38 +0000 (UTC)
Received: from VA3EHSMHS020.bigfish.com (unknown [10.7.14.245])	by
	mail34-va3.bigfish.com (Postfix) with ESMTP id E542D4C006D;
	Thu, 28 Nov 2013 07:10:38 +0000 (UTC)
Received: from xsj-gw1 (149.199.60.83) by VA3EHSMHS020.bigfish.com
	(10.7.99.30) with Microsoft SMTP Server id 14.16.227.3; Thu, 28 Nov 2013
	07:10:38 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-smtp1)	by
	xsj-gw1 with esmtp (Exim 4.63)	(envelope-from
	<nathan.rossi@xilinx.com>)	id
	1VlvkE-0002Eb-1r; Wed, 27 Nov 2013 23:10:38 -0800
From: Nathan Rossi <nathan.rossi@xilinx.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Patch failure with bbappends
Thread-Index: Ac7sAujPcJEqXWVFSBSo7r4WFhYObA==
Date: Thu, 28 Nov 2013 07:10:34 +0000
Accept-Language: en-AU, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.164.13]
MIME-Version: 1.0
X-RCIS-Action: ALLOW
Message-ID: <b9a38e41-8736-4efe-8d5d-895e34fae5a3@VA3EHSMHS020.ehs.local>
X-OriginatorOrg: xilinx.com
X-FOPE-CONNECTOR: Id%0$Dn%*$RO%0$TLS%0$FQDN%$TlsDn%
Cc: "meta-xilinx Mailing List \(meta-xilinx@yoctoproject.org\)"
	<meta-xilinx@yoctoproject.org>
Subject: Patch failure with bbappends
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
X-List-Received-Date: Thu, 28 Nov 2013 07:10:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

I am seeing an interesting effect due to a specific commit to bitbake/poky,=
 which is causing the patching of gcc-* recipes from the meta-xilinx layer =
to fail.

I understand that master of oe-core has switched to using GCC 4.8.2 since d=
ora, however no changes to microblaze were added between 4.8.1 and 4.8.2. A=
s such I have ruled out the patches themselves being the issue. But it appe=
ars the problem is that the patches to the working directory are being done=
 twice during the intermediate steps of the gcc build.

Build Configuration:
BB_VERSION        =3D "1.21.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "RedHatEnterpriseWorkstation-6.4"
TARGET_SYS        =3D "microblazeel-poky-linux"
MACHINE           =3D "qemumicroblaze"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.5+snapshot-20131128"
TUNE_FEATURES     =3D "microblaze v8.50 little-endian barrel-shift reorder =
pattern-compare divide-hard multiply-high fpu-hard"
TARGET_FPU        =3D "fpu-hard"
meta-yocto
meta              =3D "master:82ff33fc398e6574905aa36f618ad06c3c79b8b7"
meta-xilinx       =3D "master:a573551a42e2f4c8efa82db90f938b10e62a3971"

...
ERROR: Command Error: exit status: 1  Output:
Applying patch 0001-Patch-microblaze-Enable-DWARF-exception-handling-sup.pa=
tch
patching file gcc/common/config/microblaze/microblaze-common.c
Hunk #1 FAILED at 37.
1 out of 1 hunk FAILED -- rejects in file gcc/common/config/microblaze/micr=
oblaze-common.c
patching file gcc/config/microblaze/microblaze-protos.h
Hunk #1 FAILED at 54.
1 out of 1 hunk FAILED -- rejects in file gcc/config/microblaze/microblaze-=
protos.h
patching file gcc/config/microblaze/microblaze.c
Hunk #1 succeeded at 1901 with fuzz 2 (offset 5 lines).
Hunk #2 succeeded at 1940 with fuzz 1 (offset 12 lines).
Hunk #3 succeeded at 2982 with fuzz 2 (offset 31 lines).
Hunk #4 FAILED at 3184.
1 out of 4 hunks FAILED -- rejects in file gcc/config/microblaze/microblaze=
.c
patching file gcc/config/microblaze/microblaze.h
Hunk #1 succeeded at 199 with fuzz 2 (offset 15 lines).
patching file gcc/config/microblaze/microblaze.md
Hunk #1 FAILED at 2221.
1 out of 1 hunk FAILED -- rejects in file gcc/config/microblaze/microblaze.=
md
Patch 0001-Patch-microblaze-Enable-DWARF-exception-handling-sup.patch does =
not apply (enforce with -f)
ERROR: Function failed: patch_do_patch
ERROR: Logfile of failure stored in: /tmp/tmp.AHBPDCkrUT/tmp/work-shared/gc=
c-4.8.2-r0/temp/log.do_patch.17977
ERROR: Task 750 (/tmp/tmp.AHBPDCkrUT/repos/poky/meta/recipes-devtools/gcc/l=
ibgcc_4.8.bb, do_patch) failed with exit code '1'

The following other recipes fail at the do_patch step with the exact same e=
rror:
ERROR: Task 394 (/tmp/tmp.AHBPDCkrUT/repos/poky/meta/recipes-devtools/gcc/g=
cc-cross-initial_4.8.bb, do_patch) failed with exit code '1'
ERROR: Task 474 (/tmp/tmp.AHBPDCkrUT/repos/poky/meta/recipes-devtools/gcc/g=
cc-cross_4.8.bb, do_patch) failed with exit code '1'
ERROR: Task 487 (/tmp/tmp.AHBPDCkrUT/repos/poky/meta/recipes-devtools/gcc/g=
cc-runtime_4.8.bb, do_patch) failed with exit code '1'

---

I have done some debugging to determine which change caused the effects, bi=
secting between the merge base of dora and master (on the poky repo) landed=
 me on a bitbake commit:

commit 381d5920188398bc53b2454843054c8690bca243
Author: Saul Wold <sgw@linux.intel.com>
Date:   Thu Nov 21 09:50:41 2013 -0800

    bitbake: cooker: add support for using % as a wildcard in bbappend file=
name

    There has been a continuing call for supporting wildcard in bbappend
    filenames. The wildcard is actually allow matching of the name and
    version up to the point of encountering the %.  This approach will
    allow for matching of the major or major.minor.

    Exampes:

    busybox_1.21.1.bb
    busybox_1.21.%.bbappend will match
    busybox_1.2%.bbappend will also match

    if we update to busybox_1.3.0.bb the above won't match, but a busybox_1=
.%.bb
    will.

    [YOCTO #5411]

    (Bitbake rev: 31bc9af9cd56e7b318924869970e850993fafc5f)

    Signed-off-by: Saul Wold <sgw@linux.intel.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Reverting this commit on the top of master results in a functional build. I=
've done some 'bitbake -e' scanning with and without the above commit, and =
I cannot see any differences between the variables that are changed in the =
meta-xilinx .bbappends files. So it does not appear to be a problem in non-=
inclusion of the bbappend files, and the ordering of the inclusion appears =
to be correct as well.

Before I dive any deeper into the bitbake change itself I was hoping someon=
e might have seen this issue previously or has some insight.

Thanks,
Nathan



