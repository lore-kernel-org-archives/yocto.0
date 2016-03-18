Return-Path: <michael.g.wood@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4BC8E00C71; Fri, 18 Mar 2016 10:05:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E94AE00C3B
	for <yocto@yoctoproject.org>; Fri, 18 Mar 2016 10:05:22 -0700 (PDT)
Received: by mail-wm0-f47.google.com with SMTP id l68so77523375wml.0
	for <yocto@yoctoproject.org>; Fri, 18 Mar 2016 10:05:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=TfX/q408z8jvTo8XNR1LTBlJejM2uK+Y2xgiZFnMrKU=;
	b=TTyDPsPH3/xB7Go3+t7rzQdNegET08dVvew24Ue5Nhlf5Por/P0PSY0dAq8fUq2dVp
	CeU3HfWHq0+B9pUZzVRbNj8Wn394hRQvWfqIL8S3rF2UNrKTWZvifQLjOLuHql8svoI4
	8w2fMXTJGn1uxpD2PmdWsj+0Wy9/TrU4zWD7m1s6qTh6zQosyJg6i1I7UcUMMojSysgT
	h2whi5gvRNiBYOrSYUTxtlN7X0cWv6iA+veEte1Y3mROAEy9sxee/JsEW7eEeM9P5f64
	rsEYVjaEe1qBBRFGxTO8RWu+tI2OL5h6mMQ48RwiRZJljdAdt16qTImCOfSea5EBn7Gj
	Ie2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=TfX/q408z8jvTo8XNR1LTBlJejM2uK+Y2xgiZFnMrKU=;
	b=Ov8fqls24cWgafBBAM1k12lfkR0/RHB4RKHbj8c9YHZzoPolOC7cbUN0ngeOn8FwWw
	cJMxykPXoc3uOKCmg/EVB4QTKE0Q6HuIuVQ2BsoJWPLbFZLD7MJCIcWPEpJXlq3d1qxq
	TgBNk2JFD8CxZ+OGw16wIZZ+/UeAiPNa6ShDt4kiCwunqYJIFUN+nqogUYyoKaLzic8f
	hCQrPHAoP7tpi69KsSteRoYZ9xRTi8DbRD5leiyArSnhLAky32ORBP1yQDIyOH4lddnx
	+K6TxRVZukns19hjHMV7L20/hWlq4qlusQYv1mqUZpmmWbv33X0zOdlpm13c8rSgYH97
	8Lyw==
X-Gm-Message-State: AD7BkJI2ZRwzWGrW6UpsZ9cp0O73aT8aFtHKXeG08H+Zfg/Un7BdQgsjzjTrlcAu9shBlmow
X-Received: by 10.28.111.12 with SMTP id k12mr412134wmc.35.1458320721621;
	Fri, 18 Mar 2016 10:05:21 -0700 (PDT)
Received: from localhost.localdomain
	(host109-153-236-140.range109-153.btcentralplus.com.
	[109.153.236.140]) by smtp.gmail.com with ESMTPSA id
	t7sm13011211wjf.39.2016.03.18.10.05.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 18 Mar 2016 10:05:20 -0700 (PDT)
From: Michael Wood <michael.g.wood@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 18 Mar 2016 17:05:10 +0000
Message-Id: <1458320710-10248-1-git-send-email-michael.g.wood@intel.com>
X-Mailer: git-send-email 2.5.0
Subject: [yocto-autobuilder][PATCH] buildbot/templates: Fix link to error reporting tool
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
X-List-Received-Date: Fri, 18 Mar 2016 17:05:27 -0000

Fix link so that we don't perform a full text search for the
SHA/revision and just filter for it using the commit field. This should
drastically reduce page loading time on the error reporting site.

[YOCTO #9295]

Signed-off-by: Michael Wood <michael.g.wood@intel.com>
---
 .../buildbot/status/web/templates/grid_macros.html                      | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/status/web/templates/grid_macros.html b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/status/web/templates/grid_macros.html
index 0479927..8876422 100644
--- a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/status/web/templates/grid_macros.html
+++ b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/status/web/templates/grid_macros.html
@@ -26,7 +26,7 @@
       {%- else %}<br/><b>Commit: </b>latest{% endif %}
       {%- if ss.branch %} in {{ ss.branch|e }}{% endif %}
       {%- if ss.hasPatch %} [patch]{% endif -%}
-      (<a href="http://errors.yoctoproject.org/Errors/Search/Args/?items=10&query={{ss.revision}}">errors</a>)
+      (<a href="http://errors.yoctoproject.org/Errors/Latest/Autobuilder/?filter={{ss.revision}}&type=commit">errors</a>)
     <br/>
     {%- endfor %}
   </td>
-- 
2.5.0


