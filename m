Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63DEFE00BED; Tue, 15 Jan 2019 07:02:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.68 listed in list.dnswl.org]
Received: from mail-yw1-f68.google.com (mail-yw1-f68.google.com
	[209.85.161.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7086FE006F1
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2019 07:02:46 -0800 (PST)
Received: by mail-yw1-f68.google.com with SMTP id g194so1133959ywe.7
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2019 07:02:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=EPYYCrAq6ROp5mn/FVjiDgd9Pf4DaBEsEPeAu9kH/Mw=;
	b=MuvlwWYi2DCiF9Cb9mafDp9eaynhVSetSUAebgyn/UPTM6gt+h003xKxZ8Dr0ozDy6
	NZlQgKx1I3WMQ78F22obP1mEvKuG+t6uF8yQSuuStqcz26PRyylyTKP4U0I4HFL2XnVJ
	ZbqrJsv2PTjY4ybHZTXBOzlCU6ElLD7otln6R0riio1Hx7VtFJg4Gd5Mwp1kqfNkuwjv
	YP1me376DQgKCvhM4CBtugN86093xzIGP+MaX4TEweQ32S5O0Zb+dxD6WanJBKGY5A1/
	bg8jtYccvbzkqoMRirKXvcq+2Ipf1qMqL9bVY10uI8cmU35oPIYi+QYl//ilE6eHVM3Z
	PUUQ==
X-Gm-Message-State: AJcUukd+nQFcLzC46qO/FbGs5F2mDNNq/dHQg8sgZal338Xd+f3GgzDT
	yJaFWZg4ZO86Y/bjVY+q9QXLpoMa
X-Google-Smtp-Source: ALg8bN5nHCSq6M/2/B+RUQyFLNj5wSpGWW8HNtjxD/2bFwLxidRDhLVIbWyHZrQEzKoEJHilAxcsgw==
X-Received: by 2002:a81:7d0b:: with SMTP id y11mr3206748ywc.442.1547564565670; 
	Tue, 15 Jan 2019 07:02:45 -0800 (PST)
Received: from tfsielt31850.garage.tyco.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	a72sm1675484ywh.42.2019.01.15.07.02.44 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 15 Jan 2019 07:02:45 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Tue, 15 Jan 2019 15:02:42 +0000
Message-Id: <20190115150242.632-1-git@andred.net>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [documentation][PATCH] documentation: remove True option to getVar calls
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
X-List-Received-Date: Tue, 15 Jan 2019 15:02:48 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: André Draszik <andre.draszik@jci.com>

getVar() has been defaulting to expanding by default for
a long time (2016), thus remove the True option from
getVar() examples with a regex search and replace.

Search & replace made using the following command:
    sed -e 's|\(d\.getVar \?\)( \?\([^,()]*\), \?True)|\1(\2)|g' \
        -i $(git grep -E 'getVar ?\( ?([^,()]*), ?True\)' \
             | cut -d':' -f1 \
             | sort -u)

Note that there are are several other examples of getVar()
usage which already don't explicitly add the True option,
this patch just align some stray remainders.

Signed-off-by: André Draszik <andre.draszik@jci.com>
---
 documentation/dev-manual/dev-manual-common-tasks.xml | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index c75e718d67..af0e4d53bf 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -5116,15 +5116,15 @@
             So, commands such as the following are useful when exploring the data
             store and running functions:
             <literallayout class='monospaced'>
-     pydevshell> d.getVar("STAGING_DIR", True)
+     pydevshell> d.getVar("STAGING_DIR")
      '/media/build1/poky/build/tmp/sysroots'
-     pydevshell> d.getVar("STAGING_DIR", False)
+     pydevshell> d.getVar("STAGING_DIR")
      '${TMPDIR}/sysroots'
      pydevshell> d.setVar("FOO", "bar")
-     pydevshell> d.getVar("FOO", True)
+     pydevshell> d.getVar("FOO")
      'bar'
      pydevshell> d.delVar("FOO")
-     pydevshell> d.getVar("FOO", True)
+     pydevshell> d.getVar("FOO")
      pydevshell> bb.build.exec_func("do_unpack", d)
      pydevshell>
             </literallayout>
@@ -6892,8 +6892,8 @@
             <literallayout class='monospaced'>
      MACHINE = "qemux86-64"
      DEFAULTTUNE = "x86-64-x32"
-     baselib = "${@d.getVar('BASE_LIB_tune-' + (d.getVar('DEFAULTTUNE', True) \
-        or 'INVALID'), True) or 'lib'}"
+     baselib = "${@d.getVar('BASE_LIB_tune-' + (d.getVar('DEFAULTTUNE') \
+        or 'INVALID')) or 'lib'}"
             </literallayout>
             Once you have set up your configuration file, use BitBake to
             build an image that supports the x32 psABI.
-- 
2.20.1


