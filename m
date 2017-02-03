Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DF8DE00998; Thu,  2 Feb 2017 16:36:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BA67E00998
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2017 16:36:37 -0800 (PST)
Received: by mail-pg0-f68.google.com with SMTP id v184so379238pgv.1
	for <yocto@yoctoproject.org>; Thu, 02 Feb 2017 16:36:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=YZDg/Xm81u7XAnxNtaqySuadW7fC/jt2Z9n+Jjb+fPM=;
	b=DlJmf6wc+PzVg+uDgo9KRl4NzqyFRMA0cLGm1DDA5s35L2leYPlp35hLwqFD7jjyhC
	yHAH3cxK4iH4mPh4tMd5Il/y27uPep6krdowyOlh0F9yvs5xXAfNmu5j7Cl28CWXiQCd
	ddmfzeeDANhbGFcfcVGnnryGuxEw2nqlhg6JB+fLaHeR38cd3kdVkkdT7pLguNAJKYX0
	a/yX77gX8KVbr7KuwFOsZU+QkywFzyrJAAkfKc4GSC0I86sPz5lY7lzwiwDB5ldCY8GP
	+x1yNHQ96QHWGJTQar4TRofC6HjIrA3wUpc04O/eZVon02lQHIGU6/geWUBzpdpooZ4+
	sLyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=YZDg/Xm81u7XAnxNtaqySuadW7fC/jt2Z9n+Jjb+fPM=;
	b=cCLVEfum2a+lDLNvoiYWXsDOQy1DbFOw85F09TbtD0N89Pjues+0zOrwq4+KzDRJi3
	fKHjgSF8gl9KqRgklm+9YM6aaXJTOIIDwnOdzqII+2+1WyOeeM5IlmNfwRx0PKn38Ukn
	+HehgUSSy5mTxc3Kp9ekZ8Cj6yL7LHjS+pOyZldHVHRdLEostgkHBKWPzfAm/NKn1EFX
	mAGW1EI4IWBMz071vvEN9unZEVXH8eyH0e0oa/0wSUodf3Dtf2f3sVmkC2MrQ8Z8qttJ
	H5nNciat47E6kyyqP0EFZUF8imM+eYo6N4jHYPfQ4LsASd5qim3i6ISXHD5OEh8WDF4B
	P16A==
X-Gm-Message-State: AIkVDXJhybHTQd9OJrFaFACIaNpj06gZ5sVYnOlWmaqNUUAQtKWisaR0m2STwDoLulD1Iw==
X-Received: by 10.98.212.23 with SMTP id a23mr14547917pfh.18.1486082197555;
	Thu, 02 Feb 2017 16:36:37 -0800 (PST)
Received: from akuster-ThinkPad-X240.mvista.com
	(50-233-148-156-static.hfc.comcastbusiness.net. [50.233.148.156])
	by smtp.gmail.com with ESMTPSA id
	w76sm61381853pfd.74.2017.02.02.16.36.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 02 Feb 2017 16:36:37 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Thu,  2 Feb 2017 16:36:34 -0800
Message-Id: <1486082196-29895-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-cgl][PATCH 1/3] iscsi-initiator-utils: make it DISTRO_FEATURE dependent
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
X-List-Received-Date: Fri, 03 Feb 2017 00:36:42 -0000

From: Armin Kuster <akuster@mvista.com>

When this package was updated in OE,
it now requires systemd. Make this optional.

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb b/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
index b0c2cac..045691a 100644
--- a/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
+++ b/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
@@ -42,7 +42,7 @@ RDEPENDS_packagegroup-cgl-middleware = "\
     strongswan \
     vlan \
     corosync \
-    iscsi-initiator-utils \
+ ${@bb.utils.contains("DISTRO_FEATURES", "systemd", "iscsi-initiator-utils", "",d)} \
     openais \
     openipmi \
     openhpi \
-- 
2.7.4


