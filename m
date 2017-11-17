Return-Path: <v.vogelhuber@digitalendoscopy.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49775E00D43; Fri, 17 Nov 2017 08:22:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [94.100.132.213 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-relay13-hz1.antispameurope.com
	(mx-relay13-hz1.antispameurope.com [94.100.132.213])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04A32E00CFF
	for <yocto@yoctoproject.org>; Fri, 17 Nov 2017 08:22:02 -0800 (PST)
Received: from host-80-81-19-29.customer.m-online.net ([80.81.19.29]) by
	mx-relay13-hz1.antispameurope.com; Fri, 17 Nov 2017 17:21:06 +0100
Received: from DE028.digitendos.de (192.168.20.186) by srv-msx01.digitendos.de
	(192.168.20.14) with Microsoft SMTP Server (TLS) id 15.0.516.32;
	Fri, 17 Nov 2017 17:20:46 +0100
From: Volker Vogelhuber <v.vogelhuber@digitalendoscopy.de>
To: <yocto@yoctoproject.org>
Date: Fri, 17 Nov 2017 17:19:48 +0100
Message-ID: <20171117161948.9700-2-v.vogelhuber@digitalendoscopy.de>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20171117161948.9700-1-v.vogelhuber@digitalendoscopy.de>
References: <20171117161948.9700-1-v.vogelhuber@digitalendoscopy.de>
MIME-Version: 1.0
X-Originating-IP: [192.168.20.186]
X-ClientProxiedBy: srv-msx01.digitendos.de (192.168.20.14) To
	srv-msx01.digitendos.de (192.168.20.14)
X-TM-AS-Product-Ver: SMEX-11.1.0.1291-8.100.1062-23470.005
X-TM-AS-Result: No--6.385600-8.000000-31
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-cloud-security-sender: v.vogelhuber@digitalendoscopy.de
X-cloud-security-recipient: yocto@yoctoproject.org
X-cloud-security-Virusscan: CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on
	mx-relay13-hz1.antispameurope.com with E2768101AB9
X-cloud-security-connect: host-80-81-19-29.customer.m-online.net[80.81.19.29],
	TLS=1, IP=80.81.19.29
X-cloud-security: scantime:.1843
Cc: Volker Vogelhuber <v.vogelhuber@digitalendoscopy.de>
Subject: [PATCH] Allow specifying subdir for rootfs when using wic -e
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
X-List-Received-Date: Fri, 17 Nov 2017 16:22:04 -0000
Content-Type: text/plain

---
 scripts/lib/wic/ksparser.py              | 1 +
 scripts/lib/wic/partition.py             | 1 +
 scripts/lib/wic/plugins/source/rootfs.py | 7 ++++---
 3 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/scripts/lib/wic/ksparser.py b/scripts/lib/wic/ksparser.py
index 99b66eebc5..a9e07fcd2f 100644
--- a/scripts/lib/wic/ksparser.py
+++ b/scripts/lib/wic/ksparser.py
@@ -146,6 +146,7 @@ class KickStart():
         part.add_argument("--overhead-factor", type=overheadtype)
         part.add_argument('--part-type')
         part.add_argument('--rootfs-dir')
+        part.add_argument('--rootfs-subdir')
 
         # --size and --fixed-size cannot be specified together; options
         # ----extra-space and --overhead-factor should also raise a parser
diff --git a/scripts/lib/wic/partition.py b/scripts/lib/wic/partition.py
index b623bb9e6d..b42529ce48 100644
--- a/scripts/lib/wic/partition.py
+++ b/scripts/lib/wic/partition.py
@@ -53,6 +53,7 @@ class Partition():
         self.overhead_factor = args.overhead_factor
         self.part_type = args.part_type
         self.rootfs_dir = args.rootfs_dir
+        self.rootfs_subdir = args.rootfs_subdir
         self.size = args.size
         self.fixed_size = args.fixed_size
         self.source = args.source
diff --git a/scripts/lib/wic/plugins/source/rootfs.py b/scripts/lib/wic/plugins/source/rootfs.py
index aec720fb22..8dcf5a2872 100644
--- a/scripts/lib/wic/plugins/source/rootfs.py
+++ b/scripts/lib/wic/plugins/source/rootfs.py
@@ -83,7 +83,7 @@ class RootfsPlugin(SourcePlugin):
 
         part.rootfs_dir = cls.__get_rootfs_dir(rootfs_dir)
 
-        new_rootfs = None
+        new_rootfs = part.rootfs_dir
         # Handle excluded paths.
         if part.exclude_path is not None:
             # We need a new rootfs directory we can delete files from. Copy to
@@ -121,6 +121,7 @@ class RootfsPlugin(SourcePlugin):
                 else:
                     # Delete whole directory.
                     shutil.rmtree(full_path)
-
+        if not part.rootfs_subdir is None:
+            new_rootfs = os.path.join(new_rootfs, part.rootfs_subdir)
         part.prepare_rootfs(cr_workdir, oe_builddir,
-                            new_rootfs or part.rootfs_dir, native_sysroot)
+                            new_rootfs, native_sysroot)
-- 
2.11.0


