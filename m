Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C041EE00CC7; Thu,  4 Feb 2016 14:27:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59206E00CC4
	for <yocto@yoctoproject.org>; Thu,  4 Feb 2016 14:27:15 -0800 (PST)
Received: by mail-wm0-f48.google.com with SMTP id p63so2954467wmp.1
	for <yocto@yoctoproject.org>; Thu, 04 Feb 2016 14:27:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id;
	bh=6/dUmoBBtIIwvrEXaWVjeJfCLTRPVGJWzMZNGYnVI7A=;
	b=NTSDrkCJxKIeN5JqPIbWIrtW4PF9YWhr8fgpPbKPVBHTvPbkVFG61ZtLNhsuj5EXag
	nQb+ZvI6GFyDkQpoQuC1Xzzf7095E+WQwjKEpYa+DFV7EC8Mm0MtOVaZNj8QoFwWtcme
	sy1PLT4sFHlY8iixisWKz8cRUXJecMv8MpSz+xsc2aDm29OG0+s4WXIKLbdujwh/tFU5
	PXHyP5Rklvm5StQXgB0CoVPIra3av2sDj+nzsU11xzeBnua/XdBhfmeaWcuaILNw0rS9
	CkMlGrcimSpYNcr5uYrZi0TKtkIL7F60IshEi2074pSGSpoILe1Z0DNpU5dXTvQRXf2B
	aDsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=6/dUmoBBtIIwvrEXaWVjeJfCLTRPVGJWzMZNGYnVI7A=;
	b=SPfAO0ATTCDyo2FlIgHSM5v3jFTQ3qeGIygYjAYrzUQN57RLSK1bFqC3xdCWT4TFSC
	wbE5BBvoYHsPxMo1+k50lxVWuWOXDnHyoEfxl3oXuTUdQFQZlP8RD2bRbJYmrYQWGWh6
	1ZfxsqaW6i0MnZWO1orG5szbI8Gn0ZGEbULnieCVNo+Jj15sGdxHtlnQUHBB9GAaQiHD
	5JaM3+SA5hPyKSVflrDvNZXE5byL0u9GlXq2U7PEETl0KS9PuYihi8wG+sUv6+dZG55t
	cvbe73604NZKLqBAsAxSOTCf6DvfVpPwfyxLirkwqPW1ZQj4ZHTOE8eNgip4UuL09MwH
	xGlg==
X-Gm-Message-State: AG10YOSWJc7BJNn8+lUmjo5utF97coLfHnUrrTTDXVouk88yRWrneLCOgpLHvsw4IBUZ7A4b
X-Received: by 10.28.47.23 with SMTP id v23mr13202955wmv.7.1454624834880;
	Thu, 04 Feb 2016 14:27:14 -0800 (PST)
Received: from flashheart.burtonini.com (home.burtonini.com. [81.2.106.35])
	by smtp.gmail.com with ESMTPSA id
	f205sm14594179wme.4.2016.02.04.14.27.13 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 04 Feb 2016 14:27:14 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Thu,  4 Feb 2016 22:27:11 +0000
Message-Id: <1454624831-25414-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 2.7.0
Subject: [PATCH][yocto-autobuilder] nightly-musl: also build core-image-weston
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
X-List-Received-Date: Thu, 04 Feb 2016 22:27:18 -0000

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 buildset-config.controller/nightly-musl.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/buildset-config.controller/nightly-musl.conf b/buildset-config.controller/nightly-musl.conf
index 9a82e6b..5da90c3 100644
--- a/buildset-config.controller/nightly-musl.conf
+++ b/buildset-config.controller/nightly-musl.conf
@@ -12,7 +12,7 @@ steps: [{'SetDest':{}},
                             'buildhistory' : False, 'distro': 'poky',
                             'atextappend' : '\nTCLIBC="musl"\n' }},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
-        {'BuildImages': {'images':  'core-image-minimal core-image-full-cmdline core-image-sato'}},
+        {'BuildImages': {'images':  'core-image-minimal core-image-full-cmdline core-image-sato core-image-weston'}},
         {'SendErrorReport': {}},
         {'PublishArtifacts': {'artifacts': ['ipk', 'rpm', 'deb']}}]
 
-- 
2.7.0


