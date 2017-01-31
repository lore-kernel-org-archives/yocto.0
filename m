Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38540E0096D; Mon, 30 Jan 2017 23:48:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.53 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3D69E009BC
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 23:48:24 -0800 (PST)
Received: by mail-it0-f53.google.com with SMTP id c7so210833216itd.1
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 23:48:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=3v/6GKIyL3769YmVUMepRe18uOWLSm6YVmu0QRr8Ogo=;
	b=AO3tzt3EFSXpO1UWqscJzKk39vVP5/UYU9uJNuaGxcT9ILCuC973eT5U6xesCYBqsG
	V7ZuLrHJHLIyxWJNIsj54pOl+1t9kNfXM/a011KCpSjN0FxGGjHCNin1OO1kp3CEPnql
	tYs0Yx5G8yixLBzs+l7KgcaFHkSnNf1sXU2qxBPZajvWoV74h4/FUnEcMkHt2tMozTnr
	QJjEER8TJDfOfm9JnOna+R2wysEzibS5+sS9CChQaGLt/BsBn3pXsjQSZ/vxq7CmNtgC
	qxu0puQ1EdqG6a5U+wIooMZSVEL8BMsCGsKN1HTJOXQ0FfcOa4Lt2Bt5j2DVn45D2hTM
	3Ufw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=3v/6GKIyL3769YmVUMepRe18uOWLSm6YVmu0QRr8Ogo=;
	b=paskqQQCTcBTTuu3+T18w8lfCSEzZw5ymlc8q0oB8RLBe6Hk9/RGSfk5xTpD7gjgDS
	hXcoLTzY7AMsmvWeKSaHX+wmPHe34de4EqxdBDCutgqlEifE0IDMHXUmqSNygD9wkMp3
	f81saqaviHTAjxxSbtu72a4QdyJpGbwjmMqM8qec4d6yUkywqfxH3erjJLMVt/KKNIRe
	Cvczdc9itKohnfJX0To7ljeuZfCw1sPQAbVeMJ3Goodf0G1gnGl5KFZbA1+yxSRfEDWY
	sIYw2pHMHcfVVvvTWEfVap2d/h1/Gbqy8VbJjELggcfaFqr508zpE7uu+TQ2x4yxXOtO
	VJkA==
X-Gm-Message-State: AIkVDXICdbubZUT77iSXTYUZTmTNPPqq79EAXo1D7fvex7TlDigwE8TjqNU/BLFDLKYJKafp
X-Received: by 10.36.92.4 with SMTP id q4mr19612294itb.89.1485848903647;
	Mon, 30 Jan 2017 23:48:23 -0800 (PST)
Received: from pohly-desktop.fritz.box (p5DE8DFEB.dip0.t-ipconnect.de.
	[93.232.223.235])
	by smtp.gmail.com with ESMTPSA id 86sm9758942iok.8.2017.01.30.23.48.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 30 Jan 2017 23:48:22 -0800 (PST)
From: Patrick Ohly <patrick.ohly@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 31 Jan 2017 08:48:02 +0100
Message-Id: <e8bff069d164ce81ce08c70a448b6a6d06fef784.1485848669.git-series.patrick.ohly@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.42397547dfc6733226cafa5b4b6bbe50956b78cf.1485848669.git-series.patrick.ohly@intel.com>
References: <cover.42397547dfc6733226cafa5b4b6bbe50956b78cf.1485848669.git-series.patrick.ohly@intel.com>
Subject: [meta-security][PATCH 3/8] trousers: tcsd.conf must be owned tss:tss
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
X-List-Received-Date: Tue, 31 Jan 2017 07:48:27 -0000

The upstream dist/Makefile.am ensures that /etc/tcsd.conf
is owned by tss:tss, and that must not be changed because
otherwise tcsd refuses to start.

Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
---
 recipes-tpm/trousers/trousers_git.bb | 1 -
 1 file changed, 1 deletion(-)

diff --git a/recipes-tpm/trousers/trousers_git.bb b/recipes-tpm/trousers/trousers_git.bb
index 5737de3..a256bfa 100644
--- a/recipes-tpm/trousers/trousers_git.bb
+++ b/recipes-tpm/trousers/trousers_git.bb
@@ -39,7 +39,6 @@ do_install_append() {
         install -m 0644 ${WORKDIR}/tcsd.service ${D}${systemd_unitdir}/system/
         sed -i -e 's#@SBINDIR@#${sbindir}#g' ${D}${systemd_unitdir}/system/tcsd.service
     fi        
-    chown -R root:root ${D}${sysconfdir}/tcsd.conf
 }
 
 CONFFILES_${PN} += "${sysconfig}/tcsd.conf"
-- 
git-series 0.9.1

