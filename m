Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E87CBE00AD8; Wed, 27 Jan 2016 07:54:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4379E00AB5
	for <yocto@yoctoproject.org>; Wed, 27 Jan 2016 07:54:35 -0800 (PST)
Received: by mail-wm0-f41.google.com with SMTP id n5so33149441wmn.0
	for <yocto@yoctoproject.org>; Wed, 27 Jan 2016 07:54:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id;
	bh=wEAoQVQwQomGRHfZ69IzYYZSWtAAJz64SckTOZTYtiE=;
	b=XmnOOZZTJ/gp0sA8lyp3BxdF/jzy0GSv4gVn5Ef9zcq2I7frobKm+cnEqCoyAudWQJ
	f6udtPN+Uv+CSUVjrsuRqa1p32tMpJVuxAomRJnL5/aIhPf0z/ZaQNHtvv6CP0T/JQ0C
	vCSk/HlF8Stn0NGqRjrzXC3lOy2qy/5eQFiS7JzDWFyVji4BAH8N2QqjBuMrUk/+KkRf
	9mpxlvOFT/rcNQ5U4XQLoXZSjCPLAgHyWzvgciVj8GuLKOEsVzCx6XyLqr33bPFwKeMN
	HdFvcvS0ZT8M8wh/be6p/1IH0FIMSUBy/fynJNWUSyvfA2AnGcvZft77WNHkWGLXrVxy
	5sgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=wEAoQVQwQomGRHfZ69IzYYZSWtAAJz64SckTOZTYtiE=;
	b=fP+n05fRgThJIvCdPODo3n8whqRTZQ/t7Rsu9hsI0ZP3MQIbe9IWjBKyyw82rzm4XS
	nVa9m/L8QLZMIQw6Bn1eUmi3gCRW0PcZ1sxGjCnerWiulJRB+k1v1Zpl7pdW5cThrWm8
	v2DmGj+vggwGo+smNKCBmqCNH8ufgiaIy5JHEnSyfS495+pd/vim9ec8/O5aAgIc3iwl
	gfjm/ePMfosuCwHIZSZrVNrdw7TcUbTlPDyv4101pBv86y3sst6wFkYY72E5wgicL35Q
	GFzg5mcHQk7XrxG4dpNJ0OE3gqU8SUBbGsnqTb4vvTyFZouJT400lRmlB0vYNo/d0Bn6
	qkPg==
X-Gm-Message-State: AG10YOSz6MHz/tnWN/TZxYGK5YxQiOlQlkpxN6FcAaPKYFe37P64S5+bHEr/191SOmjZAiPD
X-Received: by 10.28.57.214 with SMTP id g205mr29965992wma.20.1453910074816;
	Wed, 27 Jan 2016 07:54:34 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35])
	by smtp.gmail.com with ESMTPSA id w1sm8264394wmd.2.2016.01.27.07.54.34
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 27 Jan 2016 07:54:34 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 27 Jan 2016 15:54:31 +0000
Message-Id: <1453910071-17477-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 2.6.4
Subject: [PATCH][yocto-autobuilder] nightly-checkuri.conf: exclude lsof, run against universe
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
X-List-Received-Date: Wed, 27 Jan 2016 15:54:40 -0000

The lsof recipe needs to be excluded from our checkuri tests because the
upstream FTP server refuses to let the autobuilder machines connect to it.

Also run checkuri against universe instead of world to catch more variations on
recipe permuatations.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 buildset-config.controller/nightly-checkuri.conf | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/buildset-config.controller/nightly-checkuri.conf b/buildset-config.controller/nightly-checkuri.conf
index 232f62c..b571429 100644
--- a/buildset-config.controller/nightly-checkuri.conf
+++ b/buildset-config.controller/nightly-checkuri.conf
@@ -16,6 +16,7 @@ steps: [{'SetDest':{}},
         {'GetDistroVersion' : {'distro': 'poky'}},
         {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'x86_64',
                             'distro': 'poky',
-                            'atextprepend': 'SOURCE_MIRROR_FETCH = "1"\n'}},
+                            'atextprepend': 'SOURCE_MIRROR_FETCH = "1"\n',
+                            'atextappend': 'do_checkuri_pn-lsof = ""\n'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
-        {'BuildImages': {'images': 'world -c checkuri'}}]
+        {'BuildImages': {'images': 'universe -c checkuri'}}]
-- 
2.6.4


