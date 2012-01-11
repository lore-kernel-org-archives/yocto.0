Return-Path: <edwin.zhai@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B190AE0123F
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 23:03:37 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 10 Jan 2012 23:03:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="110984011"
Received: from edwin-gen.sh.intel.com (HELO edwin-gen) ([10.239.36.111])
	by fmsmga002.fm.intel.com with SMTP; 10 Jan 2012 23:03:35 -0800
Received: by edwin-gen (sSMTP sendmail emulation);
	Wed, 11 Jan 2012 15:01:57 +0800
Date: Wed, 11 Jan 2012 15:01:57 +0800
From: "Zhai, Edwin" <edwin.zhai@intel.com>
To: bruce.ashfield@windriver.com
Message-ID: <20120111070157.GC10415@edwin-gen>
MIME-Version: 1.0
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: yocto@yoctoproject.org
Subject: Request to enable SMP and virtio for qemux86/x86-64
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
X-List-Received-Date: Wed, 11 Jan 2012 07:03:37 -0000
X-Groupsio-MsgNum: 4213
Content-Type: multipart/mixed; boundary="mYCpIKhGyMATD0i+"
Content-Disposition: inline

--mYCpIKhGyMATD0i+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Bruce,
Can we enable SMP and virtio by default for qemux86/x86-64? This can achieve 
huge perf boost for workload inside qemu. E.g. we enabled self-hosted image, 
where we build yocto inside qemu.

Attached patch showes the kernel config option.

Is it reasonable?

Thanks,
Edwin

-- 
best rgds,
edwin

--mYCpIKhGyMATD0i+
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="enable-smp-virtio-for-qemu.patch"

commit 8f2268237c5cb97052c2c9a6ea6c0f818d1a658d
Author: gzhai <gzhai@gzhai-xps.(none)>
Date:   Fri Dec 9 10:32:50 2011 +0800

    linux-yocto: enable smp for qemux86
    
    Signed-off-by: None <None>

diff --git a/meta/recipes-kernel/linux/linux-yocto/extra.cfg b/meta/recipes-kernel/linux/linux-yocto/extra.cfg
new file mode 100644
index 0000000..efe1d9b
--- /dev/null
+++ b/meta/recipes-kernel/linux/linux-yocto/extra.cfg
@@ -0,0 +1,7 @@
+CONFIG_SMP=y
+CONFIG_VIRTIO=y
+CONFIG_VIRTIO_PCI=y
+CONFIG_VIRTIO_BALLOON=y
+CONFIG_VIRTIO_RING=y
+CONFIG_VIRTIO_NET=y
+CONFIG_VIRTIO_BLK=y
diff --git a/meta/recipes-kernel/linux/linux-yocto_3.0.bb b/meta/recipes-kernel/linux/linux-yocto_3.0.bb
index 4032567..850310a 100644
--- a/meta/recipes-kernel/linux/linux-yocto_3.0.bb
+++ b/meta/recipes-kernel/linux/linux-yocto_3.0.bb
@@ -20,11 +20,13 @@ SRCREV_machine_qemux86-64 ?= "988fcbe64829f0a03ccfcc08d45cedb26cabe9ed"
 SRCREV_machine ?= "ab1de8c21d2b1d084b8488496d75cc54fcd94f02"
 SRCREV_meta ?= "67ce7623909cef63927fd145026aaf371cf4abf1"
 
-PR = "r2"
+PR = "r3"
 PV = "${LINUX_VERSION}+git${SRCPV}"
 
 SRC_URI = "git://git.yoctoproject.org/linux-yocto-3.0;protocol=git;nocheckout=1;branch=${KBRANCH},meta;name=machine,meta"
 
+SRC_URI += "file://extra.cfg"
+
 COMPATIBLE_MACHINE = "(qemuarm|qemux86|qemuppc|qemumips|qemux86-64)"
 
 # Functionality flags

--mYCpIKhGyMATD0i+--
