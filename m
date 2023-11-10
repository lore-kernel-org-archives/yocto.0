Return-Path: <jstephan@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E396C4332F
	for <webhook@archiver.kernel.org>; Fri, 10 Nov 2023 16:24:36 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web11.31887.1699633472567308891
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Nov 2023 08:24:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baylibre-com.20230601.gappssmtp.com header.s=20230601 header.b=w2cYa2i5;
 spf=pass (domain: baylibre.com, ip: 209.85.167.48, mailfrom: jstephan@baylibre.com)
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-507962561adso3254899e87.0
        for <yocto@lists.yoctoproject.org>; Fri, 10 Nov 2023 08:24:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1699633470; x=1700238270; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ZfXrPCGNX9Z+MUm2N+LpBE+3uu8qP1tfy2LnCmAJm28=;
        b=w2cYa2i5PIkEgzqjXm00yH8vWDtWryZF7+zLz6oYkf29zJ78lb+edBxtKaOz6Kwomb
         tXJ1RpMHFWmqsODZeKNNl13Ih9CrHHAsKrnQQdqLN9dFSec1frh+11/xvbEsm1hrLmSy
         nBDaGIqrxaiIj6I8elKBN7aSF6of6sTabSYBEhy+qkQ8Fjr4S9kxNfGegVy8HOQ6Rg1M
         Fu5qSaCWMNkRmItDT1Brm0kpFQHNcvcIL3dnWYgXjbacVJIFXzPr27aG0UcRP1WpC5PB
         qEXhdTKHHVdoQQediw9AoEzAXsIZYs6ZLYrAs+E4yI1xoEeRsAsei8SXH9WMFec91KhA
         4VIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699633470; x=1700238270;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZfXrPCGNX9Z+MUm2N+LpBE+3uu8qP1tfy2LnCmAJm28=;
        b=TV0aRW7fayy+r8OX3x1QJhZEx/p2UvXtZdrk30G49LNQl2JwcnOUAH7JoNHfKRxt4L
         P98Yu2Q3uYTgqlzi2B3Gq++5Ggp+ficZaJjEZ7AnHLnpgDdAWPFBsAVxe7wg3NJ4iH2j
         Sei9xDhCc9J/xNioGZY3Q8zbPwqimBwiOAVi7JYtH+WS3BuPywdRHJT/ddNvJ+t/lN1j
         6A9B00tKaxlJzrtDbHVYStyiD8L/lMSmpOoA6ZR5mKh2LZtdtkfUhkPHwypcuEsFAjtB
         kds0A0trHKQ6n/igGHkGQS+7zWrzxgouk0Hj1Lk0kfm/jcUxHkKL3SAZ7QB8Bnbz/Jsx
         T8Dg==
X-Gm-Message-State: AOJu0YxHaacQQYGLIO+OCIpXi6FhA93+MDfgvkWoy7Z1Np8AdgJFApM3
	93QRhRL5UC7pFwasfEbWW+oOmi4wGqH276j7h3l+DRsx95VYZJNqhKoU4g==
X-Google-Smtp-Source: AGHT+IGRG3vt/SZ8KDGf4hQGWP6Qyu9g3EXiFBFkSMV1xU2lykmve7hZtJT1Y5eRVr1dhv6aoAneJ9CMMM2Atz9TooY=
X-Received: by 2002:a05:6512:4dc:b0:509:4ae3:465b with SMTP id
 w28-20020a05651204dc00b005094ae3465bmr3971901lfq.8.1699633470218; Fri, 10 Nov
 2023 08:24:30 -0800 (PST)
MIME-Version: 1.0
From: Julien Stephan <jstephan@baylibre.com>
Date: Fri, 10 Nov 2023 17:24:17 +0100
Message-ID: <CAEHHSvZYOg73Gx6Jv_UM+7Ot9TGf3fOzCxxZMQ9s1sq89mJtfg@mail.gmail.com>
Subject: [RFC] devtool: support multiple sources
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: jon.mason@arm.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Nov 2023 16:24:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61651

Hi all,

Sorry for the long message here, but I would really appreciate
feedback from the community :)

I am currently working on bug #14141
(https://bugzilla.yoctoproject.org/show_bug.cgi?id=14141). The main
goal of this bug is to correctly support git submodules with devtool.

I currently have an almost ready branch here:
https://git.yoctoproject.org/poky-contrib/log/?h=jstephan/devtool-submodule-fix

I asked Jon Mason (reporter of the bug) to test the branch, he
confirmed that its working for git submodules (i.e recipes using gitsm
only) such as vulkan-samples or hafnium (meta-arm), but he also
pointed out a new issue highlighted by the recipe edk2-firmware: this
recipe is using gitsm for the primary source then extract another git
repository inside S.

This issue is not related only to gitsm + git recipes, I reproduced
this kind of error with   cross-localedef-native recipe, using git +
git or https + git.  But I think the issue is even more global: as of
today devtool doesn't properly handle recipes that unpack secondary
sources inside S. Let suppose we have:

SRC_URI = " \
  http://<some_url>.tar.gz \
  http://<another_url>.tar.gz;subdir=mysubdir \
"
If I need to patch something inside mysubdir I would expect to have
something like:
SRC_URI = " \
  http://<some_url>.tar.gz \
  http://<another_url>.tar.gz;subdir=mysubdir \
  file://mypatch.patch;patchdir=mysubdir \
"
Of course this is working, but if I run devtool modify, create my
patch and do a devtool finish I would have something like
SRC_URI = " \
  http://<some_url>.tar.gz \
  http://<another_url>.tar.gz;subdir=mysubdir \
  file://mypatch.patch \
"
where mypatch.patch will patch files inside mysubdir as if they were
originally part of the primary source.
That might be acceptable (but I personally would prefer to have a
patchir parameter matching the subdir parameter).
Besides that, there is actually a bug here: trying to modify inside
devtool a file that was added using file:// will add a new patch AND
modify the original patch... (Tested on master branch with bzip2 with
the following: devtool modify bzip2, modify Makefile.am, commit the
modification, devtool finish bzip2 will create a new patch file AND
also update the originale Makefile.am inside the recipe space)

But things get really bad when using a git source as secondary source:
SRC_URI = " \
  http://<some_url>.tar.gz \
  git ://<another_url>;destsuffix=mysubdir \
"
mysubdir gets automatically committed inside the primary source
("Commiting changes from do patch"). This is an issue because doing
"git add" on a git directory adds it as a submodule (in a wrong way,
the correct way of adding it would be "git submodule add url path").
Here we end up with a submodule which is not populated into
.gitmodules then "git submodule foreach" commands just fail.

My hack is to detect that git directories were added after unpack and
properly add them as submodules (" wip: support git tree extracted
inside S" in my branch) but I am not 100% satisfied with this because
it implies that devtool is managing secondary source differently if
they are git directories or not..

So the long story made short:
* current implementation of devtool is buggy (at least with the
scenario described above with bzip2), I may try to work on this latter
* is the current behaviour of devtool acceptable ? (i.e not adding
patchir parameter on patches)
* is my "hack" acceptable to handle git secondary sources as a real
git submodule?

This is giving me headaches and I would really appreciate the feedback
of the community on this.

Cheers
Julien

