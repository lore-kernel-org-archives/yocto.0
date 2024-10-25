Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4FF8D0C5F3
	for <webhook@archiver.kernel.org>; Fri, 25 Oct 2024 09:19:56 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web11.7945.1729847982657813475
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Oct 2024 02:19:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=RoGzb0BU;
 spf=pass (domain: gmail.com, ip: 209.85.167.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-539fb49c64aso3193419e87.0
        for <yocto@lists.yoctoproject.org>; Fri, 25 Oct 2024 02:19:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729847981; x=1730452781; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RCqk6GfbwKwdrMKc1tnVZ1ILw+2ih62y7OiurUckqiI=;
        b=RoGzb0BU5MQuWX6d6Ye/t1nHCKNGlfOSCQz29D6b7+efWcoKzj9IZKZXtfvb3YcVtj
         yCriOZ1YTkPal0Y40XBu1C+zTS7xbnk5ohqAAwm0PdzVrzGJKee4yerdNb8OthIcp7qW
         b3sI1qt2lq7/Z7r9llZTsSjLvIvTLUupccoMlo7x1pAN9S6ztO3rCOeDMXY7R4tYc/YA
         XqcN/DlMXX7gn3l5UCBBF58ycuTycLI3cljtsvRqvDvuJSlOpdOxA6dOFx7zKwQQtVV4
         gf3UWpMbcKuPXkiNXEkCsHzSd2d/Ls4W5+HlNVEm9EgF5xTA/G2tMptRulm09GuRwpRv
         X85g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729847981; x=1730452781;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RCqk6GfbwKwdrMKc1tnVZ1ILw+2ih62y7OiurUckqiI=;
        b=puM0Pgn6fuMpTgCeotWHt8uCCO8oIN/Yb3Vn3i3QpB+uKLh0GCxoySlmx+EDszEB2+
         OKtK9M3KgUtcPtAdMl6/mKqMQo5YxMQe9GibXd9s9s6p5ne/usBIIZBwZ848jzqMn3Pz
         m06dLq5u+adsCPfnEl8bNx6Dc4VL/2rMgsNl/3KJC00+Dsd9Tbt5NOFkKiy7bsZauRzY
         8J/FX2qD75nSxfGLftX+RDU/THoZJZ/pvFZY8PpzKp3rS3xtoa00Tv4tGvrG48OYXrFo
         cy8x6X8BYAOz/DGXH/Anuqz2zAMI96UlIbBrCYyWdSuiGcJ1Vt1707BaZHJMbwLsWSdj
         Odow==
X-Gm-Message-State: AOJu0YwnpYcaxGBgeVBLL+Mh0xyi73cXzcmz+wpkadB/eerkxFtNsQP+
	kWRwpi+goDym9PvyQwruUJm1L6+tWid/y/JdcArEy11yWQwkDwm0hIJq76Q2VSTT1qfYPKQ2CeY
	JQZq5X3DmN5MJiLlMEOe+UYNSq7+wQ/aA
X-Google-Smtp-Source: AGHT+IG/Ec/N/d4OOjbIQbVWSOauqItceXVu1xBohJOIuW1P14aw++tR/5xEz8mY92hYIU7FY/gE1EWLQ/Rrvviq1i0=
X-Received: by 2002:ac2:4c41:0:b0:530:e0fd:4a97 with SMTP id
 2adb3069b0e04-53b1a23c9f2mr8094627e87.0.1729847980420; Fri, 25 Oct 2024
 02:19:40 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj9dtt5=JcPTS9ye_D5zqEEiBL7CBGY1O8nVE7xo7cePWw@mail.gmail.com>
 <7175.1729847666138755441@lists.yoctoproject.org>
In-Reply-To: <7175.1729847666138755441@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 25 Oct 2024 11:19:28 +0200
Message-ID: <CANNYZj-o3-EKuAr7eg=+MWPJJJ-gAsw+WDC7ua-tWxT6KffuRg@mail.gmail.com>
Subject: Re: [yocto] How to add postinst and prerm scripts to a recipe?
To: yocto@lists.yoctoproject.org, hchanuy@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Oct 2024 09:19:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64122

You can rename the scripts when you install them into something generic:

do_install() {}
    install ${S}/debian/rules/postinst ${D}/${bindir}/my-package-postinst.sh
}

then in
pkg_postinst:${PN} () {
    sh my-package-postinst.sh
}


Alex

On Fri, 25 Oct 2024 at 11:14, Uy Ha via lists.yoctoproject.org
<hchanuy=gmail.com@lists.yoctoproject.org> wrote:
>
> Could you give me an example? I can install the scripts as regular scripts but since DEB and RPM have different naming for these scripts, do i have to write package manager dependant code?
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64121): https://lists.yoctoproject.org/g/yocto/message/64121
> Mute This Topic: https://lists.yoctoproject.org/mt/109204322/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

