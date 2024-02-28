Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 542D4C47DD9
	for <webhook@archiver.kernel.org>; Wed, 28 Feb 2024 12:53:54 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web11.12222.1709124829325913842
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Feb 2024 04:53:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ZzIkcjnv;
 spf=pass (domain: gmail.com, ip: 209.85.167.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-512bde3d197so5081155e87.0
        for <yocto@lists.yoctoproject.org>; Wed, 28 Feb 2024 04:53:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709124827; x=1709729627; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3MAn9zFsWnrd2VbCkVxM44UpG0TKVJowieMgIq/2dAw=;
        b=ZzIkcjnv0vEgC3W/HCuLDIirJwSdFvFRODYsAYk9RQHwor0dsCnxB3HciLOcZ4yVLL
         dI6LhPWgZ/jQzBV3PhzIomEQjcbkKX9q7dhBdhKjFD1J/kgGT2X6hobX57HHkVZVJJBM
         DNKDhg3dev0JfrsaSSdLExevAO0bgolplqpLPB+POXHiwt0b1lHigO+B59IMDHtO39TG
         QSV6N0ERew/QSFvgb9OZYWoY+zGOTewlSNEU8pI1Jl9ztoZqAiJbumOVLi4JAhgqx8dQ
         UBrO0xXod1A7JdR4I7DV+ZBdEBPGsuh/D26NMWBzb0dv3DOCUnmqmE8kvsJ4U1PAvR96
         w6qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709124827; x=1709729627;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3MAn9zFsWnrd2VbCkVxM44UpG0TKVJowieMgIq/2dAw=;
        b=sBfZXsrrKWFlNU/caH70EBu09a1bAEExsi++8HuDw1AH+Er9QvPn7N+4ehtKW6m+rw
         dtHtQjEaJYT4itCFuH2gmG47ihmqG9xlA1LQ6tonxcbCvX5xJqMvchmeMYzELBvN3Z81
         tPInlfdn+6MWgUY7sW2mCl2QKdikepRAnTc4ZPHs92btgT1luOuyOlZYy6p7P+7mtbj8
         1R1RZWthZO/pk3X8E9pIZ6f1Gytrs1IxnLNtlrLV6vLi3z/z+3vf616KjHWO+806ISWJ
         D7YcJE++KAFPVJun9DzJhT5kAhHMcCssI6DKViQDu7zY62QHGznth4XxY3VPxUJKRRdi
         /GRA==
X-Gm-Message-State: AOJu0YxrzX82BEGTLQo3JmgOWNXtCCv0d9AbH6jltpBY1Dja5PwrhxZB
	JuJXV7VQTXPHXWC2dzFnw9bSrVcicpuuIdqyey/ump/YLm8ip98fa71YSmku2xlKbgDV0+fU0tH
	pZYvrumx/jT6w0WfrU9SSMHBNVRB9Sor3
X-Google-Smtp-Source: AGHT+IF2Gh80LVLUMUUcG6EOBFXjKrZtbeXtadDZQ7iN6DHg7v7Kw/yLWXPpA4oE7Qf8YiqCyr6Jf58oxxY3iiTXfHw=
X-Received: by 2002:a05:6512:2310:b0:513:cb:232c with SMTP id
 o16-20020a056512231000b0051300cb232cmr5863986lfu.4.1709124827285; Wed, 28 Feb
 2024 04:53:47 -0800 (PST)
MIME-Version: 1.0
References: <CANNYZj8EOwTf9nba0Od1A=u5_Lf5EunFS-_oZbO_o0MFDCbuKg@mail.gmail.com>
 <31790.1709123135792907274@lists.yoctoproject.org>
In-Reply-To: <31790.1709123135792907274@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 28 Feb 2024 13:53:35 +0100
Message-ID: <CANNYZj9rFXDjEUY6yzePKnVzwOA3YUPytYoZhORb8zae1nBjfw@mail.gmail.com>
Subject: Re: [yocto] dnf/libsolv vs. package feed with commit hashes in
 version strings
To: patrick.huesmann@desy.de
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Feb 2024 12:53:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62634

Note that the package version has 'git0' in it. That zero is supposed
to be filled in by PR server, and if this doesn't happen, something is
misconfigured, or there's a bug.

You can find the code that does this in
meta/classes-global/package.bbclass, particularly look for PKGV
manipulations in package_setup_pkgv() and subsequent substitution of
PRSERV_PV_AUTOINC in package_get_auto_pr().

Alex



On Wed, 28 Feb 2024 at 13:25, <patrick.huesmann@desy.de> wrote:
>
> Hi Alex,
>
> I'm using PRSERV and the PR is also incrementing in the example I've shown; this doesn't help as the PV of the older version is considered newer due to the commit hash - in this case the PR is never evaluated.
>
> Patrick

