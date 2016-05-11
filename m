Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7E00E00D79; Wed, 11 May 2016 08:15:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [98.136.218.80 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (vaduvajanalexandru[at]yahoo.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm1-vm1.bullet.mail.gq1.yahoo.com
	(nm1-vm1.bullet.mail.gq1.yahoo.com [98.136.218.80])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81738E00CA1
	for <yocto@yoctoproject.org>; Wed, 11 May 2016 08:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1462979723; bh=mV5W2Wt7IwvNCXH7jkf5txCV7A9hhdUWSuKgakyjwSE=;
	h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject;
	b=trEEtoJYvBNhOmt4I7CvNM3xtbccTo66tQrg5Hl72qw7ZB+y3/OkILykRqHOOY00BQgyzmDjb5wx3WnIwzXRlTrgUIAF1WopkRPnpK5Je3akLElRk/N+g0Nnr0OleLj/0BPAIE9woby8ijVZ1IH0LUk0P1Ak3qZoWFaO4tkf0yeMxZz23gfVHmSX2oEm+UHKNG/pKIxQemHdaRgiAFEu/k6qtjvcy1QAxQvzYWnQM7VdqFGgITWvmup+eG3d5URNBJsmrExQkLUKCICCJ5PzFbg3Eh6r3GkPLHJIofUR1W4g7cVivm4qno4+l8DVSxjUiT9zBUdPF/R+CRbmN+RNiQ==
Received: from [98.137.12.59] by nm1.bullet.mail.gq1.yahoo.com with NNFMP;
	11 May 2016 15:15:23 -0000
Received: from [98.137.12.207] by tm4.bullet.mail.gq1.yahoo.com with NNFMP;
	11 May 2016 15:15:23 -0000
Received: from [127.0.0.1] by omp1015.mail.gq1.yahoo.com with NNFMP;
	11 May 2016 15:15:23 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 631894.263.bm@omp1015.mail.gq1.yahoo.com
X-YMail-OSG: REAvv1gVM1nZUV6Enrt_VTneDXQ2u9FVsdhMrQ0pSNR2dNmSzuCqv0Srlyw1NNy
	KXd6Jk9r0tWiCT.kSFfOxh2n.4EkiD3XhsoaxFq7Dl1M3l1T9L.ZoXqTU2MaVv2Tna.yFivpyeny
	.x0YvVEFl98B5Qi8lVnH5a5bICZa1tzBxwORvnMyE_Wt3HrOIL2OH1aea2TfyswMKlqQj3DHOy38
	shIPtGstCv1GY7pRzCCCG0DBMBPwpMehEWcg..pRG_X7zhdFXUlghNmH5D.ednPv5QgP4GPjNm7V
	nihjQwBosPs7DrCzMiCzBCgZAORznyQG8LKAQpO4TRJ_4GSCcXeanmD_I2Bgw2ha.4.8QHuXYwYh
	vXdj0UDUFEmRXFDlsScbMYXzRwXemj37kZ85TT5m1H2rhzEqqwQZlBqXvUQqOkaDHM1.Gz_O2eEl
	g_rObChhLxfqQVjbgIu5cHOsoJoQt3p8i3uccd3DEikQDT1LKGZcxRDJVHbld6DPwok47cGQ2lVJ
	NxC54sjK93x0u7sc-
Received: from jws10715.mail.gq1.yahoo.com by sendmailws147.mail.gq1.yahoo.com;
	Wed, 11 May 2016 15:15:23 +0000; 1462979723.054
Date: Wed, 11 May 2016 15:15:22 +0000 (UTC)
From: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
To: Adrian Dudau <adrian.dudau@enea.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1765661136.531886.1462979722629.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <1462874748-57412-1-git-send-email-adrian.dudau@enea.com>
References: <1462874748-57412-1-git-send-email-adrian.dudau@enea.com>
MIME-Version: 1.0
Subject: Re: [meta-cgl][PATCH 1/2] Added device manager multipath	support for root file system
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 11 May 2016 15:15:28 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_531885_1116036630.1462979722621"

------=_Part_531885_1116036630.1462979722621
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Adi,=C2=A0Cannot this two patches be redone by:=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 removingfro=
m =C2=A0"[PATCH 1/2] Added devicemanager multipath support for root file sy=
stem" the line "+IMAGE_CLASSES+=3D "image_types_uboot""=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 onlykeep=
ing in "[PATCH 2/2] distro: Move IMAGE_CLASSES inheritance" =C2=A0the line =
from " poky-cgl.conf".
Also this patch has both require and inherit and in myopinion the inherit l=
ine can be removed since the core-image-cgl also adds itindirectly.
Another objection for this patch is that it should be brokenin more pieces:=
 multipath, images, initrdscripts and conf_setup or in anotherformat. Havin=
g it like this is too big and in case of a revert too muchfunctionality cou=
ld be lost or replicated.=C2=A0=C2=A0Thanks,Alex V.=20

    On Tuesday, May 10, 2016 1:08 PM, Adrian Dudau <adrian.dudau@enea.com> =
wrote:
=20

 From: Mats Liljegren <mats.liljegren@enea.com>

This is implemented using an initramfs, built by core-image-cgl-initramfs i=
mage
recipe. Multipath device configurations are done using kernel boot paramete=
rs.
The multipath-root-howto.md explains how to use this.

Also note that the meta-cgl/scripts/conf_setup.sh will now also add a BBMAS=
K
entry to mask out the meta-virtualization's version of multipath-tools, sin=
ce
we need the newer recipe in the meta-openembedded/meta-oe instead.

Signed-off-by: Mats Liljegren <mats.liljegren@enea.com>
Signed-off-by: Adrian Dudau <adrian.dudau@enea.com>
---
 meta-cgl-common/images/core-image-cgl-initramfs.bb |=C2=A0 22 +++
 meta-cgl-common/images/core-image-cgl.bb=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 |=C2=A0 2 +
 .../packagegroups/packagegroup-cgl-middleware.bb=C2=A0 |=C2=A0 8 +-
 .../recipes-core/initrdscripts/files/init-boot.sh=C2=A0 | 179 ++++++++++++=
+++++++++
 .../initrdscripts/initramfs-cgl-boot_1.0.bb=C2=A0 =C2=A0 =C2=A0 =C2=A0 |=
=C2=A0 14 ++
 scripts/conf_setup.sh=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 2 +
 6 files changed, 220 insertions(+), 7 deletions(-)
 create mode 100644 meta-cgl-common/images/core-image-cgl-initramfs.bb
 create mode 100644 meta-cgl-common/recipes-core/initrdscripts/files/init-b=
oot.sh
 create mode 100644 meta-cgl-common/recipes-core/initrdscripts/initramfs-cg=
l-boot_1.0.bb
 create mode 100755 scripts/conf_setup.sh

diff --git a/meta-cgl-common/images/core-image-cgl-initramfs.bb b/meta-cgl-=
common/images/core-image-cgl-initramfs.bb
new file mode 100644
index 0000000..845fa07
--- /dev/null
+++ b/meta-cgl-common/images/core-image-cgl-initramfs.bb
@@ -0,0 +1,22 @@
+require core-image-cgl.bb
+
+# Recipe is based on core-image-minimal.bb
+DESCRIPTION =3D "Initramfs used to mount multipath device as root file sys=
tem"
+
+PACKAGE_INSTALL =3D "initramfs-cgl-boot busybox base-passwd udev ${ROOTFS_=
BOOTSTRAP_INSTALL}"
+
+# Do not pollute the initrd image with rootfs features
+IMAGE_FEATURES =3D ""
+
+export IMAGE_BASENAME =3D "core-image-cgl-initramfs"
+IMAGE_LINGUAS =3D ""
+
+LICENSE =3D "MIT"
+
+IMAGE_FSTYPES =3D "cpio.gz.u-boot"
+IMAGE_CLASSES +=3D "image_types_uboot"
+inherit core-image
+
+IMAGE_ROOTFS_SIZE =3D "8192"
+
+BAD_RECOMMENDATIONS +=3D "busybox-syslog"
diff --git a/meta-cgl-common/images/core-image-cgl.bb b/meta-cgl-common/ima=
ges/core-image-cgl.bb
index d12391b..5975601 100644
--- a/meta-cgl-common/images/core-image-cgl.bb
+++ b/meta-cgl-common/images/core-image-cgl.bb
@@ -21,6 +21,8 @@ IMAGE_INSTALL +=3D "\
=C2=A0 =C2=A0 kernel-modules \
=C2=A0 =C2=A0 "
=20
+IMAGE_FSTYPES +=3D " ext3.gz"
+
 # kexec-tools doesn't work on Mips
 KEXECTOOLS_mips ?=3D ""
 KEXECTOOLS_mipsel ?=3D ""
diff --git a/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb b=
/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
index 448e038..b0c2cac 100644
--- a/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
+++ b/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
@@ -18,14 +18,8 @@ DHCP =3D " \
=C2=A0 =C2=A0 "
=20
 MULTIPATH_TOOLS =3D " \
-=C2=A0 =C2=A0 libmpathpersist \
-=C2=A0 =C2=A0 mpathpersist \
+=C2=A0 =C2=A0 multipath-tools \
=C2=A0 =C2=A0 kpartx \
-=C2=A0 =C2=A0 libmultipath \
-=C2=A0 =C2=A0 multipath \
-=C2=A0 =C2=A0 multipathd \
-=C2=A0 =C2=A0 libmultipath-dev \
-=C2=A0 =C2=A0 libmpathpersist-dev \
=C2=A0 =C2=A0 "
=20
 RDEPENDS_packagegroup-cgl-middleware =3D "\
diff --git a/meta-cgl-common/recipes-core/initrdscripts/files/init-boot.sh =
b/meta-cgl-common/recipes-core/initrdscripts/files/init-boot.sh
new file mode 100644
index 0000000..fcadfc6
--- /dev/null
+++ b/meta-cgl-common/recipes-core/initrdscripts/files/init-boot.sh
@@ -0,0 +1,179 @@
+#!/bin/sh -eu
+
+# Fail function, either called explicitly or when shell will quit
+fail () {
+=C2=A0 =C2=A0 # Avoid recursive traps
+=C2=A0 =C2=A0 trap '' ERR EXIT
+
+=C2=A0 =C2=A0 # If message provided, print it
+=C2=A0 =C2=A0 [ -n '${1:-}' ] && echo $@
+
+=C2=A0 =C2=A0 # Generic error message and shell access
+=C2=A0 =C2=A0 echo "Error occured, giving a shell"
+=C2=A0 =C2=A0 exec sh
+}
+
+trap fail ERR EXIT
+
+interrupt () {
+=C2=A0 =C2=A0 echo "User interrupt received, giving a shell. When exiting =
shell, execution will continue."
+=C2=A0 =C2=A0 sh
+}
+
+trap interrupt INT
+
+# Find session ID for an iSCSI disk given its IQN name
+iqn_to_sid () {
+=C2=A0 =C2=A0 iscsiadm -m session | fgrep $1 | sed -r 's/.*\[([0-9])\].*/\=
1/'
+}
+
+# Find device name, without path, for an iSCSI disk given its IQN name
+iqn_to_dev () {
+=C2=A0 =C2=A0 iscsiadm -m session -r $(iqn_to_sid $1) -P3 | sed -rn 's/.*A=
ttached scsi disk ([a-zA-Z0-9_]+).*/\1/p'
+}
+
+# Parse input parameters expecting name=3Dvalue pairs.
+# Name only matches known parameters.
+# On match, set variable <name> to value <value>.
+# E.g. given "parse_cmdline trythis=3D"ok, do it"
+# the shell variable "trythis" will now have the value "ok, do it".
+parse_cmdline () {
+=C2=A0 =C2=A0 iscsi_chap_user=3D""
+=C2=A0 =C2=A0 iscsi_chap_pwd=3D""
+=C2=A0 =C2=A0 iscsi_dev=3D""
+=C2=A0 =C2=A0 iscsi_debug=3D0
+
+=C2=A0 =C2=A0 while [ -n "${1:-}" ]; do
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 name=3D"${1%%=3D*}"
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 val=3D"${1#*=3D}"
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 case $name in
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 iscsi_chap_user|iscsi_chap_pw)
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 eval $name=3D\"$va=
l\";;
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 iscsi_dev)
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 eval $name=3D\"$is=
csi_dev $val\"
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ;;
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 iscsi_debug)
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 set -x
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 iscsi_debug=3D1
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ;;
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 esac
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 shift
+=C2=A0 =C2=A0 done
+
+=C2=A0 =C2=A0 [ -n "${iscsi_dev}" ] || fail "Mandatory kernel boot paramet=
er 'iscsi_dev' not given."
+
+}
+
+PATH=3D/sbin:/bin:/usr/sbin:/usr/bin
+
+echo "Mounting /proc"
+mount -t proc proc /proc
+
+KERNEL_CMDLINE=3D"$(cat /proc/cmdline)"
+
+echo "Parsing kernel parameters"
+parse_cmdline $KERNEL_CMDLINE
+
+echo "Mounting /sys"
+mount -t sysfs sysfs /sys
+
+# udev is needed for multipath
+echo "Starting udev"
+/etc/init.d/udev start
+
+# Add CHAP autenthication, if given as kernel boot parameters
+echo "Configuring iSCSI"
+[ -n "$iscsi_chap_user" -o -n "$iscsi_chap_pw" ] && cat <<EOF >> /etc/iscs=
i/iscsid.conf
+node.session.auth.authmethod =3D CHAP
+EOF
+[ -n "$iscsi_chap_user" ] && cat <<EOF >> /etc/iscsi/iscsid.conf
+node.session.auth.username =3D $iscsi_chap_user
+EOF
+[ -n "$iscsi_chap_pw" ] && cat <<EOF >> /etc/iscsi/iscsid.conf
+node.session.auth.password =3D $iscsi_chap_pw
+EOF
+
+echo >> /etc/iscsi/iscsid.conf
+
+echo "Starting iSCSI daemon"
+/etc/init.d/iscsid restart
+
+echo "Discovering iSCSI devices"
+
+for dev in $iscsi_dev; do
+=C2=A0 =C2=A0 target_ip=3D"${dev%%:*}"
+=C2=A0 =C2=A0 dev_name=3D"${dev#*:}"
+=C2=A0 =C2=A0 echo "Logging in to iscsi devices: $dev_name, target: $targe=
t_ip"
+=C2=A0 =C2=A0 iscsiadm --mode discoverydb --type sendtargets --discover --=
portal $target_ip
+=C2=A0 =C2=A0 iscsiadm --mode node --targetname $dev_name --login --portal=
 $target_ip
