Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8F36C3ABBC
	for <webhook@archiver.kernel.org>; Mon, 12 May 2025 08:55:31 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
 by mx.groups.io with SMTP id smtpd.web10.45773.1747040127346163912
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 May 2025 01:55:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=CmPDMvcs;
 spf=pass (domain: gmail.com, ip: 209.85.219.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-6f5496972d3so40574396d6.0
        for <yocto@lists.yoctoproject.org>; Mon, 12 May 2025 01:55:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747040126; x=1747644926; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IU6G0sv64SybW62Hag537IvbBltKN9OmQ3YJhqal8QU=;
        b=CmPDMvcs2rdXA5Q3BP2lSSJZhQnPFfNF4+FlSeZxFopWPEa/HJ4mGi61qNgNsFa+TZ
         D3BxTh29Vnn7UODLMcW0Vl3sF3pTB6QAWYrGMyoFkaatwPbPnMCIF5bo4Ndt9BjDRc9y
         CMEDe5j2lhuI1fDfOUDTh0Fh0T5NNtkPbQSIYstsMx8xJXTjVUOwCCKpP9gqwEDl3dOc
         2ZiuFfw8JaOVWL2KEmzMfD7lVOm0g0fPIzwmaLr17MAY82KQa9reEdzcsSEVH2hoTDTa
         ZOUlsmkd/2dZD9PLcOl99sBm4a4lrQJDc8DNEAGvIjLPU0dfxuxikpEhqvAXHnlYXmXY
         rVAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747040126; x=1747644926;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IU6G0sv64SybW62Hag537IvbBltKN9OmQ3YJhqal8QU=;
        b=f+RFWo7DN2XTGRSx4o4GKLk4GvFU9yHVlI58pth+jFcYLReB6huzZNlMsaFnWnNA0j
         aUwNtRgkecslVedTCs0wZ/HxPmqZNHcdVt+naZ2awdZx8DLxAbwbpiSzlLiOpW3SLoO6
         y984aMnuOlgtDFsBEJgQjEqcabBFCph0L1+LfwgKFEeT7X54wRBRuI+pvC/3U+ZVI6et
         2ytk/oZJ8rGsoRAW7Pj6C6tqZqGocUukiHHp42+JDHIfxDYzQsgAgUDtyTIsylA5wVFp
         RqfePAJbvuFtpijRqsoJxCxK70dMIz6g9n30rsCoPX/1BusBEtAYwY4xqbiyhko68dD8
         MPqw==
X-Gm-Message-State: AOJu0YzMJDHY9uXs6g4ByJdU3IzU3oltqr+BnXsgUj2y8c/i9bysR0da
	gKVFATL2NjeXgWi5oQm4h2vBL+mbhcYgciioFw4JCRn7ZNjRlLzpFK8E27HDIrkBAJWunxc98te
	YbIc+sG9uueVFFHX+Pmbxtfjz4rf0rA==
X-Gm-Gg: ASbGnctPoUUbyDHmbM0iAd27LxW16Rld+mZgKA7mMCw9A2XRgaBer1zqq2nymI0jTsl
	VwtrAHKH444TItzQD91sbBiaB3r/viRrKv284mP2LlATKYOO/HAxh48NySCIZ5eWYIZGckhRtXt
	2HeZ6TH/XJE8C4MDtfzBqQHqapC1LY0ave/Q==
X-Google-Smtp-Source: AGHT+IFMl5foCwb1lnn5bd6PBAVqdmQ+/fZlaJx7Qc46yI/ff0FvxY1ideQlE9whHfqhSwf8RK3m5Ocytf1SRHXf0eg=
X-Received: by 2002:a05:6214:242e:b0:6ef:3de:5ff7 with SMTP id
 6a1803df08f44-6f6e47e760amr210260326d6.15.1747040126293; Mon, 12 May 2025
 01:55:26 -0700 (PDT)
MIME-Version: 1.0
References: <6C44564C-884B-4618-A2E4-0FDE612FC330.ref@yahoo.com> <6C44564C-884B-4618-A2E4-0FDE612FC330@yahoo.com>
In-Reply-To: <6C44564C-884B-4618-A2E4-0FDE612FC330@yahoo.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 12 May 2025 10:55:16 +0200
X-Gm-Features: AX0GCFul0lgm5DslV_rpsYwaZlRbb9sJLJHkT7QxqWyhW_eSJcyWqWPbEjKiv8k
Message-ID: <CANNYZj8NVkJo7_gskB-FxwmdtLBXo+53tyvr+NnGty643rZp5A@mail.gmail.com>
Subject: Re: [yocto] How to include author/maintainer in SBOM
To: yocto@lists.yoctoproject.org, edahlseng@yahoo.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 May 2025 08:55:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65307

On Sun, 11 May 2025 at 06:37, Eric Dahlseng via lists.yoctoproject.org
<edahlseng=3Dyahoo.com@lists.yoctoproject.org> wrote:
> I=E2=80=99m working on a Yocto project in a regulated space and need to d=
ocument an SBOM containing name, version, and =E2=80=9Cmanufacturer=E2=80=
=9D for all components. I generated an SBOM for our project with the create=
-spdx class, but I do not see any =E2=80=9Cmanufacturer=E2=80=9D/author/mai=
ntainer information included in the output. Is there a way to add anything =
like that to the SBOM output? This particular project is still on Kirkstone=
 in case that makes a difference.

It probably does. Kirkstone is three years old at this point, so you
might want to set up master poky and check what happens there.

Alex

