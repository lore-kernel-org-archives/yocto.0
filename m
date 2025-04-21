Return-Path: <yocto@ww7.be>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7FDEFC369AB
	for <webhook@archiver.kernel.org>; Mon, 21 Apr 2025 13:23:27 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web11.14928.1745241805565127311
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Apr 2025 06:23:25 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: ww7.be, ip: 209.85.216.53, mailfrom: neofutur@ww7.be)
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-301a8b7398cso653130a91.1
        for <yocto@lists.yoctoproject.org>; Mon, 21 Apr 2025 06:23:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745241804; x=1745846604;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aVtYvRo/5ypIiP7bzQdXBMCKDB7p0Qqq3G+U4e0l5F4=;
        b=hf2CGzqyQM/1MNEZEo0S8KUaJr/Y7zNLu85RH+OE3IA0exfgJvjJi0DZ8Hql/YcGnC
         6/N1ngEm3ByEWXTkctZdLb9Di4Em4zwAd5/FXP0ZvmJOZHlEo7qnUDgL0UtnDwICd/Mx
         6zwpUjQincQMSKtMFJPI3j2mBb0MioMCde5mkyer9wg35yyPc/I4TiWY7ZxJpBAJI/dt
         vmkl+7YHB7MUsuOFSOmNax1Uj/nfdYn7P/uDbjG88x7yY0oIVv8pUIDvD0Fathjyp7Gl
         QP9JLvJiGxXNNSuun2Ad/JYgzg3L2F1Ns21AcvS3RuOiZ6V8i9kcnPHSpDTYfweHL0mb
         CWIg==
X-Gm-Message-State: AOJu0YwhYgR2wWMcTH2oebyzzihtWbNFvLHlDvZ5vTcNCsjTcZcHJmXf
	8YQjUuxlPPSOxb942TFn3FbLcjOLi6WSq5AMjtRCfoLCnOaLp9Ab0Bpfwk+0uQhTK9n7SmQIq6R
	T8G0lMsowSkos+3ZX16AxIV7y6kKHlICrPNhn83AOSkfsryMg+KY=
X-Gm-Gg: ASbGncsroNMSwD4uySmWfbi3ghJcvrcSO7la+I4RN7XOqHaeCfT5DJAiUQMO+fgkA+y
	AFx1g9PweyPhIfeF19GZs1ik+irPPt34yF6m2eNJEWUZd+qqrO668Ne5WfzynziMnkYOiFeI0lv
	rc8ASNYhzZSpRWTNqJc7u8GU6Oo6WrhVYm8rJi87JYH3tkgFt9nJPB4w==
X-Google-Smtp-Source: AGHT+IGsgE5QgXGyGS0LeM8ujIiSSOb4e8tkeoaf7QHBZVWbxVcp9fQyz+pFeqDaCdIaKNa+LtQKqMmDm73VSmkSQo4=
X-Received: by 2002:a17:90b:4f41:b0:2fe:b45b:e7ec with SMTP id
 98e67ed59e1d1-3087bcd989cmr6585720a91.8.1745241803918; Mon, 21 Apr 2025
 06:23:23 -0700 (PDT)
MIME-Version: 1.0
References: <XnIC.1745224549095117020.MUK4@lists.yoctoproject.org>
In-Reply-To: <XnIC.1745224549095117020.MUK4@lists.yoctoproject.org>
From: William Waisse <yocto@ww7.be>
Date: Mon, 21 Apr 2025 15:23:12 +0200
X-Gm-Features: ATxdqUHgizPrmrNsde0rCi3IbLK72W5TRrnH-jSBw76Kd9eCUD2Xj-QJqYRjBxE
Message-ID: <CAJyeiY6nhmmOBidBNNb3W+m+Aq_pZhv74LGHrOjvBX+LphyQow@mail.gmail.com>
Subject: Re: [yocto] Issue while building YOCTO for Intel tiger lake UP3
 processor #ubuntu #yocto
To: yocto@lists.yoctoproject.org, arehman.signatics.solutions@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Apr 2025 13:23:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65209

On Mon, Apr 21, 2025 at 2:30=E2=80=AFPM ar825 via lists.yoctoproject.org
<arehman.signatics.solutions=3Dgmail.com@lists.yoctoproject.org> wrote:
> fatal: unable to access 'https://git.yoctoproject.org/git/yocto-kernel-ca=
che/': Could not resolve host: git.yoctoproject.org

 first fix that, you have a DNS problem on your build host ( Could not
resolve host ).

try the command :
host git.yoctoproject.org
you should get an answer like that:
 git.yoctoproject.org is an alias for geo.wlsource.codeaurora.org.
 geo.wlsource.codeaurora.org is an alias for amsterdam.wlsource.codeaurora.=
org.
 amsterdam.wlsource.codeaurora.org has address 38.129.16.151




> yocto-kernel-cache:
> fatal: unable to access 'https://git.yoctoproject.org/git/yocto-kernel-ca=
che/': Could not resolve host: git.yoctoproject.org
> yocto-kernel-cache: sleeping 4.0 seconds before retrying
> fatal: unable to access 'https://git.yoctoproject.org/git/yocto-kernel-ca=
che/': Could not resolve host: git.yoctoproject.org
> error: Cannot fetch yocto-kernel-cache from https://git.yoctoproject.org/=
git/yocto-kernel-cache
> Fetching: 100% (27/27), done in 40m22.403s
> managed/linux-intel-ese-lts-5.10: Shared project intel/linux-intel-lts.gi=
t found, disabling pruning.
> managed/linux-intel-ese-mlt: Shared project intel/mainline-tracking.git f=
ound, disabling pruning.
> managed/yocto-kernel-cache: Shared project yocto-kernel-cache found, disa=
bling pruning.
> Fetching: 100% (1/1), done in 0.012s
> Checking out files: 100% (66461/66461), done.
> Checking out files: 100% (66445/66445), done.
> Checking out files: 100% (71472/71472), done.ecking out files:  93% (6646=
9/71472)
> Checking out files: 100% (71472/71472), done.
> Checking out files: 100% (75120/75120), done.
> Checking out files: 100% (74335/74335), done.
> Checking out files: 100% (74496/74496), done.king.gitChecking out files: =
 90% (67047/74496)
> Checking out files: 100% (74497/74497), done.ts.gitChecking out files:  9=
6% (72179/74497)
> Checking out:  51% (14/27), done in 5.522s
> Checking out:  48% (13/27), done in 0.215s
> error: Unable to fully sync the tree
> error: Downloading network changes failed.
> Try re-running with "-j1 --fail-fast" to exit at the first error.
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
> Repo command failed due to the following `SyncError` errors:
> GitCommandError: 'fetch --quiet --progress origin --force --prune --recur=
se-submodules=3Dno --tags +refs/heads/*:refs/remotes/origin/* +refs/tags/*:=
refs/tags/*' on yocto-kernel-cache failed
> stdout: fatal: unable to access 'https://git.yoctoproject.org/git/yocto-k=
ernel-cache/': Could not resolve host: git.yoctoproject.org
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65208): https://lists.yoctoproject.org/g/yocto/messag=
e/65208
> Mute This Topic: https://lists.yoctoproject.org/mt/112374117/7464883
> Mute #ubuntu:https://lists.yoctoproject.org/g/yocto/mutehashtag/ubuntu
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [yocto@ww7.be]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

