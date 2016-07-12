Return-Path: <stiffstone@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6801EE00F46; Tue, 12 Jul 2016 12:49:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (stiffstone[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com
	[209.85.218.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA8DDE00E62
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2016 12:49:37 -0700 (PDT)
Received: by mail-oi0-f46.google.com with SMTP id r2so38556886oih.2
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2016 12:49:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=8pz476BTQ4Vu81TQlSBfDznnndUu+NkP/xYrENbmwcM=;
	b=esrig5T+V678zKdZO2kdO3lA9XClb1ujo7GTvw4638WzxhTZ4hoYzvBVsWlgJtV1OB
	c5k2nNTnFnsLHlVXq/0/rV/GFWq0MuyPdDbWVGmxM7aI63cTbl8ypBammF95I8YO6ULE
	onKRiEmy0t4vQnNoVDT0MwPLzgQBva53b5Xwa7gEhCxyeoV54eSs61gOijLw82i297Wi
	TA4GZ83FXDW7zWQFa8JXkJC1bi3Kv+HqcTkDqysMxvz80QWVkwrnNrxHJ2ya73KT9gsZ
	qDq30P05JepE+AK4pt3kMT+ZZr3m9CRow1CrTfxe7sB6TVRajeCpsKgG49abXlPjqr4k
	CJ/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=8pz476BTQ4Vu81TQlSBfDznnndUu+NkP/xYrENbmwcM=;
	b=jtbqNmiw4h1s0BH0FycKwSZk0bfQeBvZ/Wgqurz2LKMCOyhGU8jV7zpJhoNmsxCDX+
	NMhRf1fvHKl7mRWP6sulbXrBaZSFuPAebCMG/FCdUc9a1zm5PpOSTgzFEJhit08CR84m
	Bqmq4YF1o3/YJnX2h0RX5G2elSzCRqF3zoajY8VL4BvEaxJGndLe8yt18/Cd2d3BO+Af
	CevZQMn5s6V85RRuF+rrh2BT3rnVvoUqR6xUhfvqR0xMTWleqCTqR772oI/Z96l1JCHN
	owhgwHG2AVTdKbDGy+A5/q7GDYpvx1KPBYbkDpt2QR+RR3Oa3M9kfVYkctBzJfmranbV
	yrmw==
X-Gm-Message-State: ALyK8tJT+UhsxY9JZ29LH3E9BgjKy6pgTxvnba707EpWZlU5HdE7kZnS7CLluvT3h9Yr+RaeoFjJwZtBsYaF8A==
X-Received: by 10.202.186.136 with SMTP id k130mr14472451oif.38.1468352976437; 
	Tue, 12 Jul 2016 12:49:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.48.129 with HTTP; Tue, 12 Jul 2016 12:49:36 -0700 (PDT)
From: Yile Ku <stiffstone@gmail.com>
Date: Tue, 12 Jul 2016 13:49:36 -0600
Message-ID: <CAAGP=A_N+zCxn-nYdQXo1U7_=h3hFv-_+4pXznKokOLE20VQHw@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Tue, 12 Jul 2016 16:11:04 -0700
Subject: bitbake problem
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
X-List-Received-Date: Tue, 12 Jul 2016 19:49:40 -0000
Content-Type: multipart/alternative; boundary=001a113cdf3690c9ea0537759157

--001a113cdf3690c9ea0537759157
Content-Type: text/plain; charset=UTF-8

Is there someone who can explain how yocto checks these dependencies?  I
need to debug this issue.

Thanks ahead of time.
Y-

ERROR: Unable to install packages. Command
'/opt/Freescale/QorIQ-SDK-V1.8-20150619-yocto/build_bae-c2e-v2/tmp/sysroots/x86_64-linux/usr/bin/smart
--data-dir=/opt/Freescale/QorIQ-SDK-V1.8-20150619-yocto/build_bae-c2e-v2/tmp/work/b4860qds_64b-fsl-linux/fsl-image-full/1.0-r0/rootfs/var/lib/smart
install -y libgcc1@ppc64e6500 gcc@ppc64e6500 libgcc-s-dev@ppc64e6500
run-postinsts@all usdpaa-apps-staticdev@b4860qds_64b ldd@ppc64e6500
usdpaa-apps@b4860qds_64b packagegroup-core-ssh-openssh@all apptrk@ppc64e6500
asf@b4860qds_64b udev-extraconf@ppc64e6500 pme-tools@ppc64e6500
eth-config@ppc64e6500 openssh-sftp-server@ppc64e6500 mtd-utils@ppc64e6500
kmod@ppc64e6500 usdpaa-staticdev@b4860qds_64b util-linux@ppc64e6500
fm-ucode-image@ppc64e6500 dpa-offload-dev@b4860qds_64b
mtd-utils-jffs2@ppc64e6500 e2fsprogs-tune2fs@ppc64e6500
packagegroup-core-eclipse-debug@all libpixman-1-0@ppc64e6500 g++@ppc64e6500
gcov@ppc64e6500 dosfstools@ppc64e6500 libglib-2.0-0@ppc64e6500
e2fsprogs-e2fsck@ppc64e6500 packagegroup-fsl-core@all
packagegroup-fsl-extend@all packagegroup-core-boot@b4860qds_64b
packagegroup-core-full-cmdline@all sysklogd@ppc64e6500
merge-files@ppc64e6500 packagegroup-core-buildessential@all
rcw-image@b4860qds_64b usdpaa@b4860qds_64b packagegroup-core-nfs-server@all
hypervisor-partman@ppc64e6500 ceetm@b4860qds_64b
dpa-offload-staticdev@b4860qds_64b libc6-dev@ppc64e6500
usdpaa-dev@b4860qds_64b e2fsprogs-mke2fs@ppc64e6500 libgcov-dev@ppc64e6500
sysfsutils@ppc64e6500 qoriq-debug@b4860qds_64b mtd-utils-ubifs@ppc64e6500
kernel-image-3.12.37-rt51-qoriq-sdk-v1.8+gf488de6@b4860qds_64b
bash@ppc64e6500 gnuradio@ppc64e6500 libelf1@ppc64e6500 dtc@ppc64e6500
gdbserver@ppc64e6500 packagegroup-core-tools-debug@b4860qds_64b
hyperrelay@ppc64e6500 tcf-qoriqdbg@ppc64e6500 sysstat@ppc64e6500
fmc@b4860qds_64b e2fsprogs@ppc64e6500 net-tools@ppc64e6500 cpp@ppc64e6500
eglibc-utils@ppc64e6500 kernel-devicetree@b4860qds_64b binutils@ppc64e6500
u-boot-qoriq-images@b4860qds_64b libgcc1@lib32_ppce6500 gcc@lib32_ppce6500
libgcov-dev@lib32_ppce6500 libgcc-s-dev@lib32_ppce6500 g++@lib32_ppce6500
binutils@lib32_ppce6500 ldd@lib32_ppce6500 gcov@lib32_ppce6500
cpp@lib32_ppce6500 eglibc-utils@lib32_ppce6500 eglibc-dev@lib32_ppce6500'
returned 1:
Loading cache...
Updating cache...               ########################################
[100%]

Computing transaction...error: Can't install gnuradio-3.7.5-r0@ppc64e6500:
no package provides libvolk.so.0.0.0()(64bit)


ERROR: Function failed: do_rootfs
ERROR: Logfile of failure stored in:
/opt/Freescale/QorIQ-SDK-V1.8-20150619-yocto/build_bae-c2e-v2/tmp/work/b4860qds_64b-fsl-linux/fsl-image-full/1.0-r0/temp/log.do_rootfs.20153
ERROR: Task 7
(/opt/Freescale/QorIQ-SDK-V1.8-20150619-yocto/meta-fsl-networking/images/
fsl-image-full.bb, do_rootfs) failed with exit code '1'

--001a113cdf3690c9ea0537759157
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Is there someone who can explain how yocto check=
s these dependencies?=C2=A0 I need to debug this issue.<br><br></div>Thanks=
 ahead of time.<br></div>Y-<br><div><div><br>ERROR: Unable to install packa=
ges. Command &#39;/opt/Freescale/QorIQ-SDK-V1.8-20150619-yocto/build_bae-c2=
e-v2/tmp/sysroots/x86_64-linux/usr/bin/smart --data-dir=3D/opt/Freescale/Qo=
rIQ-SDK-V1.8-20150619-yocto/build_bae-c2e-v2/tmp/work/b4860qds_64b-fsl-linu=
x/fsl-image-full/1.0-r0/rootfs/var/lib/smart install -y libgcc1@ppc64e6500 =
gcc@ppc64e6500 libgcc-s-dev@ppc64e6500 run-postinsts@all usdpaa-apps-static=
dev@b4860qds_64b ldd@ppc64e6500 usdpaa-apps@b4860qds_64b packagegroup-core-=
ssh-openssh@all apptrk@ppc64e6500 asf@b4860qds_64b udev-extraconf@ppc64e650=
0 pme-tools@ppc64e6500 eth-config@ppc64e6500 openssh-sftp-server@ppc64e6500=
 mtd-utils@ppc64e6500 kmod@ppc64e6500 usdpaa-staticdev@b4860qds_64b util-li=
nux@ppc64e6500 fm-ucode-image@ppc64e6500 dpa-offload-dev@b4860qds_64b mtd-u=
tils-jffs2@ppc64e6500 e2fsprogs-tune2fs@ppc64e6500 packagegroup-core-eclips=
e-debug@all libpixman-1-0@ppc64e6500 g++@ppc64e6500 gcov@ppc64e6500 dosfsto=
ols@ppc64e6500 libglib-2.0-0@ppc64e6500 e2fsprogs-e2fsck@ppc64e6500 package=
group-fsl-core@all packagegroup-fsl-extend@all packagegroup-core-boot@b4860=
qds_64b packagegroup-core-full-cmdline@all sysklogd@ppc64e6500 merge-files@=
ppc64e6500 packagegroup-core-buildessential@all rcw-image@b4860qds_64b usdp=
aa@b4860qds_64b packagegroup-core-nfs-server@all hypervisor-partman@ppc64e6=
500 ceetm@b4860qds_64b dpa-offload-staticdev@b4860qds_64b libc6-dev@ppc64e6=
500 usdpaa-dev@b4860qds_64b e2fsprogs-mke2fs@ppc64e6500 libgcov-dev@ppc64e6=
500 sysfsutils@ppc64e6500 qoriq-debug@b4860qds_64b mtd-utils-ubifs@ppc64e65=
00 kernel-image-3.12.37-rt51-qoriq-sdk-v1.8+gf488de6@b4860qds_64b bash@ppc6=
4e6500 gnuradio@ppc64e6500 libelf1@ppc64e6500 dtc@ppc64e6500 gdbserver@ppc6=
4e6500 packagegroup-core-tools-debug@b4860qds_64b hyperrelay@ppc64e6500 tcf=
-qoriqdbg@ppc64e6500 sysstat@ppc64e6500 fmc@b4860qds_64b e2fsprogs@ppc64e65=
00 net-tools@ppc64e6500 cpp@ppc64e6500 eglibc-utils@ppc64e6500 kernel-devic=
etree@b4860qds_64b binutils@ppc64e6500 u-boot-qoriq-images@b4860qds_64b lib=
gcc1@lib32_ppce6500 gcc@lib32_ppce6500 libgcov-dev@lib32_ppce6500 libgcc-s-=
dev@lib32_ppce6500 g++@lib32_ppce6500 binutils@lib32_ppce6500 ldd@lib32_ppc=
e6500 gcov@lib32_ppce6500 cpp@lib32_ppce6500 eglibc-utils@lib32_ppce6500 eg=
libc-dev@lib32_ppce6500&#39; returned 1:<br>Loading cache...<br>Updating ca=
che...=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 ######################################## [100%]<br><br>Comp=
uting transaction...error: Can&#39;t install gnuradio-3.7.5-r0@ppc64e6500: =
no package provides libvolk.so.0.0.0()(64bit)<br><br><br>ERROR: Function fa=
iled: do_rootfs<br>ERROR: Logfile of failure stored in: /opt/Freescale/QorI=
Q-SDK-V1.8-20150619-yocto/build_bae-c2e-v2/tmp/work/b4860qds_64b-fsl-linux/=
fsl-image-full/1.0-r0/temp/log.do_rootfs.20153<br>ERROR: Task 7 (/opt/Frees=
cale/QorIQ-SDK-V1.8-20150619-yocto/meta-fsl-networking/images/<a href=3D"ht=
tp://fsl-image-full.bb">fsl-image-full.bb</a>, do_rootfs) failed with exit =
code &#39;1&#39;<br><br></div></div></div>

--001a113cdf3690c9ea0537759157--
