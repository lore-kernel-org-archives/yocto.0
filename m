Return-Path: <jkrishnanjanappa@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F26FFE00D31; Mon, 14 Sep 2015 09:32:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93C24E00B0B
	for <yocto@yoctoproject.org>; Mon, 14 Sep 2015 09:32:33 -0700 (PDT)
Received: by padhy16 with SMTP id hy16so148317261pad.1
	for <yocto@yoctoproject.org>; Mon, 14 Sep 2015 09:32:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=ZzIz7et/BuvyQgzU1xmTPb/1ISOtMtV2T1RASTHu25Q=;
	b=ZMMWpNCaaFlRMIXyZnhcrYuX85sXjV4GjLXDTgJOMUOEcW3+eZvtpklYf4EzVx+HxE
	M9jKG5jWbryG10Kkl7OSt54lEGH6ElxFlzKoqy/D8tPqZ6OY5y5x+kAmnKarEtiYPURU
	QSbfsR0thpRuGOJ/64WssdYzDKWt1DkS3JGWRt4gOJTaqyxkz9w/8xAdx0xKFjbe+Fu5
	143p0y6GewqkdNWd/3b02eHisAsSh9d+BZ2Qh89Df6KzjEcGXEduHT2UVS9zsAChYTWs
	YMIVASitbp2wPm48omcFD3hcSVmEVVWolkyne50w1swgZkFupjvN7PyR7oU3oSRPjFOw
	iABg==
X-Gm-Message-State: ALoCoQk1Yj7Y6CFOdY7NkaGuD8NUHI4hUhB5dlTGibZUmhauaNLqkCSmm6/+kwM2Txy1CuGJ1oEr
X-Received: by 10.66.100.168 with SMTP id ez8mr36033685pab.142.1442248353442; 
	Mon, 14 Sep 2015 09:32:33 -0700 (PDT)
Received: from ubuntu64.mvista.com ([111.93.218.67])
	by smtp.gmail.com with ESMTPSA id
	im2sm17123751pbc.34.2015.09.14.09.32.31
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 14 Sep 2015 09:32:33 -0700 (PDT)
From: Jagadeesh Krishnanjanappa <jkrishnanjanappa@mvista.com>
To: yocto@yoctoproject.org
Date: Mon, 14 Sep 2015 22:02:26 +0530
Message-Id: <1442248346-28160-1-git-send-email-jkrishnanjanappa@mvista.com>
X-Mailer: git-send-email 1.9.1
Cc: Jeremy Puhlman <jpuhlman@mvista.com>
Subject: [meta-security][PATCH] paxctl: add new recipe
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
X-List-Received-Date: Mon, 14 Sep 2015 16:32:38 -0000

paxctl  is  a tool that allows PaX flags to be modified on a per-binary
basis.  PaX is part of common  security-enhancing  kernel  patches  and
secure distributions, such as GrSecurity or Adamantix and Hardened Gen-
too, respectively.  Your system needs to be running a properly  patched
and configured kernel for this program to have any effect.

Signed-off-by: Jagadeesh Krishnanjanappa <jkrishnanjanappa@mvista.com>
Signed-off-by: Jeremy Puhlman <jpuhlman@mvista.com>
---
 recipes-security/paxctl/paxctl_0.9.bb | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)
 create mode 100644 recipes-security/paxctl/paxctl_0.9.bb

diff --git a/recipes-security/paxctl/paxctl_0.9.bb b/recipes-security/paxctl/paxctl_0.9.bb
new file mode 100644
index 0000000..8eadad1
--- /dev/null
+++ b/recipes-security/paxctl/paxctl_0.9.bb
@@ -0,0 +1,20 @@
+DESCRIPTION = "paxctl  is  a tool that allows PaX flags to be modified on a \
+               per-binary basis. PaX is part of common  security-enhancing  \
+               kernel  patches  and secure distributions, such as \
+               GrSecurity or Adamantix and Hardened Gen-too, respectively."
+HOMEPAGE = "https://pax.grsecurity.net/"	       
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM = "file://paxctl.c;beginline=1;endline=5;md5=0ddd065c61020dda79729e6bedaed2c7 \
+                    file://paxctl-elf.c;beginline=1;endline=5;md5=99f453ce7f6d1687ee808982e2924813 \
+		   "
+
+SRC_URI = "http://pax.grsecurity.net/paxctl-${PV}.tar.gz"
+SRC_URI[md5sum] = "9bea59b1987dc4e16c2d22d745374e64"
+SRC_URI[sha256sum] = "a330ddd812688169802a3ba29e5e3b19956376b8f6f73b8d7e9586eb04423c2e"
+
+do_install() {
+	oe_runmake 'DESTDIR=${D}' install
+}
+
+FILES_${PN} = "${base_sbindir}/paxctl"
+FILES_${PN}-doc = "${mandir}/man1/paxctl.1"
-- 
1.8.2.3


