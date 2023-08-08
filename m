Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0357AC04A6A
	for <webhook@archiver.kernel.org>; Tue,  8 Aug 2023 19:42:02 +0000 (UTC)
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com [209.85.222.48])
 by mx.groups.io with SMTP id smtpd.web10.71639.1691523713764132150
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Aug 2023 12:41:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=fIiRGFcT;
 spf=pass (domain: gmail.com, ip: 209.85.222.48, mailfrom: raj.khem@gmail.com)
Received: by mail-ua1-f48.google.com with SMTP id a1e0cc1a2514c-796d78b3f68so1717141241.0
        for <yocto@lists.yoctoproject.org>; Tue, 08 Aug 2023 12:41:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691523713; x=1692128513;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Dz2HIliqelSxzJe0d7/LzJNg2o7C53Z3MD5r4JbV5x8=;
        b=fIiRGFcToaaQ9lwZff8GMurpd3LhSj2hI5zJsoj6JAPwEqtZCQqyvNEBw8GEdBr1fI
         lnu43wVBPWLBct+Z2jv+YqRCmPz2ucGrS4iCp2Y+/gJsXQvsXgT7ljdiHBqN4xzJQjEB
         6T7YY2M8DqYDL286g9ayKHJTYJPu48Lvpc3xbdmGEA1yO6uHBPTBvHkiGk5JBpd1SOye
         zf3UXhsqoXB7Q3KUQDcaIQL1FvpOvlTKOv7dT92gw50dAj43Ufq8HElQo2+RwtoMttKs
         uIV7zmqHxGmdkWWeBxQeRuDR1C7DZ7GBkIfYNL7+pAFCI7X2H8CWjhs5twQw9VhPwdca
         j+mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691523713; x=1692128513;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Dz2HIliqelSxzJe0d7/LzJNg2o7C53Z3MD5r4JbV5x8=;
        b=aD3jvdrYJc7hkV1/VPZQ/WaGEPVCNt0EfhrBt5rJQaOtnm36Za5nFHwTLHfs9m39hD
         JGyGupuhJYi/sW321IktoL75bIO83T9xTornRDRucU5Bjcnwxhqk6iX4z1ZUzc2VgP6m
         vdTOXLp3nmd6UiWJkDr+Zt2a4SHpPQZTNDOG4V3awLbagVYDPt+lvU7ryNWc2/mgJaDk
         +DpRkZfRHDBc66Ur4N80BbuYa3oQis7ydjr3UOmGl326nt+E/hvepBRFcj5F8guzYvI4
         Ag0ZfS+usw63DtZExp2hSudhaRcDrYntMo2Y2lSjdfxIQ0atl5iS0a2MnWMHnH5fQoLb
         CXwg==
X-Gm-Message-State: AOJu0YzMFvBZbHmAV2Mz8dm3t6rBin1eLHBkL+hZ4SNpy5eoWv/Y3xXt
	5A7F4hl/K098cW107nUWLrbgvBN2Fd9RShRsen8sfEeTPoc=
X-Google-Smtp-Source: AGHT+IH4PW4sySRvoSlN+NksaPotJ2arlHwj+Y5kuhnXC1LhlES7BU7zw/N/9FW7EU3+xB8me1UZCWHDW9xkz4MGi3c=
X-Received: by 2002:a67:ffc6:0:b0:447:5646:ebb3 with SMTP id
 w6-20020a67ffc6000000b004475646ebb3mr883203vsq.29.1691523712630; Tue, 08 Aug
 2023 12:41:52 -0700 (PDT)
MIME-Version: 1.0
References: <5592.1691518166816657006@lists.yoctoproject.org> <5592.1691519936233234884@lists.yoctoproject.org>
In-Reply-To: <5592.1691519936233234884@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 8 Aug 2023 12:41:26 -0700
Message-ID: <CAMKF1sqg6RXVZ7ze0DwMOvEaUNKfoyHs35=s0QUQWvCqoPdHJw@mail.gmail.com>
Subject: Re: [yocto] How to add a few lines in config.txt in Yocto project for
 Raspberry Pi
To: Crane <crane2018@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Aug 2023 19:42:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60753

you should generate it w.r.t S not WORKDIR

On Tue, Aug 8, 2023 at 11:38=E2=80=AFAM Crane <crane2018@gmail.com> wrote:
>
> Now the issue is with the patch itself.
>
> The patch is created by using "diff -ruN" is not working. The error is "n=
o file to patch". I can understand this as the file compared to in the patc=
h doesn't exist in the $(WORKDIR).
>
> I changed to use "git format-patch" in the $(WORKDIR) to generate the pat=
ch. But still not working. The error is "does not apply (enforce with -f)".
>
> And applying -f option got the same error.
>
> Where is the problem? The way to create the patch or apply the patch.
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#60748): https://lists.yoctoproject.org/g/yocto/messag=
e/60748
> Unfollow This Topic: https://lists.yoctoproject.org/unft/100614184/199791=
4
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

