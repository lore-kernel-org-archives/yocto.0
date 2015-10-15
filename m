Return-Path: <craig.mcqueen@innerrange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA1E8E00AAA; Wed, 14 Oct 2015 22:13:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,RDNS_DYNAMIC
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
Received: from remote.innerrange.com (122-143-146.dsl.connexus.net.au
	[203.122.143.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 879FAE007D1
	for <yocto@yoctoproject.org>; Wed, 14 Oct 2015 22:13:19 -0700 (PDT)
Received: from craig-linux-vb.corp.innerrange.com (192.168.105.140) by
	IR-CENTRAL.corp.innerrange.com (192.168.1.12) with Microsoft SMTP
	Server id 8.1.436.0; Thu, 15 Oct 2015 16:13:14 +1100
From: Craig McQueen <craig.mcqueen@innerrange.com>
To: <yocto@yoctoproject.org>
Date: Thu, 15 Oct 2015 16:13:09 +1100
Message-ID: <1444885989-19002-1-git-send-email-craig.mcqueen@innerrange.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
X-TM-AS-Product-Ver: SMEX-11.1.0.1239-8.000.1202-21878.005
X-TM-AS-Result: No-1.348600-5.000000-31
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
Subject: [PATCH] os-release: put double-quotes around variable contents
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
X-List-Received-Date: Thu, 15 Oct 2015 05:13:21 -0000
Content-Type: text/plain

This makes the resulting /etc/os-release file have valid shell
assignment syntax. This makes it loadable by a shell script, using the
'source' command:

    source /etc/os-release
---
 meta/recipes-core/os-release/os-release.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/recipes-core/os-release/os-release.bb b/meta/recipes-core/os-release/os-release.bb
index db82760..2fda674 100644
--- a/meta/recipes-core/os-release/os-release.bb
+++ b/meta/recipes-core/os-release/os-release.bb
@@ -29,7 +29,7 @@ python do_compile () {
         for field in d.getVar('OS_RELEASE_FIELDS', True).split():
             value = d.getVar(field, True)
             if value:
-                f.write('{0}={1}\n'.format(field, value))
+                f.write('{0}="{1}"\n'.format(field, value))
     if d.getVar('RPM_SIGN_PACKAGES', True) == '1':
         rpm_gpg_pubkey = d.getVar('RPM_GPG_PUBKEY', True)
         bb.utils.mkdirhier('${B}/rpm-gpg')
-- 
2.1.4


