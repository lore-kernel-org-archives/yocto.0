Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F485E00DCE; Sun,  8 Sep 2019 23:01:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	SUBJ_OBFU_PUNCT_FEW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* 0.7 SUBJ_OBFU_PUNCT_FEW Possible punctuation-obfuscated Subject:
	header
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A7E5E00DAA
	for <yocto@yoctoproject.org>; Sun,  8 Sep 2019 23:01:35 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x8961XT5012262
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 8 Sep 2019 23:01:33 -0700 (PDT)
Received: from localhost (128.224.162.195) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Sun, 8 Sep 2019 23:01:32 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <joe@deserted.net>, <Joe_MacDonald@mentor.com>
Date: Mon, 9 Sep 2019 14:01:30 +0800
Message-ID: <1568008890-8700-1-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [128.224.162.195]
Subject: [meta-selinux][PATCH] conf/layer.conf: use BBFILES_DYNAMIC for dynamic layers
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
X-List-Received-Date: Mon, 09 Sep 2019 06:01:36 -0000
Content-Type: text/plain

From: Robert Yang <liezhi.yang@windriver.com>

The previous code add all BBFILE_COLLECTIONS/recipes*/*/*.bbappend to BBFILES,
which causes the parsing very slow when there are many layers, e.g., I have 87
layers:

* Before:
$ rm -fr tmp-glibc/ cache; time bitbake -p
real    0m45.173s
user    0m0.560s
sys     0m0.060s

* After:
$ rm -fr tmp-glibc/ cache; time bitbake -p
real    0m25.542s
user    0m0.572s
sys     0m0.040s

It wasted 20s which wasn't worth (The host has 128 threads, it should cost more
time on less power host), use BBFILES_DYNAMIC can fix the problem.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 conf/layer.conf                                               | 11 +++++++----
 .../recipes-daemons/iscsi-initiator-utils/files/initd.debian  |  0
 .../iscsi-initiator-utils/iscsi-initiator-utils_%.bbappend    |  0
 .../iscsi-initiator-utils/iscsi-initiator-utils_selinux.inc   |  0
 .../recipes-support}/augeas/augeas_%.bbappend                 |  0
 .../recipes-containers/lxc/lxc_%.bbappend                     |  0
 6 files changed, 7 insertions(+), 4 deletions(-)
 rename {networking-layer => dynamic-layers/networking-layer}/recipes-daemons/iscsi-initiator-utils/files/initd.debian (100%)
 rename {networking-layer => dynamic-layers/networking-layer}/recipes-daemons/iscsi-initiator-utils/iscsi-initiator-utils_%.bbappend (100%)
 rename {networking-layer => dynamic-layers/networking-layer}/recipes-daemons/iscsi-initiator-utils/iscsi-initiator-utils_selinux.inc (100%)
 rename {meta-python/recipes-extended/augeas => dynamic-layers/openembedded-layer/recipes-support}/augeas/augeas_%.bbappend (100%)
 rename {virtualization-layer => dynamic-layers/virtualization-layer}/recipes-containers/lxc/lxc_%.bbappend (100%)

diff --git a/conf/layer.conf b/conf/layer.conf
index 9dd34b1..89b9468 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -5,10 +5,13 @@ BBPATH .= ":${LAYERDIR}"
 BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
             ${LAYERDIR}/recipes-*/*/*.bbappend"
 
-# Let us add layer-specific bbappends which are only applied when that
-# layer is included in our configuration
-BBFILES += "${@' '.join('${LAYERDIR}/%s/recipes*/*/*.bbappend' % layer \
-               for layer in BBFILE_COLLECTIONS.split())}"
+BBFILES_DYNAMIC += "openembedded-layer:${LAYERDIR}/dynamic-layers/openembedded-layer/*/*/*.bb \
+                    openembedded-layer:${LAYERDIR}/dynamic-layers/openembedded-layer/*/*/*.bbappend \
+                    networking-layer:${LAYERDIR}/dynamic-layers/networking-layer/*/*/*.bb \
+                    networking-layer:${LAYERDIR}/dynamic-layers/networking-layer/*/*/*.bbappend \
+                    virtualization-layer:${LAYERDIR}/dynamic-layers/virtualization-layer/recipes*/*/*.bb \
+                    virtualization-layer:${LAYERDIR}/dynamic-layers/virtualization-layer/recipes*/*/*.bbappend \
+                   "
 
 BBFILE_COLLECTIONS += "selinux"
 BBFILE_PATTERN_selinux = "^${LAYERDIR}/"
diff --git a/networking-layer/recipes-daemons/iscsi-initiator-utils/files/initd.debian b/dynamic-layers/networking-layer/recipes-daemons/iscsi-initiator-utils/files/initd.debian
similarity index 100%
rename from networking-layer/recipes-daemons/iscsi-initiator-utils/files/initd.debian
rename to dynamic-layers/networking-layer/recipes-daemons/iscsi-initiator-utils/files/initd.debian
diff --git a/networking-layer/recipes-daemons/iscsi-initiator-utils/iscsi-initiator-utils_%.bbappend b/dynamic-layers/networking-layer/recipes-daemons/iscsi-initiator-utils/iscsi-initiator-utils_%.bbappend
similarity index 100%
rename from networking-layer/recipes-daemons/iscsi-initiator-utils/iscsi-initiator-utils_%.bbappend
rename to dynamic-layers/networking-layer/recipes-daemons/iscsi-initiator-utils/iscsi-initiator-utils_%.bbappend
diff --git a/networking-layer/recipes-daemons/iscsi-initiator-utils/iscsi-initiator-utils_selinux.inc b/dynamic-layers/networking-layer/recipes-daemons/iscsi-initiator-utils/iscsi-initiator-utils_selinux.inc
similarity index 100%
rename from networking-layer/recipes-daemons/iscsi-initiator-utils/iscsi-initiator-utils_selinux.inc
rename to dynamic-layers/networking-layer/recipes-daemons/iscsi-initiator-utils/iscsi-initiator-utils_selinux.inc
diff --git a/meta-python/recipes-extended/augeas/augeas/augeas_%.bbappend b/dynamic-layers/openembedded-layer/recipes-support/augeas/augeas_%.bbappend
similarity index 100%
rename from meta-python/recipes-extended/augeas/augeas/augeas_%.bbappend
rename to dynamic-layers/openembedded-layer/recipes-support/augeas/augeas_%.bbappend
diff --git a/virtualization-layer/recipes-containers/lxc/lxc_%.bbappend b/dynamic-layers/virtualization-layer/recipes-containers/lxc/lxc_%.bbappend
similarity index 100%
rename from virtualization-layer/recipes-containers/lxc/lxc_%.bbappend
rename to dynamic-layers/virtualization-layer/recipes-containers/lxc/lxc_%.bbappend
-- 
2.7.4


