Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18F78E0096A; Sat, 20 Oct 2018 15:48:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
	[209.85.221.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89BB8E009CA
	for <yocto@yoctoproject.org>; Sat, 20 Oct 2018 15:48:44 -0700 (PDT)
Received: by mail-wr1-f65.google.com with SMTP id w5-v6so40950939wrt.2
	for <yocto@yoctoproject.org>; Sat, 20 Oct 2018 15:48:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=jV2U2kVY8pspNd0hFar+nHH+oPW0tkweTVtp5RAlDLY=;
	b=F9ZlqoaHDwWKLpWeNwJO8tsECmyCtV18O8oEJfA0RrJ16je6pBs0utME+2nGifPclW
	Hf71wBKx1x4tm5KWkpiPEiNhM+HHzRDZ2qiqbAC1C8VxlYbltX8FO5upMw+fRGE+w4xy
	478YNnnPU0yGxt9C8mehxAg54TUG8XzHA3F5MHPqEPdsR0d58WmDMy+PzC8uKh7AC6uT
	xny/F0kgUdkoaZQ2m9qbhRwaMMS+t3fz33MxtPAflbcU8n8eScTfUJh9Yl7nFFDE1fHe
	7EG6KMeNXkr+6+IE9mgL0KB/TJlr0L5ek09ME+D6Fy8IwMKiULX4XBgWHzsOqhBIkGMg
	IQhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=jV2U2kVY8pspNd0hFar+nHH+oPW0tkweTVtp5RAlDLY=;
	b=DDRY86NoTVlUeY0VjVzR9Vf/EkJxauLPIX1LlBmjCwlrqwVBL+CqMOfYY7exkH5aXZ
	GOjPFXfBOXcbZMiN8p/AyXzG0taCus6TA2uC3lM6XNDTyjAnlVW62RZR8qS3fhNeciEQ
	BbEvezuTdWJqpXyyDSl4AzR8jmHyF9OQvk2knbNEbZU/f3PAeMT5zpb04bki4nv/BadX
	20NHBHDK0KGpA7ercZ74ZUi6eW/D60Jy1YblPIZghISW6u5KRpIii6UeskRHjwzjPjqp
	CxVZBC27l1H5gjnbxsjt3MqamPpXOAGxso2RlNttFUUuabbDV3p8CuyOPx6IjGLq7bRL
	Paqg==
X-Gm-Message-State: ABuFfoi0Cuqk0HpjV5S/mwlRk2ETzZ0Vu5ekN9ejaU+t9MLQxGHn+vGj
	DeMIgUt7H/Gegy1ymw7dvJP7ORrEBHw=
X-Google-Smtp-Source: ACcGV627lOeXOiHJB5Wo37cVfNz9SC3qYFWUpQsUaT81atAvJ5VUryzhQqzO3Xsn6F6RvPN6k6tv3g==
X-Received: by 2002:adf:f44b:: with SMTP id
	f11-v6mr38358371wrp.305.1540075723247; 
	Sat, 20 Oct 2018 15:48:43 -0700 (PDT)
Received: from akuster-ThinkPad-T460s ([109.144.218.73])
	by smtp.gmail.com with ESMTPSA id
	63-v6sm6361186wmd.5.2018.10.20.15.48.41
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 20 Oct 2018 15:48:42 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
X-Google-Original-From: "Armin Kuster" <akuster@akuster-ThinkPad-T460s>
Received: by akuster-ThinkPad-T460s (sSMTP sendmail emulation);
	Sat, 20 Oct 2018 23:48:40 +0100
To: yocto@yoctoproject.org
Date: Sat, 20 Oct 2018 23:48:38 +0100
Message-Id: <1540075718-4145-1-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 2.7.4
Subject: [PATCH] meta-qt4: update LAYERSERIES_COMPAT to thud
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
X-List-Received-Date: Sat, 20 Oct 2018 22:48:45 -0000

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 915d89c..8218dcd 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -8,4 +8,4 @@ BBFILE_COLLECTIONS += "qt4-layer"
 BBFILE_PATTERN_qt4-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_qt4-layer = "6"
 
-LAYERSERIES_COMPAT_qt4-layer = "sumo"
+LAYERSERIES_COMPAT_qt4-layer = "thud"
-- 
2.7.4


