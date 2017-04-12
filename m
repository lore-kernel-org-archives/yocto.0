Return-Path: <ptsneves@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59BF9E00AF8; Tue, 11 Apr 2017 23:48:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ptsneves[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.181 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.181 listed in list.dnswl.org]
Received: from mail-ua0-f181.google.com (mail-ua0-f181.google.com
	[209.85.217.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CB9EE00AD5
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 23:48:16 -0700 (PDT)
Received: by mail-ua0-f181.google.com with SMTP id u103so10991933uau.1
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 23:48:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=kCVUchPjZQKlhBBtCIPcm6gXhO5dwKeWMu/zvHB7i5E=;
	b=OWFGkhNx2Sl9E4p78DQ2aHW8kKsy8nyrLZ91HDza1wUdF4m02EVGpWBAaEbasbXC4H
	JBCt9hvOaleSpp5WfstTRUV9qRKndtXDU3suO+6fVgRhsRBXz7n4NQ+Yte7/oBUsbbrv
	vs5AvSeHUhzr2G1W02jgDRAXiVar3iOtglUWrGQJuxz1+CINkXi3X+Jdfn/F9MTBvRRk
	KEVtGFHNnac3ou5Pgkccq6YblhM7UCAdCSYGeKfEy8b1dZjtxBXAEHPlsZbWyQrvQbO8
	mvZvzBvXYZyhCRmonRFA+DMWmLmSsrGfuaQfv1g3o+9kXy1wiM9zqgC9isi1fkQ//tbw
	PpEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=kCVUchPjZQKlhBBtCIPcm6gXhO5dwKeWMu/zvHB7i5E=;
	b=AyFG/jQ4WUMNyPEr36ImzbkzB7CS37UHj1wMefaIVOeSGvYvyGeGLPGf2/jmI8oWu1
	qLWjkpROEUBiaAxaNmpg82oiFdTWIpVeaeG5UYOb3tvyH3cFVrngYnrQn/hEuK8W6VfH
	7dN94uVzshOBGZZuKpbV4TgHN/MtZceFXe2allULeeu+tsisdUDJAjDix6BjB2nXJomW
	OKvjiUQxcHOqOfQ238X/lLkVWsbXqh1mICBn6bH98ayZY4HpiPJpP6AauwvsRU6T2Bpj
	5ohYWuQnQRx94+pngQALV9ZbYPaJ1c9ASZEF1St9SL3vJ7bMYoMgEDRbj9SW1jNKAjav
	s8DQ==
X-Gm-Message-State: AN3rC/4EIG8DS8Bmce+WvqGBF8+IfUm3Q/qyQ0RZGqXU9lyaDOv+iqswNETWHqCDQmEcE8eWEg9V+bq89AE1dA==
X-Received: by 10.159.37.103 with SMTP id 94mr789803uaz.131.1491979695858;
	Tue, 11 Apr 2017 23:48:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.38.134 with HTTP; Tue, 11 Apr 2017 23:48:15 -0700 (PDT)
From: Paulo Neves <ptsneves@gmail.com>
Date: Wed, 12 Apr 2017 08:48:15 +0200
Message-ID: <CAJO0J4gmqfw--YUjMuituXm=zYeeg55HRpTP0ErMhGf=brLPpw@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: multiconfig samples not put in the build dir.
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
X-List-Received-Date: Wed, 12 Apr 2017 06:48:20 -0000
Content-Type: text/plain; charset=UTF-8

Hello,

I thought it would be consistent to have the multiconfig samples to
also be populated just like the local.conf.

I produced a patch accordingly:

From 6091978f666463c46093203b74f28b82a9bf4d47 Mon Sep 17 00:00:00 2001
From: Paulo Neves <paulo.de_sousa_neves@nokia.com>
Date: Mon, 3 Apr 2017 11:23:12 +0200
Subject: [PATCH 1/2] multiconfig samples are now put in the build dir.

The users of multiconfig which use the templateconf
mechanism may also want the multiconfig samples to
be retrieved from the template configuration
directories. This patch allows for that.

It only copies the .conf.sample files. It does not
create the multiconfig directory if the templateconf
directory does not exist or have any sample files.
---
 scripts/oe-setup-builddir | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/scripts/oe-setup-builddir b/scripts/oe-setup-builddir
index ef495517aaafd8150313ac1f8f5eb5079c90d09b..783ed20dd49d23fe38fa28d6a105918200a54610
100755
--- a/scripts/oe-setup-builddir
+++ b/scripts/oe-setup-builddir
@@ -77,11 +77,11 @@ if [ -n "$TEMPLATECONF" ]; then
     OECORELOCALCONF="$TEMPLATECONF/local.conf.sample"
     OECORENOTESCONF="$TEMPLATECONF/conf-notes.txt"
 fi
-
 unset SHOWYPDOC
 if [ -z "$OECORELOCALCONF" ]; then
     OECORELOCALCONF="$OEROOT/meta/conf/local.conf.sample"
 fi
+
 if [ ! -r "$BUILDDIR/conf/local.conf" ]; then
     cat <<EOM
 You had no conf/local.conf file. This configuration file has therefore been
@@ -91,12 +91,20 @@ for more information as common configuration
options are commented.

 EOM
     cp -f $OECORELOCALCONF "$BUILDDIR/conf/local.conf"
+    if ( find "$TEMPLATECONF/multiconfig/" -iname '*.conf.sample'
2>&1 >  /dev/null ); then
+       mkdir -p "$BUILDDIR/conf/multiconfig/"
+        cp -fa "$TEMPLATECONF/multiconfig" "$BUILDDIR/conf/"
+        (cd "$BUILDDIR/conf/multiconfig/" &&
+        rename .conf.sample .conf *.conf.sample)
+        echo "Multiconfig samples detected copying them also.\n"
+    fi
     SHOWYPDOC=yes
 fi

 if [ -z "$OECORELAYERCONF" ]; then
     OECORELAYERCONF="$OEROOT/meta/conf/bblayers.conf.sample"
 fi
+
 if [ ! -r "$BUILDDIR/conf/bblayers.conf" ]; then
     cat <<EOM
 You had no conf/bblayers.conf file. This configuration file has therefore been
-- 
2.6.2

