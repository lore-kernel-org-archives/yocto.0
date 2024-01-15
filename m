Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8796C47422
	for <webhook@archiver.kernel.org>; Mon, 15 Jan 2024 18:03:32 +0000 (UTC)
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
 by mx.groups.io with SMTP id smtpd.web10.90056.1705341804860710828
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Jan 2024 10:03:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=fH0UKnGL;
 spf=pass (domain: gmail.com, ip: 209.85.210.170, mailfrom: ticotimo@gmail.com)
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-6d9bba6d773so7858303b3a.1
        for <yocto@lists.yoctoproject.org>; Mon, 15 Jan 2024 10:03:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705341804; x=1705946604; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Usj1EVBYLbvqkE71r80OWMRnMfp1W7hYok7N/hSchIo=;
        b=fH0UKnGLLGNIpqX4gavod43TsECotHLintrtrGhvKTPrZKZZG4ZHIOM0PnyYFDhj/y
         dMuL1IaeXFnxJnCxTNQMY0Yl9h1l8Yc/kouEfOuNkSKqEWYwrXnxRzgfkgbopOq0+977
         SUiAGxOJXxXtOmT+Uk824L8NZXbR8lPwR3EpoYtHQeBo+qqP1EpixDxJZrOgmmjBTv6Z
         9DcEnCdZNTzGeTeySU8ZKba3HsAzV6Xq0liml3xKV7mJ/XnLhY8ez3IxsolLTIajvJQJ
         Mr+5Tzjp59qOHArW1VBECqFig/mlHNg8+8tfGFt2PiuFSlSxsJrWk+6f3SiS8y8brS9G
         jVCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705341804; x=1705946604;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Usj1EVBYLbvqkE71r80OWMRnMfp1W7hYok7N/hSchIo=;
        b=q3G34MbCYyuduAv6+s9dR2n9ozkJbc3bKY9SSCnHHTFa/K4n1uZlzerRrlyqnCPdDR
         JtP72WtXFqfQQnaDe94D8wLjicRiQ+zdY1x1TVIg+Edc2F0Q09D2edEUUPqA1eyeqs+b
         1/tZKDyuDQqpUaXTTc90Iv17ICMbJWJAra1BT2wUdX+iS1CgHzcTuQ9yZIFBmBzTdTo2
         3+t4OgP/0H85MkpWb9aspN/dyAN9CYtRjUgxYQ0gCIm8jutAOam0OxD2pcUmpe63Tfp4
         hGLscgue1mvHpize+Gj/dJKW3kv0WhDe6mbHJjVlDFJR4hDsiDD6OdzKBl2SF3lZ0M6r
         uGEw==
X-Gm-Message-State: AOJu0YzkgWnGucul+hEzJplBKz3s1p+s09IlzudpDm/UFKz4+U5TswXc
	7n8y+23wu+Dpp9gfADBnRDMuh1sqHHU=
X-Google-Smtp-Source: AGHT+IFC2yq0U7zVfpKGqo+FrDo6cErso7ZV0P1G+NedX+RzxlxTGp4umUzQEuwWxlZLdI6wjUVq9g==
X-Received: by 2002:a05:6a21:6d9b:b0:19a:66a4:7966 with SMTP id wl27-20020a056a216d9b00b0019a66a47966mr6539123pzb.55.1705341803994;
        Mon, 15 Jan 2024 10:03:23 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca01:19f0:9093:7b1b:b931:af99])
        by smtp.gmail.com with ESMTPSA id s5-20020a056a00178500b006d96ad39308sm7880792pfg.165.2024.01.15.10.03.23
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 10:03:23 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH 1/6] rrs_maintainer_history: new override syntax
Date: Mon, 15 Jan 2024 10:03:12 -0800
Message-Id: <ea947724eb23c7263d52c555d3c95cdf65f52798.1705341467.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1705341467.git.tim.orling@konsulko.com>
References: <cover.1705341467.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Jan 2024 18:03:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62154

* Allow the regex for RECIPE_MAINTAINER to use either _ or : override
  syntax to allow processing maintainer changes across the change
  boundary.

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 rrs/tools/rrs_maintainer_history.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/rrs/tools/rrs_maintainer_history.py b/rrs/tools/rrs_maintainer_history.py
index 15e1d17..d2dd94a 100755
--- a/rrs/tools/rrs_maintainer_history.py
+++ b/rrs/tools/rrs_maintainer_history.py
@@ -37,7 +37,7 @@ MAINTAINERS_INCLUDE_PATH = 'conf/distro/include/maintainers.inc'
 """
 def get_recipe_maintainer(line, logger):
     import re
-    regex = re.compile('^RECIPE_MAINTAINER_pn-(?P<pn>.*)\s=\s"(?P<name>.+) <(?P<email>.*)>"$')
+    regex = re.compile('^RECIPE_MAINTAINER[:_]pn-(?P<pn>.*)\s=\s"(?P<name>.+) <(?P<email>.*)>"$')
 
     match = regex.search(line)
     if match:
-- 
2.34.1


