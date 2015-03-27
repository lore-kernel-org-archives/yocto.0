Return-Path: <hugo.saldanha@aker.com.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B9AFE00922; Fri, 27 Mar 2015 14:23:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from asmg.aker.com.br (asmg.aker.com.br [177.159.144.67])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id CAD10E00906
	for <yocto@yoctoproject.org>; Fri, 27 Mar 2015 14:23:01 -0700 (PDT)
Received: from mail.aker.com.br (bat.bsb.aker.com.br [10.0.0.20])
	by asmg.aker.com.br [10.0.1.3]; Fri, 27 Mar 2015 18:22:44 -0300
	(envelope-from hugo.saldanha@aker.com.br)
Received: from saldanha.aker.com.br (10.4.3.1) by mail.aker.com.br (10.0.0.20)
	with Microsoft SMTP Server (TLS) id 8.3.342.0;
	Fri, 27 Mar 2015 18:22:32 -0300
From: Hugo Vasconcelos Saldanha <hugo.saldanha@aker.com.br>
To: <yocto@yoctoproject.org>
Date: Fri, 27 Mar 2015 18:25:08 -0300
Message-ID: <1427491508-24428-1-git-send-email-hugo.saldanha@aker.com.br>
X-Mailer: git-send-email 2.3.3
MIME-Version: 1.0
X-AkerSMTPGW-ServerID: d3ca878c259c98dab9711b092908c214d1fd543e
X-AkerSMTPGW-MessageID: 62a2e58ef024ae673df478dbdeab759e6c85c8a5-10o
Subject: [meta-security][PATCH] clamav: fix ncurses configure option
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
X-List-Received-Date: Fri, 27 Mar 2015 21:23:07 -0000
Content-Type: text/plain

Signed-off-by: Hugo Vasconcelos Saldanha <hugo.saldanha@aker.com.br>
---
 recipes-security/clamav/clamav_0.98.5.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/clamav/clamav_0.98.5.bb b/recipes-security/clamav/clamav_0.98.5.bb
index 8f71654..08604a7 100644
--- a/recipes-security/clamav/clamav_0.98.5.bb
+++ b/recipes-security/clamav/clamav_0.98.5.bb
@@ -53,7 +53,7 @@ EXTRA_OECONF += " --with-user=${UID}  --with-group=${GID} \
             --with-openssl=${STAGING_LIBDIR}/.. \
             --with-zlib=${STAGING_LIBDIR}/.. \
             --with-libbz2-prefix=${STAGING_DIR}${prefix} \
-            --with-libcurses-prefix=${STAGING_LIBDIR}/.. \
+            --with-libncurses-prefix=${STAGING_LIBDIR}/.. \
 "
 
 do_install_append () {
-- 
2.3.3



