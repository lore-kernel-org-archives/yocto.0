Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,SPF_HELO_NONE autolearn=no
	autolearn_force=no version=3.4.0
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7EAEC433EF
	for <webhook@archiver.kernel.org>; Fri, 24 Sep 2021 04:53:53 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
 [209.85.222.174])
 by mx.groups.io with SMTP id smtpd.web08.4156.1632459233097256315
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Sep 2021 21:53:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=p7tbiBGE;
 spf=pass (domain: gmail.com, ip: 209.85.222.174,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f174.google.com with SMTP id q125so12147112qkd.12
        for <yocto@lists.yoctoproject.org>;
 Thu, 23 Sep 2021 21:53:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=5vE/khoQ6xtjxbHGWKBpWuePREeTc9vQFvErX/ekMoE=;
        b=p7tbiBGEMFZBwZ3gOuT+7gK9Rw0Zr0lG4A501Z1vy+zlW0bBbTN0vyo+G1UDcaaHOe
         zD4bYCjhPOEPdXnmVDG9xgxWBMhGgFjacguDLXvpwWtIkF/VRwtxDqgcCKAsabVqPsD8
         XcO++Kspw/fDJ1XTOVqk58z1zcrRRUdh82vBDEN0JX/FjVSSuAFRrNH7mrQ513ohdYNu
         y0Qkws+jRmXjKVfEO5NcnfdPmk37JAv3V+JlHqGGKd5zzcw+VEVZg6Ezj6XLTLTQ4g4K
         pYNsu3K7MlAMkunQeMQ9tg9qAJxhP8eg2kFuZKrkWBt9yvbDdM415QsvjGSNme/XI7+q
         GkVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=5vE/khoQ6xtjxbHGWKBpWuePREeTc9vQFvErX/ekMoE=;
        b=tETv2BviuzIs3hxV6WZIrTDZGKkI+Fu1pZOfQ7G/CvHDSaD1Qmd2sltv4+rj2S88j+
         DHxguCOM0/bQkoNbGJ+mz7vRurNa8tkgp9H3rqmItHQN/50Ks2IFw8BsJOwSD3mPGn3n
         mtrknnlujfGzVu3GUPycByDzNPr/CpMR/LFqPbReSak5QPj3eICX4nZGqAmeXESNQFeX
         pLX4w+irszxwR5bM45NiXXcJrgOw+epKF79gZrU9O/8cw31b+9KQIY1gzbuRX9B3Nsjj
         qfr8Ya+zC2y6s6kbj3Nj4ICN4dZotsv/Hy2iDqZ19tnYtA0K08B/6qQc0H6yzOLZCZDs
         AIYQ==
X-Gm-Message-State: AOAM533yL0AJHuS3mOEo+MDbrX//Gm4jjft5OYf25T/SZLk3KKAvNoxY
	BwXpooq8weU3yQvJfcpYlJyYfLuIyTRuZqzVfyM=
X-Google-Smtp-Source: 
 ABdhPJxEdv0rNHdAp+YhwBOZgaJeNJGNKK00jvWBOH2mKvodTlneHviN1L3UoWWko8HLxBDZ8pgcOieTyh96NKmCPN4=
X-Received: by 2002:a05:620a:bc5:: with SMTP id
 s5mr8399217qki.47.1632459232223;
 Thu, 23 Sep 2021 21:53:52 -0700 (PDT)
MIME-Version: 1.0
References: <cd74ff1907374ec2bd340f18d691123d@blackberry.com>
In-Reply-To: <cd74ff1907374ec2bd340f18d691123d@blackberry.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 23 Sep 2021 21:53:26 -0700
Message-ID: 
 <CAMKF1spCmGPbJvCycwSYuiWW2hEMzcZKKvJZ=yOrGqa_LJyOqw@mail.gmail.com>
Subject: Re: [yocto] gcov support for target in Yocto
To: Lijun Chen <lijchen@blackberry.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Sep 2021 04:53:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54830

On Thu, Sep 23, 2021 at 9:53 AM Lijun Chen <lijchen@blackberry.com> wrote:
>
> Hi,
>
>
> Anybody knows how to enable gcov support for the target in Yocto?
>

IMAGE_INSTALL +=3D "gcov gcov-symlinks"

>
> Thanks,
>
> Lijun
>
> ________________________________
> This transmission (including any attachments) may contain confidential in=
formation, privileged material (including material protected by the solicit=
or-client or other applicable privileges), or constitute non-public informa=
tion. Any use of this information by anyone other than the intended recipie=
nt is prohibited. If you have received this transmission in error, please i=
mmediately reply to the sender and delete this information from your system=
. Use, dissemination, distribution, or reproduction of this transmission by=
 unintended recipients is not authorized and may be unlawful.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#54817): https://lists.yoctoproject.org/g/yocto/messag=
e/54817
> Mute This Topic: https://lists.yoctoproject.org/mt/85818669/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

