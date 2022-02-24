Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13F68C433EF
	for <webhook@archiver.kernel.org>; Thu, 24 Feb 2022 08:06:38 +0000 (UTC)
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com
 [209.85.222.51])
 by mx.groups.io with SMTP id smtpd.web12.7678.1645689997117713640
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Feb 2022 00:06:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=im85d64z;
 spf=pass (domain: gmail.com, ip: 209.85.222.51,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f51.google.com with SMTP id b37so500011uad.12
        for <yocto@lists.yoctoproject.org>;
 Thu, 24 Feb 2022 00:06:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5QDyKtf/AlfYNvTnb60rPW3Ux2sLPcxZ9Gz1AQeGJkw=;
        b=im85d64zAoTWUkrrsMzxRKuNAR/cw9b5WWiggbm+JcxKl2aw+xfqqx///aCpbWzWwz
         gAHhrIF00S1EOxPrVpb1v0kps+QwqLePTl4qLS75nRuE/OCeuRTFpN7Wl7SG6iH7oL4R
         DcTXKDcbioNgDciTR8ozd+dPZe9aLOg90B6gh3h1sJN2BzyJkfntxtegEhKFDTaH7UnA
         Yt5FE41Hu6g3ayjzLNv4fgCbupExYMUcDo/zESOTwtvUO0jW8hDvACL2h1LoCTVTnlVw
         RKKMDQM4PT60k+s+I9aZqkoiE+tgHPcQSuBvpZNPfMCppOuiVuiO6UoDcQwp7BC5APK0
         z+5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5QDyKtf/AlfYNvTnb60rPW3Ux2sLPcxZ9Gz1AQeGJkw=;
        b=ao882uS7GAP7h/S1tWYhiRCVQY3W5wfy48uaZpRf8Fg3GqlWNvxIIB4JGthMUzEWtd
         XEQgeR9odfNcFvaLm5Wm/SCaBA97L/JDFGg++/d9cmFnVqVY2Dcvss3dXkVaBMjEMvRS
         1IKK2l56sGQbLLsWG64XMvSOURTdOjr4l33Pn7HLNqHz4VlRB/mp8fFc/qn8a3cuSnFx
         96hg/1Usber3N66MoGp0Hthw2aMFlsscsjTXEEBeRLXRKhgUALbokdQb9b6OYlTy3Ap7
         5BjOG7IKMO4Ibm6cpKvd3dQKJfgPxJGa1VeyerDRlZ8ukhbmBmZAny+JmaIJay7fj2mE
         8+dw==
X-Gm-Message-State: AOAM531bNg5MaKYhq4cOBTFooaPKzBjLsP9riwH+R9gFaluyxLOGLIB8
	xJn6rwXUUSO1abRftbz7b5Jc8o85wJMQAc0t+IU=
X-Google-Smtp-Source: 
 ABdhPJxNYJJ4PNezgonj8/vLPH83B4oKAQAMYQ5YcSXA+7zqpQTChqvGiVTVM1v0d+Ax0M4xTCz5pxa2O7ID6EkVvRo=
X-Received: by 2002:a9f:2008:0:b0:33d:b3:a3de with SMTP id
 8-20020a9f2008000000b0033d00b3a3demr596868uam.71.1645689996259;
 Thu, 24 Feb 2022 00:06:36 -0800 (PST)
MIME-Version: 1.0
References: <cJh1.1645687633224936291.YkrY@lists.yoctoproject.org>
In-Reply-To: <cJh1.1645687633224936291.YkrY@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 24 Feb 2022 09:06:24 +0100
Message-ID: 
 <CANNYZj8KwR4y=0c1L-y8HQqFwAVnUq1hVjjXhmHuzi7icDszEQ@mail.gmail.com>
Subject: Re: [yocto] Updating BBappend files in yocto #yocto #python #devtool
To: Manjunath Ks <ksmanjunath681@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Feb 2022 08:06:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56274

Apologies but I have to say no. Updating these three variables from a
bbappend is not a good idea and I strongly recommend that you do not
do it. If you need a different version of something, write a proper,
separate recipe for it.

Alex

On Thu, 24 Feb 2022 at 08:27, <ksmanjunath681@gmail.com> wrote:
>
> Hi Alexander,
> I looked into the various options provided by devtool upgrade/devtool finish.
> Unfortunately, it doesn't have the required options to update .bbappend files.
>
> Below is a brief on my problem.
>
> devtool upgrade doesn't consider updating .bbappend files of the recipe if they have overridden SRC related information.
> For example, I have a .bbappend file in my custom layer that has overridden SRC_URI, SRCBRANCH & SRCREV information for a recipe in poky.
>
> When I tried to update the recipe with latest SRCREV using below command:
> devtool upgrade -S <latest_commit_revision> <recipename>
>
> The devtool upgrade by default updates the original recipe (.bb) in poky but not the .bbappend file in my custom layer.
> I briefly looked into the devtool upgrade sources to confirm this behavior as well.
>
> Is this an expected behavior?
> There could be cases where the .bbappend files might override the SRC related information and we expect the devtool to upgrade the respective .bbappend file?
>
> Thanks.
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56273): https://lists.yoctoproject.org/g/yocto/message/56273
> Mute This Topic: https://lists.yoctoproject.org/mt/89360884/1686489
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Mute #python:https://lists.yoctoproject.org/g/yocto/mutehashtag/python
> Mute #devtool:https://lists.yoctoproject.org/g/yocto/mutehashtag/devtool
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

