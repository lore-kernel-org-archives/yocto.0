Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEF5DC35274
	for <webhook@archiver.kernel.org>; Mon, 18 Dec 2023 16:54:26 +0000 (UTC)
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
 by mx.groups.io with SMTP id smtpd.web11.48869.1702918464890076805
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Dec 2023 08:54:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=LWYv16ec;
 spf=pass (domain: gmail.com, ip: 209.85.160.53, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-1fb9a22b4a7so2058810fac.3
        for <yocto@lists.yoctoproject.org>; Mon, 18 Dec 2023 08:54:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702918464; x=1703523264; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ta8mC3pxffa2yAafPc0oow5zaGIPWMs+Lc4Mr12oOgI=;
        b=LWYv16ecN5Zcpt4ELrw4niegRMr2VE+ETYaHPHa0qhfuMt8PLc8e919Oy0H76NXVpL
         sIiG4FlRZqyAfZPZ2Cty1ppSmaalcJHh4SxQ62KaO64PGNFrarXtB1mqdiAsEgev1Frs
         ukstR/333XBWS3hMpUX1HA2MQJihh8whwn0Raw4Wm42hgo3FBr3XXe4TwZdqamkIwlx8
         eR3XTK/oTVAXrM/sawjDQJVmaqJbhi9WxO1RjCelQYS7RLl7UxtrQRUafRlBaTc6lnFR
         0w0pd/o5x/K8aAcJmFetwP0IXpm0qTmctfXX37vtqN/qT/voDDlA2dJdBcYOb70strg/
         oGVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702918464; x=1703523264;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ta8mC3pxffa2yAafPc0oow5zaGIPWMs+Lc4Mr12oOgI=;
        b=rppsYhJXGlJoc6yftVRl0OceDPQwDEUXthUynEXRKq9c10RfcN+MyyU5HQ3jA9BtUn
         B/XzgJFOosFKWkbxhrvRt2zSJi6s6X2RweKI8xW1v4vCnEefPyQzScNNsiQoTnz5CDVc
         mGvAmOLwcCDzvBmRjGkJKnMIImUR6Od0jVWwjzFWma7KHldf3VJ1dERp3wQh+mi2pokY
         Pyrnat3C0Lnl9inKrZWjNpt5aMVcfV9+gmpwsLcpkXETG6WWivG1hL4N0xkElbL20zRa
         1Dx4RjABZpcS4/0+lIkyv+Rmw0WaXGrLQa8PprdmknUjwvRb6TPdddwElYlCVajg0oHf
         ob0w==
X-Gm-Message-State: AOJu0Yy2J1X8ZbQ5HiUu0k6pXbVvN890Mra1O+nwE42oQ+mkLO/jiT/H
	YmJtQELruIqCGD4WivWlbnkSvPc8NLsjjErE/IONtbW3
X-Google-Smtp-Source: AGHT+IESTMaUx5o9jRvZkR9YSVjjjSToNX4zfcq/706NUrTVe3CZ8Fo/di4LRnhNqRj7dU8yfS+DTkccWjBn8j+2Z9E=
X-Received: by 2002:a05:6870:4f15:b0:203:b880:6801 with SMTP id
 xi21-20020a0568704f1500b00203b8806801mr2712823oab.56.1702918463955; Mon, 18
 Dec 2023 08:54:23 -0800 (PST)
MIME-Version: 1.0
References: <CAPJWBnjG2cu7ayEEjEy6QweYL2DEY92fTYvnb+Jg1iEueOzDxQ@mail.gmail.com>
In-Reply-To: <CAPJWBnjG2cu7ayEEjEy6QweYL2DEY92fTYvnb+Jg1iEueOzDxQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 18 Dec 2023 08:53:58 -0800
Message-ID: <CAMKF1srNNonGOrzd+bthWbbieAOeQEv0Mbwwb7mMWPE+LnWmFg@mail.gmail.com>
Subject: Re: [yocto] Update the yocto dunfell to latest version
To: yocto@lists.yoctoproject.org, hassanchattarki@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Dec 2023 16:54:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61967

On Sun, Dec 17, 2023 at 11:37=E2=80=AFPM MOHAMMED HASSAN
<hassanchattarki@gmail.com> wrote:
>
> Hi guys,
> Can you suggest some resources for me to update to the latest yocto dunfe=
ll version. Currently I am using dunfell 3.1.11 and want to update to 3.1.2=
9.
> What could be the consequences?

This will be relatively safer to do since point releases do not
contain major features and essentially are bug fixes and security
fixes. However, this is
not always the case that it will be smooth for you since there might
be a particular bugfix that could change a behavior which you might be
relying on
so needs some due diligence.

> Also If I manually update the nodejs folder to the latest one will it fet=
ch the latest nodejs files(example)?

This is your call and hence the problems you encounter will also be
unique to you. You might seek help in the community and if there are
some
folks who have tried what you will be doing you might find some support.

>
> Regards,
> Hassan
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#61952): https://lists.yoctoproject.org/g/yocto/messag=
e/61952
> Mute This Topic: https://lists.yoctoproject.org/mt/103238937/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

