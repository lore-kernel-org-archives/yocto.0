Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0C873EB1076
	for <webhook@archiver.kernel.org>; Tue, 10 Mar 2026 21:28:49 +0000 (UTC)
Received: from mail-dy1-f181.google.com (mail-dy1-f181.google.com [74.125.82.181])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.6321.1773178123689039228
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Mar 2026 14:28:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20230601.gappssmtp.com header.s=20230601 header.b=ETyj8ZzA;
 spf=neutral (domain: theyoctojester.info, ip: 74.125.82.181, mailfrom: jester@theyoctojester.info)
Received: by mail-dy1-f181.google.com with SMTP id 5a478bee46e88-2be26d11b95so12895961eec.0
        for <yocto@lists.yoctoproject.org>; Tue, 10 Mar 2026 14:28:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773178123; cv=none;
        d=google.com; s=arc-20240605;
        b=RV/sCq2QA9LmqVulWFNLo8beQvCDQ3VaR0NMn/jCPuvJ5JwnQyhXoVG9Kjl9aOGb8P
         z4j6eMhTawrA4J1Awx1yFDKaxsLaAV/I50i1jLcT5u56rf5+b8zl7RcU7Qotqo5hUc4p
         MMjPun4Zs96jd6n69meYYhCtcQ4IuB7U9TAcUX7kbuZPhX/0jrA+oYpB5SM97Slb44ei
         2DbhHgu0xzNbx5zF7Gp5rRPqs42qWLgHYwDrstpr1DAI3koyAm1eeZMsN1i57HqgIGQG
         Da9AXPYkLdjaSEznPHIkclda6pqTW6xcZnfzusluaTEPeNNq67BgsqgTknWAdjFJLwX8
         WcKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=WiuwBTzTynjmM6mZK5Zpa/mqdXuCfrsB3tDwRSMyUpA=;
        fh=Qf/8o/IQnNBTXqhEX7rIuHE6eNSmzuL889FM7UoDV3g=;
        b=Z0f19WLQVPyzvIXkGpiZ7CuQc5dC5PwAV+R9sfwH33nqE2xEX5dlCAdw1tYrbA5tTX
         WFRITPhNR2lvBtLc9Efqg44p9LSPyO68xUvrT6qrDuF76RmGp07t+7bvYZlhd9unnzJw
         0jS7e3UbfIkoeQQeYWAnNo5kV5gWTfdqNSDb8qUg5+NMJAXOSBVM6J4XKVSesgRUw3ir
         yUtwATwJaMx2qnu5htk4OtK4+pRz4EdciFyQ1bwqFKNmjtksvZ5CKsgnc9bmA+UYC9ca
         +sO0+9nlfJJFsmeLlgkoDX77kXDhCjMqH2medsoIZo4KKFKMqs4/PcsNmLUfvOFQgg87
         LXPw==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20230601.gappssmtp.com; s=20230601; t=1773178123; x=1773782923; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WiuwBTzTynjmM6mZK5Zpa/mqdXuCfrsB3tDwRSMyUpA=;
        b=ETyj8ZzAVz0nJi6Q//FTnkU7ErUId8sZN5DEncq23ezWER8flZ7Yu6VFZYAWdUX8hG
         uh4Pik6tDPWOxdSzG1Tcu0UIRF9HC09/4f+gapEGOoAEeD0RqhUWZc9ofYKDYPUWWk0l
         9BBTi5W1dUvCFaHXaDclJG6cNFXNLcbVjpMo/r/NMwxJc+e/qOyhI12rov6zvoTiwmWS
         AKM/faKYFwwicY4Fkyc42F1jHXf0kLEE4rLnbc7tF03+a7x731jV8d2PBm4VBVbI9bVB
         4cwQykFKwLmZ9ofKuDq3UKxnjj6yk0UKVwt0ojVBCso5pY0C3Ja7TbfUoiHEwllusAzL
         ojFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773178123; x=1773782923;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WiuwBTzTynjmM6mZK5Zpa/mqdXuCfrsB3tDwRSMyUpA=;
        b=ShhFtfqueTQ4hfXzfG2OsS8mnsk/wiXPTPLCIG8yP9UxTEobuJGYWIz/ktOWQ2fIQO
         X5dH6ncUQy8ULjYDjEneoN792cJRPFEzi82wJrasawl1Oy0UkUbkHyHsl/7NR8Ocw3Dm
         hays5VsPeWiG0R+Eng2rrNg7AZzCWp5gJI1kuHZaUdtGga7VUXSQFbmxp8sV6SsNfJxP
         NErDwAodVt2p3+Or3crAVSJrfjlKdKnFHiGVsw9tWo0hg6LMBFjbE74LKmtJSXjIZL3n
         nKREwvF/jTF1f1OC/S8eHDpMcBbwtO3449d9NUb+GJAeSdsJvLLscouqVaCJzr4pzeN7
         TCAg==