+done
+
+echo "Configuring multipath"
+cat <<EOF > /etc/multipath.conf
+defaults {
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 path_grouping_policy=C2=A0 =C2=A0 multibus
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 # If no path, then queue requests
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 no_path_retry queue
+}
+devices {
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 device {
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 vendor=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 IET
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 product=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 VIRTUAL-DISK
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 path_grouping_poli=
cy=C2=A0 =C2=A0 multibus
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 }
+}
+blacklist {
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 devnode ".*"
+}
+blacklist_exceptions {
+$(for dev in $iscsi_dev; do
+=C2=A0 =C2=A0 echo "=C2=A0 =C2=A0 =C2=A0 =C2=A0 devnode=C2=A0 \"^$(iqn_to_=
dev ${dev#*:})\""
+=C2=A0 done)
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 property=C2=A0 ".*"
+}
+EOF
+
+echo "Starting multipath daemon"
+# Make sure lock file directory exists
+mkdir -p /var/lock/subsys/multipathd
+/etc/init.d/multipathd start
+
+mpath_template=3D'/dev/disk/by-id/dm-uuid-mpath-*'
+
+echo "Waiting for mpath device to appear"
+while [ -z "$(ls $mpath_template 2>/dev/null)" ]; do
+=C2=A0 =C2=A0 sleep 1
+done
+MPATH_DEV=3D"$(ls $mpath_template)"
+echo "mpath device: $MPATH_DEV"
+
+echo "Mounting mpath device $MPATH_DEV"
+mount $MPATH_DEV /mnt
+
+echo "Stopping multipath daemon"
+# Should be using "/etc/init.d/multipathd stop", but did not work.
+# Got "killall: /sbin/multipathd: no process killed".
+# Kill the process based on the saved pid.
+kill $(cat /run/multipathd.pid)
+
+echo "Moving iscsi pid and lock files"
+cp /run/iscsid.pid /mnt/run/iscsid.pid
+cp /run/lock/iscsi/* /mnt/run/lock/iscsi
+
+# In case iscsi_debug is given, open a shell at this point
+if [ $iscsi_debug -eq 1 ]; then
+=C2=A0 =C2=A0 echo "iscsi_debug given, opening a shell. When exiting shell=
, boot will continue."
+=C2=A0 =C2=A0 sh
+fi
+
+# udev needs to be restart when real init runs, so stop it
+echo "Stopping udev"
+/etc/init.d/udev stop
+
+echo "Moving sys, proc and dev mounts to new root"
+mount --move /sys /mnt/sys
+mount --move /proc /mnt/proc
+mount --move /dev /mnt/dev
+
+echo "Switching to new root"
+exec switch_root /mnt /sbin/init $KERNEL_CMDLINE
diff --git a/meta-cgl-common/recipes-core/initrdscripts/initramfs-cgl-boot_=
1.0.bb b/meta-cgl-common/recipes-core/initrdscripts/initramfs-cgl-boot_1.0.=
bb
new file mode 100644
index 0000000..5265bf0
--- /dev/null
+++ b/meta-cgl-common/recipes-core/initrdscripts/initramfs-cgl-boot_1.0.bb
@@ -0,0 +1,14 @@
+SUMMARY =3D "Support for having multipath iSCSI devices as root file syste=
m"
+LICENSE =3D "MIT"
+LIC_FILES_CHKSUM =3D "file://${COREBASE}/meta-cgl/COPYING.MIT;md5=3D838c36=
6f69b72c5df05c96dff79b35f2"
+SRC_URI =3D "file://init-boot.sh"
+
+do_install() {
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -m 0755 ${WORKDIR}/init-boot.sh ${D}/i=
nit
+}
+
+inherit allarch
+
+RDEPENDS_${PN} +=3D "multipath-tools kpartx iscsi-initiator-utils"
+
+FILES_${PN} +=3D " /init "
diff --git a/scripts/conf_setup.sh b/scripts/conf_setup.sh
new file mode 100755
index 0000000..aad8e71
--- /dev/null
+++ b/scripts/conf_setup.sh
@@ -0,0 +1,2 @@
+#!/bin/bash
+echo -e '\nBBMASK =3D "meta-virtualization/recipes-extended/multipath-tool=
s/multipath-tools_git.bb"' >> conf/local.conf
--=20
1.9.1

--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


  

------=_Part_531885_1116036630.1462979722621
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, =
sans-serif;font-size:12px"><div id=3D"yui_3_16_0_ym19_1_1462867835057_75584=
">Hello Adi,</div>

<div id=3D"yui_3_16_0_ym19_1_1462867835057_75585">&nbsp;</div>

<div id=3D"yui_3_16_0_ym19_1_1462867835057_75586">Cannot this two patches b=
e redone by:</div>

<div id=3D"yui_3_16_0_ym19_1_1462867835057_75587"><span id=3D"yui_3_16_0_ym=
19_1_1462867835057_75588" style=3D"mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>removi=
ng
from <span id=3D"yui_3_16_0_ym19_1_1462867835057_75589" style=3D"mso-spacer=
un:yes">&nbsp;</span>"[PATCH 1/2] Added device
manager multipath support for root file system" the line "+IMAGE_CLASSES
+=3D "image_types_uboot""</div>

<div id=3D"yui_3_16_0_ym19_1_1462867835057_75590"><span id=3D"yui_3_16_0_ym=
19_1_1462867835057_75591" style=3D"mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>only
keeping in "[PATCH 2/2] distro: Move IMAGE_CLASSES inheritance" <span id=3D=
"yui_3_16_0_ym19_1_1462867835057_75592" style=3D"mso-spacerun:yes">&nbsp;</=
span>the line from " poky-cgl.conf".</div><div id=3D"yui_3_16_0_ym19_1_1462=
867835057_75635"><br></div>

<div id=3D"yui_3_16_0_ym19_1_1462867835057_75593">Also this patch has both =
require and inherit and in my
opinion the inherit line can be removed since the core-image-cgl also adds =
it
indirectly.</div><div id=3D"yui_3_16_0_ym19_1_1462867835057_75636"><br></di=
v>

<div id=3D"yui_3_16_0_ym19_1_1462867835057_75594">Another objection for thi=
s patch is that it should be broken
in more pieces: multipath, images, initrdscripts and conf_setup or in anoth=
er
format. Having it like this is too big and in case of a revert too much
functionality could be lost or replicated.</div>

<div id=3D"yui_3_16_0_ym19_1_1462867835057_75595">&nbsp;</div>

<div id=3D"yui_3_16_0_ym19_1_1462867835057_75596">&nbsp;</div>

<div id=3D"yui_3_16_0_ym19_1_1462867835057_75597">Thanks,</div>

<div id=3D"yui_3_16_0_ym19_1_1462867835057_75598">Alex V.</div><div dir=3D"=
ltr">

 </div><div class=3D"qtdSeparateBR"><br><br></div><div style=3D"display: bl=
ock;" class=3D"yahoo_quoted"> <div style=3D"font-family: HelveticaNeue, Hel=
vetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size: 12px;"=
> <div style=3D"font-family: HelveticaNeue, Helvetica Neue, Helvetica, Aria=
l, Lucida Grande, sans-serif; font-size: 16px;"> <div dir=3D"ltr"><font fac=
e=3D"Arial" size=3D"2"> On Tuesday, May 10, 2016 1:08 PM, Adrian Dudau &lt;=
adrian.dudau@enea.com&gt; wrote:<br></font></div>  <br><br> <div class=3D"y=
_msg_container">From: Mats Liljegren &lt;<a ymailto=3D"mailto:mats.liljegre=
n@enea.com" href=3D"mailto:mats.liljegren@enea.com">mats.liljegren@enea.com=
</a>&gt;<br><br>This is implemented using an initramfs, built by core-image=
-cgl-initramfs image<br>recipe. Multipath device configurations are done us=
ing kernel boot parameters.<br>The multipath-root-howto.md explains how to =
use this.<br><br>Also note that the meta-cgl/scripts/conf_setup.sh will now=
 also add a BBMASK<br>entry to mask out the meta-virtualization's version o=
f multipath-tools, since<br>we need the newer recipe in the meta-openembedd=
ed/meta-oe instead.<br><br>Signed-off-by: Mats Liljegren &lt;<a ymailto=3D"=
mailto:mats.liljegren@enea.com" href=3D"mailto:mats.liljegren@enea.com">mat=
s.liljegren@enea.com</a>&gt;<br>Signed-off-by: Adrian Dudau &lt;<a ymailto=
=3D"mailto:adrian.dudau@enea.com" href=3D"mailto:adrian.dudau@enea.com">adr=
ian.dudau@enea.com</a>&gt;<br>---<br> meta-cgl-common/images/core-image-cgl=
-initramfs.bb |&nbsp; 22 +++<br> meta-cgl-common/images/core-image-cgl.bb&n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp;  |&nbsp;  2 +<br> .../packagegroups/packag=
egroup-cgl-middleware.bb&nbsp;  |&nbsp;  8 +-<br> .../recipes-core/initrdsc=
ripts/files/init-boot.sh&nbsp; | 179 +++++++++++++++++++++<br> .../initrdsc=
ripts/initramfs-cgl-boot_1.0.bb&nbsp; &nbsp; &nbsp; &nbsp; |&nbsp; 14 ++<br=
> scripts/conf_setup.sh&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |&nbsp;  2 +<br> 6 fil=
es changed, 220 insertions(+), 7 deletions(-)<br> create mode 100644 meta-c=
gl-common/images/core-image-cgl-initramfs.bb<br> create mode 100644 meta-cg=
l-common/recipes-core/initrdscripts/files/init-boot.sh<br> create mode 1006=
44 meta-cgl-common/recipes-core/initrdscripts/initramfs-cgl-boot_1.0.bb<br>=
 create mode 100755 scripts/conf_setup.sh<br><br>diff --git a/meta-cgl-comm=
on/images/core-image-cgl-initramfs.bb b/meta-cgl-common/images/core-image-c=
gl-initramfs.bb<br>new file mode 100644<br>index 0000000..845fa07<br>--- /d=
ev/null<br>+++ b/meta-cgl-common/images/core-image-cgl-initramfs.bb<br>@@ -=
0,0 +1,22 @@<br>+require core-image-cgl.bb<br>+<br>+# Recipe is based on co=
re-image-minimal.bb<br>+DESCRIPTION =3D "Initramfs used to mount multipath =
device as root file system"<br>+<br>+PACKAGE_INSTALL =3D "initramfs-cgl-boo=
t busybox base-passwd udev ${ROOTFS_BOOTSTRAP_INSTALL}"<br>+<br>+# Do not p=
ollute the initrd image with rootfs features<br>+IMAGE_FEATURES =3D ""<br>+=
<br>+export IMAGE_BASENAME =3D "core-image-cgl-initramfs"<br>+IMAGE_LINGUAS=
 =3D ""<br>+<br>+LICENSE =3D "MIT"<br>+<br>+IMAGE_FSTYPES =3D "cpio.gz.u-bo=
ot"<br>+IMAGE_CLASSES +=3D "image_types_uboot"<br>+inherit core-image<br>+<=
br>+IMAGE_ROOTFS_SIZE =3D "8192"<br>+<br>+BAD_RECOMMENDATIONS +=3D "busybox=
-syslog"<br>diff --git a/meta-cgl-common/images/core-image-cgl.bb b/meta-cg=
l-common/images/core-image-cgl.bb<br>index d12391b..5975601 100644<br>--- a=
/meta-cgl-common/images/core-image-cgl.bb<br>+++ b/meta-cgl-common/images/c=
ore-image-cgl.bb<br>@@ -21,6 +21,8 @@ IMAGE_INSTALL +=3D "\<br>&nbsp; &nbsp=
;  kernel-modules \<br>&nbsp; &nbsp;  "<br> <br>+IMAGE_FSTYPES +=3D " ext3.=
gz"<br>+<br> # kexec-tools doesn't work on Mips<br> KEXECTOOLS_mips ?=3D ""=
<br> KEXECTOOLS_mipsel ?=3D ""<br>diff --git a/meta-cgl-common/packagegroup=
s/packagegroup-cgl-middleware.bb b/meta-cgl-common/packagegroups/packagegro=
up-cgl-middleware.bb<br>index 448e038..b0c2cac 100644<br>--- a/meta-cgl-com=
mon/packagegroups/packagegroup-cgl-middleware.bb<br>+++ b/meta-cgl-common/p=
ackagegroups/packagegroup-cgl-middleware.bb<br>@@ -18,14 +18,8 @@ DHCP =3D =
" \<br>&nbsp; &nbsp;  "<br> <br> MULTIPATH_TOOLS =3D " \<br>-&nbsp; &nbsp; =
libmpathpersist \<br>-&nbsp; &nbsp; mpathpersist \<br>+&nbsp; &nbsp; multip=
ath-tools \<br>&nbsp; &nbsp;  kpartx \<br>-&nbsp; &nbsp; libmultipath \<br>=
-&nbsp; &nbsp; multipath \<br>-&nbsp; &nbsp; multipathd \<br>-&nbsp; &nbsp;=
 libmultipath-dev \<br>-&nbsp; &nbsp; libmpathpersist-dev \<br>&nbsp; &nbsp=
;  "<br> <br> RDEPENDS_packagegroup-cgl-middleware =3D "\<br>diff --git a/m=
eta-cgl-common/recipes-core/initrdscripts/files/init-boot.sh b/meta-cgl-com=
mon/recipes-core/initrdscripts/files/init-boot.sh<br>new file mode 100644<b=
r>index 0000000..fcadfc6<br>--- /dev/null<br>+++ b/meta-cgl-common/recipes-=
core/initrdscripts/files/init-boot.sh<br>@@ -0,0 +1,179 @@<br>+#!/bin/sh -e=
u<br>+<br>+# Fail function, either called explicitly or when shell will qui=
t<br>+fail () {<br>+&nbsp; &nbsp; # Avoid recursive traps<br>+&nbsp; &nbsp;=
 trap '' ERR EXIT<br>+<br>+&nbsp; &nbsp; # If message provided, print it<br=
>+&nbsp; &nbsp; [ -n '${1:-}' ] &amp;&amp; echo $@<br>+<br>+&nbsp; &nbsp; #=
 Generic error message and shell access<br>+&nbsp; &nbsp; echo "Error occur=
ed, giving a shell"<br>+&nbsp; &nbsp; exec sh<br>+}<br>+<br>+trap fail ERR =
EXIT<br>+<br>+interrupt () {<br>+&nbsp; &nbsp; echo "User interrupt receive=
d, giving a shell. When exiting shell, execution will continue."<br>+&nbsp;=
 &nbsp; sh<br>+}<br>+<br>+trap interrupt INT<br>+<br>+# Find session ID for=
 an iSCSI disk given its IQN name<br>+iqn_to_sid () {<br>+&nbsp; &nbsp; isc=
siadm -m session | fgrep $1 | sed -r 's/.*\[([0-9])\].*/\1/'<br>+}<br>+<br>=
+# Find device name, without path, for an iSCSI disk given its IQN name<br>=
+iqn_to_dev () {<br>+&nbsp; &nbsp; iscsiadm -m session -r $(iqn_to_sid $1) =
-P3 | sed -rn 's/.*Attached scsi disk ([a-zA-Z0-9_]+).*/\1/p'<br>+}<br>+<br=
>+# Parse input parameters expecting name=3Dvalue pairs.<br>+# Name only ma=
tches known parameters.<br>+# On match, set variable &lt;name&gt; to value =
&lt;value&gt;.<br>+# E.g. given "parse_cmdline trythis=3D"ok, do it"<br>+# =
the shell variable "trythis" will now have the value "ok, do it".<br>+parse=
_cmdline () {<br>+&nbsp; &nbsp; iscsi_chap_user=3D""<br>+&nbsp; &nbsp; iscs=
i_chap_pwd=3D""<br>+&nbsp; &nbsp; iscsi_dev=3D""<br>+&nbsp; &nbsp; iscsi_de=
bug=3D0<br>+<br>+&nbsp; &nbsp; while [ -n "${1:-}" ]; do<br>+&nbsp; &nbsp; =
&nbsp; &nbsp; name=3D"${1%%=3D*}"<br>+&nbsp; &nbsp; &nbsp; &nbsp; val=3D"${=
1#*=3D}"<br>+&nbsp; &nbsp; &nbsp; &nbsp; case $name in<br>+&nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; iscsi_chap_user|iscsi_chap_pw)<br>+&nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; eval $name=3D\"$val\";;<br>+&nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; iscsi_dev)<br>+&nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; eval $name=3D\"$iscsi_dev $val\"<br>+&nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ;;<br>+&nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; iscsi_debug)<br>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; set -x<br>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; iscsi_debug=3D1<br>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; ;;<br>+&nbsp; &nbsp; &nbsp; &nbsp; esac<br>+&nbsp; &nbsp; &=
nbsp; &nbsp; shift<br>+&nbsp; &nbsp; done<br>+<br>+&nbsp; &nbsp; [ -n "${is=
csi_dev}" ] || fail "Mandatory kernel boot parameter 'iscsi_dev' not given.=
"<br>+<br>+}<br>+<br>+PATH=3D/sbin:/bin:/usr/sbin:/usr/bin<br>+<br>+echo "M=
ounting /proc"<br>+mount -t proc proc /proc<br>+<br>+KERNEL_CMDLINE=3D"$(ca=
t /proc/cmdline)"<br>+<br>+echo "Parsing kernel parameters"<br>+parse_cmdli=
ne $KERNEL_CMDLINE<br>+<br>+echo "Mounting /sys"<br>+mount -t sysfs sysfs /=
sys<br>+<br>+# udev is needed for multipath<br>+echo "Starting udev"<br>+/e=
tc/init.d/udev start<br>+<br>+# Add CHAP autenthication, if given as kernel=
 boot parameters<br>+echo "Configuring iSCSI"<br>+[ -n "$iscsi_chap_user" -=
o -n "$iscsi_chap_pw" ] &amp;&amp; cat &lt;&lt;EOF &gt;&gt; /etc/iscsi/iscs=
id.conf<br>+node.session.auth.authmethod =3D CHAP<br>+EOF<br>+[ -n "$iscsi_=
chap_user" ] &amp;&amp; cat &lt;&lt;EOF &gt;&gt; /etc/iscsi/iscsid.conf<br>=
+node.session.auth.username =3D $iscsi_chap_user<br>+EOF<br>+[ -n "$iscsi_c=
hap_pw" ] &amp;&amp; cat &lt;&lt;EOF &gt;&gt; /etc/iscsi/iscsid.conf<br>+no=
de.session.auth.password =3D $iscsi_chap_pw<br>+EOF<br>+<br>+echo &gt;&gt; =
/etc/iscsi/iscsid.conf<br>+<br>+echo "Starting iSCSI daemon"<br>+/etc/init.=
d/iscsid restart<br>+<br>+echo "Discovering iSCSI devices"<br>+<br>+for dev=
 in $iscsi_dev; do<br>+&nbsp; &nbsp; target_ip=3D"${dev%%:*}"<br>+&nbsp; &n=
bsp; dev_name=3D"${dev#*:}"<br>+&nbsp; &nbsp; echo "Logging in to iscsi dev=
ices: $dev_name, target: $target_ip"<br>+&nbsp; &nbsp; iscsiadm --mode disc=
overydb --type sendtargets --discover --portal $target_ip<br>+&nbsp; &nbsp;=
 iscsiadm --mode node --targetname $dev_name --login --portal $target_ip<br=
>+done<br>+<br>+echo "Configuring multipath"<br>+cat &lt;&lt;EOF &gt; /etc/=
multipath.conf<br>+defaults {<br>+&nbsp; &nbsp; &nbsp; &nbsp; path_grouping=
_policy&nbsp; &nbsp; multibus<br>+&nbsp; &nbsp; &nbsp; &nbsp; # If no path,=
 then queue requests<br>+&nbsp; &nbsp; &nbsp; &nbsp; no_path_retry queue<br=
>+}<br>+devices {<br>+&nbsp; &nbsp; &nbsp; &nbsp; device {<br>+&nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; vendor&nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; IET<br>+&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; product&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;  VIRTUAL-DISK<br>+&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; path_grouping_policy&nbsp; &nbsp; multibus<br>+&nbsp; &nbsp; =
&nbsp; &nbsp; }<br>+}<br>+blacklist {<br>+&nbsp; &nbsp; &nbsp; &nbsp; devno=
de ".*"<br>+}<br>+blacklist_exceptions {<br>+$(for dev in $iscsi_dev; do<br=
>+&nbsp; &nbsp; echo "&nbsp; &nbsp; &nbsp; &nbsp; devnode&nbsp;  \"^$(iqn_t=
o_dev ${dev#*:})\""<br>+&nbsp; done)<br>+&nbsp; &nbsp; &nbsp; &nbsp; proper=
ty&nbsp; ".*"<br>+}<br>+EOF<br>+<br>+echo "Starting multipath daemon"<br>+#=
 Make sure lock file directory exists<br>+mkdir -p /var/lock/subsys/multipa=
thd<br>+/etc/init.d/multipathd start<br>+<br>+mpath_template=3D'/dev/disk/b=
y-id/dm-uuid-mpath-*'<br>+<br>+echo "Waiting for mpath device to appear"<br=
>+while [ -z "$(ls $mpath_template 2&gt;/dev/null)" ]; do<br>+&nbsp; &nbsp;=
 sleep 1<br>+done<br>+MPATH_DEV=3D"$(ls $mpath_template)"<br>+echo "mpath d=
evice: $MPATH_DEV"<br>+<br>+echo "Mounting mpath device $MPATH_DEV"<br>+mou=
nt $MPATH_DEV /mnt<br>+<br>+echo "Stopping multipath daemon"<br>+# Should b=
e using "/etc/init.d/multipathd stop", but did not work.<br>+# Got "killall=
: /sbin/multipathd: no process killed".<br>+# Kill the process based on the=
 saved pid.<br>+kill $(cat /run/multipathd.pid)<br>+<br>+echo "Moving iscsi=
 pid and lock files"<br>+cp /run/iscsid.pid /mnt/run/iscsid.pid<br>+cp /run=
/lock/iscsi/* /mnt/run/lock/iscsi<br>+<br>+# In case iscsi_debug is given, =
open a shell at this point<br>+if [ $iscsi_debug -eq 1 ]; then<br>+&nbsp; &=
nbsp; echo "iscsi_debug given, opening a shell. When exiting shell, boot wi=
ll continue."<br>+&nbsp; &nbsp; sh<br>+fi<br>+<br>+# udev needs to be resta=
rt when real init runs, so stop it<br>+echo "Stopping udev"<br>+/etc/init.d=
/udev stop<br>+<br>+echo "Moving sys, proc and dev mounts to new root"<br>+=
mount --move /sys /mnt/sys<br>+mount --move /proc /mnt/proc<br>+mount --mov=
e /dev /mnt/dev<br>+<br>+echo "Switching to new root"<br>+exec switch_root =
/mnt /sbin/init $KERNEL_CMDLINE<br>diff --git a/meta-cgl-common/recipes-cor=
e/initrdscripts/initramfs-cgl-boot_1.0.bb b/meta-cgl-common/recipes-core/in=
itrdscripts/initramfs-cgl-boot_1.0.bb<br>new file mode 100644<br>index 0000=
000..5265bf0<br>--- /dev/null<br>+++ b/meta-cgl-common/recipes-core/initrds=
cripts/initramfs-cgl-boot_1.0.bb<br>@@ -0,0 +1,14 @@<br>+SUMMARY =3D "Suppo=
rt for having multipath iSCSI devices as root file system"<br>+LICENSE =3D =
"MIT"<br>+LIC_FILES_CHKSUM =3D "file://${COREBASE}/meta-cgl/COPYING.MIT;md5=
=3D838c366f69b72c5df05c96dff79b35f2"<br>+SRC_URI =3D "file://init-boot.sh"<=
br>+<br>+do_install() {<br>+&nbsp; &nbsp; &nbsp; &nbsp; install -m 0755 ${W=
ORKDIR}/init-boot.sh ${D}/init<br>+}<br>+<br>+inherit allarch<br>+<br>+RDEP=
ENDS_${PN} +=3D "multipath-tools kpartx iscsi-initiator-utils"<br>+<br>+FIL=
ES_${PN} +=3D " /init "<br>diff --git a/scripts/conf_setup.sh b/scripts/con=
f_setup.sh<br>new file mode 100755<br>index 0000000..aad8e71<br>--- /dev/nu=
ll<br>+++ b/scripts/conf_setup.sh<br>@@ -0,0 +1,2 @@<br>+#!/bin/bash<br>+ec=
ho -e '\nBBMASK =3D "meta-virtualization/recipes-extended/multipath-tools/m=
ultipath-tools_git.bb"' &gt;&gt; conf/local.conf<br>-- <br>1.9.1<br><br>-- =
<br>_______________________________________________<br>yocto mailing list<b=
r><a ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto@yoctopr=
oject.org">yocto@yoctoproject.org</a><br><a href=3D"https://lists.yoctoproj=
ect.org/listinfo/yocto" target=3D"_blank">https://lists.yoctoproject.org/li=
stinfo/yocto</a><br><br><br></div>  </div> </div>  </div></div></body></htm=
l>

------=_Part_531885_1116036630.1462979722621--
