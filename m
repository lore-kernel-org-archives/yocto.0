Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 995D6E00D97; Mon, 15 Jul 2019 03:24:21 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.45 listed in list.dnswl.org]
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
	[209.85.221.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BB5AE00D67
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2019 03:24:18 -0700 (PDT)
Received: by mail-wr1-f45.google.com with SMTP id n9so16486267wrr.4
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2019 03:24:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=aoZ4rknxSN+3EXBOW2KCOXNUwgGk0lww0nAZ2sQ+tis=;
	b=NAIPdaIVsK2wGGCYbiknLrFi3MXQsfeyvJNIU91EL8VBgULea65Ac7+0MHMCvyeRli
	Heak1Kc8pRnKfR/Ppratt/8y17H1UqRA2D2h4zOQm0y+m3vLD1C+ywLumAl2c+bSTi+0
	6X4Z4wPkfuFA17za16UB7q1Oq7Yr2YEarMhJs03sf1ruPKymsHaRJPQfAF+AN+KRa4Xa
	V7dMOXaYxnOIqNWPZXwXAtyrOF99fWxk19iMlLRt8YTW+zn3/7h3ZsOCMFe8uRxSBmuZ
	pwMsSQXZnPYCpC4ehK6a5Bi8V0yT+NH9LAwU0PaOZeqvxZF7IOtL4qo5kdy+gxf5qCA8
	iDFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=aoZ4rknxSN+3EXBOW2KCOXNUwgGk0lww0nAZ2sQ+tis=;
	b=CFOxNTYo5r3W6hZ4rAvJtn8mvuiGweGxN4itxqVPxEBRAUmgwGZnqRY8+E7V8aQUsG
	Ig0XafbzNr5RGGSrguLSb6UMvw6g0w4lyW5HXh95MgF39WMScfX0H/b43has/BleMAf9
	5Tp3pS6B1JbMiFVGrkIqg7V/AgcoG5ohKK3oeFnFMWltJKjNEHBNun4ObYvpRA6SFpBn
	oSP5SVr/w6HOeg5IxvoyPJTqKb3jynXO83wp7fF1YbXNyfQsVcmElk+g5Ip8xvVe3j1o
	CdDEycLqFSh22m18mEswTxj/pIVwsy2mXISdtL1MUUbp9tXqXrMXIrNAScLCo0xIf4D+
	uOkA==
X-Gm-Message-State: APjAAAVbrQN+Iek750wPwST6r1t3qPxZ8tPgGySb8ez74lkizY2qs/J3
	QdJp0V/S3qTfAazY5HJst6kskArvMJA=
X-Google-Smtp-Source: APXvYqycz3xczdOAcmXAf/Ed0IRqsHcIx9RSVOQ2xsPcxUrMV7/kgKPgLCZUWbebBH++dO3PdjpbGw==
X-Received: by 2002:a5d:4108:: with SMTP id l8mr27955807wrp.113.1563186257217; 
	Mon, 15 Jul 2019 03:24:17 -0700 (PDT)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	x20sm35582906wrg.10.2019.07.15.03.24.15 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Mon, 15 Jul 2019 03:24:15 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 15 Jul 2019 11:24:12 +0100
Message-Id: <20190715102412.3282-1-ross.burton@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [PATCH][yocto-docs] ref-system-requirements: add Debian 10 to supported distribution list
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
X-List-Received-Date: Mon, 15 Jul 2019 10:24:21 -0000
Content-Transfer-Encoding: 8bit

Debian 10 is a supported distribution now, so add it to the documentation.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 documentation/ref-manual/ref-system-requirements.xml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/documentation/ref-manual/ref-system-requirements.xml b/documentation/ref-manual/ref-system-requirements.xml
index 239dd84bbdd..51995309d4f 100644
--- a/documentation/ref-manual/ref-system-requirements.xml
+++ b/documentation/ref-manual/ref-system-requirements.xml
@@ -95,6 +95,7 @@
                 <listitem><para>CentOS 7.x</para></listitem>
                 <listitem><para>Debian GNU/Linux 8.x (Jessie)</para></listitem>
                 <listitem><para>Debian GNU/Linux 9.x (Stretch)</para></listitem>
+                <listitem><para>Debian GNU/Linux 10.x (Buster)</para></listitem>
                 <listitem><para>OpenSUSE 42.3</para></listitem>
             </itemizedlist>
         </para>
-- 
2.20.1


