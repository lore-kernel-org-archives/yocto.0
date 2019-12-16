Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.9725.1576518121845200892
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Dec 2019 09:42:02 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@intel-com.20150623.gappssmtp.com header.s=20150623 header.b=uTcZPek9;
 spf=fail (domain: intel.com, ip: 140.211.169.56, mailfrom: ross.burton@intel.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB1C9E01250; Mon, 16 Dec 2019 09:42:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13F53E01252
	for <yocto@yoctoproject.org>; Mon, 16 Dec 2019 09:42:00 -0800 (PST)
Received: by mail-wr1-f68.google.com with SMTP id g17so8375781wro.2
        for <yocto@yoctoproject.org>; Mon, 16 Dec 2019 09:42:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=intel-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=sNXqn5ZIq3kwAUP14FgcdsGH7xqpuelT9SmvlD0SPeA=;
        b=uTcZPek9D8OwaY5YpIBDTo8a7Ioz2/ajsnKcbIbdcunzbxpoU7lTZMhe3AMdWv53SA
         OqXR25iNaDNyM66ic91nSHvkQzdOK5+OxQl0Aw2mGUuQlQeBJymMc+YE9gg1XWKuJ183
         0FeT8QJnsIchL7VfA3KmiHt27+IkF06YprCNgvCPOyhVuRjB8W5JFocQ8gkVEkR9Fu1b
         BBheuTmBzJ8J846E2SQ9FL6FBDwvRrjKzRZYOxlVNQxCzPbFrFmDWJWOlj8ix/F16SgR
         2K2e/D21jcqGznFxQwurlnVv3l6bZ4cuAUqpmSg/bNS1IiC8ijNkykwkoaKgm2/o8dG1
         sZcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=sNXqn5ZIq3kwAUP14FgcdsGH7xqpuelT9SmvlD0SPeA=;
        b=RTk29l17vK4vKwp4X6tKPuE+QGu7vxdKSL41I9TbdCR5ajxdqGWXFzlVfpGYI8hoE6
         UJySMpLRcKWQkmNRvW0IniDyxQRssCeAxE75YTGfdLtCCmcTXriorXf5Ihad+em9n/6N
         1GVqEA6a8T8Ol9nZLbi/6MB7Hxv8ijuwqBuuWkG6zODuZfzZ2voC22nuvC74Uzp+BeXR
         KpFacB/MBpvEGHT3hlHQ29Tcq69pfCHrXHt4hAxF62vmrAJGgqbx+RbrdbJYMZ1h8Pdw
         cXvlurcIIycYSUgHeGpJ/1rXmlnUDDXAwtzmsIWROkUllw3W1sxT6dc9S2H/5RFZzhI4
         /h3Q==
X-Gm-Message-State: APjAAAV6fjFMc2MP8EXkNZjMj3f/JbvfPS5Q/rH/oM03eWcHOYvfNBsS
	WrQWxcKMQVqfKikrefpCHAtQFbH/3QQ=
X-Google-Smtp-Source: APXvYqwsU5Cb4kmIF7nDBRLhRQ6j7SQ7bzjeSTvcUbvCjCbMqeOFWbkWuwZs4qqE4BT6IePL0SRPEg==
X-Received: by 2002:a5d:55d1:: with SMTP id i17mr31041034wrw.165.1576518119740;
        Mon, 16 Dec 2019 09:41:59 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
        by smtp.gmail.com with ESMTPSA id t81sm142497wmg.6.2019.12.16.09.41.58
        for <yocto@yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2019 09:41:59 -0800 (PST)
From: "Ross Burton" <ross.burton@intel.com>
To: yocto@yoctoproject.org
Subject: [PATCH yocto-autobuilder-helper v2 3/3] README: add git-config commands to setup the mailer
Date: Mon, 16 Dec 2019 17:41:54 +0000
Message-Id: <20191216174154.13996-3-ross.burton@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191216174154.13996-1-ross.burton@intel.com>
References: <20191216174154.13996-1-ross.burton@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

---
 README | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/README b/README
index 4f2a7f1..249feb2 100644
--- a/README
+++ b/README
@@ -29,4 +29,8 @@ Authors:
 Contributions:
=20
 Patches for this code should be sent to the yocto@lists.yoctoproject.org=
 mailing list
-with [yocto-autobuilder-helper] in the subject.
+with [yocto-autobuilder-helper] in the subject.  This can be configured =
automatically
+with the following commands:
+
+  git config  --local --add format.subjectprefix 'PATCH yocto-autobuilde=
r-helper'
+  git config  --local --add sendemail.to yocto@lists.yoctoproject.org
--=20
2.20.1

