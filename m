Return-Path: <darren@apps.dvhart.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57E3BE01412
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 15:10:36 -0700 (PDT)
Received: by dadz8 with SMTP id z8so2377972dad.35
	for <yocto@yoctoproject.org>; Fri, 25 May 2012 15:10:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references:x-gm-message-state;
	bh=Z6Tg+yZq1ffxi3opjSFj3OreULHtZYJCY5AGpzX6Cbs=;
	b=dknfed6rtk1gTRd+DT1qx1WHp8ja0VUVZjsEROJhXFXB3RNQAYpESnEYBRO78Y3CH/
	BttBV7Nqq9mZqRbaROAGaUgcaJFEndC09rYqFVltcnZbVAHUoLvPi76Kjspx3eroepPR
	nYjjB8rhJBiugAWdxPZZt8hcszUc2yGM5AeryPNGcUFKR08mWcM3S03OqgswOzUP0Y3r
	Z8ARg1mFKA3ZuhNCPo4UK5Y1mgnSIUT1yCjdSVRN0eQZS4EAE16eLwGfnCoPaFENi7rB
	kJeU+slGvkpiuRP9zVCU9sEWX0HkB6WjFfRIeIPEXb5XGcqxpcl4Y1JeCpe8VkLTzkSs
	3wOw==
Received: by 10.68.191.201 with SMTP id ha9mr1618627pbc.75.1337983836164;
	Fri, 25 May 2012 15:10:36 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id qr2sm10336003pbb.19.2012.05.25.15.10.35
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 25 May 2012 15:10:35 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Fri, 25 May 2012 15:10:22 -0700
Message-Id: <caa0042ec0042bb4d4f48ac2a4722af9e52469c1.1337983732.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <1337983824-32645-1-git-send-email-dvhart@linux.intel.com>
References: <1337983824-32645-1-git-send-email-dvhart@linux.intel.com>
X-Gm-Message-State: ALoCoQlN+zfsIEv5w+2mivlJz7wUmaH92ZEjC0lbUuyLQVLJmtjU5I1ChHqpUTc+CzX5UtplT/Fb
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 1/3] fri2: netbase: Add an fri2 specific /etc/network/interfaces file
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
X-List-Received-Date: Fri, 25 May 2012 22:10:36 -0000

The default interfaces file sets usb0 up as static inet. As the FRI2 is more
likely to use the usb0 interface for a cellular modem, this is inappropriate.
Drop usb0 from /etc/network/interfaces entirely and rely on ofono to set it
up.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-fri2/netbase/files/fri2-noemgd/interfaces |    9 +++++++++
 meta-fri2/netbase/files/fri2/interfaces        |    9 +++++++++
 meta-fri2/netbase/netbase_4.47.bbappend        |    2 ++
 3 files changed, 20 insertions(+), 0 deletions(-)
 create mode 100644 meta-fri2/netbase/files/fri2-noemgd/interfaces
 create mode 100644 meta-fri2/netbase/files/fri2/interfaces
 create mode 100644 meta-fri2/netbase/netbase_4.47.bbappend

diff --git a/meta-fri2/netbase/files/fri2-noemgd/interfaces b/meta-fri2/netbase/files/fri2-noemgd/interfaces
new file mode 100644
index 0000000..f5bb946
--- /dev/null
+++ b/meta-fri2/netbase/files/fri2-noemgd/interfaces
@@ -0,0 +1,9 @@
+# /etc/network/interfaces -- configuration file for ifup(8), ifdown(8)
+
+# The loopback interface
+auto lo
+iface lo inet loopback
+
+# Wired or wireless interfaces
+auto eth0
+iface eth0 inet dhcp
diff --git a/meta-fri2/netbase/files/fri2/interfaces b/meta-fri2/netbase/files/fri2/interfaces
new file mode 100644
index 0000000..f5bb946
--- /dev/null
+++ b/meta-fri2/netbase/files/fri2/interfaces
@@ -0,0 +1,9 @@
+# /etc/network/interfaces -- configuration file for ifup(8), ifdown(8)
+
+# The loopback interface
+auto lo
+iface lo inet loopback
+
+# Wired or wireless interfaces
+auto eth0
+iface eth0 inet dhcp
diff --git a/meta-fri2/netbase/netbase_4.47.bbappend b/meta-fri2/netbase/netbase_4.47.bbappend
new file mode 100644
index 0000000..5816c33
--- /dev/null
+++ b/meta-fri2/netbase/netbase_4.47.bbappend
@@ -0,0 +1,2 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+PRINC := "${@int(PRINC) + 1}"
-- 
1.7.5.4


