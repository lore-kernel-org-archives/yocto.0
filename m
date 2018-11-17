Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E578BE00BBD; Sat, 17 Nov 2018 15:46:27 -0800 (PST)
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
	*      [209.85.214.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
	[209.85.214.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C2C0E00A0A
	for <yocto@yoctoproject.org>; Sat, 17 Nov 2018 15:46:26 -0800 (PST)
Received: by mail-pl1-f196.google.com with SMTP id b22-v6so7393073pls.7
	for <yocto@yoctoproject.org>; Sat, 17 Nov 2018 15:46:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=FDSpNtf1Ln882a6LhGe0TdKW8enVJNmkzGimhUYqa2M=;
	b=Yz/mfT24QQRQEPdPBqNAO9tYBZ41303Ug9fhZ0rpEOT1FWhfRK2D7WuMiZFz96DcQB
	QHnSrzANKRGW4QLlphG1XTJ5/NAq5qj0IR709/gMv+e6IVRG7hkAkFRC8JTmlE10loYb
	JNh9hulHwepxjKOOX+eO4xJH321wvfHyCvl/mHnN8IzgFCOd883al7P5P2MeXxtvFGGD
	OthKk0T++e4hSWy5cGPI3xLvIAnMZTJeilPAD1XkOkEbeVG/xtX/xX3EPwEHvN38eC9V
	qWmxGGepQ3l2aVNwtu7SJyx6q7AdnmVeF+9N9Ir8trEh5mhK75fIMvcT1y3/Bc8qI+WW
	QI/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=FDSpNtf1Ln882a6LhGe0TdKW8enVJNmkzGimhUYqa2M=;
	b=UU3RbNoOlk08nSaB0BVhpoaVgDtxGHh1leTHYyLvHE2htpPJfjTLl/BRfrxAEjr2/1
	qfjYSh1SDCsQui9UwiDThkwcM5mc/G3WFt4PCxBLHdc8yXzj31YYUemElj33/KWehDzA
	saaRDXc6hrxFcNs+Zch5yqvy6Rq1rrudtRJXbokVZZcevzIh2/L9qWqKeAo2UQPj8vtC
	LE+RPSI02Xt5/bUKDSPttERvGNV86kwBv16aivO+Vzr7+pdRT2O1W8pNXU3VyY5XJYhD
	le53NLnG24ns/OTiy2ae8rxKuK/DYCDUAINTBxNMuLj6BLLlMl1+g9APM7D0h8jDV9WD
	nMBw==
X-Gm-Message-State: AGRZ1gI1yjm3vmFzAFm2Dmj0YO7zv4SbohErnsfb//Xutsp9gAaceLMR
	7KKFg14BgiDxE+Xusumw40+lo7+6
X-Google-Smtp-Source: AJdET5eZ8EouZ/Hk19MNLSWKh4utJWVjPMiwrbLjGPP7OMWtAAQJJLDmafKNPS5TMTKqc9zWd5EmuQ==
X-Received: by 2002:a17:902:d806:: with SMTP id
	a6mr16063998plz.172.1542498385673; 
	Sat, 17 Nov 2018 15:46:25 -0800 (PST)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4180:c33:c4dc:5c13:84a7:f038])
	by smtp.gmail.com with ESMTPSA id
	c12-v6sm32987912pfb.174.2018.11.17.15.46.24
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 17 Nov 2018 15:46:25 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 17 Nov 2018 15:46:23 -0800
Message-Id: <1542498383-2240-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [yocto-autobuilder2][PATCH] schedulers: fix typo in thud entry.
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
X-List-Received-Date: Sat, 17 Nov 2018 23:46:28 -0000

There are two sumo entires.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 schedulers.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/schedulers.py b/schedulers.py
index 1f32970..4c28e12 100644
--- a/schedulers.py
+++ b/schedulers.py
@@ -142,7 +142,7 @@ schedulers.append(sched.ForceScheduler(
                 'branch_meta-qt4': 'master',
                 'branch_oecore': 'master',
               },
-              'sumo': {
+              'thud': {
                 'branch': 'thud',
                 'branch_poky': 'thud',
                 'branch_bitbake': '1.40',
-- 
2.7.4


