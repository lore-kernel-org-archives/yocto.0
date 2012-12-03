Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1073E006C6
	for <yocto@yoctoproject.org>; Mon,  3 Dec 2012 15:23:26 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Dec 2012 15:22:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,209,1355126400"; d="scan'208";a="251340603"
Received: from wrk.jf.intel.com ([10.7.202.159])
	by orsmga002.jf.intel.com with ESMTP; 03 Dec 2012 15:23:24 -0800
From: Kevin Strasser <kevin.strasser@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon,  3 Dec 2012 15:22:42 -0800
Message-Id: <bf3576dbca148b536d87be72e5f972af999b7c5a.1354575672.git.kevin.strasser@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1354575672.git.kevin.strasser@linux.intel.com>
References: <cover.1354575672.git.kevin.strasser@linux.intel.com>
Subject: [meta-baryon][PATCH 1/1] proftpd: conditionally remove /usr/libexec
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
X-List-Received-Date: Mon, 03 Dec 2012 23:23:27 -0000

As of poky commit id 1d18224b24a515a07170ce36dbd725cb203d3300
libexecdir has been changed to ${libdir}/${BPN} which is typically
/usr/lib. This change introduces a check to see if /usr/libexec is
being used before attempting to remove it.

Fixes [YOCTO #3504]

Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
---
 recipes-extended/proftpd/proftpd_1.3.4b.bb |    5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/recipes-extended/proftpd/proftpd_1.3.4b.bb b/recipes-extended/proftpd/proftpd_1.3.4b.bb
index 8ebafbf..2b2b4e2 100644
--- a/recipes-extended/proftpd/proftpd_1.3.4b.bb
+++ b/recipes-extended/proftpd/proftpd_1.3.4b.bb
@@ -34,7 +34,10 @@ FTPGROUP = "ftp"
 
 do_install () {
 	oe_runmake DESTDIR=${D} install
-	rmdir ${D}${libexecdir} ${D}${libdir}/proftpd ${D}${datadir}/locale
+	rmdir ${D}${libdir}/proftpd ${D}${datadir}/locale
+	if [ -d ${D}/usr/libexec ] ; then
+		rmdir ${D}/usr/libexec
+	fi
 	sed -i '/ *User[ \t]*/s/ftp/${FTPUSER}/' ${D}${sysconfdir}/proftpd.conf
 	sed -i '/ *Group[ \t]*/s/ftp/${FTPGROUP}/' ${D}${sysconfdir}/proftpd.conf
 	install -d ${D}${sysconfdir}/init.d
-- 
1.7.9.5


