Return-Path: <bkylerussell@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7242EE00C7C; Thu, 12 Nov 2015 20:55:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bkylerussell[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.182 listed in list.dnswl.org]
Received: from mail-ig0-f182.google.com (mail-ig0-f182.google.com
	[209.85.213.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 492DCE00C75
	for <yocto@yoctoproject.org>; Thu, 12 Nov 2015 20:55:44 -0800 (PST)
Received: by igl9 with SMTP id 9so8809958igl.0
	for <yocto@yoctoproject.org>; Thu, 12 Nov 2015 20:55:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=SdYflVhgaZz7j70UsJfbnf6L3wGtwyjkyd23qqrqevQ=;
	b=XXSBjKIF9NQB71Xm9LsMelE6EGQ3SMeubXp6wwVkIgPTvzfEtg0M4p9CBWE/A1cla4
	IPa8m7JTte3FX8jvtYemt/oMYijbmkl4/Yiigx7KurqXo3YAeH/xqoZOg+hoYacCLkge
	tbUjuPTSGvuGGf6by/TLQwe3u7oMP8WqkeEHe7RjDfrHpvWU4qvFVrtXNgHAmBA+9QT6
	R878m1vZfYxsJKe+I546I94sx3hPHQZGtDoU/BtI2LJsmh7IpJNW0DXCP1vsMzeNZ+VS
	/fyQr23FW5kmRcjdreL5/6sQpbCXD++64wT0gI1nwpK23gnkZus6kVSD1Wbo5VY/D0e4
	1Ebg==
X-Received: by 10.50.122.68 with SMTP id lq4mr1351120igb.87.1447390543714;
	Thu, 12 Nov 2015 20:55:43 -0800 (PST)
Received: from brrussell-Latitude-E6530.natcky.rr.com
	(cpe-69-23-226-235.natcky.res.rr.com. [69.23.226.235])
	by smtp.gmail.com with ESMTPSA id
	z197sm6290998iod.39.2015.11.12.20.55.43
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 12 Nov 2015 20:55:43 -0800 (PST)
From: Kyle Russell <bkylerussell@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 12 Nov 2015 23:55:31 -0500
Message-Id: <1447390531-2550-1-git-send-email-bkylerussell@gmail.com>
X-Mailer: git-send-email 1.7.9.5
X-Mailman-Approved-At: Fri, 13 Nov 2015 08:25:40 -0800
Cc: Kyle Russell <bkylerussell@gmail.com>
Subject: [meta-oracle-java][PATCH] oracle-jse-jdk: Don't use ${D} installing symlink target
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
X-List-Received-Date: Fri, 13 Nov 2015 04:55:46 -0000

When installed to the sysroot, this makes the symlink point to the
workdir, which is invalid in the sstate package.  Since we cd to
${D} before creating the symlink, this ensures the link is created
in the correct install location, so just point the link to the final
target so that the patch is correctly fixed up during populate_sysroot.
---
 recipes-devtools/oracle-java/oracle-jse-jdk.inc |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk.inc b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
index 54e83b8..6f13125 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
@@ -16,7 +16,7 @@ do_install_class-native() {
     install -d -m 0755 ${D}${bindir}
     cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE} ${D}${libdir}/
     for prog in java javac; do
-	( cd ${D}${bindir} && ln -sf ${D}${libdir}/${JDK_JRE}${PV}_${PV_UPDATE}/bin/$prog )
+	( cd ${D}${bindir} && ln -sf ${libdir}/${JDK_JRE}${PV}_${PV_UPDATE}/bin/$prog )
     done
 
     ( cd ${D}${libdir}/${JDK_JRE}${PV}_${PV_UPDATE}/bin ; \
-- 
1.7.9.5


