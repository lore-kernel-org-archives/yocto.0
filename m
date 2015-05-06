Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B238E009DB; Wed,  6 May 2015 04:46:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f181.google.com (mail-wi0-f181.google.com
	[209.85.212.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 285F5E009B6
	for <yocto@yoctoproject.org>; Wed,  6 May 2015 04:46:53 -0700 (PDT)
Received: by wicmx19 with SMTP id mx19so123156704wic.1
	for <yocto@yoctoproject.org>; Wed, 06 May 2015 04:46:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=rjAn6rQC8KwS1GibeCLDI7Ww8yaRCWuMr9Yn1WzyEpU=;
	b=PLKH8SvHjQlTiAmhSo2/JS960WAvmzeNfPHB1PKQ8sZ2185bxincdShem9CVQGmizu
	p+gjt67f7gBi3vl22drrrf5r2fd9UKFRpdrlef+wnL3q1wxQwBNWbEKFcBmreQuyoqaN
	t44ykwehO22vXbhwNNkfvqVso/aW0h80OBNll0GjSMrE2NdcaSXpjDYGqqzsotUYs9fZ
	F0kbhUG8LEzC1uBb/CgbSyIw55baSTYF+KcdWie+1huYDDh29TQsrEcszcp7zqecpfub
	YhF8eJa40JJP+jEhHkY0AyTag6dwrwBgML8bzTikbefTJJ7u8H+5Zb7B9dONVZHdZxpB
	/V/A==
X-Gm-Message-State: ALoCoQmxH2qEHpQtWDLRqPdy9XJmEGG2FX8zlAmyQ6yeZxXL14kYDdFwlaygnyPqiQrd3m6gbl5z
X-Received: by 10.180.96.196 with SMTP id du4mr12999864wib.77.1430912813103;
	Wed, 06 May 2015 04:46:53 -0700 (PDT)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35])
	by mx.google.com with ESMTPSA id dg8sm2398507wjc.9.2015.05.06.04.46.51
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 06 May 2015 04:46:52 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  6 May 2015 12:42:57 +0100
Message-Id: <1430912577-17651-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 2.1.4
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
X-List-Received-Date: Wed, 06 May 2015 11:46:58 -0000

The Error Reporting Service was rewritten and the URLs are different.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 .../buildbot/status/web/templates/grid_macros.html                      | 2 +-
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
2.1.4


