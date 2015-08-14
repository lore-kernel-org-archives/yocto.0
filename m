Return-Path: <jkrishnanjanappa@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A86FE009EF; Fri, 14 Aug 2015 07:21:36 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECB47E009E4
	for <yocto@yoctoproject.org>; Fri, 14 Aug 2015 07:21:34 -0700 (PDT)
Received: by pacrr5 with SMTP id rr5so61481429pac.3
	for <yocto@yoctoproject.org>; Fri, 14 Aug 2015 07:21:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=uHB3pa0H/bYJyPy2NTe/4FlJjNHsSqAx710XjxcB8Og=;
	b=hgFC/bfPkAP22HoAr7OcIzVTILz+sPj75uYTtOqV1h9zhCBNORmSG0ooAZ4GUvSu6F
	rjb1JJsjszrKpACD7U+/UJeMAGkehw407dTd6hevi6T1ruXAkf53ufyEwzR1v9AK8dsi
	6p7yDCJVSo8slP++ihoXgMosorwXCKLAmUkVGlfsTSz6uA5Ttta+s2eGApBCl5pR7fBR
	ZBJNxaP5DJmWYevjnkt/DTQftqCKlhwk0LH4qln0UhYbY5osLgTQEm3sdCCFRZmBzNSl
	qYgbkP9DSxrkWv36tYjr52iKjX9Y1eGO8Fo7A4TOy6pAnFZdPameEqwLUW7UIw3ewg8f
	xG5A==
X-Gm-Message-State: ALoCoQkJ4EtzAQHqxSfYTq/zJCIWbih1qKgWLfLARwLJ8H8hlZbOCzwCtGpubjsyGZQNk4Ub+oSu
X-Received: by 10.68.250.5 with SMTP id yy5mr88227678pbc.34.1439562094263;
	Fri, 14 Aug 2015 07:21:34 -0700 (PDT)
Received: from ubuntu64.mvista.com ([111.93.218.67])
	by smtp.gmail.com with ESMTPSA id k5sm6242219pdb.53.2015.08.14.07.21.32
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 14 Aug 2015 07:21:33 -0700 (PDT)
From: Jagadeesh Krishnanjanappa <jkrishnanjanappa@mvista.com>
To: yocto@yoctoproject.org
Date: Fri, 14 Aug 2015 19:51:27 +0530
Message-Id: <1439562087-21366-1-git-send-email-jkrishnanjanappa@mvista.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-cgl][PATCH] cluster-glue: replace hardcoded strings with generic variables.
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
X-List-Received-Date: Fri, 14 Aug 2015 14:21:36 -0000

If BASELIB variable is set to other than 'lib', we get below error
of some files not being shipped into any package,

-- snip --
ERROR: QA Issue: cluster-glue: Files/directories were installed but not shipped
in any package:
  /usr/lib64/libstonith.so.1.0.0
  /usr/lib64/libplumb.so.2
  /usr/lib64/libpils.so.2
  /usr/lib64/libplumb.so.2.0.0
  /usr/lib64/libpils.so.2.0.0
  /usr/lib64/liblrm.so.2
  /usr/lib64/libstonith.so.1
  /usr/lib64/libplumbgpl.so.2
  /usr/lib64/libplumbgpl.so.2.0.0
  /usr/lib64/liblrm.so.2.0.0
  /usr/lib64/heartbeat
  /usr/lib64/stonith
  /usr/lib64/heartbeat/ipctransientserver
  /usr/lib64/heartbeat/transient-test.sh
  /usr/lib64/heartbeat/lrmd
  /usr/lib64/heartbeat/logtest
  /usr/lib64/heartbeat/base64_md5_test
  /usr/lib64/heartbeat/ipctransientclient
  /usr/lib64/heartbeat/ha_logd
-- CUT --

If bitbake fails to find these files not being provided by
any RPMs/DPKs, then we get below error during do_rootfs;

-- snip --
ERROR: Unable to install packages. Command '/opt/poky/build/tmp/sysroots/x86_64-linux/usr/bin/smart --log-level=warning --data-dir=/opt/poky/build/tmp/work/qemux86_64-poky-linux/core-image-minimal/1.0-r0/rootfs/var/lib/smart install -y cluster-glue@core2_64 run-postinsts@all packagegroup-core-boot@qemux86_64' returned 1:
Loading cache...
Updating cache...               ######################################## [100%]

Computing transaction...error: Can't install cluster-glue-1.0.5-r0@core2_64: no
package provides libstonith.so.1()(64bit)
-- CUT --

So, use generic variables rather than hardcoded values.

Signed-off-by: Jagadeesh Krishnanjanappa <jkrishnanjanappa@mvista.com>
---
 .../recipes-cgl/cluster-glue/cluster-glue_1.0.5.bb | 53 +++++++++++-----------
 1 file changed, 27 insertions(+), 26 deletions(-)

diff --git a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.5.bb b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.5.bb
index f1b4a78..836f408 100644
--- a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.5.bb
+++ b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.5.bb
@@ -72,41 +72,42 @@ PACKAGES += "\
 	 ${PN}-lrmtest \
 	 "
 
