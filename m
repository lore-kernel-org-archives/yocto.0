Return-Path: <kenneth.solbjerg@moveinnovation.dk>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F33AE01454
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2012 05:19:49 -0700 (PDT)
Received: by obbtb18 with SMTP id tb18so13566151obb.35
	for <yocto@yoctoproject.org>; Mon, 09 Jul 2012 05:19:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:x-gm-message-state;
	bh=FGlukaEgsw/qXYeBv97/3jPr3gRXtlNwnLld9tnlvdY=;
	b=o+1vNbA7u79/+AzBIOC2GytRtT6Ifgoy7zvSnC2qzCcr8xg6M1/0t1wo8WwQi1i4sC
	a7y86VeTV5Ir3hhrn7PHv33/c6YQjINFccYn0VMD/7KupoyTVwenINU/9P/NP0gBFUju
	rEeSvEehA9rZvWkTZbHlwjYsQUm+HsIXQ+e/BRkQEf6AaMWAt3mCrs0O+SqQkIVbIKjO
	gVltVLz1R+DnLIfFy0rAzMyMqYlFPrr7oAsiF04qdvkw2mvm9yXZWCNxlUTAVk8yQdb7
	d7yiTE3yqxAXWNYiA1HziC5gwLtXb6guzegtu42x/VLHptP+ZqdKMgZu5nAXIqjTG6LL
	Bkng==
MIME-Version: 1.0
Received: by 10.182.167.41 with SMTP id zl9mr35614695obb.43.1341836388701;
	Mon, 09 Jul 2012 05:19:48 -0700 (PDT)
Received: by 10.182.105.42 with HTTP; Mon, 9 Jul 2012 05:19:48 -0700 (PDT)
In-Reply-To: <CADEYsmEN9mhJ_Yh5RJzRBtrMSc+w1NaUC3GxNfZmbd0O5uP1RQ@mail.gmail.com>
References: <CADEYsmEN9mhJ_Yh5RJzRBtrMSc+w1NaUC3GxNfZmbd0O5uP1RQ@mail.gmail.com>
Date: Mon, 9 Jul 2012 14:19:48 +0200
Message-ID: <CADEYsmEwNHNPQaRRwdPP1ej0xg16hyO7=K-pxgifzcVZEeA9ig@mail.gmail.com>
From: Kenneth Solbjerg <kenneth.solbjerg@moveinnovation.dk>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQlPVkdk/dvHMNSDewZnWZz/eJ94B9RRemgRqsBq4IbiL9YM8Kq57zwGq73UK9kcK83mcQ5c
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
X-List-Received-Date: Mon, 09 Jul 2012 12:19:49 -0000
Content-Type: text/plain; charset=UTF-8

Hi

Sorry for any mistakes, but this is my first patch...

On my system (core-image-base, .deb package files), run-postinsts does
not run any scripts due to a failed test in run-postinsts.awk.
As dpkg is not actually installed on target, opkg is identified as the
pkgdir and that is not right...


Index: poky-denzil-7.0/meta/recipes-devtools/dpkg/run-postinsts/run-postinsts.awk
===================================================================
--- poky-denzil-7.0.orig/meta/recipes-devtools/dpkg/run-postinsts/run-postinsts.awk
    2012-07-05
13:00:23.026519188 +0200
+++ poky-denzil-7.0/meta/recipes-devtools/dpkg/run-postinsts/run-postinsts.awk
 2012-07-05
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

