Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.9693.1576517980081686067
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Dec 2019 09:39:40 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@intel-com.20150623.gappssmtp.com header.s=20150623 header.b=VncvMQP8;
 spf=fail (domain: intel.com, ip: 140.211.169.56, mailfrom: ross.burton@intel.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBE45E01252; Mon, 16 Dec 2019 09:39:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.128.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38CC0E00942
	for <yocto@yoctoproject.org>; Mon, 16 Dec 2019 09:39:39 -0800 (PST)
Received: by mail-wm1-f66.google.com with SMTP id p17so215286wma.1
        for <yocto@yoctoproject.org>; Mon, 16 Dec 2019 09:39:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=intel-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VoUISr0myFgntbSb1mQohyiSWGjdVXGYOths/1+AYLI=;
        b=VncvMQP8nm18C1ABbXCmWdk2RJPhZWZKxzv+1xY4kmflXepI94KHKmidBJWJAB95bM
         Ci81LMxrDEbnbRWOBiV6gEF3Ch0onwJ5Ro9XWZ65PtUq08ojiyu7c7X7RBnbN/UBtt8y
         itijvrDq3h3AoHibGVHoZ0NMUlhNpzsdE0uTi2bgl3685zsqYR7vX5yObFzJzGnbquT7
         uPNWv8UQGQ0AGb7NZr3t2RR747VHwGPAMjB5o9Wggqe5ejejf0B0N+bph+UEeJK7K+nb
         234yWYA/nF3xv1waEVrFQ972Ke2pYEChtvCJe6hWob73Aw6QvQNOUwVLnV0QB6yXZyGJ
         3frg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VoUISr0myFgntbSb1mQohyiSWGjdVXGYOths/1+AYLI=;
        b=QaTyCSszfl5YJkx6mY/a+hDuEmziqlr9x6yFBus+36wi3hVX4klELIQGV31/GJYecK
         M96pPzXdCP1d7vY6RwId4Gc4HZpSDQAqMiy0KLPzxmUo/CEAlqOo0bMd5mSf/xA9Lkfr
         ThAc+6b3MpkohRi8IZqtUOznJMzCdEaa+VrkbP1Jluc006oRSmnuFN/Hm+px8hh5D5VW
         SGtg6uB28lVM7HJ3b8qQ818yYcdJRxo1r5Ja+c3aDha+7Y79+EsLNCb0yMjmH7PmwGGn
         UqSGJGyrSPBM4JHoheFq10j9WE/ZH+EHh1hTvrgoCh3ucT0e4r91u3D0I9k9+TdkScAj
         6Grw==
X-Gm-Message-State: APjAAAWMVW6cWUPZuYq7yEI17iN9PayjKnNHgMmQ93nTgrVy91I27iMq
	L6tytRXoITtucAMtrKVHklyUxt8Hi3U=
X-Google-Smtp-Source: APXvYqxIgsz/SF3qprkdXy6CWLV0a1bksb4wLgCrnO9QhAGq758I9SW2Jn5rmPenG9eTl4Ty6x1jqA==
X-Received: by 2002:a1c:9c08:: with SMTP id f8mr133871wme.171.1576517978225;
        Mon, 16 Dec 2019 09:39:38 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
        by smtp.gmail.com with ESMTPSA id v62sm129596wmg.3.2019.12.16.09.39.37
        for <yocto@yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2019 09:39:37 -0800 (PST)
From: "Ross Burton" <ross.burton@intel.com>
To: yocto@yoctoproject.org
Subject: [PATCH yocto-autobuilder-helper] README: add git-config commands to setup the mailer
Date: Mon, 16 Dec 2019 17:39:34 +0000
Message-Id: <20191216173934.13447-1-ross.burton@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

---
 README | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/README b/README
index 2747510..f49fc48 100644
--- a/README
+++ b/README
@@ -29,4 +29,8 @@ Authors:
 Contributions:
=20
 Patches for this code should be sent to the yocto@yoctoproject.org maili=
ng list
-with [yocto-autobuilder-helper] in the subject.
+with [yocto-autobuilder-helper] in the subject.  This can be configured =
automatically
+with the following commands:
+
+  git config  --local --add format.subjectprefix 'PATCH yocto-autobuilde=
r-helper'
+  git config  --local --add sendemail.to yocto@yoctoproject.org
--=20
2.20.1