-FILES_${PN} = "/etc/ /var /usr/lib/lib*.so.* /usr/sbin /usr/share/cluster-glue/*sh /usr/share/cluster-glue/*pl\
-	/usr/lib/heartbeat/transient-test.sh \
-	/usr/lib/heartbeat/logtest \
-	/usr/lib/heartbeat/ipctransientserver \
-	/usr/lib/heartbeat/base64_md5_test \
-	/usr/lib/heartbeat/ipctest \
-	/usr/lib/heartbeat/ipctransientclient \
-	/usr/lib/heartbeat/ha_logd \
-	/usr/lib/heartbeat/lrmd \
+FILES_${PN} = "${sysconfdir} ${localstatedir} ${libdir}/lib*.so.* \
+	${sbindir} ${datadir}/cluster-glue/*sh ${datadir}/cluster-glue/*pl\
+	${libdir}/heartbeat/transient-test.sh \
+	${libdir}/heartbeat/logtest \
+	${libdir}/heartbeat/ipctransientserver \
+	${libdir}/heartbeat/base64_md5_test \
+	${libdir}/heartbeat/ipctest \
+	${libdir}/heartbeat/ipctransientclient \
+	${libdir}/heartbeat/ha_logd \
+	${libdir}/heartbeat/lrmd \
 	"
 
-FILES_${PN}-dbg += "/usr/lib/heartbeat/.debug/"
+FILES_${PN}-dbg += "${libdir}/heartbeat/.debug/"
 
-FILES_${PN}-plugin-test = "/usr/lib/heartbeat/plugins/test/test.so"
-FILES_${PN}-plugin-test-staticdev = "/usr/lib/heartbeat/plugins/test/test.*a"
-FILES_${PN}-plugin-test-dbg = "/usr/lib/heartbeat/plugins/test/.debug/"
+FILES_${PN}-plugin-test = "${libdir}/heartbeat/plugins/test/test.so"
+FILES_${PN}-plugin-test-staticdev = "${libdir}/heartbeat/plugins/test/test.*a"
+FILES_${PN}-plugin-test-dbg = "${libdir}/heartbeat/plugins/test/.debug/"
 FILES_${PN}-plugin-stonith2 = " \
-	/usr/lib/stonith/plugins/xen0-ha-dom0-stonith-helper \
-	/usr/lib/stonith/plugins/stonith2/*.so \
+	${libdir}/stonith/plugins/xen0-ha-dom0-stonith-helper \
+	${libdir}/stonith/plugins/stonith2/*.so \
 	"
-FILES_${PN}-plugin-stonith2-ribcl = "/usr/lib/stonith/plugins/stonith2/ribcl.py"
+FILES_${PN}-plugin-stonith2-ribcl = "${libdir}/stonith/plugins/stonith2/ribcl.py"
 
-FILES_${PN}-plugin-stonith2-dbg = "/usr/lib/stonith/plugins/stonith2/.debug/"
-FILES_${PN}-plugin-stonith2-staticdev = "/usr/lib/stonith/plugins/stonith2/*.*a"
+FILES_${PN}-plugin-stonith2-dbg = "${libdir}/stonith/plugins/stonith2/.debug/"
+FILES_${PN}-plugin-stonith2-staticdev = "${libdir}/stonith/plugins/stonith2/*.*a"
 
-FILES_${PN}-plugin-stonith-external = "/usr/lib/stonith/plugins/external/"
-FILES_${PN}-plugin-raexec = "/usr/lib/heartbeat/plugins/RAExec/*.so"
-FILES_${PN}-plugin-raexec-staticdev = "/usr/lib/heartbeat/plugins/RAExec/*.*a"
-FILES_${PN}-plugin-raexec-dbg = "/usr/lib/heartbeat/plugins/RAExec/.debug/"
+FILES_${PN}-plugin-stonith-external = "${libdir}/stonith/plugins/external/"
+FILES_${PN}-plugin-raexec = "${libdir}/heartbeat/plugins/RAExec/*.so"
+FILES_${PN}-plugin-raexec-staticdev = "${libdir}/heartbeat/plugins/RAExec/*.*a"
+FILES_${PN}-plugin-raexec-dbg = "${libdir}/heartbeat/plugins/RAExec/.debug/"
 
-FILES_${PN}-plugin-interfacemgr = "/usr/lib/heartbeat/plugins/InterfaceMgr/generic.so"
-FILES_${PN}-plugin-interfacemgr-staticdev = "/usr/lib/heartbeat/plugins/InterfaceMgr/generic.*a"
-FILES_${PN}-plugin-interfacemgr-dbg = "/usr/lib/heartbeat/plugins/InterfaceMgr/.debug/"
+FILES_${PN}-plugin-interfacemgr = "${libdir}/heartbeat/plugins/InterfaceMgr/generic.so"
+FILES_${PN}-plugin-interfacemgr-staticdev = "${libdir}/heartbeat/plugins/InterfaceMgr/generic.*a"
+FILES_${PN}-plugin-interfacemgr-dbg = "${libdir}/heartbeat/plugins/InterfaceMgr/.debug/"
 
-FILES_${PN}-lrmtest = "/usr/share/cluster-glue/lrmtest/"
+FILES_${PN}-lrmtest = "${datadir}/cluster-glue/lrmtest/"
 
 RDEPENDS_${PN} += "perl"
 RDEPENDS_${PN}-plugin-stonith2 += "bash"
-- 
1.9.1


