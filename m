Return-Path: <huangya90@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D785BC433F5
	for <webhook@archiver.kernel.org>; Tue, 11 Jan 2022 06:12:24 +0000 (UTC)
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com
 [209.85.214.177])
 by mx.groups.io with SMTP id smtpd.web10.3609.1641881543581794834
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Jan 2022 22:12:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=N6m90eWL;
 spf=pass (domain: gmail.com, ip: 209.85.214.177,
 mailfrom: huangya90@gmail.com)
Received: by mail-pl1-f177.google.com with SMTP id c3so15587331pls.5
        for <yocto@lists.yoctoproject.org>;
 Mon, 10 Jan 2022 22:12:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=WLdfaSsic3Xa448lSsiLDD9a8QbEU92faOdhtxtTy2I=;
        b=N6m90eWLFVkbAwBQj+8ZZMpwnrofGjEFrwiRcAa2WlpDh99Mv4tZ/pOCqMpXx/12r+
         mHwpF0AAp/oYyz635tmKn4JH/RQTxK9dX8LnqtBn8FmosTl+tdPamZWVhdFmd2i73np9
         k5esWB5lPqYmyfXSCpNKmvzWNCnfIR6oV7nQ7rWRq1ZDTwDvizNFGNJilui8m7z8jCWG
         7NasOrQNk72V0f3k48ULRvZACBJ21rCl6THmFAJWOY1wJAj2FwmF+/KVYkPH9qi/R8h1
         Y5hT+eznTUre9obkVFCs1C8hzKtDM15+QDV2XzumsDJzhsOAt3h88QpTubjAkF1jmhBH
         K84A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=WLdfaSsic3Xa448lSsiLDD9a8QbEU92faOdhtxtTy2I=;
        b=sGy0rNRo6nPdsl5dorx8EcHPtNDiGrqkguB779d41arowUe8edLc8wDGfzYaHUxfMb
         UhsWmlE9Ddy9HmYKDqy6vYai7Jxghj6SvmZNx1ujIIaBPt6Z3dewkdsU5PkZbW4Y5m0v
         0JW/8BpU0z+pymLq1Cnuiho6bxk3cliiUBpDyxd4TRNeyvpimvfBZYPSfAslUvcO/Wg0
         /e2Z0o8HtfHFcyQ/QEBxa5mTxN6poyNbe5GWhWogOF266W94s71gOoO/1Jj0FtRxo+k/
         8lh9vT56uEJ/QkORQuIIxOyQQe2uJS9DgGcr1IpIHXsjTrklR3DZmpZRBMyq2T02KC2y
         BZFw==
X-Gm-Message-State: AOAM5306ORtSdgWEeI3fdUd3mvS9xH+O7lafSi+k5YMXglvSXVJMP3D2
	eCzhbYHZMQj6P1xH9RDcQUUqXISvo49r6zwR02i9OrKemQ4=
X-Google-Smtp-Source: 
 ABdhPJy3N/FOb6sKpjNpTRfB6zRTbu9nm5JeAER5/rufWEl0Q/rw6dZwmed4f3+lUCCMH/NkqfnxvZt2fRle14g2xxE=
X-Received: by 2002:a17:902:bd06:b0:149:a6af:4aa4 with SMTP id
 p6-20020a170902bd0600b00149a6af4aa4mr3125400pls.6.1641881542813; Mon, 10 Jan
 2022 22:12:22 -0800 (PST)
MIME-Version: 1.0
From: Tony He <huangya90@gmail.com>
Date: Tue, 11 Jan 2022 14:12:11 +0800
Message-ID: 
 <CAAUX2SUKSsK=L+iPEj6UUFQznYW1SAcy8muPZ6hSC4+XUN0kHQ@mail.gmail.com>
Subject: How to clean the cache for a package?
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Jan 2022 06:12:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55793

Hi,

I'm new to yocto. I write a reciple for my own package. The source
code of package is in my PC and maintained by GIT. When I change the
source code of the package, I need to compile this package again with
"bitbake -c clean package" and "bitbake -c compile package".
However, even though I can see the code in the folder
downloads/git2/package.git is updated, but bitbake still use the last
commit of the git repo to compile. After debugging, I found the old
commit ID is stored in build-project/cache/bb_persist_data.sqlite3. Is
this normal?
Is it caused by my own wrong reciple or is there any command to clean
the cache for a package? Thank you!

Tony

