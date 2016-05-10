Return-Path: <k4230r6@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C011E00D6B; Tue, 10 May 2016 08:05:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (k4230r6[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAB14E00D57
	for <yocto@yoctoproject.org>; Tue, 10 May 2016 08:05:04 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id r12so3150350wme.0
	for <yocto@yoctoproject.org>; Tue, 10 May 2016 08:05:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=SCh0Sfzt7T/SV1a5fZGhJKHEbgm6aasJsT+lxoEtogE=;
	b=OdOZVqkef/vB54ePI626wp9pEHafUpDFIzr0RgsXq20qrFED4Jb/KFNgH4RvSTj3ur
	FxVNzDC5AiZDjxLzmZUZWZt6VV+CnApvSsaqkXFMGf+ATk26GvOaDqS5SEJm1t9/Mmgv
	8lOb1rbMrs+T3fuxS9kOZsedd0N4cNU0oKuV/zgB+F06vYBucLcmzcpPbJBxkIu5AftW
	pStXwDsNcTt/Pulh5q5m8FLn4zKqTck5fKEJ/z8iX1C5gqHHLemxNgtv6Mh9tkdhwcNZ
	Ftu8omgRrgHNod9ixzoHtCH0k2vCJvW5ib+uQ5aksE6YAqL39kZS4E8BO/td6SpFY8Mf
	F0uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=SCh0Sfzt7T/SV1a5fZGhJKHEbgm6aasJsT+lxoEtogE=;
	b=Iw/OFv1S9ChjOqQWFguLBQcMDzqv2YfgCNZTm8MKyZcDlatdH73bp/KhDUulLvuTCL
	guXacCG4ArFBecXIAwpe5coFx6wNnZzZ1QZf9ZbnSavo8bRwnQPEZOJ3Ujus/DWK0il5
	D+T+XOSDlgDirj0H6Y5VMIPR4tNb9VcNT8UKdVgwYXmRYOT3P1B9wm8+5inkrgS2RbWx
	Gz04cDJreol8zwDCDX6LJxXSWOm3Xpw6g3CGRLTKS3wRlG5x9xJ9VN6tQZpAnKBMgrfs
	rKEVpmp2NpXUQbS4PYOQ+ekr//cdld8q7uEQp0tow7nhOirQlYLelI6NbbJT90AeLRf/
	DWxw==
X-Gm-Message-State: AOPr4FXUYw8r0MWqz9xsYlF0fNmmF7SnDBotcFHaDZdpti2mNpgV3qRTFZu6u3GGffctug==
X-Received: by 10.194.186.237 with SMTP id fn13mr16561510wjc.47.1462892703477; 
	Tue, 10 May 2016 08:05:03 -0700 (PDT)
Received: from quadros.fritz.box
	(HSI-KBW-078-043-133-099.hsi4.kabel-badenwuerttemberg.de.
	[78.43.133.99])
	by smtp.gmail.com with ESMTPSA id d23sm3474745wmd.1.2016.05.10.08.05.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 10 May 2016 08:05:02 -0700 (PDT)
From: Christian Ege <k4230r6@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 10 May 2016 17:04:55 +0200
Message-Id: <1462892695-3528-1-git-send-email-k4230r6@gmail.com>
X-Mailer: git-send-email 2.1.4
Subject: [PATCH] bluez5: fixed path to bluetoothd in sysvinit script
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
X-List-Received-Date: Tue, 10 May 2016 15:05:08 -0000

Within the sysvinit script the path to bluetoothd is wrong. Because of this
the init scripts silently terminates without any message

Signed-off-by: Christian Ege <k4230r6@gmail.com>
---
 meta/recipes-connectivity/bluez5/bluez5/init | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/recipes-connectivity/bluez5/bluez5/init b/meta/recipes-connectivity/bluez5/bluez5/init
index 1606a5c..9777614 100644
--- a/meta/recipes-connectivity/bluez5/bluez5/init
+++ b/meta/recipes-connectivity/bluez5/bluez5/init
@@ -3,7 +3,7 @@
 PATH=/sbin:/bin:/usr/sbin:/usr/bin
 DESC=bluetooth
 
-DAEMON=/usr/lib/bluez5/bluetooth/bluetoothd
+DAEMON=/usr/libexec/bluetooth/bluetoothd
 
 # If you want to be ignore error of "org.freedesktop.hostname1",
 # please enable NOPLUGIN_OPTION.
-- 
2.1.4


