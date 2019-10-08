Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECF76E00D54; Tue,  8 Oct 2019 01:03:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BE1DE00790
	for <yocto@yoctoproject.org>; Tue,  8 Oct 2019 01:03:25 -0700 (PDT)
Received: by mail-pl1-f176.google.com with SMTP id u12so8115745pls.12
	for <yocto@yoctoproject.org>; Tue, 08 Oct 2019 01:03:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=FsZ5AcZmNcUEc00nZGPqdarX6K9cZLu1A49tUa5QLEY=;
	b=YDZqbBpCOY0je+bsaxFZAsjC9+4+qXf34+MI2TAkiKReS5vHuLEzRipZbBkt9K0W0x
	hywyDZ8pFCY9+47Jri01PPfBbNnZgVhSYnutg1lxQZZk7Os280QL1EqEx5h7kPupH1h2
	ZbPAyrAO3gU03Jdb1d9H3/PQFV5UGMsY4cqZQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=FsZ5AcZmNcUEc00nZGPqdarX6K9cZLu1A49tUa5QLEY=;
	b=DWxas+t/YPqxRpEhIxeMsuyopQZ+vZgIqzKOGZHUnuhiifPfqA/f3kUembPSUTXcBd
	LsN8V0S3ahP2unGks8bvn+4vpkx9OKXA3Zhloghro2Cq1Xbb2lWjUlX6mLH+1M4K7Gbn
	aq4m42yDdQTzEe7AI/BwIfegTmU0RXCYb8SGbX90UWJ8EXmI92Mc+rfgbrke/PMxNg9e
	/Kp9le8WkRGV9IjQOElJ7owMnAlBriHeqoW+glpdVQLM8NCQk1U0+qVloN7q6S5QUVYL
	G4HC1KvsWB2sszfjNzWPytjHErriylKW2emkEFJ8SrBbWNcxEtQfIPw0J+vWurFri4Bq
	1/PQ==
X-Gm-Message-State: APjAAAUH6MOsY/VxvVsRk2Yy1DppHrASPHqmFhHSMK4ZZzrH0pH5L/0M
	9sCdietG0oe61KN/7xquGjEy+ffqzZo=
X-Google-Smtp-Source: APXvYqxzi+FV6cp1PEjBnuviqKvV90BzAXwDTNKY8iDPye9p5MOFXU7ZeRZ2C3lomyaw8blM6qwqew==
X-Received: by 2002:a17:902:74c4:: with SMTP id
	f4mr2588408plt.296.1570521805175; 
	Tue, 08 Oct 2019 01:03:25 -0700 (PDT)
Received: from localhost.yoctoproject.org ([2601:1c0:ce01:91e0::6f11])
	by smtp.gmail.com with ESMTPSA id
	k5sm13311419pgo.45.2019.10.08.01.03.23
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 08 Oct 2019 01:03:24 -0700 (PDT)
From: Michael Halstead <mhalstead@linuxfoundation.org>
To: yocto@yoctoproject.org
Date: Tue,  8 Oct 2019 01:03:14 -0700
Message-Id: <20191008080314.6952-1-mhalstead@linuxfoundation.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [yocto-autobuilder2][PATCH] scheduler: make the default choice an option
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
X-List-Received-Date: Tue, 08 Oct 2019 08:03:27 -0000
Content-Transfer-Encoding: 8bit

The default choice on the force build form will select a random worker.

Updating to the corrent config. Note builder_to_workers dictionary values can
no longer be strings.

Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
---
 config.py     | 40 +++++++++++++++++++++++-----------------
 schedulers.py |  2 +-
 2 files changed, 24 insertions(+), 18 deletions(-)

diff --git a/config.py b/config.py
index e9d6d98..54977cd 100644
--- a/config.py
+++ b/config.py
@@ -61,26 +61,26 @@ trigger_builders_wait_shared = [
     "non-gpl3", "wic",
     "poky-tiny", "musl-qemux86", "musl-qemux86-64", "no-x11",
     "qa-extras", "qa-extras2",
-    "check-layer", "meta-mingw"
+    "check-layer", "meta-mingw",
+    "qemuarm64-armhost"
 ]
 
 trigger_builders_wait_quick = trigger_builders_wait_shared + [
-    "oe-selftest", "qemux86-64-ptest-fast"
+    "oe-selftest", "qemux86-64-ptest-fast", "qemuarm64-ptest-fast"
 ]
 
 trigger_builders_wait_full = trigger_builders_wait_shared + [
     "qemumips-alt", "edgerouter-alt", "mpc8315e-rdb-alt", "qemuppc-alt", "qemux86-world-alt",
     "oe-selftest-ubuntu", "oe-selftest-debian", "oe-selftest-fedora", "oe-selftest-centos",
-    "qemux86-64-ptest", "buildperf-ubuntu1604", "buildperf-centos7", "qemux86-64-ltp"
+    "qemux86-64-ptest", "buildperf-ubuntu1604", "buildperf-centos7", "qemux86-64-ltp",
+    "qemuarm64-ptest", "qemuarm64-ltp"
 ]
 
 # Builders which are individually triggered
 builders_others = [
     "meta-oe", "meta-virt", "meta-intel",
     "bringup",
-    "qemuarm64-ptest",
-    "qemuarm64-ptest-fast",
-    "qemuarm64-ltp"
+    "qemuarm-armhost"
 ]
 
 subbuilders = list(set(trigger_builders_wait_quick + trigger_builders_wait_full + builders_others))
