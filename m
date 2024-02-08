Return-Path: <manjunatha.srinivasan@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71078C48260
	for <webhook@archiver.kernel.org>; Thu,  8 Feb 2024 16:59:41 +0000 (UTC)
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
 by mx.groups.io with SMTP id smtpd.web11.528.1707411572205274478
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Feb 2024 08:59:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=QxB4DPwl;
 spf=pass (domain: gmail.com, ip: 209.85.128.178, mailfrom: manjunatha.srinivasan@gmail.com)
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-60498c31743so824117b3.3
        for <yocto@lists.yoctoproject.org>; Thu, 08 Feb 2024 08:59:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707411571; x=1708016371; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1NLyjek87ImR2u3sWOFCrdJIM8LfnMzz+IErF0hiiSc=;
        b=QxB4DPwl/wNfb+ga9ARxlXWVT9xBm69CzQeQmydjn7Lv7LR4V3RPYlRYw3jQ+8E2vT
         DuZqexSnMj1MBX9o3hU9o94L51dfj5+lWXFTO89uSKG8AFSaFZFBB6ePWKfTpu2BpjwM
         pQekrqJkjIBe8J/+qNu5enx9bftHxFUam7s0rW+VWdd2LzqsLmHaS9CGFXWyt2yI9ltb
         SsnhuVQcC7myrMdpOmi6Cbil9TWCL6a5nzwBrkvd4XwFSbaBx+m+EfBcW7xaBmL4jSJs
         YRwumpSfPOK8kUZN33yxKrE3LGOKiuGXhiMx6fmEpRBHhzFFySw7EzObN9fRUzlK50Og
         deVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707411571; x=1708016371;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1NLyjek87ImR2u3sWOFCrdJIM8LfnMzz+IErF0hiiSc=;
        b=MwATGz3UY2nC5aEyHvjI9HqOifzTc+6vR4U5rGVrXpt97cN9TPjxPm0u2Lg5qqTN1e
         s8KSBQiIKeep6Xvv5BdnJIGUTATteEr2tiJ1FMH3RQkbHh8XHeTxn+aNyelOpArH9ku3
         FcDiRReYav3Q/sc6RH7nCTRwSiA1RmD0J97OaF7Lsy7v/kvPFB8O0pYdCEw4NbGOXNfS
         yumuZFv7fw1klkbrh4Q/IVsA2qEPDnhry3mGUS/7StKjsV5UYsBk5Bcsm2YLtcRsbMU8
         4R12kdadLziReKTPO66ejTrPYK13JJmWVF6NO2fE3jMproWBHPl1ZT77ZGGFceSHnrZn
         +4TQ==
X-Gm-Message-State: AOJu0Yy0jXKTfrsRrNyESunU7i5UJNBjNB44Q9lHbFppof0Gw+JCpvNm
	8neXIo2Ydkd61K/SJIokBX3IDoQLOyFfnvzgfA5lJ3wbrqO//R2R35NUNt7wIKRGGHxoPiESyfb
	QDq1V4D8cnfW5rsxR6/zaQ7Ju8CiqxO+DP9M=
X-Google-Smtp-Source: AGHT+IGCZMvFI9zyJu6elKqY3sjuyiFgaFhfz14+M8IoWgNm1PVGi02FNKHptOcfjNACtBP1sH6cZdCVEXh/6t99CHc=
X-Received: by 2002:a81:b1c7:0:b0:604:7a4e:c8ff with SMTP id
 p190-20020a81b1c7000000b006047a4ec8ffmr9136965ywh.41.1707411571017; Thu, 08
 Feb 2024 08:59:31 -0800 (PST)
MIME-Version: 1.0
From: manjunatha srinivasan <manjunatha.srinivasan@gmail.com>
Date: Thu, 8 Feb 2024 22:29:19 +0530
Message-ID: <CAAAM0df2oQf3McTkQUu73TiqmMf1xEs8Pw4JGukqV8XekXyKnQ@mail.gmail.com>
Subject: About Scarthgap Yocto 5.0 release
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Feb 2024 16:59:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62435

Hi Team
I am interested to know what could be the kernel version of the
upcoming Scarthgap Yocto 5.0 release.

Thanks
Manjunatha Srinivasan N

