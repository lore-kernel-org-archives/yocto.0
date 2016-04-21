Return-Path: <theodor@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B45F2E00DAF; Thu, 21 Apr 2016 10:32:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A197E00CEA
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 10:32:46 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id e201so18961610wme.2
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 10:32:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=oU2QsxWgmQl6rXgmK9YentsYh+i3AAP5j+YWghr+GtY=;
	b=psdiLk0OEMpSaGZAUxKjampWOJEqM2LD4Yq5BTm/ngwstjF2tL1Ffqdi1E+dvKsMGX
	zF6DJse3JD+hJI0tR/0AgyG/1cjFofW4NCF9egWzAV/JexQa6R5uLYrrLF06kBNXCBK9
	lWaHprNstCQeG6KxQgeaNKof+I4HE3mAH1P+dhSI5qDzsFH/L43iEmLgdz4/Bur0fBCY
	MjAn3Yg+FEf0Z297mccY2sL80ynLujK1ONf59/yp1KoRx+2bbmRePKbgfEHyux2mHRj4
	9zXPcjJC9yOPRNSSB2a1xS0Zau7937EOF/0CCRoa6R3358lqpmFY91VUb2JkC9jQ9+7o
	5c9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=oU2QsxWgmQl6rXgmK9YentsYh+i3AAP5j+YWghr+GtY=;
	b=lnMhM7sHDO5Xv/yYxo6F/U/rQSPTaBcKPmGBgULWaSxfthoCDhD9egAv52SbK88i05
	p1oZJZDLBF7T9jsOzLFzpdUueakmNoRpj8KUsc3k9wCXKhqil0W8+5si6d3pLzI+VKPu
	K4BwAPlmRnRLUNkshYmgKt2lTMB3EkfK3oVI41/qO1eFI6++sGIA9d2bh0SB6ed0QThI
	Ju1ErY8hA3Xuxmkz+UBnKllMOjt3ZBerjlWzKOTOqkzSGqLTOwYpkQFaiMizYr7wZiWX
	6KZ0XEH8SA2TCCKvwHrdPKv8njyEvvNQTmhbaIzDfjYb/kyU7qUgIoeljuDv47IIvqZj
	DvAA==
X-Gm-Message-State: AOPr4FWLcRrfQETxIPrFwB4rQwoLxfjiVJyFMml1G/N7wJ9u/HsOqJwYBDSGF8WlIErlhQ==
X-Received: by 10.194.104.135 with SMTP id ge7mr15697899wjb.15.1461259966353; 
	Thu, 21 Apr 2016 10:32:46 -0700 (PDT)
Received: from Theodors-MBP.home
	(host81-159-212-160.range81-159.btcentralplus.com. [81.159.212.160])
	by smtp.gmail.com with ESMTPSA id
	o128sm4251128wmb.19.2016.04.21.10.32.45
	(version=TLS1 cipher=AES128-SHA bits=128/128);
	Thu, 21 Apr 2016 10:32:45 -0700 (PDT)
From: Theodor Gherzan <theodor@gherzan.ro>
To: yocto@yoctoproject.org
Date: Thu, 21 Apr 2016 18:32:13 +0100
Message-Id: <1461259933-1661-5-git-send-email-theodor@gherzan.ro>
X-Mailer: git-send-email 2.6.4 (Apple Git-63)
In-Reply-To: <1461259933-1661-1-git-send-email-theodor@gherzan.ro>
References: <1461259933-1661-1-git-send-email-theodor@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 5/5] README: Document new variable configuration
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
X-List-Received-Date: Thu, 21 Apr 2016 17:32:57 -0000

From: Theodor Gherzan <theodor@resin.io>

Signed-off-by: Theodor Gherzan <theodor@resin.io>
---
 README | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/README b/README
index 536926b..cbc7a92 100644
--- a/README
+++ b/README
@@ -233,6 +233,10 @@ the modelname should be added as a MACHINE_FEATURES in local.conf like below:
 List of currently supported models:
     - pitft22
 
+3.O. Enable UART
+===============
+Set this variable to enable UART:
+ENABLE_UART = "1"
 
 4. Extra apps
 =============
-- 
2.1.4


