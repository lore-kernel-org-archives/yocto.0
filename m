Return-Path: <fabio.berton@ossystems.com.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC1F7E006C7; Thu, 12 May 2016 08:09:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f52.google.com (mail-qg0-f52.google.com
	[209.85.192.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B966E00474
	for <yocto@yoctoproject.org>; Thu, 12 May 2016 08:09:36 -0700 (PDT)
Received: by mail-qg0-f52.google.com with SMTP id w36so42488987qge.3
	for <yocto@yoctoproject.org>; Thu, 12 May 2016 08:09:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ossystems-com-br.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:organization;
	bh=jtcLL3Aw9Ut8KKFNiGkzCBEbUQdcvqGxfcIF6imY588=;
	b=1o3mvysJju+CeXnVtKEr6QZKe9pT7E+Fh1xKgs6bg/UDr7+5FkR5xwuhTT16V+6ojc
	8Vbv9HGrRXrUdNK8G4YvsIsUGkvgk1yEfUTxmbxAHr8fI5xq+8v3qmFwpaw/7IXpcRF4
	qtONk3bXptUml3zznq57Td1UDTiMkZre1FqhT2rdFirZChSGm1OoTI1jzl0PcaIZys6c
	Mic2HMzZqbP5EK20AlneUkw7zxmWo/7GJrFHQ8eYETEbPtgAmkoimtqtMOfxCs+/OuCd
	KPl2G4kSzKArxWruyTEO0RYXhjSgY9jUMI8fLVV+suYAQCbwp14a3t1xogN91dc4VjF5
	COsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:organization;
	bh=jtcLL3Aw9Ut8KKFNiGkzCBEbUQdcvqGxfcIF6imY588=;
	b=Fa/mp7lzHRkhP8KefVRZlB1O4/dEi2wDBnkzAQLubG+RG+aSLpkg+Gkh13V2kzscAU
	scG0sUPuG3whNdmM0bGPDV49ulxNLm5rT4m5s40q0QMdeDJPRWienTVDb2Vm1M8jQYa8
	ir/6mZYO/rOgmLLQOKkBbhEEac1W5b7KTWz2A1CIYLy2mC6ghBK0QRQWKnE7exgT/dmJ
	qMphvTo34nQ2wri4esePraW/HB0Z74dIFdUbr2EHc0PEVXVtPv+bxyYiGI1xhq5A56FX
	MayVr8q+EMEl/7oM2yipikHz3W8/iEPfoIOoAdArVsQSyI/MDK39Kh0IXz+llDJEvUCy
	a3tg==
X-Gm-Message-State: AOPr4FVciIdTGxrpHb2aa+L83vz0KTxRodD7gD70FXkIv9v1vngQ+IiYObQRakHH5oltsQ==
X-Received: by 10.140.234.130 with SMTP id f124mr10119607qhc.65.1463062307100; 
	Thu, 12 May 2016 07:11:47 -0700 (PDT)
Received: from monster.lab.ossystems.com.br ([187.23.154.250])
	by smtp.gmail.com with ESMTPSA id
	t65sm6152983qkc.46.2016.05.12.07.11.44
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 12 May 2016 07:11:45 -0700 (PDT)
From: Fabio Berton <fabio.berton@ossystems.com.br>
To: yocto@yoctoproject.org
Date: Thu, 12 May 2016 11:10:29 -0300
Message-Id: <1463062229-23247-1-git-send-email-fabio.berton@ossystems.com.br>
X-Mailer: git-send-email 2.1.4
Organization: O.S. Systems Software LTDA.
Subject: [meta-mono][PATCH] mono-4.xx: Remove --disable-static from EXTRA_OECONF
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
X-List-Received-Date: Thu, 12 May 2016 15:09:39 -0000

As of commit OE-Core:773c9e18071d71454473dd81aff911104a2e9bc6
EXTRA_OECONF is appended with the option --disable-static on
DISABLE_STATIC variable and this cause the error:
 __
/
| mono_boehm-main.o: In function `main':
| x86_64-linux/mono-native/4.4.0.122-r0/mono-4.4.0/mono/mini/main.c:51:
| undefined reference to `mono_build_date'
| collect2: error: ld returned 1 exit status
| Makefile:1390: recipe for target 'mono-boehm' failed
\__

There's a bug with this issue open here:
https://bugzilla.xamarin.com/show_bug.cgi?id=33081

Signed-off-by: Fabio Berton <fabio.berton@ossystems.com.br>
---
 recipes-mono/mono/mono-4.xx.inc | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/recipes-mono/mono/mono-4.xx.inc b/recipes-mono/mono/mono-4.xx.inc
index 855c857..6d7c023 100644
--- a/recipes-mono/mono/mono-4.xx.inc
+++ b/recipes-mono/mono/mono-4.xx.inc
@@ -34,6 +34,9 @@ inherit autotools-brokensep
 inherit pkgconfig
 inherit gettext
 
+# avoids build breaks when using no-static-libs.inc
+DISABLE_STATIC = ""
+
 EXTRA_OECONF += " mono_cv_uscore=no --with-sigaltstack=no --with-mcs-docs=no "
 
 do_configure_prepend() {
-- 
2.1.4


