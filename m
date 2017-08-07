Return-Path: <jkrishnanjanappa@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0AA73E00B65; Mon,  7 Aug 2017 10:11:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f54.google.com (mail-pg0-f54.google.com [74.125.83.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56B19E009A4
	for <yocto@yoctoproject.org>; Mon,  7 Aug 2017 10:11:42 -0700 (PDT)
Received: by mail-pg0-f54.google.com with SMTP id v77so3950295pgb.3
	for <yocto@yoctoproject.org>; Mon, 07 Aug 2017 10:11:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=fT3rCYbwCqdEOcUWGYT+1EW4P+YasiTLJ5gqB0GI6ZE=;
	b=UQ/XcBSdHzXVsXXat7lmh0A/8X8lhxLOSBLjFTWE5+WaN7AZMifS2gmHieJm2e3Ap4
	bom3eb7HoKrWc4D/szOqeeuQ78HAtj7yNskC/oXQf0s1x2ddYNLruXDjuOIC42Kxtfcf
	RbZGNAQdcaWHoA5CPP9mNY5hKUQ26vldcBgmPjMjIKXeZB2iminBQXn0S4NvVTTw5UjH
	4aDy6MVNi8rKGD7mtKhyPnSsdqho1izheQJXdNl+mMl7HbUy7UUVVp2p556tbvRMNafR
	GNpyhqjepIqmJVcysANucOrPa78PcUz6PvSccUcV/+Xef45wXi/c6zNzaCgfZL6zmLFK
	3apw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=fT3rCYbwCqdEOcUWGYT+1EW4P+YasiTLJ5gqB0GI6ZE=;
	b=XCSBX0yqup6e1fHeNHCxBo0DaB1VlCMsEpEvDuBSMO36VIa2R3lukCGERfYLmNlOvB
	uVg+tBrWh0NR9NLMe4rChGHNrkmy1dxhHuBiuCDMkAb6sfhvVj2h0tA1slpmf0kyipfc
	Wfx4XNlqgkFN2yNvU3ho3p2fH8cNaZ+axPUoZbBfTxj3Gp9DCG4TLIIPmxBzyhMcyKO4
	2djqE+sK7/7rgkdl8kr8VGaHJEfjWyuXZnNP4ZkJDhX7Xt47CwNX/2NQNqui0qRDswJX
	qEjbrGgDNBtk/B0IPug1wOba2R4ytaXru81fQ4snGwS4d/Y7oUFfmfnECAUkcjiT4+9D
	tnPg==
X-Gm-Message-State: AHYfb5hxQWe/5qAKlF1pFs8lLK+W9Bl7Y7faEjkWYu2jPHXDZ/vSq+pt
	lEWos1aqqsrv9dDpRYaJsA==
X-Received: by 10.84.168.4 with SMTP id e4mr1358673plb.227.1502125901461;
	Mon, 07 Aug 2017 10:11:41 -0700 (PDT)
Received: from jkrishnanjanappa-VPCEB26FG.mvista.com
	([2405:204:5404:956f:b569:d612:c518:b9df])
	by smtp.gmail.com with ESMTPSA id
	s14sm12041803pgo.14.2017.08.07.10.11.38
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 07 Aug 2017 10:11:40 -0700 (PDT)
From: Jagadeesh Krishnanjanappa <jkrishnanjanappa@mvista.com>
To: yocto@yoctoproject.org
Date: Mon,  7 Aug 2017 22:41:12 +0530
Message-Id: <1502125872-17502-1-git-send-email-jkrishnanjanappa@mvista.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-cgl][PATCH] pacemaker: Ship missing resource.d directory in ${PN}
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
X-List-Received-Date: Mon, 07 Aug 2017 17:11:43 -0000

Fix below warning when ${libdir} is other than '/usr/lib',

-- snip --
WARNING: pacemaker-1.1.16-r0 do_package: QA Issue: pacemaker: Files/directories were installed but not shipped in any package:
  /usr/lib
  /usr/lib/ocf
  /usr/lib/ocf/resource.d
  /usr/lib/ocf/resource.d/.isolation
  /usr/lib/ocf/resource.d/pacemaker
  /usr/lib/ocf/resource.d/.isolation/docker-wrapper
  /usr/lib/ocf/resource.d/pacemaker/SystemHealth
  /usr/lib/ocf/resource.d/pacemaker/HealthCPU
  /usr/lib/ocf/resource.d/pacemaker/ClusterMon
  /usr/lib/ocf/resource.d/pacemaker/pingd
  /usr/lib/ocf/resource.d/pacemaker/HealthSMART
  /usr/lib/ocf/resource.d/pacemaker/controld
  /usr/lib/ocf/resource.d/pacemaker/Stateful
  /usr/lib/ocf/resource.d/pacemaker/ping
  /usr/lib/ocf/resource.d/pacemaker/o2cb
  /usr/lib/ocf/resource.d/pacemaker/remote
  /usr/lib/ocf/resource.d/pacemaker/Dummy
  /usr/lib/ocf/resource.d/pacemaker/SysInfo
Please set FILES such that these items are packaged. Alternatively if they are unneeded, avoid installing them or delete them within do_install.
pacemaker: 18 installed and not shipped files. [installed-vs-shipped]
-- snip --

Signed-off-by: Jeremy Puhlman <jpuhlman@mvista.com>
Signed-off-by: Jagadeesh Krishnanjanappa <jkrishnanjanappa@mvista.com>
---
 meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb
index cc1dd3d..3a4a848 100755
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.16.bb
@@ -82,7 +82,7 @@ RDEPENDS_${PN}-remote += "libqb bash"
 FILES_${PN} += " ${datadir}/snmp                             \
                  ${libdir}/corosync/lcrso/pacemaker.lcrso    \
                  ${libdir}/${PYTHON_DIR}/dist-packages/cts/  \
-                 ${libdir}/ocf/resource.d/ \
+                 ${nonarch_libdir}/ocf/resource.d/ \
                  ${libdir}/${PYTHON_DIR}/site-packages \
                "
 FILES_${PN}-dbg += "${libdir}/corosync/lcrso/.debug"
-- 
1.8.3.1

