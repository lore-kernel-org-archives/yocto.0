Return-Path: <otavio.salvador@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6C4DE00B46; Wed, 16 Dec 2015 08:18:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.53 listed in list.dnswl.org]
Received: from mail-qg0-f53.google.com (mail-qg0-f53.google.com
	[209.85.192.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4D75E00546
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2015 08:18:42 -0800 (PST)
Received: by mail-qg0-f53.google.com with SMTP id 103so37832075qgi.3
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2015 08:18:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=from:to:cc:subject:date:message-id:organization;
	bh=4g1/QGtvp6fhGlkn4gCIZy8/9VvgxYETN/RmXEXLfcw=;
	b=Css3JDmUqQQxFsmwJ5Zwv3Z7dhMw/O0rNLXkzPPEl7De5KbGrd5enFyCsWwrnduy5N
	FojMszW7WYccGPRqVM3OI0cEnJJrAnJoqhnIHE3I1hpHftYP7EwT6JwVjjrHMWrguVyV
	FOelYXrumQ0t82fCalo50t5FCDoISRmOLcKWKlAa9TIsqUnbfVlTjKtKdeIil7evBI6y
	eI3LW8tL2aahTGtzAGEbqVzSR2ah6/CkonCZ9Sz9ExyFTefvsOX4wKwiaqcMD4jAp9z0
	JAjab3FujvYYTghlOWOGjE27WbmggrrlxHxP+kf72Jv0NtRZETPafC0T2QR7pzY29NwC
	HpGQ==
X-Received: by 10.140.169.139 with SMTP id p133mr45345458qhp.50.1450282721402; 
	Wed, 16 Dec 2015 08:18:41 -0800 (PST)
Received: from localhost ([177.194.217.47])
	by smtp.gmail.com with ESMTPSA id f7sm2856938qkb.7.2015.12.16.08.18.37
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 16 Dec 2015 08:18:40 -0800 (PST)
Received: by localhost (sSMTP sendmail emulation);
	Wed, 16 Dec 2015 14:18:33 -0200
From: Otavio Salvador <otavio@ossystems.com.br>
To: ajlennon@dynamicdevices.co.uk
Date: Wed, 16 Dec 2015 14:18:32 -0200
Message-Id: <1450282712-12396-1-git-send-email-otavio@ossystems.com.br>
X-Mailer: git-send-email 2.6.4
Organization: O.S. Systems Software LTDA.
Cc: yocto@yoctoproject.org, Otavio Salvador <otavio@ossystems.com.br>
Subject: [meta-mono PATCH] mono-4.xx.inc: Inherit gettext class
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
X-List-Received-Date: Wed, 16 Dec 2015 16:18:43 -0000

The mono uses gettext for build, by default, so we ought to ensure it
is available during the build.

This fixes follow error:

,----[ Build error ]
| configure: error: msgfmt not found. You need to install the 'gettext' package, or pass --enable-nls=no to configure.
| Configure failed. The contents of all config.log files follows to aid debugging
| .../build-default/tmp/work/x86_64-linux/mono-native/4.0.1.34-r0/mono-4.0.1/config.log
`----

Signed-off-by: Otavio Salvador <otavio@ossystems.com.br>
---

 recipes-mono/mono/mono-4.xx.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-mono/mono/mono-4.xx.inc b/recipes-mono/mono/mono-4.xx.inc
index f5ba14f..ed27c8d 100644
--- a/recipes-mono/mono/mono-4.xx.inc
+++ b/recipes-mono/mono/mono-4.xx.inc
@@ -30,6 +30,7 @@ FILESPATH =. "${FILE_DIRNAME}/mono-${PV}:"
 
 inherit autotools-brokensep
 inherit pkgconfig
+inherit gettext
 
 EXTRA_OECONF += " mono_cv_uscore=no --with-sigaltstack=no --with-mcs-docs=no "
 
-- 
2.6.4


