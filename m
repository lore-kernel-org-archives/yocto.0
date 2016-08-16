Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6AC76E00DFC; Mon, 15 Aug 2016 20:22:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9C86E00DFC
	for <yocto@yoctoproject.org>; Mon, 15 Aug 2016 20:22:31 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u7G3MTxY028262
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 15 Aug 2016 20:22:29 -0700 (PDT)
Received: from pek-hostel-deb02.wrs.com (128.224.153.152) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.248.2; Mon, 15 Aug 2016 20:22:28 -0700
From: <kai.kang@windriver.com>
To: <bruce.ashfield@windriver.com>
Date: Tue, 16 Aug 2016 11:21:35 +0800
Message-ID: <20160816032135.26626-1-kai.kang@windriver.com>
X-Mailer: git-send-email 2.9.3
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [meta-virtualization][PATCH] libvirt: fix CVE-2016-5008
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
X-List-Received-Date: Tue, 16 Aug 2016 03:22:34 -0000
Content-Type: text/plain

From: Kai Kang <kai.kang@windriver.com>

Backport patch to fix CVE-2016-5008 from:

https://libvirt.org/git/?p=libvirt.git;a=commit;h=f32441c

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 ...pty-default-VNC-password-work-as-document.patch | 81 ++++++++++++++++++++++
 recipes-extended/libvirt/libvirt_1.3.5.bb          |  1 +
 2 files changed, 82 insertions(+)
 create mode 100644 recipes-extended/libvirt/libvirt-1.3.5/0001-qemu-Let-empty-default-VNC-password-work-as-document.patch

diff --git a/recipes-extended/libvirt/libvirt-1.3.5/0001-qemu-Let-empty-default-VNC-password-work-as-document.patch b/recipes-extended/libvirt/libvirt-1.3.5/0001-qemu-Let-empty-default-VNC-password-work-as-document.patch
new file mode 100644
index 0000000..1d13dd3
--- /dev/null
+++ b/recipes-extended/libvirt/libvirt-1.3.5/0001-qemu-Let-empty-default-VNC-password-work-as-document.patch
@@ -0,0 +1,81 @@
+Upstream-Status: Backport
+
+Backport patch to fix CVE-2016-5008 from:
+
+https://libvirt.org/git/?p=libvirt.git;a=commit;h=f32441c69bf450d6ac593c3acd621c37e120cdaf
+
+Signed-off-by: Kai Kang <kai.kang@windriver.com>
+---
+From f32441c69bf450d6ac593c3acd621c37e120cdaf Mon Sep 17 00:00:00 2001
+From: Jiri Denemark <jdenemar@redhat.com>
+Date: Tue, 28 Jun 2016 14:39:58 +0200
+Subject: [PATCH] qemu: Let empty default VNC password work as documented
+
+CVE-2016-5008
+
+Setting an empty graphics password is documented as a way to disable
+VNC/SPICE access, but QEMU does not always behaves like that. VNC would
+happily accept the empty password. Let's enforce the behavior by setting
+password expiration to "now".
+
+https://bugzilla.redhat.com/show_bug.cgi?id=1180092
+
+Signed-off-by: Jiri Denemark <jdenemar@redhat.com>
+(cherry picked from commit bb848feec0f3f10e92dd8e5231ae7aa89b5598f3)
+---
+ src/qemu/qemu_hotplug.c | 14 +++++++-------
+ 1 file changed, 7 insertions(+), 7 deletions(-)
+
+diff --git a/src/qemu/qemu_hotplug.c b/src/qemu/qemu_hotplug.c
+index 5f12d77..fda28b0 100644
+--- a/src/qemu/qemu_hotplug.c
++++ b/src/qemu/qemu_hotplug.c
+@@ -3547,6 +3547,7 @@ qemuDomainChangeGraphicsPasswords(virQEMUDriverPtr driver,
+     time_t now = time(NULL);
+     char expire_time [64];
+     const char *connected = NULL;
++    const char *password;
+     int ret = -1;
+     virQEMUDriverConfigPtr cfg = virQEMUDriverGetConfig(driver);
+ 
+@@ -3554,16 +3555,14 @@ qemuDomainChangeGraphicsPasswords(virQEMUDriverPtr driver,
+         ret = 0;
+         goto cleanup;
+     }
++    password = auth->passwd ? auth->passwd : defaultPasswd;
+ 
+     if (auth->connected)
+         connected = virDomainGraphicsAuthConnectedTypeToString(auth->connected);
+ 
+     if (qemuDomainObjEnterMonitorAsync(driver, vm, asyncJob) < 0)
+         goto cleanup;
+-    ret = qemuMonitorSetPassword(priv->mon,
+-                                 type,
+-                                 auth->passwd ? auth->passwd : defaultPasswd,
+-                                 connected);
++    ret = qemuMonitorSetPassword(priv->mon, type, password, connected);
+ 
+     if (ret == -2) {
+         if (type != VIR_DOMAIN_GRAPHICS_TYPE_VNC) {
+@@ -3571,14 +3570,15 @@ qemuDomainChangeGraphicsPasswords(virQEMUDriverPtr driver,
+                            _("Graphics password only supported for VNC"));
+             ret = -1;
+         } else {
+-            ret = qemuMonitorSetVNCPassword(priv->mon,
+-                                            auth->passwd ? auth->passwd : defaultPasswd);
++            ret = qemuMonitorSetVNCPassword(priv->mon, password);
+         }
+     }
+     if (ret != 0)
+         goto end_job;
+ 
+-    if (auth->expires) {
++    if (password[0] == '\0') {
++        snprintf(expire_time, sizeof(expire_time), "now");
++    } else if (auth->expires) {
+         time_t lifetime = auth->validTo - now;
+         if (lifetime <= 0)
+             snprintf(expire_time, sizeof(expire_time), "now");
+-- 
+2.9.0
+
diff --git a/recipes-extended/libvirt/libvirt_1.3.5.bb b/recipes-extended/libvirt/libvirt_1.3.5.bb
index 7ff2c5f..6222b69 100644
--- a/recipes-extended/libvirt/libvirt_1.3.5.bb
+++ b/recipes-extended/libvirt/libvirt_1.3.5.bb
@@ -34,6 +34,7 @@ SRC_URI = "http://libvirt.org/sources/libvirt-${PV}.tar.gz;name=libvirt \
            file://Revert-build-add-prefix-to-SYSTEMD_UNIT_DIR.patch \
            file://install-missing-file.patch \
            file://0001-nsslinktest-also-build-virAtomic.h.patch \
+           file://0001-qemu-Let-empty-default-VNC-password-work-as-document.patch \
           "
 
 SRC_URI[libvirt.md5sum] = "f9dc1e63d559eca50ae0ee798a4c6c6d"
-- 
2.9.3


