Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3C75E00B77; Tue, 30 May 2017 23:53:09 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 382BDE00B67
	for <yocto@yoctoproject.org>; Tue, 30 May 2017 23:53:04 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v4V6r3jZ019580
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 30 May 2017 23:53:04 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.294.0; Tue, 30 May 2017 23:52:30 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 31 May 2017 14:52:13 +0800
Message-ID: <53fa5e3fb2d7e82bebf978b8d6a7cb3f06c7a20b.1496213380.git.jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1496213380.git.jackie.huang@windriver.com>
References: <cover.1496213380.git.jackie.huang@windriver.com>
MIME-Version: 1.0
Subject: [meta-cgl][PATCH 3/3] cluster-glue: update useradd parameters
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
X-List-Received-Date: Wed, 31 May 2017 06:53:10 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

Update useradd parameters for cluster-glue according
to spec file from source code:

https://github.com/ClusterLabs/cluster-glue/blob/master/cluster-glue-fedora.spec

And use HA_USER and HA_GROUP for easy maintenance.

Signed-off-by: Kai Kang <kai.kang@windriver.com>
Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 .../recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb        | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
index b5cf997..783469d 100644
--- a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
+++ b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
@@ -27,18 +27,26 @@ inherit autotools useradd pkgconfig systemd
 SYSTEMD_SERVICE_${PN} = "logd.service"
 SYSTEMD_AUTO_ENABLE = "disable"
 
+HA_USER = "hacluster"
+HA_GROUP = "haclient"
+
 S = "${WORKDIR}/Reusable-Cluster-Components-glue--glue-${PV}"
 
 PACKAGECONFIG ??= "${@bb.utils.filter('DISTRO_FEATURES', 'systemd', d)}"
 PACKAGECONFIG[systemd] = "--with-systemdsystemunitdir=${systemd_system_unitdir},--without-systemdsystemunitdir,systemd"
 
-EXTRA_OECONF = "--with-daemon-user=hacluster --with-daemon-group=haclient --disable-fatal-warnings"
+EXTRA_OECONF = "--with-daemon-user=${HA_USER} \
+                --with-daemon-group=${HA_GROUP} \
+                --disable-fatal-warnings \
+               "
 
 CACHED_CONFIGUREVARS="ac_cv_path_XML2CONFIG=0"
 
 USERADD_PACKAGES = "${PN}"
-USERADD_PARAM_${PN} = "--home-dir=${localstatedir}/lib/heartbeat -g haclient -r hacluster"
-GROUPADD_PARAM_${PN} = "-r haclient"
+USERADD_PARAM_${PN} = "--home-dir=${localstatedir}/lib/heartbeat/cores/${HA_USER} \
+                       -g ${HA_GROUP} -r -s ${sbindir}/nologin -c 'cluster user' ${HA_USER} \
+                      "
+GROUPADD_PARAM_${PN} = "-r ${HA_GROUP}"
 
 do_configure_prepend() {
     ln -sf ${PKG_CONFIG_SYSROOT_DIR}/usr/include/libxml2/libxml ${PKG_CONFIG_SYSROOT_DIR}/usr/include/libxml
-- 
2.11.0


