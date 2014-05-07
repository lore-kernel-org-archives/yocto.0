Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84EEBE00B3D; Wed,  7 May 2014 12:49:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=5.0 tests=RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D523EE009A6
	for <yocto@yoctoproject.org>; Wed,  7 May 2014 12:49:37 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s47JnbTf005933
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 7 May 2014 12:49:37 -0700 (PDT)
Received: from yow-asskicker.wrs.com (128.224.56.79) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.169.1; Wed, 7 May 2014 12:49:37 -0700
From: Joe MacDonald <joe@deserted.net>
To: <yocto@yoctoproject.org>, <hongxu.jia@windriver.com>
Date: Wed, 7 May 2014 15:49:21 -0400
Message-ID: <1399492168-13096-3-git-send-email-joe@deserted.net>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1399492168-13096-1-git-send-email-joe@deserted.net>
References: <1399492168-13096-1-git-send-email-joe@deserted.net>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 2/9] libpcre_8.34.bbappend: remove PRINC warning
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
X-List-Received-Date: Wed, 07 May 2014 19:49:41 -0000
Content-Type: text/plain

From: Hongxu Jia <hongxu.jia@windriver.com>

The libpcre has been upgrade to 8.34 in oe-core, but since we were still
using PRINC until now, we'll need to keep it around (in a PR form), so set
it to something suitably large that it's unlikely to break anyone's
package feed and so that it shows it's clearly an exception case.
Obviously this is just a staging activity until the next update when we
don't include anything of the sort.

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
Signed-off-by: Joe MacDonald <joe@deserted.net>
---
 recipes-support/libpcre/libpcre_8.34.bbappend |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-support/libpcre/libpcre_8.34.bbappend b/recipes-support/libpcre/libpcre_8.34.bbappend
index 25117ff..9131f8d 100644
--- a/recipes-support/libpcre/libpcre_8.34.bbappend
+++ b/recipes-support/libpcre/libpcre_8.34.bbappend
@@ -1,4 +1,4 @@
-PRINC = "1"
+PR .= "9"
 
 do_install_append () {
 	if [ ! ${D}${libdir} -ef ${D}${base_libdir} ]; then
-- 
1.7.10.4


