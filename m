Return-Path: <vincent.prince.fr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C646E00DD5; Mon, 30 Oct 2017 02:51:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vincent.prince.fr[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.196 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.196 listed in dnsbl.sorbs.net]
Received: from mail-wr0-f196.google.com (mail-wr0-f196.google.com
	[209.85.128.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EEDAE00D9B
	for <yocto@yoctoproject.org>; Mon, 30 Oct 2017 02:51:26 -0700 (PDT)
Received: by mail-wr0-f196.google.com with SMTP id y9so11870057wrb.2
	for <yocto@yoctoproject.org>; Mon, 30 Oct 2017 02:51:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=czuugDp4WRTkddOBvNDT152UCQsBwhPkrmkkYE5ldNw=;
	b=rVtuCD+ubO4fvNnugl38af8l21MaeNOM3F/vGAtRay9jsGGl0PModetIi42lSfEAcH
	o0Fv8obxcAlyAOjN2/Jt0QKJFUrEGdDilkjOCnYZDyhXPGNPCe28XS83dXkk1GAqMxIG
	0gO9Bbc0mRVtbJlEqYE/qntWTBWWdLvBUpu6sIscDmBjfdmfLdr+jBX+aA9bzuN4Xhfm
	F12hD11o/bt6FpqqI/KdZ99EwJezSMgWOruKwxTkphQnwhViTumANwTU7tgYHzBl80ut
	MH9kstPHquqhCY6vFFC/s85kq0+dNo3EyJfr6iM0YtR3G3IHwUww8JBU1MotldtQbEEW
	/17w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=czuugDp4WRTkddOBvNDT152UCQsBwhPkrmkkYE5ldNw=;
	b=YxyB9tHwelFE+NiweLMx5f0h7Q75vVdIi1PHB3IVyuWVXIUcQhJEz8DtxVB0ACLKzr
	B2SjIxOc2Gq86r61t5j7H/65t5LMBpCG1HgFwYy3oZIyp8J+RixYrXXIBxScasex5vwT
	z1L1zDAf58yQV+51dIg4731gWf5222FfrL5VWD+HQ28HHSNo54fuKu/fFGxMlRLcZ0eu
	F2jOk2MPfcftWLV8K7x3JtQdjR9dAL83KnH5DK7sPo6ROe7MULw0PlLSBKi9rEXDxaMR
	0iI1hj4Wjq1+VaDHXyLdpIvfNw5vvhZcjT+AOWSeDQRc2Q0XR90P8Ba0+e2ZQz7Nr4Li
	sBDg==
X-Gm-Message-State: AMCzsaUNZCmioo0DnWBJQ4KPNfjEBM86BJmExfTkww9a1R0ESOoMwRCj
	mLFFwgLOkbHpG3naQWPSiqVUrcAA
X-Google-Smtp-Source: ABhQp+QA698stCE6K2FSXoPbLMu/+fYm+ynrtwtwAwGEV6o0x7jioKzLR2if/r5UqcbQ2elxL/CsPw==
X-Received: by 10.223.153.202 with SMTP id y68mr6930478wrb.216.1509357085642; 
	Mon, 30 Oct 2017 02:51:25 -0700 (PDT)
Received: from VPR-VM.fra.hager.corp ([212.51.167.132])
	by smtp.gmail.com with ESMTPSA id
	v35sm21922222wrc.13.2017.10.30.02.51.24
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 30 Oct 2017 02:51:25 -0700 (PDT)
From: Vincent Prince <vincent.prince.fr@gmail.com>
To: yocto@yoctoproject.org,
	maxin.john@intel.com
Date: Mon, 30 Oct 2017 10:32:44 +0100
Message-Id: <1509355964-18527-2-git-send-email-vincent.prince.fr@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1509355964-18527-1-git-send-email-vincent.prince.fr@gmail.com>
References: <1509106693-16052-1-git-send-email-vincent.prince.fr@gmail.com>
	<1509355964-18527-1-git-send-email-vincent.prince.fr@gmail.com>
Subject: [meta-oracle-java][PATCH V2 2/2] Fix do_populate_sysroot: sstate found an absolute path symlink
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
X-List-Received-Date: Mon, 30 Oct 2017 09:51:33 -0000

Signed-off-by: Vincent Prince <vincent.prince.fr@gmail.com>
---
 recipes-devtools/oracle-java/oracle-jse-jdk.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk.inc b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
index a7210d9..84772e6 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
@@ -16,8 +16,8 @@ do_install_class-native() {
 	cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE}	${D}${JDK_HOME}
 
 	install -d				${D}${bindir}
-	ln -sf ${JDK_HOME}/bin/java		${D}${bindir}
-	ln -sf ${JDK_HOME}/bin/javac		${D}${bindir}
+	ln -sf ../lib/jvm/${JDK_DIR}/bin/java	${D}${bindir}
+	ln -sf ../lib/jvm/${JDK_DIR}/bin/javac	${D}${bindir}
 
 	install -d				${D}${JDK_HOME}/bin
 	ln -sf javah				${D}${JDK_HOME}/bin/gjavah
-- 
2.7.4


