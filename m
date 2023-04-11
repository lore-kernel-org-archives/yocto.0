Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B5CEC77B6F
	for <webhook@archiver.kernel.org>; Tue, 11 Apr 2023 14:48:12 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.web10.15903.1681224490704471608
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Apr 2023 07:48:11 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20210112 header.b=qPF/jMMP;
 spf=pass (domain: gmail.com, ip: 209.85.167.50, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f50.google.com with SMTP id g19so53743144lfr.9
        for <yocto@lists.yoctoproject.org>; Tue, 11 Apr 2023 07:48:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1681224489; x=1683816489;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OrPhh1hkrC9lE3U0h6ZxgJb7JduqBwkJHp2vjiNmH3Q=;
        b=qPF/jMMPmY4bQ9DWCTb5pf3xQo5wm3S/T7h0AmaPSIsXZCKxXnfm/PPsRpOt1FwkYv
         SXVOAeA7bcs6fPgG6J9wlRDScZhSkSREl+aDXjwnsW8T1JAD4X9bsxd/6HnMPndtmDf7
         QZPHEiEcVJwoYMx6OlDvjXtkc2rUyJo+JVOFBEmSAQNzxR3k5Q0GcjVT/WVLjQmajYeR
         dyRCWIR71k5sqrDE3ZfYR9l8yvwLsguFwVJ0Tq1+5EVEQc5Tqh29rsO8OCqDr34zDY+S
         5OTpyt4tSHOVQ8AcgHPnaFIe3GGA1YyTr5OL1jqKbW//tQHPjGSKjJSLcflUzIT6MzTl
         7gdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681224489; x=1683816489;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OrPhh1hkrC9lE3U0h6ZxgJb7JduqBwkJHp2vjiNmH3Q=;
        b=G6r1KMvjvMyLlmhjtBGXRsCGV+1vB/fNZ1dBxSt0XKeXQQwaHzQngbd3N7g/rIAulT
         Ogm49nJu/7T8LA41O9fpRlQRH3sU7xu6Eph5AFNpdJB9DrP85pE+bwVtS9WJs01j8Xog
         HWcvF9pfIqlmdyCE1FNluD4Ukp20tF/ZbWSIKvIDoIh/zqwVfyE4wDiTFcy3eNWBybGH
         +LwwVxCxIx8OY+S+EEPPqfUdPk7GR5DPAG/IhyQ7D1xvXVfF0Hk9M9Ksezkh7X1m43tM
         /zGKNdQQ7F1l9kgtM5w8L06ts1LzWBHyIKC036eBOaTLVjOuCCDw6SM8Ug5EeAssMyF+
         7Whg==
X-Gm-Message-State: AAQBX9fqbSiL0VFiRa08NavuxjTdWje/OKa7DlTAEJ/QWbwD1YiJVxty
	9iz3h3Xyh4xemnLgteonTp0jAde3I11stxy26TU=
X-Google-Smtp-Source: AKy350ZunBCXjn7dq2GQCtlwVSwWtHSRhH6jrM+of+75/0nzLL+i1tzjPL9/C2jSoBc8Hdmp8v7MaFadUTRU49JMGvw=
X-Received: by 2002:ac2:5dd6:0:b0:4ea:e5b5:9670 with SMTP id
 x22-20020ac25dd6000000b004eae5b59670mr924860lfq.11.1681224488725; Tue, 11 Apr
 2023 07:48:08 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj_ga--eO9pUFMw_YTkiULoN9JiDWpRkpXjsHToVxoFw5Q@mail.gmail.com>
 <28742.1681223487079543700@lists.yoctoproject.org>
In-Reply-To: <28742.1681223487079543700@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 11 Apr 2023 16:47:57 +0200
Message-ID: <CANNYZj_tAJfT36OLXFs0Mzoh4Sa_GcpA-RqU8k_+iTYYZwU0qQ@mail.gmail.com>
Subject: Re: [yocto] create-layers-setup Yaml support #bitbake
To: talhacali@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Apr 2023 14:48:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59682

This 'renovate bot' should not be specifying its own configuration in
comments inside files that it wants to update, that's such a bad idea.
You need to teach it use a configuration placed into an external file.

Alex

On Tue, 11 Apr 2023 at 16:31, <talhacali@gmail.com> wrote:
>
> So, how a renovate bot works is that it parses the files for a specific r=
egular expression that we determine and checks the line after this regular =
expression. So it needs to be in the same json file.
>
> For example:
>
> {
>     "sources": {
>         "poky": {
>             "git-remote": {
>                 "branch": "master",
>                 "describe": "4.2_M2-676-gdf3ce81ed3",
>                 "remotes": {
>                     "origin": {
>                         "uri": "https://github.com/yoctoproject/poky.git"
>                     }
>                 },
> // renovate: datasource=3Dgit-tags depName=3Dyoctoproject/poky lookupName=
=3Dhttps://github.com/yoctoproject/poky.git
>                 "rev": "df3ce81ed3e5491b084041c5bcbd16dada129cf9"
>             },
>             "path": "poky"
>         }
>     },
>     "version": "1.0"
> }
>
> So, for this file, renovate bot will find the line in red beginning with =
"// renovate: ", and then check the next line which is "rev": "df3ce81ed3e5=
491b084041c5bcbd16dada129cf9", if that commit is not the latest commit, the=
n it will replace it with the latest.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59681): https://lists.yoctoproject.org/g/yocto/messag=
e/59681
> Mute This Topic: https://lists.yoctoproject.org/mt/98196703/1686489
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

