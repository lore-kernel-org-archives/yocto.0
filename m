Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00D1BE00B45; Tue,  6 Nov 2018 04:00:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
	[209.85.221.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61A72E00AD1
	for <yocto@yoctoproject.org>; Tue,  6 Nov 2018 04:00:31 -0800 (PST)
Received: by mail-wr1-f65.google.com with SMTP id x12-v6so13169962wrw.8
	for <yocto@yoctoproject.org>; Tue, 06 Nov 2018 04:00:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=Uol4WOFKV1wssDlo0/bclWIPyRQOQ5NN8KPyew16bqs=;
	b=wEVquwOz00RFq3yyOwSb9mvXjRRJOIvYlz06bjM6ijSoRLw7YVWO1/uEf566mUjCy/
	bsOTLV+/0qcc2JdLpJEkpqpOb/+OU94zhD/80fxCsEYnBbzjSa3FLsXFSMpzEyFh8Yg8
	RvVbQO+SeugtXnZQTAhjBhvm+sQNtkbKdGxQ/2Qnbmv85G2NUfz04YoDUe/hd4ZyK3ip
	KUAh5MAY7ubkRjcN+wf4s4l+jMG67UtXeteUj/5T1Ue/KtvU9QC3K6iy5vUo0Bx4MXwb
	Cev5smPL+ryisTjKqVlY9XWr+Ykf9NeruKd1nUgFobEt4fLbrjGaEf62LvFLwS5agzhW
	vnzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=Uol4WOFKV1wssDlo0/bclWIPyRQOQ5NN8KPyew16bqs=;
	b=Za8kZVO4vzMQwcS4MweZrSU7h1mV/Ix244GBjkRk4ZQrfuIvfiUYzgcpBCKxn5FqzO
	C1U6Hpm0i6NCPlNf1IFB0w4BemPVOKfARB7jC8RZNk+FxbC7vGLAum8kmj8JB+Vxj+Ng
	7JdSWgiU79HsN5d/XbeLsydkt78zawd4xvXOg1+XxcVKhdoeYNDwWYU4YViKpjivDF2y
	6pdy4md8JNxrvMMRWYOE6jSisR4uHy2WXZR38EzoqChuGXWuKEvvhVn1JjYeRjcCjm+u
	tdpJ09zu5NXeCaQI263Am/Vy4cVNR8kmcOnAjXFf/dIk1LzzCZyVttT534BYO2Kd4YW2
	iQig==
X-Gm-Message-State: AGRZ1gKRpo0GEDLZw04JKTDJti+0LcKIEIdG/KrtcKeF+oJ+Jwwes8Qz
	WFrljIgHxfBb9RrMLHqJ6Qzz9ihjs+g=
X-Google-Smtp-Source: AJdET5dMp8Lr6DmuL6Cb5H9JHlR/GcKZSHHsKyIpydRr2POLqXwpckoykSZTUHnLWrn4T8WVrAj0UA==
X-Received: by 2002:adf:ec41:: with SMTP id
	w1-v6mr23194048wrn.266.1541505630319; 
	Tue, 06 Nov 2018 04:00:30 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	g5-v6sm5622182wrw.97.2018.11.06.04.00.29 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 06 Nov 2018 04:00:29 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  6 Nov 2018 12:00:23 +0000
Message-Id: <20181106120023.5845-2-ross.burton@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20181106120023.5845-1-ross.burton@intel.com>
References: <20181106120023.5845-1-ross.burton@intel.com>
Subject: [PATCH pseudo 2/2] pseudo_client: move fallthrough comment to silence compiler warning
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
X-List-Received-Date: Tue, 06 Nov 2018 12:00:33 -0000

---
 pseudo_client.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/pseudo_client.c b/pseudo_client.c
index 5604cbf..e2ea715 100644
--- a/pseudo_client.c
+++ b/pseudo_client.c
@@ -1783,7 +1783,8 @@ pseudo_client_op(pseudo_op_t op, int access, int fd, int dirfd, const char *path
 		break;
 	case OP_OPEN:
 		pseudo_client_path(fd, path);
-	case OP_EXEC: /* fallthrough */
+		/* fallthrough */
+	case OP_EXEC:
 		do_request = pseudo_client_logging;
 		break;
 	case OP_CLOSE:
-- 
2.11.0


