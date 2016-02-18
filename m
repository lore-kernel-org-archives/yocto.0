Return-Path: <joe.macdonald@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4D01E00BF4; Wed, 17 Feb 2016 18:41:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.172 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f172.google.com (mail-ig0-f172.google.com
	[209.85.213.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98B58E00B8B
	for <yocto@yoctoproject.org>; Wed, 17 Feb 2016 18:41:52 -0800 (PST)
Received: by mail-ig0-f172.google.com with SMTP id 5so3519712igt.0
	for <yocto@yoctoproject.org>; Wed, 17 Feb 2016 18:41:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id;
	bh=LcyO1ghKrKfCCxjAvj9cc773In2Sud1vpJFQGdh5gHQ=;
	b=pLnDsHdSJerRPkcvL/c8vtZARKcHVyY8bkNcL2J/xsyu+i7zfBdijhUlF1jXlJCWzk
	/dY8vnCaR4GlS+6HWt/n09jWtECeitFgYSsAB6evBxRfcxjGdLTOLug1nDdrGfhYr+1z
	4G4NolPetUAiptOj5ympeqQScRNmbmcti+G6mNRFrgMb0q42WmIdbCvWI68Nf7nEejYu
	Y1w0LgBwzHH0QdKBZn1Blxf7+16UGYpDcmX8mmzE3Kv+HC6NW90OC1vlkcve5BkJfYeP
	FoQ9V9rpU+l2zEC0M6PctCV9A1b/8kQeakixnZTDvB0bpA1IuZCWi+2FxNiQO6RHCwMp
	czOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
	bh=LcyO1ghKrKfCCxjAvj9cc773In2Sud1vpJFQGdh5gHQ=;
	b=BIDpRNuK6ParAteXO1+yKyEMRZUEwDONn1xg3BqjWp0Etw0HHz45R42JTsd60CViDg
	MC51wFdUpmeFocmRcVzOlAav/OLrWop+i+Aei299v0qKIx0z8ZQPhEyiF/rx6ynQ+ZxP
	O5MuhmmeKiaqmubdYyaxcxzuW4sggTDvvsa58NVI4ihbplxi+iiBKZq1gl2yU2hPoNRm
	28Agzjb/MBzSll3hPi59JMb2Iwmt8XfBjexhiyexrPo6+cysGdd36zhX0XJXBcQV7Qax
	OA5MwdfC4yuMkVlVSBQrhGkTtPPDWuYktpSHsqc1codN8E5GCbT0efEN7Tg4F0YvZmCE
	7olw==
X-Gm-Message-State: AG10YORxMdqbUWCjHkHVAxjYA5ycLFQL5B5emxL2qC2LBT39emMi7euBpo2RDfZtEiB0BA==
X-Received: by 10.50.136.136 with SMTP id qa8mr855260igb.39.1455763311624;
	Wed, 17 Feb 2016 18:41:51 -0800 (PST)
Received: from burninator.world.mentorg.com ([23.233.31.74])
	by smtp.gmail.com with ESMTPSA id t2sm396976igs.3.2016.02.17.18.41.50
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 17 Feb 2016 18:41:51 -0800 (PST)
Sender: Joe MacDonald <joe.macdonald@gmail.com>
From: Joe MacDonald <joe_macdonald@mentor.com>
To: yocto@yoctoproject.org
Date: Wed, 17 Feb 2016 21:41:49 -0500
Message-Id: <1455763309-9622-1-git-send-email-joe_macdonald@mentor.com>
X-Mailer: git-send-email 2.1.4
Subject: [meta-selinux][PATCH] MAINTAINERS: Update maintainers file
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
X-List-Received-Date: Thu, 18 Feb 2016 02:41:55 -0000

Adding Philip Tricca as a common layer maintainer and marking Pascal as
away.

Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
---
 MAINTAINERS | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

Pascal:  if you're still watching the list, it looks like your email is
bouncing, can you contact either Mark or myself so we can update your contact
info if you're still able to / interested in acting as a maintainer?

Also, if someone else has an alternative contact for Pascal (Xin) please send
him a ping for us.  Thanks all.

diff --git a/MAINTAINERS b/MAINTAINERS
index b228e21..3c49548 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -24,7 +24,12 @@ F:	conf
 F:	classes
 F:	recipes-*
 
-M:	Xin Ouyang <xin.ouyang@windriver.com>
+M:	Philip Tricca <flihp@twobit.us>
+F:	conf
+F:	classes
+F:	recipes-*
+
+M:	(away) Xin Ouyang <xin.ouyang@windriver.com>
 F:	conf
 F:	classes
 F:	recipes-*
-- 
2.1.4


