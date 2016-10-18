Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BA10E00C15; Mon, 17 Oct 2016 17:02:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.194 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04F93E00BFF
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:02:40 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id i85so10241496pfa.0
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 17:02:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=24klMzrt0QCc5sKi5CndOUO3vtUFs8uAYGSW4PbYJ9I=;
	b=u/ePtT8/T0rzEMbM6apNcxegtIKFVSnjYu1rhNmAAoP6NYJ3UPLY0qPwVyk05DYxF+
	l7zF8tq+mVgcFfO1njPAmrwOKqkRBtQlitjeipV4RPnxbkHOUQ/SaG6wRr7/m280JJZi
	dvRGIoFYhBqlNOEnSKScQ1F42wwO9AMrwCQTVyRACsR4Ulx0s9YpP+VB7mOVmk1hNADr
	zPQQIv2ql5HFMIEYqmeRhMLlKWku8xxyCf78wrVqxy2ES5ceRHoDLElyiaHjD6RmD/Bg
	EjwgYXCNLNaRWt7FHeGWO7UAJUZuW/pXBAT1/Rd6kJYzwoJS1Tkuv9FxmaR/heB/XAPu
	tjqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=24klMzrt0QCc5sKi5CndOUO3vtUFs8uAYGSW4PbYJ9I=;
	b=MlziTN2Yp+/XjT/0JaRhpls+te0TFxtLC167n9sNCAdK9b/7kTmBDulHEyjYl4OIjI
	PQlmZcZtupRxoMo0olj8lrZfM1c8dkjAcIycfrr+2Rg7B83OAhQxSljyrAasd3RR742W
	VDIqks7AnQ/d0bIGB3BTFWN5g5Z+hL6o8O3i//2NeKIAHau20y181jDHhyB3a/bdc/5j
	pRI8Ds7h8WrQav0c68MSBaSniI3iWsNVD+5eH53g5g5pT+c94NFU9T/2alzUhGQInvtg
	tINzsDDnuuNv54NlJsrHL44Ss3YAMLedzAS3fszUuFUQmCgm2VoCY+zuG/41I3cryNkY
	e7ig==
X-Gm-Message-State: AA6/9RlCZVnjZdTHnuKrFP6kpRmPcQT+OSe6hCq7G7fh/T/ohnq6H1czjAdiL+tRUGC/4Q==
X-Received: by 10.98.56.68 with SMTP id f65mr179917pfa.106.1476748959828;
	Mon, 17 Oct 2016 17:02:39 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com
	([2601:202:4001:9ea0:5ef:e28f:5dce:e040])
	by smtp.gmail.com with ESMTPSA id
	s6sm50597160pfg.46.2016.10.17.17.02.39
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 17 Oct 2016 17:02:39 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org,
	akuster808@gmail.com
Date: Mon, 17 Oct 2016 17:02:21 -0700
Message-Id: <1476748950-21342-8-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
References: <1476748950-21342-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 08/17] layer.conf: Add filesystem depends
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
X-List-Received-Date: Tue, 18 Oct 2016 00:02:40 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 650e6ed..3502f0b 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -9,4 +9,4 @@ BBFILE_COLLECTIONS += "security"
 BBFILE_PATTERN_security = "^${LAYERDIR}/"
 BBFILE_PRIORITY_security = "6"
 
-LAYERDEPENDS_security = "openembedded-layer perl-layer networking-layer"
+LAYERDEPENDS_security = "openembedded-layer perl-layer networking-layer filesystems-layer"
-- 
2.7.4


