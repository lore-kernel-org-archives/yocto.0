Return-Path: <einar@vading.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71F43E00D14; Fri, 21 Dec 2018 05:16:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.219.172 listed in list.dnswl.org]
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com
	[209.85.219.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AACBE0097C
	for <yocto@yoctoproject.org>; Fri, 21 Dec 2018 05:16:32 -0800 (PST)
Received: by mail-yb1-f172.google.com with SMTP id k136so2086204ybk.1
	for <yocto@yoctoproject.org>; Fri, 21 Dec 2018 05:16:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=aaOzcT0y9d57NLCgKXT9ZDf5qpMvVtXUYFkBmLrX90w=;
	b=BdaI7UTibiR3MvxWK2++DNdXXUq9leN60yPNVs5nvAIEizg3as+ESA0iHHPjuNV+AY
	srEXCd90Y5njXoPiiJcyQrAzH+3PIvcF9F0Wyp8VYofj2XTqxnzkJxEoPcAX9dcSwFAI
	gFeMn3BLryVuOf8nVjaTELJOdhzJGhGoO16UTmtiU0hb48NvjqrYdCYfyGIQnE1fSH9f
	tcYH9ks6eYr86qZiajGadd3LySv8nT3ZTunPyJJVXEQ/3yMFVN5GutUeC2hqc1IQko9k
	PqyxS5hl61hnkTuP0mU6BOTWElNLj2YOyp8nurVHgQr9KsKHOUSuJhiOmNa+z1Z+yU2I
	tn2A==
X-Gm-Message-State: AA+aEWZoynmX7bgXuLSeTTB6T3Znus/Y6VNBZs3g1Rdf1l53AUIRytWU
	S4GmWlLA0yEqWJQs6Q4WKY1oWjd1IoYUqN0tP5RWIXGh933SSg==
X-Google-Smtp-Source: AFSGD/UV4sd0TYD5ktU/NLvFS4Bw3m0/ah3LpuZptWi42QUI0itt5EO4edzBARQ50XqU4yZxk+oWu2SCuBvvAtSAMXw=
X-Received: by 2002:a5b:41:: with SMTP id e1mr2354634ybp.61.1545398191136;
	Fri, 21 Dec 2018 05:16:31 -0800 (PST)
MIME-Version: 1.0
From: Einar Vading <yocto-ml@vading.se>
Date: Fri, 21 Dec 2018 14:16:19 +0100
Message-ID: <CAB6-Vt+dvn1VwmvX7Q854rDvZ2qPqkRhm=uX3sgS0nfBkokLXg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Python3 and pathlib/ntpath
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
X-List-Received-Date: Fri, 21 Dec 2018 13:16:33 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I was trying to install meson on target for a machine that creates a
docker image for us. When I try to start meson however I get an error
message that pathlib can't be found. With the patch below I got it to
work but my question is if there is another way? Or if the patch would
be acceptable upstream?

Best regards,
Einar

diff --git a/meta/recipes-devtools/python/python3/python3-manifest.json
b/meta/recipes-devtools/python/python3/python3-manifest.json
index 2491f36db2..42a5680c65 100644
--- a/meta/recipes-devtools/python/python3/python3-manifest.json
+++ b/meta/recipes-devtools/python/python3/python3-manifest.json
@@ -154,10 +154,12 @@
             "${libdir}/python3.5/__pycache__/keyword.*.pyc",
             "${libdir}/python3.5/__pycache__/linecache.*.pyc",
             "${libdir}/python3.5/__pycache__/locale.*.pyc",
+            "${libdir}/python3.5/__pycache__/ntpath.*.pyc",
             "${libdir}/python3.5/__pycache__/opcode.*.pyc",
             "${libdir}/python3.5/__pycache__/operator.*.pyc",
             "${libdir}/python3.5/__pycache__/optparse.*.pyc",
             "${libdir}/python3.5/__pycache__/os.*.pyc",
+            "${libdir}/python3.5/__pycache__/pathlib.*.pyc",
             "${libdir}/python3.5/__pycache__/platform.*.pyc",
             "${libdir}/python3.5/__pycache__/posixpath.*.pyc",
             "${libdir}/python3.5/__pycache__/re.*.pyc",
@@ -269,10 +271,12 @@
             "${libdir}/python3.5/linecache.py",
             "${libdir}/python3.5/locale.py",
             "${libdir}/python3.5/new.py",
+            "${libdir}/python3.5/ntpath.py",
             "${libdir}/python3.5/opcode.py",
             "${libdir}/python3.5/operator.py",
             "${libdir}/python3.5/optparse.py",
             "${libdir}/python3.5/os.py",
+            "${libdir}/python3.5/pathlib.py",
             "${libdir}/python3.5/platform.py",
             "${libdir}/python3.5/posixpath.py",
             "${libdir}/python3.5/re.py",
@@ -1146,4 +1150,4 @@
         ],
         "summary": "Python XML-RPC support"
     }
-}
\ No newline at end of file
+}

