Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58D0EE00C25; Fri, 30 Mar 2018 01:40:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qt0-f196.google.com (mail-qt0-f196.google.com
	[209.85.216.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBB62E009CF
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2018 01:40:27 -0700 (PDT)
Received: by mail-qt0-f196.google.com with SMTP id f8so8796710qtg.12
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2018 01:40:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=P3qxrXSwHXJ1ML+hDI9zWuNBSh4Tv+nB4hSnxZHkss8=;
	b=bKazUFNv2MNiWZEEicsxWGvQ/PVsXXnc6wYmfeTQvyXUgFeD9zObD7gQWosS+s01si
	1YNrqacw/bdGvTfe97se+EMUnXcxhJFOyD7m2TTfvqL5ND8kM9d6rnE/kwCpe6EF3dXn
	4LMJjEu7BUSap1xvJvZD7qSl9TVB5IbNYtfNNKpVCUevRivX1P3GcaeF2JwKQmc3Dudk
	w0MmLtq/sY7YGCU8PHzUVrnDEBCm2AoyAwrVAkt4pWR1MxKtyDGhUA6NNtqsWpwN2naD
	3usS8kF0/Hpb2F9F3Xci7GAnGDrvhQd/oMHHwtpZEDPTZaEn35BRbx/ymYYuutjhR+13
	uCDw==
X-Gm-Message-State: AElRT7GbZZpK8wtgr4hfTtWQyp6Dv42RSl1Bp3ch7MZq69+L3WqImyJV
	DB3tufB1N542ixzZHQNLieSTKPsw
X-Google-Smtp-Source: AIpwx49twS2JysMK3ETwZSgmjrHrO2AJUKzcSq5gHBRzOHkn9SkNiF7Z8uya3CAl3+4ivUxogJE1/A==
X-Received: by 10.200.82.21 with SMTP id r21mr16636083qtn.305.1522399226912;
	Fri, 30 Mar 2018 01:40:26 -0700 (PDT)
Received: from tfsielt31850.garage.tyco.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	i68sm6028679qkd.25.2018.03.30.01.40.25 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 30 Mar 2018 01:40:26 -0700 (PDT)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Fri, 30 Mar 2018 09:40:18 +0100
Message-Id: <20180330084019.18955-3-git@andred.net>
X-Mailer: git-send-email 2.16.2
In-Reply-To: <20180330084019.18955-1-git@andred.net>
References: <20180330084019.18955-1-git@andred.net>
MIME-Version: 1.0
Subject: [meta-java][PATCH 2/3] layer.conf: add ca-certificates-java to SIGGEN_EXCLUDERECIPES_ABISAFE
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
X-List-Received-Date: Fri, 30 Mar 2018 08:40:28 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: André Draszik <andre.draszik@jci.com>

Same as ca-certificates in openembedded-core

Signed-off-by: André Draszik <andre.draszik@jci.com>
---
 conf/layer.conf | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/conf/layer.conf b/conf/layer.conf
index 84a4d89..60fd726 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -9,3 +9,7 @@ BBFILE_PATTERN_meta-java := "^${LAYERDIR}/"
 BBFILE_PRIORITY_meta-java = "10"
 
 LICENSE_PATH += "${LAYERDIR}/licenses"
+
+SIGGEN_EXCLUDERECIPES_ABISAFE += "\
+    ca-certificates-java \
+"
-- 
2.16.2


