Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66770E00786; Tue, 23 Sep 2014 12:48:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f42.google.com (mail-qg0-f42.google.com
	[209.85.192.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93441E0034C
	for <yocto@yoctoproject.org>; Tue, 23 Sep 2014 12:48:12 -0700 (PDT)
Received: by mail-qg0-f42.google.com with SMTP id z60so3735333qgd.15
	for <yocto@yoctoproject.org>; Tue, 23 Sep 2014 12:48:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=OHZye40qUCllHg/kcXoPOpGUbYwhkGWxTxC4SoeQs0o=;
	b=tIboDI6aVJd3Ue8bP5hmaKjvM6ZM9Av74QmFGyKIFz19QvSXKL7rj0hiZJwdCuwMpm
	zdVrx9ZFqrH9IBiVGIQQzMMzQrZySOwER8LMTh8mlS3wf97eQ+5qCPPDY+3tQGazXNeH
	HXD5clOIfl6wVGt5wt2jsg9Zn+MxAFp+NHL8aSO2Z4HcfSp89aHzmcMHCsukO92Hojpd
	tqUnkzWZZMFx2KzRxci+NLw2qK2J0v/W9ua4lBF7xGvKdhJbh2uWG7KktO5kPmRl1WMb
	fH5ZnwLjHwrk5s4XfR+tREoPj0tOgd64wqK7TfRv10W3/m27CTPXZj1RNE6GscuFQOiu
	rSgQ==
X-Received: by 10.140.83.105 with SMTP id i96mr3036129qgd.18.1411501691688;
	Tue, 23 Sep 2014 12:48:11 -0700 (PDT)
Received: from arch.localdomain ([187.11.221.17])
	by mx.google.com with ESMTPSA id i6sm11020061qge.37.2014.09.23.12.48.09
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 23 Sep 2014 12:48:11 -0700 (PDT)
From: Daniel Hilst SellI <danielhilst@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 23 Sep 2014 16:43:56 -0300
Message-Id: <1411501436-25404-1-git-send-email-danielhilst@gmail.com>
X-Mailer: git-send-email 2.1.0
Subject: [PATCH] ARM: Headfull JVM added.
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
X-List-Received-Date: Tue, 23 Sep 2014 19:48:23 -0000

I've added the headful version of the JVM. Also, I'm suggesting a new
way of fetching. Since Oracle forces it's users to go to its website
and accept the aggrement, non-human fetching is aways hack and error
prone.  What I sugest is that the build system ask for the user to
visit the website, download the package and put it on right place, if
isn't already there.
---
 ...le-jse-ejre-arm-vfp-hflt-client-headful_1.7.0.bb | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)
 create mode 100644 recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headful_1.7.0.bb

diff --git a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headful_1.7.0.bb b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headful_1.7.0.bb
new file mode 100644
index 0000000..e3030a6
--- /dev/null
+++ b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-vfp-hflt-client-headful_1.7.0.bb
@@ -0,0 +1,21 @@
+PV_UPDATE = "60"
+BUILD_NUMBER = "19"
+
+require oracle-jse-ejre.inc
+
+#  ejre-7u60-fcs-b19-linux-arm-vfp-hflt-client_headful-07_may_2014.tar.gz
+DL_FILE = "ejre-7u${PV_UPDATE}-fcs-b${BUILD_NUMBER}-linux-arm-vfp-hflt-client_headful-07_may_2014.tar.gz"
+SRC_URI = "http://download.oracle.com/otn/java/ejre/7u${PV_UPDATE}-b${BUILD_NUMBER}/${DL_FILE}"
+
+SRC_URI[md5sum] = "b72400960629e7403c4b579dada2a804"
+SRC_URI[sha256sum] = "c4a64be693e0e27ca95ffe3036c56156e3d75e07f620fd913308eb03cdf86779"
+
+do_fetch() {
+        if ! test -f "${DL_DIR}/${DL_FILE}"; then
+            echo "Please accept the License Agreement, download the ${DL_FILE} and put it on ${DL_DIR}"
+            echo "The download link can be found at http://www.oracle.com/technetwork/java/embedded/embedded-se/downloads/javase-embedded-downloads-2209751.html"
+            return 1
+        else
+            return 0
+        fi
+}
\ No newline at end of file
-- 
2.1.0