@@ -88,32 +88,33 @@ builders = ["a-quick", "a-full"] + subbuilders
 
 # ## Cluster configuration
 # Publishing settings
-sharedrepodir = "/srv/www/vhosts/repos.yoctoproject.org"
-publish_dest = "/srv/www/vhosts/autobuilder.yoctoproject.org/pub"
+sharedrepodir = "/srv/autobuilder/repos"
+publish_dest = "/srv/autobuilder/autobuilder.yoctoproject.org/pub"
 
 # Web UI settings
 web_port = 8010
 
 # List of workers in the cluster
-workers_ubuntu = ["ubuntu1804-ty-1", "ubuntu1804-ty-2", "ubuntu1804-ty-3", "ubuntu1604-ty-1"]
+workers_ubuntu = ["ubuntu1904-ty-1", "ubuntu1804-ty-1", "ubuntu1804-ty-2", "ubuntu1804-ty-3", "ubuntu1604-ty-1"]
 workers_centos = ["centos7-ty-1", "centos7-ty-2", "centos7-ty-3", "centos7-ty-4"]
-workers_fedora = ["fedora28-ty-1", "fedora29-ty-1"]
-workers_debian = ["debian9-ty-1", "debian8-ty-1", "debian9-ty-2"]
-workers_opensuse = ["opensuse423-ty-1", "opensuse150-ty-1"]
+workers_fedora = ["fedora29-ty-1", "fedora30-ty-1", "fedora30-ty-2"]
+workers_debian = ["debian8-ty-1", "debian9-ty-2", "debian10-ty-1", "debian10-ty-2", "debian10-ty-3"]
+workers_opensuse = ["tumbleweed-ty-1", "tumbleweed-ty-2", "tumbleweed-ty-3", "opensuse151-ty-1", "opensuse150-ty-1"]
 
 workers = workers_ubuntu + workers_centos + workers_fedora + workers_debian + workers_opensuse 
 
-workers_bringup = ["rhel8-ty-1", "tumbleweed-ty-1", "ubuntu1804-arm-1"]
+workers_bringup = []
 # workers with wine on them for meta-mingw
 workers_wine = ["ubuntu1804-ty-1", "ubuntu1804-ty-2", "ubuntu1804-ty-3"]
 workers_buildperf = ["perf-ubuntu1604", "perf-centos7"]
+workers_arm = ["ubuntu1804-arm-1"]
 
-all_workers = workers + workers_bringup + workers_buildperf
+all_workers = workers + workers_bringup + workers_buildperf + workers_arm
 
 # Worker configuration, all workers configured the same...
 # TODO: support per-worker config
 worker_password = "pass"
-worker_max_builds = None
+worker_max_builds = 3
 notify_on_missing = None
 
 # Some builders should only run on specific workers (host OS dependent)
@@ -127,7 +128,12 @@ builder_to_workers = {
     "oe-selftest-opensuse": workers_opensuse,
     "oe-selftest-centos": workers_centos,
     "meta-mingw": workers_wine,
-    "buildperf-ubuntu1604": "perf-ubuntu1604",
-    "buildperf-centos7": "perf-centos7",
+    "buildperf-ubuntu1604": ["perf-ubuntu1604"],
+    "buildperf-centos7": ["perf-centos7"],
+    "qemuarm-armhost": workers_arm,
+    "qemuarm64-ptest": workers_arm,
+    "qemuarm64-ptest-fast": workers_arm,
+    "qemuarm64-ltp": workers_arm,
+    "qemuarm64-armhost": workers_arm,
     "default": workers
 }
diff --git a/schedulers.py b/schedulers.py
index da87c1b..a014fbf 100644
--- a/schedulers.py
+++ b/schedulers.py
@@ -81,7 +81,7 @@ def props_for_builder(builder):
                               default="*",
                               multiple=False,
                               strict=True,
-                              choices=worker_list))
+                              choices=worker_list + ["*"]))
     return props
 
 
-- 
2.21.0


