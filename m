Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52D68E00D14; Fri,  5 Feb 2016 08:07:36 -0800 (PST)
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
	*      [74.125.82.42 listed in list.dnswl.org]
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C54DE00D01
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2016 08:07:34 -0800 (PST)
Received: by mail-wm0-f42.google.com with SMTP id p63so33603263wmp.1
	for <yocto@yoctoproject.org>; Fri, 05 Feb 2016 08:07:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id;
	bh=iSe6LApMXeF0GUT1B271xfTh+kSA8iOI+Hffv8td92k=;
	b=X/mJ9OhKhaq8y2nAYaoC16fPUlZmIfZXLsfd+FeX5yAKHBvyz9c8yYn5pqBaRpLwua
	/wJ88qnUddUf7Mz87DxU3+smRCiIF1/l0kjW+pr4u0Q6IUVL3Wt3hlJBTWPy2yX1jcKz
	yQ54+EPj8U/DHoiuyyuUsxHFN7ocZtapNAXSXijKHrWjMOuB86Y2Jab8Tbw91sO9Ous9
	AppFA2NQOho7RHvrpHZQNqIkNAJsZQIkPdsv3GS0AYqDs88t3x+1ZNNV471doqhR1GgQ
	Vv0QWNMrusQ8U8uZBzC5opH55uORz24O0V2RTKE9CNohUQ8f/rkiN3I4Fv92kFHfr6/2
	Qt6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=iSe6LApMXeF0GUT1B271xfTh+kSA8iOI+Hffv8td92k=;
	b=VgzYKkc1YeVgq0OpYddAENsdYp+Y3SnpEP9m4w+uOIQLGM7t/KPJr3UGh4JXk8hZ8R
	JVqWAgTZu+n3HwKshUI4Fc43SIcE4FcD+JsUBoBCD8eR/PDvRrZr9jb3gyir7ZLIP3t2
	15TSAgWhdQVa+tTFC5t4tKWNJU53qCxWHV6rlkx0wb/P9Oxlw3IE0IYjgSfjs4LadJoL
	PsecHQ29ugxdESrqfl74bb6qEOXHLlJZHI7f0OzDtFahidNv/aWJaVzP4F6qh9eUOXT1
	1Vkup9w7SEyqup2Wtm6B4sBHdfweHp3GAuC3zSUXLcU9/bqtfC+Ds3wdSJZT0AW+RGwV
	aUnQ==
X-Gm-Message-State: AG10YOTs82rfUgZ/MtXYtW8gqxoA3V31Wh5iV4/DXC6xvh3eXd8I0g80GW5cE68RI1182CYJ
X-Received: by 10.28.23.73 with SMTP id 70mr35981061wmx.37.1454688454111;
	Fri, 05 Feb 2016 08:07:34 -0800 (PST)
Received: from flashheart.burtonini.com (home.burtonini.com. [81.2.106.35])
	by smtp.gmail.com with ESMTPSA id
	v2sm17978139wmd.24.2016.02.05.08.07.33 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 05 Feb 2016 08:07:33 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Fri,  5 Feb 2016 16:07:29 +0000
Message-Id: <1454688449-8689-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 2.7.0
Subject: [PATCH][yocto-autobuilder] nightly-musl: build core-image-weston, only use ipkg
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
X-List-Received-Date: Fri, 05 Feb 2016 16:07:36 -0000

Build core-image-weston for more coverage, and use ipkg explicitly as rpm is
known to break with musl.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 buildset-config.controller/nightly-musl.conf | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/buildset-config.controller/nightly-musl.conf b/buildset-config.controller/nightly-musl.conf
index 9a82e6b..49ae91d 100644
--- a/buildset-config.controller/nightly-musl.conf
+++ b/buildset-config.controller/nightly-musl.conf
@@ -10,9 +10,10 @@ steps: [{'SetDest':{}},
         {'GetDistroVersion' : {'distro': 'poky'}},
         {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'x86_64',
                             'buildhistory' : False, 'distro': 'poky',
+                            'packages': 'ipk',
                             'atextappend' : '\nTCLIBC="musl"\n' }},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
-        {'BuildImages': {'images':  'core-image-minimal core-image-full-cmdline core-image-sato'}},
+        {'BuildImages': {'images':  'core-image-minimal core-image-full-cmdline core-image-sato core-image-weston'}},
         {'SendErrorReport': {}},
         {'PublishArtifacts': {'artifacts': ['ipk', 'rpm', 'deb']}}]
 
-- 
2.7.0


