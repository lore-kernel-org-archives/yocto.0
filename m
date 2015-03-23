Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3CC98E0094C; Mon, 23 Mar 2015 00:35:42 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11A83E00757
	for <yocto@yoctoproject.org>; Mon, 23 Mar 2015 00:35:38 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id t2N7ZbAU023010
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 23 Mar 2015 00:35:37 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.224.2; Mon, 23 Mar 2015 00:35:37 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 23 Mar 2015 15:29:11 +0800
Message-ID: <1427095751-31030-1-git-send-email-wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [PATCH][meta-selinux] udev: restorecon /run to allow mdadm creating /run/mdadm
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
X-List-Received-Date: Mon, 23 Mar 2015 07:35:42 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

This change bases on the factors during bootup:

a. the default type for /run is var_run_t;
b. the type for /run will be changed to tmpfs_t after tmpfs mounted;
c. the type for /run will be fixed after populate-volatile.sh run.

udev service is started in b->c period, fix the type for /run from
udev init script to remove:

  avc: denied { write } for pid=294 comm="mdadm" \
  name="/" dev="tmpfs" ino=10581 \
  scontext=system_u:system_r:mdadm_t:s0-s15:c0.c1023 \
  tcontext=system_u:object_r:tmpfs_t:s0 tclass=dir

(LOCAL REV: NOT UPSTREAM) -- Sent to yocto on 20150323

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-core/udev/udev/init | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/recipes-core/udev/udev/init b/recipes-core/udev/udev/init
index 66359f2..bb8b95b 100644
--- a/recipes-core/udev/udev/init
+++ b/recipes-core/udev/udev/init
@@ -61,6 +61,9 @@ case "$1" in
     # /var/volatile/tmp directory to be available.
     mkdir -p /var/volatile/tmp
 
+    # restorecon /run early to allow mdadm creating dir /run/mdadm
+    test ! -x /sbin/restorecon || /sbin/restorecon -F /run
+
     # Cache handling.
     # A list of files which are used as a criteria to judge whether the udev cache could be reused.
     CMP_FILE_LIST="/proc/version /proc/cmdline /proc/devices /proc/atags"
-- 
1.9.1


