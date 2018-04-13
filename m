Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A45D8E009DB; Fri, 13 Apr 2018 15:34:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.160.67 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f67.google.com (mail-pl0-f67.google.com
	[209.85.160.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F583E00529
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 15:34:24 -0700 (PDT)
Received: by mail-pl0-f67.google.com with SMTP id c7-v6so6839430plr.5
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 15:34:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=hqzHgfVMEczhaiQbeVIzoPHw1pVfsPu9CHNyBq1kp6M=;
	b=Nn6eUT9I/ZlGxI1d5y88dFkOEtbYv7kl4aGqDSEIQFicWhgqbEkiD34TZ8Rz3JDAaG
	w1wWDVQT0sXezcOmeoyM/6U4J4x7zE3QyG1jQSMo0uBus0aFBGqrkmN6bio3chhsaOFh
	Ma952ih2hyksPY5UfBoGCWUJMuKqt6QjKv8SBV8IUpNHZP/FAGcay2R2HNmBMlV64e42
	w5xgswgsJZaprwSE8JkCESqAAv/u1C6g8uCX06eOSwN2w5nSADTKZXobCusJUd9+EmGi
	33TAZDJeaTV33yhglnNUKq16jCU65mIsXbd0K86t6TvsLcfh6sllN8Z9ArRMjEkaEKHl
	54gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=hqzHgfVMEczhaiQbeVIzoPHw1pVfsPu9CHNyBq1kp6M=;
	b=RzxEA+T/8vK+9kpMgn6bomF6TDXEtRaPRDlH/rX4ybR54rgDyqB70LqXGSn2kLHbsi
	vIMtip7/a51kZFa3WVyDgICobfBpLoOFb03biJO6VMzRD7As2IORq2jUfIe9eEoL4Yeq
	rpJ6Y6bO00Ysv+bQ8Ojj8UJeXpTEIuXyVxEWVcLavdodn9zhffLHY1/+VtWWfe2iE3Wg
	m4T3sQ2oIpz8HFHEW5OJU2lP1dniqw1UfOXFOQyGc8v39LjbNr02JM0Ri+4ngZ6hBAqV
	MaUsZ8YeKbDTCMlJgNJvsTQgeC9T6P/p73J3uQC5osj6auWRD6aclqR4mlejHfffCkzN
	8ckQ==
X-Gm-Message-State: ALQs6tAFcQVtjusRrheGtWkEHZ3NxRwl3xNs33qgD8pYgyurwzPmfDS9
	Y8yi/NVZ5ymIG4WK2ssKRH8=
X-Google-Smtp-Source: AIpwx48bM6MbKJIvvd23jeCF2j9MpK2SBYNvUqUEJR84Lyqw6NZcac0/6pF7yF6l/qr073gS+JlaJQ==
X-Received: by 2002:a17:902:a704:: with SMTP id
	w4-v6mr6693342plq.5.1523658863797; 
	Fri, 13 Apr 2018 15:34:23 -0700 (PDT)
Received: from akuster-ThinkPad-T460s
	([2601:202:4000:1184:dd04:5ab2:7006:f760])
	by smtp.gmail.com with ESMTPSA id
	x137sm13576449pfd.162.2018.04.13.15.34.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 13 Apr 2018 15:34:23 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
X-Google-Original-From: "Armin Kuster" <akuster@akuster-ThinkPad-T460s>
Received: by akuster-ThinkPad-T460s (sSMTP sendmail emulation);
	Fri, 13 Apr 2018 15:34:21 -0700
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Fri, 13 Apr 2018 15:34:18 -0700
Message-Id: <1523658859-17210-1-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-qt4][PATCH 1/2] layer: add LAYERSERIES_COMPAT
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
X-List-Received-Date: Fri, 13 Apr 2018 22:34:25 -0000

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 conf/layer.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/layer.conf b/conf/layer.conf
index 62ce9cc..2fbfad7 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -8,3 +8,4 @@ BBFILE_COLLECTIONS += "qt4-layer"
 BBFILE_PATTERN_qt4-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_qt4-layer = "6"
 
+LAYERSERIES_COMPAT_virtualization-layer = "rocko"
-- 
2.7.4


