Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89B12E00945; Thu, 12 Feb 2015 03:47:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wg0-f53.google.com (mail-wg0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DE65E0093B
	for <yocto@yoctoproject.org>; Thu, 12 Feb 2015 03:47:35 -0800 (PST)
Received: by mail-wg0-f53.google.com with SMTP id x13so9464081wgg.12
	for <yocto@yoctoproject.org>; Thu, 12 Feb 2015 03:47:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=ozl4fdaGw0kvZEhHoQbS8ahiDU5DhnuKKfumpHzoEBA=;
	b=RPRx2YP0+6C3lmpEk7DYzzkTA6ZocxZFQDiz9rF8gHY+dROd9RqF6RX8BQTGEhwHXm
	iLX2LzQnsfgTF26GI8F1/r9bn3hQE1nZHPzTnp4WwtAmR4muwVsH1BJpFuQoTo0y4L0C
	nzgMC3KhQeE95osqnxz+dcTXowL3t3lNMTOgtOpR5izLTopO1a+KRzP7ceJRydLxvLck
	OXUHSjfJcNpds92DlNjv9T39LKBFWM9su98knhG/gYYoZ31mQ/2VWyCYtyZuFGdhKz9z
	4evqt3YzbCoM7aVCYPSikQs8AV98JebS1WQr7czves2a0b05GwVWSnkus4M3y8ynb/WL
	Qxag==
X-Gm-Message-State: ALoCoQnUeR9F3Wo82uf1yVcOwmQ5dDiIkgALa0jBpH+qcnwY/00CvoVigf17Xp5wKw9PHPTbcsx9
X-Received: by 10.194.6.228 with SMTP id e4mr6726638wja.63.1423741654990;
	Thu, 12 Feb 2015 03:47:34 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35])
	by mx.google.com with ESMTPSA id hr1sm2239342wib.1.2015.02.12.03.47.30
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 12 Feb 2015 03:47:33 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 12 Feb 2015 11:45:22 +0000
Message-Id: <1423741522-14459-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH][autobuilder] grid_macros: update error reporting service URL
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
X-List-Received-Date: Thu, 12 Feb 2015 11:47:42 -0000

The Error Reporting Service was rewritten and the URLs are different.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 .../buildbot/status/web/templates/grid_macros.html                   |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/status/web/templates/grid_macros.html b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/status/web/templates/grid_macros.html
index 0479927..83cc874 100644
--- a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/status/web/templates/grid_macros.html
+++ b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/status/web/templates/grid_macros.html
@@ -26,7 +26,7 @@
       {%- else %}<br/><b>Commit: </b>latest{% endif %}
       {%- if ss.branch %} in {{ ss.branch|e }}{% endif %}
       {%- if ss.hasPatch %} [patch]{% endif -%}
-      (<a href="http://errors.yoctoproject.org/Errors/Search/Args/?items=10&query={{ss.revision}}">errors</a>)
+      (<a href="http://errors.yoctoproject.org/Errors/Latest/?type=commit&filter={{ss.revision}}">errors</a>)
     <br/>
     {%- endfor %}
   </td>
-- 
1.7.10.4


