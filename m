Return-Path: <joe.macdonald@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 367E7E00AC5; Mon, 29 Oct 2018 11:33:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.65 listed in list.dnswl.org]
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
	[209.85.166.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95CF6E00C46
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 11:33:08 -0700 (PDT)
Received: by mail-io1-f65.google.com with SMTP id o19-v6so5630392iod.3
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 11:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=Sk7+ncs8FMUHFKgDTftwcMYUfFik5Xa3ufZ/NDX5XzU=;
	b=LK84y1A6uRQR6bWMC8PfEU4nSBRnrtvvm7MmGkyBTziTIGS5CDlaovgPyQLEjPGBwQ
	fVM39HK7OpDc5WnWiQuK6qmYNuIY8wVPiWqyjhuP5HFKeqSmZmfFpm3bgrPNOBLps7xG
	jjp1ukzz0/+68lC0DascZvlyWo5NXdSC+ZbQRs32xw1cd9ksL6+UES5EV+PV/+Jq+GjK
	5H2oJRLbeYV8ZzCLWuMt6XS5eCLrrknW0DZ+SRy5bKuVcsCVaUAtyEdgWDBEhp4S1d54
	jLurlkvv/e1XlpPxyA1uYgINKm/4WFbUeEJYpZOMA0SnqHxkR6heQ5SoT8EZERsXcmJH
	X2cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=Sk7+ncs8FMUHFKgDTftwcMYUfFik5Xa3ufZ/NDX5XzU=;
	b=XAhhshkP2czySckq0oMn1rn1GjBj3zjSj2w874Hcboc4dRj9/RqGvMkWlZgtq3cZWD
	y9UZPc7meRIbvJLBN77M0CvfgNEXdQ9RzyM6FdbE5tr53AsRGEsYm3Hs+KpAlhEQtk7g
	kxHVcUhvUVjLC+/YCi51PA0xN3CcIkzX3F9ZwoutrNv/4uai/Lx2XUsRA+bDJxokw6jm
	XmygTO4NHDYzK9ux6TiwTfAnnnYEaparcbBpHq5VCFPIWoAgvFUTi0rZpQDW09n61HUe
	1H/F64OGL4LhtK4HgVL2UbaZOPNILlEkUGA2i5ndDtGyRwwOk//KxyaHqGuYiYAgk6/S
	ZC8w==
X-Gm-Message-State: AGRZ1gK3lVNGbxOBfWgloAsE4tmxnno/bL2ZecTR8N//51Oi7BRIBvJe
	gpkAXriB4PL2laGJ1gMZq055uHTbjTA=
X-Google-Smtp-Source: AJdET5eqtH+N3oheX27CCcg3oNyz4r2QTbyBOJY4skIykkfQIKeGn4kHMC9RFs4DrUsajFtqmJLRkw==
X-Received: by 2002:a6b:6c11:: with SMTP id
	a17-v6mr6999398ioh.230.1540837987648; 
	Mon, 29 Oct 2018 11:33:07 -0700 (PDT)
Received: from burninator2.deserted.net (23-233-29-148.cpe.pppoe.ca.
	[23.233.29.148]) by smtp.gmail.com with ESMTPSA id
	y11-v6sm7152984ioa.24.2018.10.29.11.33.05
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 29 Oct 2018 11:33:06 -0700 (PDT)
Sender: Joe MacDonald <joe.macdonald@gmail.com>
From: Joe MacDonald <joe@deserted.net>
To: yocto@yoctoproject.org
Date: Mon, 29 Oct 2018 14:32:56 -0400
Message-Id: <20181029183257.20970-6-joe@deserted.net>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20181029183257.20970-1-joe@deserted.net>
References: <CANBf+V1cOSgDpoKvmz4shhZEjCKXtYAe9gz13K2PPjuTWf7KRA@mail.gmail.com>
	<20181029183257.20970-1-joe@deserted.net>
Subject: [meta-selinux][sumo][PATCH 6/7] Revert "layer.conf: update LAYERSERIES_COMPAT `sumo' -> `thud'"
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
X-List-Received-Date: Mon, 29 Oct 2018 18:33:12 -0000

This reverts commit 8ff95d5b2a693aeb4e791aacf83d24313ce35f3e.

Signed-off-by: Joe MacDonald <joe@deserted.net>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 5fecac6..0f9ea41 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -18,7 +18,7 @@ BBFILE_PRIORITY_selinux = "5"
 # cause compatibility issues with other layers
 LAYERVERSION_selinux = "1"
 
-LAYERSERIES_COMPAT_selinux = "thud"
+LAYERSERIES_COMPAT_selinux = "sumo"
 
 LAYERDEPENDS_selinux = " \
     core \
-- 
2.17.1


