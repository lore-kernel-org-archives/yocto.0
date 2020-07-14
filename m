Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
 by mx.groups.io with SMTP id smtpd.web11.2777.1594750943896072227
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Jul 2020 11:22:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=YwkRuVQ3;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.175, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f175.google.com with SMTP id q17so7917438pfu.8
        for <yocto@lists.yoctoproject.org>; Tue, 14 Jul 2020 11:22:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=q1e7W5bhScNVOG9qEtyOyclYBbJ106Gp3UzziVUTRig=;
        b=YwkRuVQ3xgHbo5rdnoGb41SqaOMkYxlScTTewQKWEtfuTwlMDjRSeoby7FRwU/o+yF
         NkXx2vlfBOW5LqzxhIwD7MF3kUAfHYjhs7DrC6MPSWXVx7BFHhvLw1dtoQi3ewpne2UT
         mxB6pmPGimRll7LFjgBPHn0J3/HETjpxyJHiDCQAQ3iSxTbPJEpBAj0r/TrQAb1FmUqA
         /wM/jG7Cru5XnOsAuxoYwrS/kSSyL94CUsad2K8CvMEX0FcTmy0YJIcnHaH0jsmF6Wz+
         Ra64TGfCUIGMiZ3A6eAN1+OtaP7urq7aB0AdrIDpZAAhZS3F/phDAgCgJUdlwfyqj6fr
         nkqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=q1e7W5bhScNVOG9qEtyOyclYBbJ106Gp3UzziVUTRig=;
        b=nzDiwmDQSf2ih6BpSthfxtpam6I8qABCZ+74oW2VAtoJzBrCzhi6EL2P7JoITjfogW
         mES3vldgJkLCRACCAY7GQCohYUKmAmqMOTonWWwUqqKl8T1pQhwkKm0GF47Mt2TUNgpT
         2bjJjOgjoofVO18OogNoPFlkVkOMROjDxCAHJMSxaQ70W6vrc04oCeFm6WvTLZ9Dc7eL
         CyJsAWymFPxxSn04SrUyGY9k79hLpxsZb0xD9Hyhu+G7CDQM7vPRS1htfr2Tr6AoxHW9
         Psk73rn7KcidFvYIBz+nHFbWelWSHuwcv96/vn8n6gUBDIQ76G6zVYLrnIv5Fo7FYLHL
         u3tw==
X-Gm-Message-State: AOAM5331YuslkCwbDjiBRZ0uvRaO0DTgB4dAbc9iway3cIThbd0/133/
	+KeuYmgESNA9IYOQRgChQQdsI1BjxBzZDg==
X-Google-Smtp-Source: ABdhPJx4rS39tONiMnsaWHkJP2dkz+9tbSr12VztsW4UeLNTe+N3MoTijYvEssMlbdyZ9KvZnZ55iQ==
X-Received: by 2002:a62:7f55:: with SMTP id a82mr5343056pfd.61.1594750942793;
        Tue, 14 Jul 2020 11:22:22 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from octo.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id t126sm18478647pfd.214.2020.07.14.11.22.21
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2020 11:22:22 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2] builders.py: At the end of trigger builds use rm rather than clobber to clean up
Date: Tue, 14 Jul 2020 08:22:07 -1000
Message-Id: <e8974d09921184f10394db6825249a4185ebadc1.1594750859.git.steve@sakoman.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1594750859.git.steve@sakoman.com>
References: <cover.1594750859.git.steve@sakoman.com>

Since clobber is crossing two file systems in this case the worker
can delete the files faster than it can move them

Also fixes a occasional race that results in build failures

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 builders.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/builders.py b/builders.py
index 13bfe18..778989b 100644
--- a/builders.py
+++ b/builders.py
@@ -377,9 +377,9 @@ def create_parent_builder_factory(buildername, waitname):
 
 
     factory.addStep(steps.ShellCommand(
-                    command=[clob, util.Interpolate("{}/%(prop:buildername)s-%(prop:buildnumber)s".format(config.sharedrepodir))],
+                    command=["rm", "-fr", util.Interpolate("{}/%(prop:buildername)s-%(prop:buildnumber)s".format(config.sharedrepodir))],
                     haltOnFailure=True,
-                    name="Clobber shared repo dir"))
+                    name="Remove shared repo dir"))
 
     return factory
 
-- 
2.17.1

