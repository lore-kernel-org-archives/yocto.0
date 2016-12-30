Return-Path: <marcelo.magallon@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB4AFE0043B; Fri, 30 Dec 2016 10:02:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [15.241.32.99 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 385 seconds by postgrey-1.32 at yocto-www;
	Fri, 30 Dec 2016 10:02:00 PST
Received: from g9t1613g.houston.hpe.com (g9t1613g.houston.hpe.com
	[15.241.32.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 867C2E003D9
	for <yocto@yoctoproject.org>; Fri, 30 Dec 2016 10:02:00 -0800 (PST)
Received: from g2t2354.austin.hpe.com (g2t2354.austin.hpe.com [15.233.44.27])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by g9t1613g.houston.hpe.com (Postfix) with ESMTPS id 5B33262680
	for <yocto@yoctoproject.org>; Fri, 30 Dec 2016 17:55:35 +0000 (UTC)
Received: from localhost (nyx.americas.hpqcorp.net [16.116.9.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by g2t2354.austin.hpe.com (Postfix) with ESMTPS id 14CB574
	for <yocto@yoctoproject.org>; Fri, 30 Dec 2016 17:55:33 +0000 (UTC)
Date: Fri, 30 Dec 2016 11:55:33 -0600
From: "Marcelo E. Magallon" <marcelo.magallon@hpe.com>
To: yocto@yoctoproject.org
Message-ID: <20161230175532.25q6z54vq4usvdsc@nyx.americas.hpqcorp.net>
MIME-Version: 1.0
User-Agent: NeoMutt/20161126 (1.7.1)
Subject: failure to create image with debugfs and logrotate
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
X-List-Received-Date: Fri, 30 Dec 2016 18:02:04 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

I have an build configured to create a debug fs and the image includes
logrotate.

I'm seeing a failure similar to the one fixed in this change:

	https://patchwork.openembedded.org/patch/122139/

but for /var/lib/logrotate.status, which is marked as a conffile in
logrotate's recipe.

My fix looks like the following patch. I'm taking a clue from Debian and
instead of marking logrotate.status as a configuration file, I'm not
adding it to the packaged files and instead I'm creating an empty
version when the package is installed. If the package is removed, I
remove the file.

I'm also seeing a similar failure for nfs-utils (/var/lib/nfs). Again,
Debian handles this in a similar way: those files are not shipped with
the package, but instead they are handled via package scripts. The
alternative is to extend the fix implemented in the referenced patch and
add /var/lib/nfs to the list of special directories. Needless to say,
this doesn't scale well.

Any comments?

Marcelo

From fc8819afbadf1e2ffa30babc45267a92ae78e246 Mon Sep 17 00:00:00 2001
From: "Marcelo E. Magallon" <marcelo.magallon@hpe.com>
Date: Fri, 30 Dec 2016 09:01:30 -0800
Subject: [PATCH] Remove logrotate.status from list of CONFFILES

Since /var/lib/logrotate.status is declared to be a configuration file,
some packaging tools (dpkg, ipkg) will compute a checksum and try to
validate that when asked for status. This happens when the system is
configured to generate a debug fs, and because of the mechanics used to
create it, the operation fails. Removing this file from the
configuration files list fixes this.

Signed-off-by: Marcelo E. Magallon <marcelo.magallon@hpe.com>
---
 meta/recipes-extended/logrotate/logrotate_3.9.1.bb | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/meta/recipes-extended/logrotate/logrotate_3.9.1.bb b/meta/recipes-extended/logrotate/logrotate_3.9.1.bb
index 5f1a601aeb..1fa2096b19 100644
--- a/meta/recipes-extended/logrotate/logrotate_3.9.1.bb
+++ b/meta/recipes-extended/logrotate/logrotate_3.9.1.bb
@@ -27,8 +27,7 @@ PACKAGECONFIG ?= "\
 PACKAGECONFIG[acl] = ",,acl"
 PACKAGECONFIG[selinux] = ",,libselinux"
 
-CONFFILES_${PN} += "${localstatedir}/lib/logrotate.status \
-		    ${sysconfdir}/logrotate.conf"
+CONFFILES_${PN} += "${sysconfdir}/logrotate.conf"
 
 # If RPM_OPT_FLAGS is unset, it adds -g itself rather than obeying our
 # optimization variables, so use it rather than EXTRA_CFLAGS.
@@ -59,5 +58,16 @@ do_install(){
     mkdir -p ${D}${localstatedir}/lib
     install -p -m 644 examples/logrotate-default ${D}${sysconfdir}/logrotate.conf
     install -p -m 755 examples/logrotate.cron ${D}${sysconfdir}/cron.daily/logrotate
-    touch ${D}${localstatedir}/lib/logrotate.status
+}
+
+pkg_postinst_${PN}() {
+#!/bin/sh
+if [ -n "$D" ] ; then
+    touch $D${localstatedir}/lib/logrotate.status
+fi
+}
+
+pkg_postinst_${PN}() {
+#!/bin/sh
+rm $D${localstatedir}/lib/logrotate.status
 }
-- 
2.11.0


