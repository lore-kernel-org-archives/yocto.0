Return-Path: <einar@vading.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 734F2E00D21; Fri, 21 Dec 2018 01:22:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.46 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yw1-f46.google.com (mail-yw1-f46.google.com
	[209.85.161.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4463BE00950
	for <yocto@yoctoproject.org>; Fri, 21 Dec 2018 01:22:01 -0800 (PST)
Received: by mail-yw1-f46.google.com with SMTP id i73so1840169ywg.3
	for <yocto@yoctoproject.org>; Fri, 21 Dec 2018 01:22:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vading.se; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=aaOzcT0y9d57NLCgKXT9ZDf5qpMvVtXUYFkBmLrX90w=;
	b=G7C2Bn3aTugSjJ840W1ptix63x23uJqgeJH9PRwOKZ6Br+7smZXz7+btc3mc/7ToVf
	tkRoLriHSyxV4Cy17cB1Dtp425S6sYYzZYWQK/wMK3dozlNMrT/GtxD/qv0TDqKhTfPe
	tFUY496AbZehPyroyeJ5Tiedzzfe2Ayhb0qEs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=aaOzcT0y9d57NLCgKXT9ZDf5qpMvVtXUYFkBmLrX90w=;
	b=jZotI0suWGd4AX5Bt0+soPIe8u03l+kXBxvtjv/s61o2wl7FsWHXXc2XO9JJI8YW5A
	31kUf6P3hVgHL2NkKWHw+2V4GwhcqlU7jUNGCq2r+dElAbMZjn50MJqGzRG1XqIuZ+mK
	0NRO4LdYX4JiZ3TIt0Oqni4dPdW+xHUDLXg4MV5gt8JfE08bWZekag47AJePHFqX1amE
	u+dC+OxftopfMwmjze3DucB767oYUSsv91Br6r6jviymhNhqyodPA1YLsqdYlERXLN2U
	ipq9XJVxsq6QQmdU4qgxKDMhCWeiMhq3lOH+rQT5gTrwqUFhbw1XuHfFWTGGIqABKK+f
	2lAQ==
X-Gm-Message-State: AA+aEWYFvt+pmVj/sGOLEoKkusB+QMX7E7UvMQJ0ND2jyy9FeXXCv0dJ
	/Q/v9Pu9pXdJRdXtTmSHa8bwu3567RbOWdOp9n2dLq8IFukBMg==
X-Google-Smtp-Source: AFSGD/U+oaqeQpfB7NBkQ/8ocQ7UlB0lvVCIY2qH4gD3Bi+0xUlCLg/F1rHeU1RbpjtPtWSpvlf5Fy96Sn2/+Nm8b5c=
X-Received: by 2002:a81:2990:: with SMTP id p138mr1510376ywp.359.1545384120257;
	Fri, 21 Dec 2018 01:22:00 -0800 (PST)
MIME-Version: 1.0
From: Einar Vading <einar@vading.se>
Date: Fri, 21 Dec 2018 10:21:49 +0100
Message-ID: <CAB6-VtKy24HWnBQFf_=tvTC_kYdcZMp4NzfFMNLm_age=zH4FQ@mail.gmail.com>
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
X-List-Received-Date: Fri, 21 Dec 2018 09:22:02 -0000
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

