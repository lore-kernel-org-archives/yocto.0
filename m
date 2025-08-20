Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 090EDCA0EED
	for <webhook@archiver.kernel.org>; Wed, 20 Aug 2025 09:42:51 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
 by mx.groups.io with SMTP id smtpd.web11.16131.1755682967896905953
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Aug 2025 02:42:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=W54a17iy;
 spf=pass (domain: gmail.com, ip: 209.85.219.43, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-70ba7aa136fso38339656d6.1
        for <yocto@lists.yoctoproject.org>; Wed, 20 Aug 2025 02:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755682967; x=1756287767; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=kECFNJFsVc1ZqOyRPYdhtscXYi3FIrn8zakO0vOc1EU=;
        b=W54a17iy/7i7r9SJR/V4idN/JLB79GdZNGPlkLfV5LZKXaT476dVS8DU7eBm4jCfiD
         6krR34jOzK97mvQVJWPq9y6o6EYK/1isN8Y+u+H75xZPHcc8TfTGvWDorqgwvtDlHX2A
         rHoUjTIOQotu4JUnUUu/f5UBGImHZzfqQgO2kipdP50q+HFTd1vmHonJwfkoDcIvK79N
         00SbU53dFdBWJJE3UggiTbxMvSYpVBUvDIv6UdVytL9f0Czev311CAKd3lOiXziS8jeE
         b4ssteDRn6w8o4u2WTdENpYxSOtYt6QYPHEjNe80sXUS9brqaxXww7bLwqe8cwDARxL9
         MqnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755682967; x=1756287767;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kECFNJFsVc1ZqOyRPYdhtscXYi3FIrn8zakO0vOc1EU=;
        b=v1QTFlZ8qhDSLwCfmnaLO/biHx7ZBy6CzFAOd3cu94QbjFSMAKIpuO6ucyhliQXPbQ
         4dJ9Q6n+AO3J52doRHF8BXYYVWJzgp1ajCr2BlVqUk7LofZIL8nNBfcnNmM6u8wOkuiq
         WwJgYJvXyxXAiLmYAjqccAMtn5QMIHxNXNDCkxfq//5g1NP2uH+UrLdMlY7/l3kp4VB9
         Ogd0wEO8awQo+jJ7Hi131I/YkJzX70j5Zcq5Ug0XTDgv4mELcU/ULmGL4+bbQuSBYk28
         jMOcx/D1mqPC89A3Yx5MAmrI76lfx++zXAy1sbtuVMZfYoTA7c0SKzDDj3vw4HMlvgdV
         Z5rw==
X-Gm-Message-State: AOJu0YwBgPdTrTli7L9zxSXqx6izxLb29eqsv3jHtlUs9/vo1FgHboRm
	rw4AIsRONs/E89rN4//5gPBOxxmw2cXbb9y9V5MndGQqNsy0D8VMyBgOcUKQmyLktwCpsbUGy0C
	Vl24uGnCbiBF4hz9wn/d+2qGD71CseYw=
X-Gm-Gg: ASbGncuMZLNPLRiXGAIxF69Kf6f4u2mi80KnFp78NRY3XYxrie4qE+q3SLZNRh/2vO1
	UPv5zqp1VFPB1lGd0tbS6r8R7Ri6qgH0Y+IuiQVrMZv4JQbxH3uyO7XKbs0Mlf7TZ5pbAef0QW9
	DoAivrDQIsP0R0eXlXPmG32xiU4pOAALN9vdEVWyygd9h3nekUKdDfL37p1IEhR1H4Lb4Ymq7dG
	UoNVp2Sju9RqeI6h8N8dkIpnBGHFxxw5bG53IAYiw==
X-Google-Smtp-Source: AGHT+IFm+hhK+GeYXou6RoiUhfL0jpgLkfhKf83u+k3E7uHycIcwN8YqGXGOsmslh1q82Za6HN1PBW66f4xWlmL4IuA=
X-Received: by 2002:a05:6214:cac:b0:70b:af81:690a with SMTP id
 6a1803df08f44-70d76f3a3abmr21427936d6.5.1755682966771; Wed, 20 Aug 2025
 02:42:46 -0700 (PDT)
MIME-Version: 1.0
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 20 Aug 2025 11:42:35 +0200
X-Gm-Features: Ac12FXwdQZGKnNsguTLBWWoA5oWgD-omjvYrNwpHfOhcPlyAeAwieZ3wCW11mnA
Message-ID: <CANNYZj8mvVaL1+VFCgShCxLyPHEEuwRZm-jo4z4o0R+yqYfM=g@mail.gmail.com>
Subject: defining standard build targets in layer metadata
To: openembedded-architecture <openembedded-architecture@lists.openembedded.org>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Aug 2025 09:42:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65774

Hello all,

working on bitbake-setup made me consider that a true end-to-end
configuration tool should also know what to build, not only what to
set up.

Earlier bitbake-setup prototypes allowed defining "oe-targets":[...]
in its configuration files, but I later on realized this doesn't scale
and isn't flexible enough, and isn't in the right place to begin with.
So I took it out in the latest patchset.

So here's a quick, not-well-thought-out idea:

BB_TARGETS = "build:'core-image-minimal' test:'-c testmage core-image-minimal' "

defined somewhere in a layer (e.g. conf/distro/poky.conf or in a fragment).

And then one would be able to run

bitbake build
bitbake test
bitbake flash
bitbake deploy
etc.

which would standardize not only setting up a build but also running
it. The particular set of generic target names and their values could
be defined differently, but the basic idea would be similar.

Thoughts?

Alex

