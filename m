Return-Path: <alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B68EE00CB0; Fri, 19 Feb 2016 17:13:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [130.164.80.23 listed in list.dnswl.org]
X-Greylist: delayed 8841 seconds by postgrey-1.32 at yocto-www;
	Fri, 19 Feb 2016 17:12:58 PST
Received: from ni.com (skprod2.natinst.com [130.164.80.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1070E00C87
	for <yocto@yoctoproject.org>; Fri, 19 Feb 2016 17:12:58 -0800 (PST)
Received: from us-aus-mgwout1.amer.corp.natinst.com (nb-snip2-1338.natinst.com
	[130.164.19.135])
	by us-aus-skprod2.natinst.com (8.15.0.59/8.15.0.59) with ESMTP id
	u1JMjb3s003740
	for <yocto@yoctoproject.org>; Fri, 19 Feb 2016 16:45:37 -0600
Received: from delcastillo2.natinst.com ([130.164.14.198])
	by us-aus-mgwout1.amer.corp.natinst.com (Lotus Domino Release 8.5.3FP6
	HF1218) with ESMTP id 2016021916453779-1177501 ;
	Fri, 19 Feb 2016 16:45:37 -0600 
From: Alejandro del Castillo <alejandro.delcastillo@ni.com>
To: yocto@yoctoproject.org
Date: Fri, 19 Feb 2016 16:45:36 -0600
Message-Id: <1455921936-24140-1-git-send-email-alejandro.delcastillo@ni.com>
X-Mailer: git-send-email 1.9.1
X-MIMETrack: Itemize by SMTP Server on US-AUS-MGWOut1/AUS/H/NIC(Release
	8.5.3FP6 HF1218|December 12, 2014) at 02/19/2016 04:45:37 PM,
	Serialize by Router on US-AUS-MGWOut1/AUS/H/NIC(Release 8.5.3FP6
	HF1218|December 12, 2014) at 02/19/2016 04:45:38 PM,
	Serialize complete at 02/19/2016 04:45:38 PM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2016-02-19_10:, , signatures=0
Subject: [meta-selinux][PATCH] busybox: explicitly set temporary shell scripts to be executable
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
X-List-Received-Date: Sat, 20 Feb 2016 01:13:01 -0000

During an on target upgrade, the postinst script is creating scripts
that call buysbox, to avoid missing commands errors. However, the
scripts permissions are not set explicitly, relying on the mask.

Signed-off-by: Alejandro del Castillo <alejandro.delcastillo@ni.com>
---
 recipes-core/busybox/busybox_%.bbappend | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-core/busybox/busybox_%.bbappend b/recipes-core/busybox/busybox_%.bbappend
index b4935b2..2e806af 100644
--- a/recipes-core/busybox/busybox_%.bbappend
+++ b/recipes-core/busybox/busybox_%.bbappend
@@ -78,6 +78,7 @@ pkg_postinst_${PN} () {
 						# we can use busybox here because even if we are using splitted busybox
 						# we've made a symlink from /bin/busybox to /bin/busybox.nosuid.
 						busybox echo "#!/bin/busybox$suffix" > $link
+                                                /bin/busybox.nosuid chmod 755 $link
 					fi
 				done < /etc/busybox.links$suffix
 			fi
-- 
1.9.1


