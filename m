Return-Path: <tgamblin@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 651B9C7EE2F
	for <webhook@archiver.kernel.org>; Mon, 12 Jun 2023 17:31:24 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
 by mx.groups.io with SMTP id smtpd.web10.66378.1686591077217307743
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Jun 2023 10:31:17 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baylibre-com.20221208.gappssmtp.com header.s=20221208 header.b=ed/VHI7J;
 spf=pass (domain: baylibre.com, ip: 209.85.219.44, mailfrom: tgamblin@baylibre.com)
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-62de8bce252so1087436d6.0
        for <yocto@lists.yoctoproject.org>; Mon, 12 Jun 2023 10:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1686591075; x=1689183075;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=zDMFR3NfEHVedFtwiseD/s8SL8WlE0s0s2zhcH+/3bA=;
        b=ed/VHI7J4PqBOPwdlDDnxezw5T/uVq7xcuIhxxrt8gFB1pp8ryBfTCJmeJAetmPwg+
         /Lmy+siBb5Aw1E/hHv05l9Jg7DQcL9FZz4wYGNNTmGnhPgphmzz3EXJi7OXopVFH233P
         W+BBTGHb2oDDBFCAmp/X7oYlzFTY4LKpqX7gygEQxlou/Px4uZ0OrtyRPSt+87NsqEew
         SgLiYsG8qZrUk7NVrzrPaANHTWPChf+hTT1rncR39TVmh+qKy/MKe5W2oGKBBMKq+CUD
         Ok20tJ2RpfPaef9T/S+f0IUetYNYX1T3+mD/q3QLabcKMA6kqay7I4+JJUjXw4QtaM1C
         N2Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686591075; x=1689183075;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zDMFR3NfEHVedFtwiseD/s8SL8WlE0s0s2zhcH+/3bA=;
        b=d4ktoEi8upXtfPp2gmOyiX6RbzlBeCowtIcetRJl3gEAIxly1YvunZk20Zr2N3sGOV
         BDMT8+1XZL9iUZcWqseAkZbv4gWHfyb8yXnwgYZ4FNF2m7q6kfTjIbtE1GQSHR+MeUha
         GrwU2NzEOpy6dc7xJAk4qgpOu3EiqXlpui5WaTDDuRZEJY3+VGcFBrHOyH/fXDTSyBcP
         gXKTsNhFeYgayuagioKWvQqq3TIcDKhd46zzZyvahTRjyJkXCZ/s6uAQcFS7nGSsEs7z
         Xu4T6o9NgUP+5mdRYaJ3TI62AaBiI7fBCRuVyYEjic/KII33F/wjUT25bx+WeYm+xk2t
         Qu5A==
X-Gm-Message-State: AC+VfDyLtWou+HV1DMI7lFAQ/L/J7h3+b46a9PG3XUNMmM7mkq6u5e5A
	nJfaKdrCTcDdI+y8m+SQgEL1nzDRUMpxxcusCNw=
X-Google-Smtp-Source: ACHHUZ74MmLXohhgO0dvu7qJ+pAxd3G6IGFqexBpbbhLmdbWVvYSSi4qrl8RWUdLclHodfNJSFZa7Q==
X-Received: by 2002:ad4:5763:0:b0:5ef:6eb6:e26e with SMTP id r3-20020ad45763000000b005ef6eb6e26emr13315933qvx.6.1686591075442;
        Mon, 12 Jun 2023 10:31:15 -0700 (PDT)
Received: from megalith.cgocable.net ([2001:1970:5b1f:ab00:fc4e:ec42:7e5d:48dd])
        by smtp.gmail.com with ESMTPSA id e21-20020a0caa55000000b0062608763edcsm3378882qvb.121.2023.06.12.10.31.15
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 10:31:15 -0700 (PDT)
From: Trevor Gamblin <tgamblin@baylibre.com>
To: yocto@lists.yoctoproject.org
Subject: [patchtest-oe][PATCH] test_mbox_signed_off_by: fix test
Date: Mon, 12 Jun 2023 13:31:14 -0400
Message-Id: <20230612173114.994426-1-tgamblin@baylibre.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 Jun 2023 17:31:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60263

This fixes a consistent issue with false failures being reported when
testing for authors' signed-off-bys in mboxes. Instead of manually
compiling a regex pattern, use pyparsing's AtLineStart to check for the
signature's presence at the beginning of the line.

Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
---
 tests/pyparsing/parse_signed_off_by.py | 4 ++--
 tests/test_mbox_signed_off_by.py       | 5 ++---
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/tests/pyparsing/parse_signed_off_by.py b/tests/pyparsing/parse_signed_off_by.py
index fc39a6c..9338c49 100644
--- a/tests/pyparsing/parse_signed_off_by.py
+++ b/tests/pyparsing/parse_signed_off_by.py
@@ -30,5 +30,5 @@ email = pyparsing.Regex(r"(?P<user>[A-Za-z0-9._%+-]+)@(?P<hostname>[A-Za-z0-9.-]
 
 email_enclosed = common.lessthan + email + common.greaterthan
 
-signed_off_by_mark = pyparsing.Literal("Signed-off-by")
-signed_off_by = common.start + signed_off_by_mark + common.colon + name + email_enclosed + common.end
+signed_off_by_mark = pyparsing.Literal("Signed-off-by:")
+signed_off_by = pyparsing.AtLineStart(signed_off_by_mark + name + email_enclosed)
diff --git a/tests/test_mbox_signed_off_by.py b/tests/test_mbox_signed_off_by.py
index e50bb8e..eae2816 100644
--- a/tests/test_mbox_signed_off_by.py
+++ b/tests/test_mbox_signed_off_by.py
@@ -28,15 +28,14 @@ class SignedOffBy(base.Base):
     @classmethod
     def setUpClassLocal(cls):
         # match self.mark with no '+' preceding it
-        cls.mark = str(parse_signed_off_by.signed_off_by_mark).strip('"')
-        cls.prog = re.compile("(?<!\+)%s" % cls.mark)
+        cls.prog = parse_signed_off_by.signed_off_by
 
     def test_signed_off_by_presence(self):
         for commit in SignedOffBy.commits:
             # skip those patches that revert older commits, these do not required the tag presence
             if self.revert_shortlog_regex.match(commit.shortlog):
                 continue
-            if not SignedOffBy.prog.search(commit.payload):
+            if not SignedOffBy.prog.search_string(commit.payload):
                 self.fail('Patch is missing Signed-off-by',
                           'Sign off the patch (either manually or with "git commit --amend -s")',
                           commit)
-- 
2.40.1


