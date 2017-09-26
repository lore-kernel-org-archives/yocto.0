Return-Path: <vincent.prince.fr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B1A2E00C62; Tue, 26 Sep 2017 07:27:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.193 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (vincent.prince.fr[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f193.google.com (mail-wr0-f193.google.com
	[209.85.128.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9640BE00C1A
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 07:27:20 -0700 (PDT)
Received: by mail-wr0-f193.google.com with SMTP id n64so2620974wrb.2
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 07:27:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=rpFHZfqRHptzU+s68ZGzxnuRz8gx63b7igcUiMxRwfU=;
	b=WiLVVJpHYLVaYVeAFmd5r1my8URoCsjHs2Q3+63+4DJYbYDZAiyDrgNkzdg+XjiYre
	ebWLrlJztQMEu0R2zNoXt2WtSWpFGQG4EBLIpAv3QBbswnrDYkwQxAju7mshJjDlCwxr
	dwrJMFEZmHcgY2fl3XR65l+1/uVSRa75QwkMGHgPZRD49tB9S+nD5vCCS/6iw1BzuJmq
	/6Nk1/wE+hk31w9JWK2SH5hFeV+QgOi5TJJwjKnh/lumboE2HFdIm9gSdEk/mQVs9UiW
	y/SnOnvBwNv8EoYxqCTjhj0SFWlCIxDAsTnilgyjfaN6fZZJuj+/lFk2nm4d4Zxnm8Vr
	egDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=rpFHZfqRHptzU+s68ZGzxnuRz8gx63b7igcUiMxRwfU=;
	b=Z8OgnlKEFElLVm7yWFB5hWfp5mLz4ELg2llB2BDWZRd1VQn0u+3XoniF3xF7J1VsSB
	tH3WKnekmKRo7rOG4e0qj9Vqdc3HbOjZy9DURsoBHN4iGJrGgAvZurMIEUUIhR5dKIb0
	8SFIx6bJYFs8YPlAB1FJHJ4aP0SJS6s7uLiOVrLNVflktgdFnTgmOVH8AIO6AKsjZI60
	sNCIOj7IIR8rwPN3dUhgTK35MvgIt48M8v+S9Er/gkFMtt1hT3eNZtxtxu07P7U3QhrI
	O5FXKo0CiBSdno28egwd1hXOIXgnOd37lqcjqtOnnb8AoAaeAg8oiP/YkDb2lMsS1Q8Q
	o0Jg==
X-Gm-Message-State: AHPjjUjR2DCtxy/4k+n9rjkwvPZEPTJSP54QxJG2nHM8khvYCh4tBVAY
	oE2JuVmf86VWn/z+DNd/tfp9mg==
X-Google-Smtp-Source: AOwi7QDZ7lSChcma0QCva+KgDv2uJglTCym20s4xUNmlIu8s/ii31YPTviOpSAS+Yd77ul2Rpw2FzQ==
X-Received: by 10.223.177.139 with SMTP id q11mr10546012wra.269.1506436039160; 
	Tue, 26 Sep 2017 07:27:19 -0700 (PDT)
Received: from VPR-VM.fra.hager.corp ([212.51.167.132])
	by smtp.gmail.com with ESMTPSA id 204sm3295305wms.1.2017.09.26.07.27.18
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 26 Sep 2017 07:27:18 -0700 (PDT)
From: Vincent Prince <vincent.prince.fr@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 26 Sep 2017 16:27:01 +0200
Message-Id: <1506436021-23509-1-git-send-email-vincent.prince.fr@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-oracle-java][PATCH] Revert "oracle-jse-ejre: Fix destination" (4eb10648f31539f95110852496b987db6f74df55)
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
X-List-Received-Date: Tue, 26 Sep 2017 14:27:21 -0000

We need to add JRE directly in ${JDK_JRE}${PV}_${PV_UPDATE} as oracle-jse.inc installs all dest folder.

Without this patch JRE is installed in /usr/lib/jvm/java-8-oracle/jre/bin/java and /usr/bin/java points to
/usr/lib/jvm/java-8-oracle/bin/java

Signed-off-by: Vincent Prince <vincent.prince.fr@gmail.com>
---
 recipes-devtools/oracle-java/oracle-jse-ejre.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-devtools/oracle-java/oracle-jse-ejre.inc b/recipes-devtools/oracle-java/oracle-jse-ejre.inc
index 0af0b6b..d7a4b33 100644
--- a/recipes-devtools/oracle-java/oracle-jse-ejre.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-ejre.inc
@@ -19,7 +19,7 @@ LIC_FILES_CHKSUM = "\
 	"
 
 do_compile() {
-	DEST=${S}/ejre${PV}_${PV_UPDATE}/jre
+	DEST=${S}/${JDK_JRE}${PV}_${PV_UPDATE}
 	rm -rf ${DEST}
 	JAVA_HOME=${STAGING_DIR_NATIVE}/${JDK_HOME} ejdk${PV}_${PV_UPDATE}/bin/jrecreate.sh --dest ${DEST}
 }
-- 
2.7.4


