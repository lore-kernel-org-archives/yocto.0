Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EAE8AE00D14; Mon, 14 Jan 2019 06:42:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
	[209.85.128.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39916E00CF4
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2019 06:42:23 -0800 (PST)
Received: by mail-wm1-f67.google.com with SMTP id y8so9065551wmi.4
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2019 06:42:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=s6NA3AOT23hFNkqwVn6l4DZL8d2eTJahBsZt14VWfps=;
	b=xiAyddqSjO37rb+Pa/5ScgZvDcXrmPvrVwYBqjKNxkpu3//cgQOOFrhrsJMxufyGOp
	piJbufkZdn2mv3zEs00P/uvUx/ZFLSobH1vINa/1tvWQPmFHiHTgpRiODCrCfQ5K2hH+
	UcOdhQFfjpVrg5bqYgKh1zCbwmogAS8gEHyOR6vf9k58SPi4csUSJeSM9NwM52H8foBv
	5wxdn9HUI1dIKcPr+YRwnghn0c0ALxyVPH1WIM+h8ovQbJ4FC9x65ioXFbdWqzBu92xt
	DlAj+KPwLD7wzF1hsJZSy9/cNWzX/Vp8XYnuPQ4lAtYGegyr9FC+mbRK9OdYDg/Qrvxl
	NJJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=s6NA3AOT23hFNkqwVn6l4DZL8d2eTJahBsZt14VWfps=;
	b=IxP8Hw6j/HQ0eCd6VReVRVIp4U2GcEvrMRcXnt0+fWJHGsqqKx8+73wuUulln2UiMC
	es1zGW/EQ0u+JAH8u4qm7heu9o2HtZP32GuYV2xBLvf8wpC6otxUhT+EwirWtFuzGlJJ
	IDMd5lW/VH3FvsqJCEQF4Cl2yLg5e5TDjb5OqlmgnAGNBYdftjxeL+OuOElc421AhaHA
	xKA4AmZ8axMdsOcyI1vnnfe9GrtGhr/q/PueBKouo2DhrU51G5Pb0F20q1oapXZMfv1h
	p0by/SulATfKkWpVepdpf0FVqGxvCEGqu4lpVs9jytqJQ3BvIKOWyZ+ZS783QDi/F+B7
	zNPg==
X-Gm-Message-State: AJcUukfW9COwzWlVbn7M0jR+yoLDZAS4+uyrh5kyv8qk6KaH6bKa2Vqn
	nT4zfXGPWsEj+ljrH8aMNqVm5/8MgPY=
X-Google-Smtp-Source: ALg8bN475et/6vFFu4ecVBozMkqVWd1IDY+O1irMaSJzjTFy+nCc14YVmHF+RgfDxAlwIildcfHquA==
X-Received: by 2002:a1c:8c05:: with SMTP id o5mr11582588wmd.29.1547476941682; 
	Mon, 14 Jan 2019 06:42:21 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	s3sm22517084wmj.23.2019.01.14.06.42.20 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 14 Jan 2019 06:42:20 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 14 Jan 2019 14:42:03 +0000
Message-Id: <20190114144208.14353-6-ross.burton@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190114144208.14353-1-ross.burton@intel.com>
References: <20190114144208.14353-1-ross.burton@intel.com>
Subject: [meta-security][PATCH 06/11] apparmor: use manpages class
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
X-List-Received-Date: Mon, 14 Jan 2019 14:42:24 -0000

The manpages class handles enabling/disabling the man pages based on the
api-documentation DISTRO_FEATURE, and ensures that mandb is called.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 recipes-security/AppArmor/apparmor_2.12.bb | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-security/AppArmor/apparmor_2.12.bb b/recipes-security/AppArmor/apparmor_2.12.bb
index 6434e42..529414f 100644
--- a/recipes-security/AppArmor/apparmor_2.12.bb
+++ b/recipes-security/AppArmor/apparmor_2.12.bb
@@ -29,11 +29,11 @@ SRC_URI[sha256sum] = "8a2b0cd083faa4d0640f579024be3a629faa7db3b99540798a1a050e2e
 
 PARALLEL_MAKE = ""
 
-inherit pkgconfig autotools-brokensep update-rc.d python3native perlnative ptest cpan
+inherit pkgconfig autotools-brokensep update-rc.d python3native perlnative ptest cpan manpages
 inherit ${@bb.utils.contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','', d)}
 
-PACKAGECONFIG ?="man python perl"
-PACKAGECONFIG[man] = "--enable-man-pages, --disable-man-pages"
+PACKAGECONFIG ??= "python perl"
+PACKAGECONFIG[manpages] = "--enable-man-pages, --disable-man-pages"
 PACKAGECONFIG[python] = "--with-python, --without-python, python3 swig-native"
 PACKAGECONFIG[perl] = "--with-perl, --without-perl, perl perl-native swig-native"
 PACKAGECONFIG[apache2] = ",,apache2,"
-- 
2.11.0