X-Gm-Message-State: AOJu0YyrJbhFsh1cjSMI28DHow8EWObx71/0zl8mUMllsKi7XnGB4ENd
	SSwTEiRw/l4TtVFldvNHNJj7s6RFeyISia260NWo421VwyhPU6F94agw1B43e85dUP6FuvOabGe
	R/oc+90RgTOSE4U8Es454xTLCqhqKsPOhbTi02P/nG8L10/R6SYLU2Vw=
X-Gm-Gg: ATEYQzxuXUDLIx6DYe1vstUBps7xdv33yNrdVPAScvKrrcUBSxZnQZXa71sBQX/wrJJ
	Pnyu1UbLWdXyI4GGjYA1qnY0dywDZim+KgQffUXO8CfwrPvqv90bsrmatA8DNMJk3r4gysLTNPN
	U75iiyI8S40w+Y+PjlEt1qijgNHy67GcODtmgbfJYJ+oVztigB5Pl9cLJA29UmLM2m5GX+7gKlO
	UaftNjDy9DOo6nTeoO0WmDhokAFBUvzzpFT2TNe/8gBawWGy1Ix1JIMjEB2dZ/7SAVT91gbNXsh
	eIYbpgRp
X-Received: by 2002:a05:7301:608a:b0:2be:1544:5c40 with SMTP id
 5a478bee46e88-2be8a572c3dmr71640eec.31.1773178122862; Tue, 10 Mar 2026
 14:28:42 -0700 (PDT)
MIME-Version: 1.0
References: <32336316-50a9-9193-9c85-d5e6973505c4@crashcourse.ca>
In-Reply-To: <32336316-50a9-9193-9c85-d5e6973505c4@crashcourse.ca>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Tue, 10 Mar 2026 22:28:16 +0100
X-Gm-Features: AaiRm50HXaCb0iFvF2bQZ6pHLFnv1Y6wYd8ArfKoGyMnc0-RwgqbhO4rx-tFDbk
Message-ID: <CAEt6Nwpi5DBYBvcWO6UTdo9YNm1oie1GVbusOSqkgkuq-LO9fQ@mail.gmail.com>
Subject: Re: [yocto] are there some recent examples of building .NET recipes
 for YP?
To: yocto@lists.yoctoproject.org, rpjday@crashcourse.ca, 
	Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Mar 2026 21:28:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66320

Channeling @Alex J Lennon

On Tue, Mar 10, 2026 at 3:19=E2=80=AFPM Robert P. J. Day via
lists.yoctoproject.org <rpjday=3Dcrashcourse.ca@lists.yoctoproject.org>
wrote:
>
>
>   colleague wants to add a .NET package as a (systemd) service to a YP
> image -- google keeps promoting this 10-year-old page:
>
> https://wiki.yoctoproject.org/wiki/Building_and_running_embedded_Linux_.N=
ET_applications_from_first_principles
>
>   does someone have a link or two to something more recent? thank you
> kindly.
>
> rday
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#66314): https://lists.yoctoproject.org/g/yocto/messag=
e/66314
> Mute This Topic: https://lists.yoctoproject.org/mt/118241577/4689568
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [jester@theyoct=
ojester.info]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

