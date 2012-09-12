Return-Path: <B19537@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe001.messaging.microsoft.com [216.32.181.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72D29E01495
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2012 23:50:18 -0700 (PDT)
Received: from mail221-ch1-R.bigfish.com (10.43.68.226) by
	CH1EHSOBE012.bigfish.com (10.43.70.62) with Microsoft SMTP Server id
	14.1.225.23; Wed, 12 Sep 2012 06:50:17 +0000
Received: from mail221-ch1 (localhost [127.0.0.1])	by
	mail221-ch1-R.bigfish.com (Postfix) with ESMTP id E82704030B	for
	<yocto@yoctoproject.org>; Wed, 12 Sep 2012 06:50:17 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: 0
X-BigFish: VS0(zzc89bhzz1202h1d1ah1d2ahzz8275bhz2dh2a8h668h839h93fhd24he5bhf0ah107ah1288h12a5h12a9h12bdh1155h)
Received: from mail221-ch1 (localhost.localdomain [127.0.0.1]) by mail221-ch1
	(MessageSwitch) id 1347432615681303_18478;
	Wed, 12 Sep 2012 06:50:15 +0000 (UTC)
Received: from CH1EHSMHS018.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.250])	by mail221-ch1.bigfish.com (Postfix) with ESMTP id
	A4DA5320066	for <yocto@yoctoproject.org>;
	Wed, 12 Sep 2012 06:50:15 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS018.bigfish.com
	(10.43.70.18) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 12 Sep 2012 06:50:13 +0000
Received: from tx30smr01.am.freescale.net (10.81.153.31) by
	039-SN1MMR1-004.039d.mgd.msft.net (10.84.1.14) with Microsoft SMTP
	Server (TLS) id 14.2.309.3; Wed, 12 Sep 2012 01:50:12 -0500
Received: from bjsimics-desktop.ap.freescale.net
	(bjsimics-desktop-010192208197.ap.freescale.net [10.192.208.197])	by
	tx30smr01.am.freescale.net (8.14.3/8.14.0) with ESMTP id q8C6nUQY025013;
	Tue, 11 Sep 2012 23:50:09 -0700
From: <b19537@freescale.com>
To: <yocto@yoctoproject.org>
Date: Wed, 12 Sep 2012 15:06:30 +0800
Message-ID: <1347433590-8481-16-git-send-email-b19537@freescale.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1347433590-8481-1-git-send-email-b19537@freescale.com>
References: <1347433590-8481-1-git-send-email-b19537@freescale.com>
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: Chunrong Guo <b40290@freescale.com>
Subject: [meta-fsl-ppc 16/16] udev: do not automount block devices
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
X-List-Received-Date: Wed, 12 Sep 2012 06:50:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

From: Chunrong Guo <b40290@freescale.com>

    kernel can=E2=80=99t boot up with extend partition in HDD
    FILESEXTRAPATHS_prepend is the right variable to extend file search p=
ath

Signed-off-by: Chunrong Guo <b40290@freescale.com>
Signed-off-by: Zhenhua Luo <b19537@freescale.com>
---
 recipes-append/udev/files/local.rules |    4 +++-
 recipes-append/udev/udev_164.bbappend |    4 ++--
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/recipes-append/udev/files/local.rules b/recipes-append/udev/=
files/local.rules
index 9c134ef..0b6cfef 100644
--- a/recipes-append/udev/files/local.rules
+++ b/recipes-append/udev/files/local.rules
@@ -15,6 +15,8 @@
=20
 KERNEL=3D=3D"nbd*", GOTO=3D"persistent_storage_end"
=20
+SUBSYSTEM=3D=3D"block", ENV{DEVTYPE}=3D=3D"partition" ,GOTO=3D"nomountbl=
ock"
+
 # Media automounting
 SUBSYSTEM=3D=3D"block", ACTION=3D=3D"add"    RUN+=3D"/etc/udev/scripts/m=
ount.sh"
 SUBSYSTEM=3D=3D"block", ACTION=3D=3D"remove" RUN+=3D"/etc/udev/scripts/m=
ount.sh"
@@ -36,4 +38,4 @@ ACTION=3D=3D"add", DEVPATH=3D=3D"/devices/*", ENV{MODAL=
IAS}=3D=3D"?*", RUN+=3D"/sbin/modprobe
 SUBSYSTEM=3D=3D"input", KERNEL=3D=3D"event[0-9]*", ATTRS{modalias}=3D=3D=
"input:*-e0*,3,*a0,1,*18,*", SYMLINK+=3D"input/touchscreen0"
=20
 LABEL=3D"persistent_storage_end"
-
+LABEL=3D"nomountblock"
diff --git a/recipes-append/udev/udev_164.bbappend b/recipes-append/udev/=
udev_164.bbappend
index 7277e47..bff4689 100644
--- a/recipes-append/udev/udev_164.bbappend
+++ b/recipes-append/udev/udev_164.bbappend
@@ -1,4 +1,4 @@
-FILEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
+FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
=20
-PR .=3D "+${DISTRO}.0"
+PR .=3D "+${DISTRO}.1"
=20
--=20
1.7.9.5



