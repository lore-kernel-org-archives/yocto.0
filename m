Return-Path: <koen@dominion.thruhere.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1693AE0076B; Wed, 16 Jul 2014 01:59:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.175 listed in list.dnswl.org]
Received: from mail-we0-f175.google.com (mail-we0-f175.google.com
	[74.125.82.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97E5AE0076B
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 01:59:12 -0700 (PDT)
Received: by mail-we0-f175.google.com with SMTP id t60so567644wes.6
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 01:59:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=vcd9p6eAMC//2gpVC7FNQDGXsQ1jkGdAPceyYhCWOl4=;
	b=h2F35sBFrtmCPzsxMKl58/MMfsBc9hrYle7YRrAc3YF8l/BkrPbcurzd+4PVk81CJD
	egh7K5PohM6cOrE4HSBOzPn6zNV9Z0qiiq+H8hvnilNfbA0jYbk9SR0FZF9sN5jYKLsh
	zamBhqnEFX16ePsYTXnJigWFxAy1bZJcPrfGFJBrPurGSx//5IuaiZuqKATbiEnERtoJ
	fzjGwiHZ8vj8jr3sCdk/E3f0+zXZxBFQSuYo7iY/yiTXQqvXY1ckUrPSoX3DArkuiwuo
	HSHC3BXKUZNU1coiklHL3pyazOsM54M3WNMyRqUmLxreY9Sg8A5Tf7bwoW5d/GgU4TxQ
	asUg==
X-Gm-Message-State: ALoCoQkuZwafUKAeGcq8/b8a3oKNerKelFdBtxQMZPZbGoBlQpl3qEpbg7J1NSCfEHQnI6GJFiR5
X-Received: by 10.180.187.6 with SMTP id fo6mr12073723wic.58.1405501150976;
	Wed, 16 Jul 2014 01:59:10 -0700 (PDT)
Received: from localhost ([2001:610:612:0:beee:7bff:fe9e:ae56])
	by mx.google.com with ESMTPSA id
	cz4sm53984787wib.23.2014.07.16.01.59.09 for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Wed, 16 Jul 2014 01:59:10 -0700 (PDT)
From: Koen Kooi <koen@dominion.thruhere.net>
To: yocto@yoctoproject.org
Date: Wed, 16 Jul 2014 10:58:46 +0200
Message-Id: <1405501129-28327-4-git-send-email-koen@dominion.thruhere.net>
X-Mailer: git-send-email 1.9.0
In-Reply-To: <1405501129-28327-1-git-send-email-koen@dominion.thruhere.net>
References: <1405501129-28327-1-git-send-email-koen@dominion.thruhere.net>
Subject: [meta-raspberrypi][for-daisy][PATCH 4/7] README: Add patch guidelines info
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
X-List-Received-Date: Wed, 16 Jul 2014 08:59:16 -0000

From: Andrei Gherzan <andrei@gherzan.ro>

Change-Id: I2dac882a6dbe2fbca63a5c7405339edcca18cf04
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 README | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/README b/README
index daa4059..ab2959d 100644
--- a/README
+++ b/README
@@ -202,6 +202,9 @@ Gerrit review repo:
 To contribute to this layer you should send the patches for review to the
 mailing list.
 
+The patches should be compliant with the openembedded patch guidelines:
+http://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines
+
 Mailing list:
     https://lists.yoctoproject.org/listinfo/yocto
 
-- 
1.9.0


