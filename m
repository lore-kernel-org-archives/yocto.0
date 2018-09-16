Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FF70E00ACF; Sun, 16 Sep 2018 08:57:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.173 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com
	[209.85.215.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57951E009B8
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:30 -0700 (PDT)
Received: by mail-pg1-f173.google.com with SMTP id x26-v6so6491725pge.12
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=Z7EOFf9B03GWG498sYZTJCpE9YvLah6+6m/6fN+oc9c=;
	b=qFhp4KMEQnBU1UTnX1jQ0Nk6pe8EUktebGUTH4fa1NgD6TGKkxL7ahYNyxk9QHfdlF
	xOL5+iXCJt1Kb3/XQKTQKoJ+f2I2rwQhhsYJzgGYlO+T7262yYW8M/GsLT/NP00JIh6u
	xJwFRTs/GA0l7THGE817f78o7zEFyYE8JFYek8MxYHRI4fkCQ8snjk4QzRWESUYrHqm5
	YN9wgZHZdmFldxx8EiUDzutxJyq1MOpWeSOICQJ76h2D40dn6RW5l8U9TH4naWHKycXB
	lD7uMQXwRZmofPtFkmdLMKxfURgdVEnh6WeuV6SfG9DQEbTb5pqfEX7v4vu+Pg0MYK7/
	wT1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=Z7EOFf9B03GWG498sYZTJCpE9YvLah6+6m/6fN+oc9c=;
	b=tB0jMbtTmD7Ky9DLixMjmyAYTPrzIm/4r14FRBLkAb9IY8EGpreU4P/ktcUgogCroJ
	AraWo8K1Nn8HMU7SxC2GKzVf8WXPpHS9Na3vGOzVe+L9hjeeRmmbhVPXCh2FHx9bMEc/
	RJRMvZldisNarB7hjsnE9c9/gp2JMnPpKKgpw1xma0b4zaxjSSJq69hJjwmX3GCbxaxd
	F7Uhs2Nvw/Ty8i3/GfHf5nxMmBA1kgUgQYpx/VJ5RGXjAf9I1rx4NFbmAx6POQAvRthl
	iAvhuymA21aJUzNFfE2Ekj8bH/b8BzOZWiXMJuZu5hww+QvCXfzZML4fPAFqAzMUbDQ5
	LptA==
X-Gm-Message-State: APzg51AWbyH4Kj0AoD24zzKDZFzjN2Xnvhq1omDQaIkb32T8O1dr9D9P
	cKA5J8gompudYmry5EVluoARsVx8
X-Google-Smtp-Source: ANB0VdYt1gYynlBSCc4wE3pUiN044NRG3j/9TN8T3wTx48H+KuX9UAwkVdo6Qlg3CYo1x0E/CAiYlg==
X-Received: by 2002:a63:a35f:: with SMTP id
	v31-v6mr20255453pgn.261.1537113449874; 
	Sun, 16 Sep 2018 08:57:29 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	f13-v6sm14192326pgs.92.2018.09.16.08.57.28
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Sep 2018 08:57:29 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 16 Sep 2018 08:57:03 -0700
Message-Id: <20180916155719.9911-9-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20180916155719.9911-1-akuster808@gmail.com>
References: <20180916155719.9911-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 09/25] layer_conf: increase priority
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
X-List-Received-Date: Sun, 16 Sep 2018 15:57:33 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index efc426e..f8bbe57 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -7,7 +7,7 @@ BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 
 BBFILE_COLLECTIONS += "security"
 BBFILE_PATTERN_security = "^${LAYERDIR}/"
-BBFILE_PRIORITY_security = "6"
+BBFILE_PRIORITY_security = "8"
 
 LAYERSERIES_COMPAT_security = "sumo"
 
-- 
2.17.1


