Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4AC43CE7B11
	for <webhook@archiver.kernel.org>; Thu, 28 Sep 2023 09:24:04 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web11.9807.1695893035725661453
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Sep 2023 02:23:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=UgyKGicw;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-40572aeb673so98717635e9.0
        for <yocto@lists.yoctoproject.org>; Thu, 28 Sep 2023 02:23:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1695893034; x=1696497834; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=K2CYFzhRZdrB0EOCI6pXL5IdT2/NoD473/EzwWih3yA=;
        b=UgyKGicwNpTdQgq0CwH0pLw7eJZXrg8Lsk4p1FU3QDrsNbRkMpeZ3J6ZCtx+/7pjM0
         D0Ol5D4n7aa35sIPEFRUwPCmagy5LX/K9LgSmo/L06o4alc3EJOfoGpgUGrcI3CiUhXs
         7NvjXhDXsC0gfDO/64X3jZ/lrEVwrnskks/B4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695893034; x=1696497834;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K2CYFzhRZdrB0EOCI6pXL5IdT2/NoD473/EzwWih3yA=;
        b=eK9O4IK7dJbetuunBujcRQOMl1uKBSu6CZ2ouKarT3T/9cGUZOKhMF0PfnZqcEhhz0
         Rn+N9vYauQzP2DwSwvu88540tV1VtcURUaz19LoQg/f7fyfOyQdt/fyNGAVSA8CeNClT
         XwYl6SbwQZUouMlVcH8bzThLaJo5P/aJ6q25cXgGdQz+4niGrV9xV6ht7qrr3488T57I
         CMOaI7H6tazhIVT438L50ox92bQoAE2KOBhD+768gALDQj0XTFmwqlEQP53x3iR4OiL6
         YXSb3UzZmQ1UU8ti0BHjfx9SbOhsn5eFFw5MBGDlAg/+C004V1PKEujK98cFgoLuzWqK
         Dltw==
X-Gm-Message-State: AOJu0Yw2Yar4c7+ti8LyNbIjch1z6oAZbmNmChrRU8sGdcGYaFBYWAC3
	gsLQJtdMfC6aP9JIynPVIt7fKORKFWsDXy9g/uU=
X-Google-Smtp-Source: AGHT+IGC0/4CGmxLVZlX8grDQUTzQwuIIV/nNXCXibU5nrD0LOYJ2UntLqK4GXIj/UZM5FRb+zV1UA==
X-Received: by 2002:a7b:c858:0:b0:406:44e5:b915 with SMTP id c24-20020a7bc858000000b0040644e5b915mr682871wml.8.1695893033000;
        Thu, 28 Sep 2023 02:23:53 -0700 (PDT)
Received: from max.int.rpsys.net ([2001:8b0:aba:5f3c:259f:7d13:e5a1:bb93])
        by smtp.gmail.com with ESMTPSA id o37-20020a05600c512500b0040523bef620sm311399wms.0.2023.09.28.02.23.52
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 02:23:52 -0700 (PDT)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2] [PATCH] builders: Switch to new qa email scripts name, force updates to helper instead
Date: Thu, 28 Sep 2023 10:23:51 +0100
Message-Id: <20230928092351.2372897-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Sep 2023 09:24:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61148

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 builders.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/builders.py b/builders.py
index 70b2d066..539b7b4e 100644
--- a/builders.py
+++ b/builders.py
@@ -328,7 +328,7 @@ def create_parent_builder_factory(buildername, waitname):
 
     factory.addStep(steps.ShellCommand(
         command=[
-            util.Interpolate("%(prop:builddir)s/yocto-autobuilder-helper/scripts/send-qa-email"),
+            util.Interpolate("%(prop:builddir)s/yocto-autobuilder-helper/scripts/send_qa_email.py"),
             util.Property("send_email"),
             util.Interpolate("%(prop:builddir)s/layerinfo.json"),
             util.Interpolate("%(prop:sharedrepolocation)s"),
-- 
2.39.2


