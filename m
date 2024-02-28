Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FD33C5478C
	for <webhook@archiver.kernel.org>; Wed, 28 Feb 2024 12:51:54 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
 by mx.groups.io with SMTP id smtpd.web10.12177.1709124706710899619
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Feb 2024 04:51:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=cDJCwQCZ;
 spf=pass (domain: gmail.com, ip: 209.85.167.52, mailfrom: martin.jansa@gmail.com)
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-512ab55fde6so7339947e87.2
        for <yocto@lists.yoctoproject.org>; Wed, 28 Feb 2024 04:51:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709124705; x=1709729505; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TJdlZtoDb6rFsa03/hSb07YSAmzK0OntphheDw5cLKY=;
        b=cDJCwQCZ6lIOGd5xaGNiIKDVQ8HHOhbvrLRQn/8hDpH6ult89kUz+nCq40p0KBPZXp
         UQ1Wj1wbpLyRF00eKl66U61mHnswN3coEQt0fziEwgcvLK/RaavzW4CeL2oVKKG4yK5C
         H0sdhV7lJM1vhuzZPAjfIs9TpKj2f5JZur7y4Tis3Orf9eo/Q3/mUn2R92fvZyyPVEZo
         uD4kuLrUSJuOMqipwhxtIcLg/oHeGRObcVwvzw/Y12EYVOdkDtUqGoA3MZcmiJibKoOg
         BO54jUWi91rFFVBa7t5uV15cbDvjq5UbMt6KS4+ywe5cdPyLQfMnL1ep8xQCTmROxRHD
         JcBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709124705; x=1709729505;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TJdlZtoDb6rFsa03/hSb07YSAmzK0OntphheDw5cLKY=;
        b=uqekQfHcxvxoLMqwinDpDziDd091cumqk3pkzSehhLv4X7iV83JeQbb0OeC2jJUfBY
         IoDW2FSDy5toASirOHXLvm7vA+2HQ9KxxnMb8jVlZnLw0+shYYPrgiYAH2Y/kz/IDxXE
         9YWfgbcIFu6sX71YpE6/aoNC6X+agzN7z2+WVuiaXQdezF1YZyt/lEt72JFmWUGL5vYi
         lGJPVKl+YWABybxpXVidoupCclVcw9KRo637okmujFw1evOvWk7Ri/aZkMMMyqpBMxtE
         6iVWVNiCqGAn4i/gAbSKNpeGFo54tDJ+YwKKAnXO8RVq9tQqf+AYB02tHD0+uV0D/EuW
         2Otg==
X-Gm-Message-State: AOJu0YxQFMNgKuiBeI2Av/y0CKSgRZPVkI5p764PdW4H5fDMR/AN2xrE
	AEcEJewydVE6D1urpCdWrz+D3Aztt5w/ESlW4rAOXTD93pllBylJG66KEAaS3W6QbeBekOsdiSk
	c9zT/7ZReYuKn6ulDvvtfg6nHegVaRYPt
X-Google-Smtp-Source: AGHT+IGxMw34pUl0ZiMvz97cuQkbteaZuUu5eRZlNHlrqTbWFSzlzs5I4/m3GutkATType7ZNZOHFaDtrH9RjT66NsQ=
X-Received: by 2002:a05:6512:4005:b0:512:bce9:11af with SMTP id
 br5-20020a056512400500b00512bce911afmr11230115lfb.3.1709124704505; Wed, 28
 Feb 2024 04:51:44 -0800 (PST)
MIME-Version: 1.0
References: <CANNYZj8EOwTf9nba0Od1A=u5_Lf5EunFS-_oZbO_o0MFDCbuKg@mail.gmail.com>
 <31790.1709123135792907274@lists.yoctoproject.org>
In-Reply-To: <31790.1709123135792907274@lists.yoctoproject.org>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Wed, 28 Feb 2024 13:51:27 +0100
Message-ID: <CA+chaQfANm_NsDwnuXVnX0_PvVuNA5x0wE1RkNzHOvQRpr9Ccw@mail.gmail.com>
Subject: Re: [yocto] dnf/libsolv vs. package feed with commit hashes in
 version strings
To: yocto@lists.yoctoproject.org, patrick.huesmann@desy.de
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Feb 2024 12:51:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62633

PRserv isn't only for incrementing EXTENDPRAUTO, but it should also
increment the LOCALCOUNT (the "0" in "+git0") whenever git sha is
changed to new value not yet recorded in PRserv db.

If this doesn't work, then something isn't configured correctly or
there is a bug.

Cheers,

On Wed, Feb 28, 2024 at 1:25=E2=80=AFPM <patrick.huesmann@desy.de> wrote:
>
> Hi Alex,
>
> I'm using PRSERV and the PR is also incrementing in the example I've show=
n; this doesn't help as the PV of the older version is considered newer due=
 to the commit hash - in this case the PR is never evaluated.
>
> Patrick
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62631): https://lists.yoctoproject.org/g/yocto/messag=
e/62631
> Mute This Topic: https://lists.yoctoproject.org/mt/104621339/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [martin.jansa@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

