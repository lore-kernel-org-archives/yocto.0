Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F8F7E00753; Fri, 16 Jan 2015 04:04:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
Received: from mail-wg0-f50.google.com (mail-wg0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAB42E004D6
	for <yocto@yoctoproject.org>; Fri, 16 Jan 2015 04:04:43 -0800 (PST)
Received: by mail-wg0-f50.google.com with SMTP id a1so20139930wgh.9
	for <yocto@yoctoproject.org>; Fri, 16 Jan 2015 04:04:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=DsTLM05OOiYt/Tdle5+xR7vho5urh7y4uUITcFzlqEA=;
	b=kqCDn4uFCadjLZ3nM/Vk/vuzXBJvwH9+eXr72V8PnaYzECXnhB55ekK8iR39+3R+dn
	zknMgwfj7nP8Fs6JHaeuqzuMLzyw4xcBDH7piKO2ETLPjX0/fkARXVaVS9utnP4ZyaFl
	yGFqqcSDWS1Egsy5Dj1VxKlr66usqt81UtyhLV/k6+gopiNb9AT2ezeay5ECsuE5HfXU
	tOriYZESHA7vD6q6CgrPXt9Sst5ia6tghTyRfkKGe8+6ZTjbF79cc+b1jbW36iDANERr
	3gYw/GfBrhp7UwMk450PX5tnf3gQG2PoaGYCeDBQgk24WdmpM+8mGNZ6WnDoGJYdmMPz
	d/cg==
X-Gm-Message-State: ALoCoQmKFgUYQ8gnvMvcZZ/E6YFXBo/rK9oOFP5safncIBghMviOHO75AIElXm1xc09vFGtL4dVE
X-Received: by 10.180.108.232 with SMTP id hn8mr5517729wib.39.1421409882804;
	Fri, 16 Jan 2015 04:04:42 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35])
	by mx.google.com with ESMTPSA id h8sm2762245wiy.4.2015.01.16.04.04.41
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 16 Jan 2015 04:04:42 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 16 Jan 2015 12:03:13 +0000
Message-Id: <1421409793-25295-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH] buildbot/templates: add links to Error Reporting site
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
X-List-Received-Date: Fri, 16 Jan 2015 12:04:47 -0000

In build result grids, add a link to search the Error Report site for the build
SHA.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 .../buildbot/status/web/templates/grid_macros.html                    |    1 +
 1 file changed, 1 insertion(+)

diff --git a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/status/web/templates/grid_macros.html b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/status/web/templates/grid_macros.html
index 91ddce4..0479927 100644
--- a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/status/web/templates/grid_macros.html
+++ b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/status/web/templates/grid_macros.html
@@ -26,6 +26,7 @@
       {%- else %}<br/><b>Commit: </b>latest{% endif %}
       {%- if ss.branch %} in {{ ss.branch|e }}{% endif %}
       {%- if ss.hasPatch %} [patch]{% endif -%}
+      (<a href="http://errors.yoctoproject.org/Errors/Search/Args/?items=10&query={{ss.revision}}">errors</a>)
     <br/>
     {%- endfor %}
   </td>
-- 
1.7.10.4


