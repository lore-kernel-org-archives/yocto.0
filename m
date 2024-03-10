Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2E3CC54791
	for <webhook@archiver.kernel.org>; Sun, 10 Mar 2024 16:54:43 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web11.41739.1710089678150528844
 for <yocto@lists.yoctoproject.org>;
 Sun, 10 Mar 2024 09:54:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YfnMcLfy;
 spf=pass (domain: gmail.com, ip: 209.85.221.47, mailfrom: martin.jansa@gmail.com)
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-33e796cc90dso2053581f8f.1
        for <yocto@lists.yoctoproject.org>; Sun, 10 Mar 2024 09:54:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710089676; x=1710694476; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XdSV4TyfeqXOsXjNJIPQ+EqJSwbVnMUgH7mEAHr3hZs=;
        b=YfnMcLfy52o7DVLCyKra9D7VdQJapkAhzDcdp6K49MWwTTCj9E5jgwKfX3fAdrWVIK
         gFw/x3lTf3jDUnZiw+WldL5nAZ1iBiiQScPUARvGTIKfUvrC8X7Zja2x05n53keFj3ew
         PN8iboyRtU8PCD/MeOro6wadjNZI2bSfgfNpXNU4J0RkfXWyN2qFvWxlMOxOa0zgPE6V
         lnroAkgivE761v3b8l1XNxnf/zjL3oIKsRzec+zfxrkWG/y+uk0bPAjVB/SVt8rBZlNO
         85f3gQDdqrVr8A9br8YhWeyuh1sFWbticJVM9bXpBxTcgkI1Fz6fBY+X/EyDJVhgFtDD
         aqwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710089676; x=1710694476;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XdSV4TyfeqXOsXjNJIPQ+EqJSwbVnMUgH7mEAHr3hZs=;
        b=ofX9Zyx09h2tl0vJ3T4bS+7OGJrHvxSdMRBPAYq+YaUCqzfPjhMQxtWL0CGFWlkV4x
         6A2CY+l7M3Vm+COjFSKO4CedQKjVtoAxRr5cEpzBq3ZSWuu3Zs57PUIh/2Y9OyfK8l8J
         wztQnq9WtAOcVDjgRWYp7uIQCb2DIiW73cr/YrZDtNaN94VjnwYYCJcI0k8HZRtH67NE
         59rr4Cq5YmmBcvBmnfi5M3UbXRzyeOhHdfeGgPrjs1u9OAtqQwriZVL27YAVj5wHN1hc
         N/QjfDJayKsfUmdeD5b3NyKz8Aa4KaWXaRb80a64hWDM/5GQSHZStnNh+1hVYSGvKZFc
         ++uA==
X-Gm-Message-State: AOJu0YyHaKfD99rh4uklLTxMominQC4E71JhQl3BCWnXejLbzxUTWmgN
	AyT/sLFXPje83fO93XPOJYPAZf05fqMNBkj5wXdWd7Cz9PPYf7ia7+Fxklf5UBsv1gzqC70/kCq
	9VuqYSdrZ4sCdCGl8ZgWNvX5y2nk=
X-Google-Smtp-Source: AGHT+IH6inLT/QGy8QNct6RCEqXVXUTHfPhaqxuOt8qwbTcNez4QdxVMILtwu9+jU7fKIogauAuiK6uHaGuPVvhxGvM=
X-Received: by 2002:adf:ed0e:0:b0:33d:7afa:fb0b with SMTP id
 a14-20020adfed0e000000b0033d7afafb0bmr2980755wro.15.1710089676384; Sun, 10
 Mar 2024 09:54:36 -0700 (PDT)
MIME-Version: 1.0
References: <CAOSpxdaa9X1ySRN2hgnqqEu1Hf34vTSaKGZayUaVxx09GSQOew@mail.gmail.com>
In-Reply-To: <CAOSpxdaa9X1ySRN2hgnqqEu1Hf34vTSaKGZayUaVxx09GSQOew@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Sun, 10 Mar 2024 17:54:20 +0100
Message-ID: <CA+chaQdtaqzvpKqT3JHxBn7bSb8pfPAro4e_uOSjDMypqYcVqQ@mail.gmail.com>
Subject: Re: [OE-core] Final nanbield release build on March 25, 2024
To: Steve Sakoman <steve@sakoman.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 10 Mar 2024 16:54:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62718

Hi Steve,

I'm not using nanbield, but does
https://wiki.yoctoproject.org/wiki/Releases need to be updated? It
says "Support for 7 months (until May 2024)" so I was expecting final
call for dunfell (which says "Long Term Support (until Apr. 2024=C2=B9))
before nanbield.

Regards,

On Sun, Mar 10, 2024 at 5:11=E2=80=AFPM Steve Sakoman <steve@sakoman.com> w=
rote:
>
> If you have any patches you would like to submit for nanbield before
> it goes EOL, please do so now!
>
> I'll be taking patches until around March 18 in preparation for a
> March 25 build.
>
> Steve
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#196900): https://lists.openembedded.org/g/openembedde=
d-core/message/196900
> Mute This Topic: https://lists.openembedded.org/mt/104846319/3617156
> Group Owner: openembedded-core+owner@lists.openembedded.org
> Unsubscribe: https://lists.openembedded.org/g/openembedded-core/unsub [ma=
rtin.jansa@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

