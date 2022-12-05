Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0687DC4332F
	for <webhook@archiver.kernel.org>; Mon,  5 Dec 2022 19:07:17 +0000 (UTC)
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
 by mx.groups.io with SMTP id smtpd.web10.24931.1670267234270503730
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Dec 2022 11:07:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=lRrcNoxt;
 spf=pass (domain: gmail.com, ip: 209.85.167.179, mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f179.google.com with SMTP id n205so14163868oib.1
        for <yocto@lists.yoctoproject.org>; Mon, 05 Dec 2022 11:07:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GytWuM7gvpjZOXs204likmdo01p5UMbLw4AKUoGp5fk=;
        b=lRrcNoxt05w6xjWDUX1sfqq5Yj7t0Cq1TKfGPSSaQC8ShY6ZICPtBu3zPexz4ctjBJ
         QocTrRu4Hhhs1mDA+K/YJyS91r0f/fkOd7Wp1pUWC6IQLeafayu7J/x4Pa9oarsq3Kpn
         7Dq3+6sDa63fi/oxyygoxx3JKnNhmnIap34w8Tcte3UChE5qPYd5+OA/4J1ijrotXS4y
         V+6wcdFlwiAC+LJp+PlNGa7ehgDVkf8TM5f38G3bizc1cYdqWz2mrMFq4h+omjwVX8j1
         25bBtX03clNwtnzYBo69k4kY0VFLYIt5swj2AIRhS9IWuYiNoE3sz8pX/O/poaKMG8kh
         BGww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GytWuM7gvpjZOXs204likmdo01p5UMbLw4AKUoGp5fk=;
        b=1ikO6TX40R31txiO6dctY3mezaFnmfIhVruIU5IulZWAMhFXy18leB/PbU6baz705l
         uEmT/pWfix0a65YwHjcAyibhgb5sRwycmmygVbrurS6PVGxDlkV5DXYgFc9N4fYCB5/a
         Ldi2qDRqudHYDDJDMpdMJgeJrpVSsv507w7tIAvq2huLqRf9Gp0mhUlZHEfKplxbRWoL
         7/DccFEvKgYdPLDP2iQ8OmG6OhUJW70QMTY3H/9gZtM5YO7LdRpwwJriDD5jNpIwNnhB
         t7DXM4CKXnIMlwPc+6W64ZbmhwKqQhmcy95J959hVpGP6Ti9e+1D8iAI3kVb5HcKRXbq
         kpIg==
X-Gm-Message-State: ANoB5pnpXB5nzpy1qfr9Z7z2At9eziFLdQIUTxQXz8X1nTfOkglPlq/u
	2OyDNoqJPFIW73PRSY6Mf7urEbi7oT43BMHJfR8=
X-Google-Smtp-Source: AA0mqf5nV/RaP2C2o2jddqM+Hb5TMtchl4pWaHeGrz1h8UqovKF3BkGWLdxDZ+YWavdoqELCZIyUJAfbZeWHl5LBRWM=
X-Received: by 2002:aca:f046:0:b0:35c:53a9:5513 with SMTP id
 o67-20020acaf046000000b0035c53a95513mr1678717oih.262.1670267233412; Mon, 05
 Dec 2022 11:07:13 -0800 (PST)
MIME-Version: 1.0
References: <xLrY.1670257379005960532.pyUD@lists.yoctoproject.org>
In-Reply-To: <xLrY.1670257379005960532.pyUD@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 5 Dec 2022 11:06:47 -0800
Message-ID: <CAMKF1sokC=LNUhDyCsgVZ=aaGBGVQiUUU+dO4x85BNZVGKuubg@mail.gmail.com>
Subject: Re: [yocto] How to maintain meta layer with different versions of recipes?
To: Sourabh Hegde <hrsourabh011@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 05 Dec 2022 19:07:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58729

On Mon, Dec 5, 2022 at 8:23 AM Sourabh Hegde <hrsourabh011@gmail.com> wrote=
:
>
> Hello,
>
> I have a generic use-case of maintaining the meta layer. I have a custom =
meta layer. But this layer serves multiple customers who share most of the =
recipes and files. But some files are customer-specific. Currently, I am us=
ing different repos and tags in gitlab but regularly updating them is tedio=
us and time-consuming. Rather I am think to create to create a generic meta=
 layer and use Yocto features/variables (if existing) to maintain different=
 versions. For example, a recipe test.bb has FILES_${PN} +=3D "/lib/systemd=
/system/test.service \ "
> But the contents of "test.service" is customer-specific and different ver=
sions has to be maintained. So, is there any way to make this generic? Can =
this be done using .bbappend files?

Few things comes to mind. You could deploy the systemd unit fragment strate=
gy
https://wiki.archlinux.org/title/systemd#Drop-in_files
so any customizations you have could be done via these drop-ins and
keeping common service file
these drops can be then controlled via customer distro specific
override in your main bb itself.

Second, way would be to have test.service copies installed under
files/<customer-override>/ directory next to recipe
and then define customer distro specific overrides

>
> I assume this might be the use case of many people..
>
> Thanks in advance
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#58728): https://lists.yoctoproject.org/g/yocto/messag=
e/58728
> Mute This Topic: https://lists.yoctoproject.org/mt/95472335/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

