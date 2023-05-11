Return-Path: <scott.murray@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 337EDC7EE22
	for <webhook@archiver.kernel.org>; Thu, 11 May 2023 13:37:26 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
 by mx.groups.io with SMTP id smtpd.web10.59454.1683812236180469939
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 May 2023 06:37:16 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@konsulko.com header.s=google header.b=FKAlquK6;
 spf=pass (domain: konsulko.com, ip: 209.85.219.47, mailfrom: scott.murray@konsulko.com)
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-619ca08c166so40412486d6.1
        for <yocto@lists.yoctoproject.org>; Thu, 11 May 2023 06:37:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1683812235; x=1686404235;
        h=mime-version:message-id:subject:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=I+d1sDcmM3gZItvzgUG0oSFLqLk/CuyLE8eoN8HOPdk=;
        b=FKAlquK6yrGf1PS363QifPAjnefaGeYO1bkS5OCD3QcEuiP2/6KkftdK4bsRyYmRc6
         zpNFKwfxYbMo9Vc1aUmLUsbbCpuilDEpgLO3Ru0lVsLoC0zLCBqm8HtF+9ByufCbahfJ
         6bI1fjU/oTJubFVc1sA8beGKmAIpGPwaFsNVo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683812235; x=1686404235;
        h=mime-version:message-id:subject:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I+d1sDcmM3gZItvzgUG0oSFLqLk/CuyLE8eoN8HOPdk=;
        b=aP1sMwFtmvuzXNtDMY1vzUVo16M0XrQB/xG8gdUI/aK9Yvq66SlDyhMYb2zoxDEaLe
         7alakLluHo3nceo+C1VlBSCgqxcuPfaKBRrcaCv1lLlM3IKGsCjsm12H2+XFvdI6kEA2
         vPOU7XSZq3CSrmiGRtrCIBWv6crOhf5bpGqViHQr//14SqkaQK6xYvudLNFUxI0NQRWl
         cDyiwNaKTG0hGVnc9U4+hMjvEy5AVM/ICN1oVCWmzAu0pNcnSQYKhjizdht7+dKi5T1g
         JJpqS51xYGcqhyMLZ2RMv8ybcbRelmg+Y2sujiYCZrB6+feUTb9/NtYblm0IJnaL428v
         wsgw==
X-Gm-Message-State: AC+VfDzNyIPY6XQkkycIWT6U1sviUPuoCtTo5QfBT7Ach66ZuArMmkSK
	uFH+UKpLk2rezN2OFU9aWG911paL5p4h2blpI5g=
X-Google-Smtp-Source: ACHHUZ5hUTPVNYWXgLNm0nyqE5E8Ip6HOABQCpxEH8TPuvAysPQOffBFlrRMAWKF6rYfWVTt1ZgwCQ==
X-Received: by 2002:a05:6214:528a:b0:5ef:564a:3296 with SMTP id kj10-20020a056214528a00b005ef564a3296mr28559738qvb.44.1683812234782;
        Thu, 11 May 2023 06:37:14 -0700 (PDT)
Received: from godzilla (192-0-174-82.cpe.teksavvy.com. [192.0.174.82])
        by smtp.gmail.com with ESMTPSA id px18-20020a056214051200b0062115121675sm2239228qvb.145.2023.05.11.06.37.13
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 May 2023 06:37:14 -0700 (PDT)
Date: Thu, 11 May 2023 09:37:13 -0400 (EDT)
From: Scott Murray <scott.murray@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: Kirkstone Rust 1.68 mixin layer
Message-ID: <45cbf446-e76c-1533-507d-cc48f6696de@spiteful.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 May 2023 13:37:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59988

Just a FYI, the Rust 1.68 mixin layer is now available in the
meta-lts-mixins repository as the kirkstone/rust-1.68 branch.
It is synced up with what Steve has queued for Mickledore LTS,
so it currently provides Rust 1.68.2.

Scott


