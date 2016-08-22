Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F412CE00E21; Mon, 22 Aug 2016 06:07:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D5FAE00F54
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2016 06:07:12 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id g202so6356667pfb.1
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2016 06:07:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=/7IIBrLZCRLupdEb7KNMmyLkkZ/3AitfdEpaMSr9d2w=;
	b=cb7lcytkPMw5UPW/z8/yc2sNyx1/bjZkNfR0bpoj4YXOIqYMlrAhSpP/gu6aXsfp6S
	cG9FL/bqOxitKmm7pRxof7x5PG4n7RU+ReK07wrY2bmfAmeEaxLCbRQyLyfv5dg8kLuO
	JEOdTMFFyMBT4WtTHrD6Lvy1FD8jDydh2eMCfAS5sN0o648VwZUoKjN0nVmyRm/HNrIg
	5X3469R7M3KHFnNz1k0mu3ZAhoXjjeaZRa5+i8wzKjxh+4gtvPprQFFHp9sihO5a2TbG
	+arr6fkMZCBJAbeDf6dyrVFYfIimgAkNZpizXQ+c4ne/poD8Hbrmx5eNo8siyNephjCK
	ZASA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=/7IIBrLZCRLupdEb7KNMmyLkkZ/3AitfdEpaMSr9d2w=;
	b=Sx+5CKx4i5RrAD00OHhEhCxbQFrh0URM+0qwGfrioMwhwDGX97FT5ngExpyR2BGsJY
	CrtyjGGL6Rp+h8LRKR/L0py0+icKJpa7ksI77XPSkmd59YYoP18JMCZ/88j8Po6YJevI
	QM4hBPQjjLHLPpJoDfjbuzhMyjElyyDuMLHAKDPhjTV5iprB/5T88y0+nFKIxMsgkp7q
	etCioFn5vY6g+mDnImCeiewD91QPNUGeI2WPaoJuP5AB/o/hxUYzcWYZ879Lg0c6Oojy
	CQkQ0eOHAYSV83zWbgvw6PwLrSg9P/zRhDd+6YMWqRU8dxPuugH/9A/C1SSqSxtsIjBQ
	wrtw==
X-Gm-Message-State: AEkoouuMjb04WSwH9U2bHfOrYIZqffO8kMJpKUu1Kc/NM1PfHFYIqN3MnJbruGgZpnzmag==
X-Received: by 10.98.58.149 with SMTP id v21mr42162439pfj.19.1471871232490;
	Mon, 22 Aug 2016 06:07:12 -0700 (PDT)
Received: from shrikant-VirtualBox.inp.mentorg.com ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	r2sm32352830pal.14.2016.08.22.06.07.10
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 22 Aug 2016 06:07:11 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 22 Aug 2016 18:37:06 +0530
Message-Id: <1471871226-28111-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][PATCH 2/5] selinux-init: add systemd service file support
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
X-List-Received-Date: Mon, 22 Aug 2016 13:07:16 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

add systemd service file for handling selinux initialization, this change
improves handling of systemd service functionality like:status check, debug
etc. compared to sysvinit compatibility mode scripts.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 recipes-security/selinux/selinux-init/selinux-init.service | 11 +++++++++++
 recipes-security/selinux/selinux-init_0.1.bb               |  5 ++++-
 2 files changed, 15 insertions(+), 1 deletion(-)
 create mode 100644 recipes-security/selinux/selinux-init/selinux-init.service

diff --git a/recipes-security/selinux/selinux-init/selinux-init.service b/recipes-security/selinux/selinux-init/selinux-init.service
new file mode 100644
index 0000000..93cc6ce
--- /dev/null
+++ b/recipes-security/selinux/selinux-init/selinux-init.service
@@ -0,0 +1,11 @@
+[Unit]
+Description=SELinux init service loading
+DefaultDependencies=no
+Before=sysinit.target
+
+[Service]
+Type=oneshot
+ExecStart=/usr/bin/selinux-init.sh
+
+[Install]
+WantedBy=multi-user.target
diff --git a/recipes-security/selinux/selinux-init_0.1.bb b/recipes-security/selinux/selinux-init_0.1.bb
index 54932e8..38b5900 100644
--- a/recipes-security/selinux/selinux-init_0.1.bb
+++ b/recipes-security/selinux/selinux-init_0.1.bb
@@ -14,7 +14,10 @@ ${PN}_RDEPENDS = " \
     policycoreutils-setfiles \
 "
 
-SRC_URI = "file://${BPN}.sh"
+SRC_URI = "file://${BPN}.sh \
+		file://${BPN}.service \
+	"
+
 INITSCRIPT_PARAMS = "start 01 S ."
 
 require selinux-initsh.inc
-- 
1.9.1


