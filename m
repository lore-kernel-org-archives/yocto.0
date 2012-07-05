Return-Path: <kenneth.solbjerg@moveinnovation.dk>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23BE9E006B1
	for <yocto@yoctoproject.org>; Thu,  5 Jul 2012 04:12:13 -0700 (PDT)
Received: by obbtb18 with SMTP id tb18so5969077obb.35
	for <yocto@yoctoproject.org>; Thu, 05 Jul 2012 04:12:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=Iaal92QzmXFwxK6QYZD4FyYnctLcRdaf4gi0sp6kytU=;
	b=g/e9aC6+xlF4fmpPCKzJp97f0a4QRMH53r2+WCiOaIvORI3ecjrOT4ADuhZ5H0g61I
	3IsYvWU/5FxfPhZjIoO1ctAsLzIIzUo5ygeGGHT8ERtks636cRRdZEdLZR/6IXbKcAap
	p6B5wuwz4MajEKXJBoCT99JBFwvtHc7yQ799FotEAjnq+BnV273j6aHlVVAHFVoe3fSz
	giVooWXV3RB6hA4xt2mGKKAaO3dSPsTlPtLREayomel2XuIeROTQkR++MHrW1KA+5tym
	YPOL3rJisDDStOoDoiAYSRJsNEX1oKDr+s/Gi2W4U8Ahr2NTU4ONPCFxXqUrIkothpcD
	GswQ==
MIME-Version: 1.0
Received: by 10.182.111.74 with SMTP id ig10mr20409136obb.14.1341486733163;
	Thu, 05 Jul 2012 04:12:13 -0700 (PDT)
Received: by 10.182.167.101 with HTTP; Thu, 5 Jul 2012 04:12:12 -0700 (PDT)
Date: Thu, 5 Jul 2012 13:12:12 +0200
Message-ID: <CADEYsmEN9mhJ_Yh5RJzRBtrMSc+w1NaUC3GxNfZmbd0O5uP1RQ@mail.gmail.com>
From: Kenneth Solbjerg <kenneth.solbjerg@moveinnovation.dk>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQnuWkCn08MvxiZuXNV5aCvtfKoF7FefXp3a2dL3SsUUFD7oxqysSu/g82kZLP40tKYdxxdL
X-Mailman-Approved-At: Thu, 05 Jul 2012 07:03:17 -0700
Subject: [PATCH 1/1] run-postinsts does not run any scripts
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 05 Jul 2012 11:12:14 -0000
Content-Type: text/plain; charset=UTF-8

Hi

Sorry for any mistakes, but this is my first patch...

On my system (core-image-base, .deb package files), run-postinsts does
not run any scripts due to a failed test in run-postinsts.awk.
As dpkg is not actually installed on target, opkg is identified as the
pkgdir and that is not right...


Index: poky-denzil-7.0/meta/recipes-devtools/dpkg/run-postinsts/run-postinsts.awk
===================================================================
--- poky-denzil-7.0.orig/meta/recipes-devtools/dpkg/run-postinsts/run-postinsts.awk	2012-07-05
13:00:23.026519188 +0200
+++ poky-denzil-7.0/meta/recipes-devtools/dpkg/run-postinsts/run-postinsts.awk	2012-07-05
13:00:48.054519384 +0200
@@ -7,7 +7,7 @@
 #

 BEGIN {
-  rc=system("test -d /usr/dpkg/info/")
+  rc=system("test -d /var/lib/dpkg/info/")
   if (rc==0)
     pkgdir="/var/lib/dpkg/info"
   else


--
Med venlig hilsen / Best regards

Kenneth Solbjerg
Software Specialist

Move Innovation
Web : http://www.moveinnovation.dk

