Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D11BEC54E90
	for <webhook@archiver.kernel.org>; Thu, 22 May 2025 13:19:49 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
 by mx.groups.io with SMTP id smtpd.web11.23764.1747919987078405964
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 May 2025 06:19:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=VHTB51nl;
 spf=pass (domain: gmail.com, ip: 209.85.219.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-6f8aabbffaeso73540766d6.0
        for <yocto@lists.yoctoproject.org>; Thu, 22 May 2025 06:19:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747919986; x=1748524786; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MRJELxRrSr5B9olcDlbMIl6Ibevz0tgJKd0PQIvplcA=;
        b=VHTB51nlhOQQWeh5mxwrVw8zoWIw1Ji8UYBCmFKSruBRVWUXYnpfaPutBFJpyQABto
         veZN7fSwI+ZahxVc5p5IvkapJotfTg1lW/AMr4QVn/L6Ho+COasKMv8woLZnMVUkrat4
         2llHsDCv5shhxMeVxwhVvcLQBWWl0wbSnUcymRZ2vqcIP1ONurfoy3spF4JptLUhiBWW
         h9cFFoV1JKsPDiu1tZi8u3Hr4jtMAbx2pW71pQAwbIOLta2ysKDQY9s8xbHCdWfNLG4/
         9l5ZWNrss0VUVAEpA3ZxJeAyHnZje5vHe1xxglj9D/oIBBBk1k2MekXMG3XkP2DdUCCo
         +dXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747919986; x=1748524786;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MRJELxRrSr5B9olcDlbMIl6Ibevz0tgJKd0PQIvplcA=;
        b=Taj055kAchjriGQKFB4MurSQhD9H/xh4G8ICnf/rCV8smEfei6+fcuZ7+BH71BGqiP
         9u9NxiK5nd2pus9GxLfxvOp4QZdwz+nUm7bvxJrC8yWPlu1O0x+6cwsO32TGl4q1IyeZ
         oA/RIpNpLMXMshooyHYfV86GUjtu0wyvgT4WtO3t0Lncrgrd1onXkaoYp0zsbakAHQow
         g0Wi82cEjmD967tnCAJJ7pUMcHiCXEokcgJ2JWKPYNkM2EN0wiFuP2+KDSpNh9U7VdIO
         l73nbQTULdnfwdeHsa7apgUprpA+HVV1nitKKTQOvZsiRP8/kYDrgDeB941FsNKIGWvH
         GVkw==
X-Gm-Message-State: AOJu0Yxw8HxoCEPCutXyTLa9tqyU8ajJi1ff6AHE46YmJckk12mPaFhe
	WnHOJZDG5eWFlqd2HHlq9j+c2pCbszOd5MznDULCxqun9E+3RRYOF1oaHuQVjVaqwJP2q1tGg4c
	Hj3A/oqJ/Dt8EMONhLLagx2XND2X7TIqDDw==
X-Gm-Gg: ASbGncvE7VjwCu1FBYiCsnEVBRU5KbMRlopRGA/Bjkk2z5tyOqKq4GoKPMzZ1IueTap
	tdSTOOjCQSaFCK9IDChrwWUV+x8Aqg6ijDIvdIsEPAUTOFdfG9G4MhKsC2oq5TH5gs6a1K8C6Ln
	726KggKTL1+p+yP9/6PoA81TCrrQxyLis6DsZRjPZnmQpC
X-Google-Smtp-Source: AGHT+IGs6Wb3WouEHeFvbWJ5FLkJbDa8ATpRyhUejKHb0VLDyo3xlGqmERLI4qax8o1fpDfArNJAJvJZcJsQ7Wh+lQs=
X-Received: by 2002:a05:6214:406:b0:6ed:1da2:afac with SMTP id
 6a1803df08f44-6f8b2d85f19mr418309256d6.32.1747919985925; Thu, 22 May 2025
 06:19:45 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj-ee1PYLRvQY1KiNboHjD+yw3N6fVh6kBc0pLmXdSbW=Q@mail.gmail.com>
 <26223.1747918921618014153@lists.yoctoproject.org>
In-Reply-To: <26223.1747918921618014153@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 22 May 2025 15:19:34 +0200
X-Gm-Features: AX0GCFs_cfBQQjjQLonnn4CbkRlLrxgseoFW6_0j_IC4TSQnf_Ut37ZBrpIYR_s
Message-ID: <CANNYZj_js2Qt2qO7NTmsUZY1LOSoNA3udaXhuekZDx2Hs2VwGg@mail.gmail.com>
Subject: Re: [yocto] Do_package is changing permissions of files
To: yocto@lists.yoctoproject.org, rroyce@textronsystems.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 May 2025 13:19:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65399

What would help is that you provide steps to observe the issue on
plain poky master.

Alex

On Thu, 22 May 2025 at 15:02, rroyce via lists.yoctoproject.org
<rroyce=3Dtextronsystems.com@lists.yoctoproject.org> wrote:
>
> That was what i thought as well from the docs and looking through do_pack=
age.
>
> Any ideas for what could be changing file permissions in S?
>
> Some info about what i'm running
> Scarthgap
> creating RPM packages
> generating SPDX
> using the archiver to capture content of S
>
> The files affected appear to be the same files that are placed in WORKDIR=
/package/src/debug/PV/
> It looks like it is only grabbing .h and .cpp files from S and placing in=
 that directory. These files then end up with permissions set to 644. Someh=
ow the original files in S also get set to 644 around the same time. I'm ho=
ping you have an idea of what might be going on.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65398): https://lists.yoctoproject.org/g/yocto/messag=
e/65398
> Mute This Topic: https://lists.yoctoproject.org/mt/113244745/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

