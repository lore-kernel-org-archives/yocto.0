Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F9BE77188
	for <webhook@archiver.kernel.org>; Mon, 30 Dec 2024 11:32:41 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
 by mx.groups.io with SMTP id smtpd.web11.60999.1735558355319813893
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Dec 2024 03:32:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=moRjgRa1;
 spf=pass (domain: gmail.com, ip: 209.85.219.53, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-6d8ece4937fso59822836d6.2
        for <yocto@lists.yoctoproject.org>; Mon, 30 Dec 2024 03:32:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735558354; x=1736163154; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2R7giU3A5o/XecZFI1Eq9IkAFVUB0PWyYXS4ZtvPjLg=;
        b=moRjgRa1mMaNKHfiN991allrkweU4EXJXKJOHaFZlsPSvKWoDGfY0abF3mPmoAqnC8
         VYJiimgizsE7MhlLIHtQrXpmK/k1ZPoUP+U/2EwAqjnl6VxqHWEK6jqUFZIhglu2IcLW
         ZiiQngFuy9Z0USxupEGGNeAuvd7vyJDSBfSB0nDdzRlKfRzFZb0mZ3ZmASz5ahYjM5aL
         MDCgC5fLaXQfuIgoFqrzahPCETiF1RkYUD6f7UI2qjJgHMvVo2ST0EhT96F6uF4QgtTm
         6wQ30iO6828JZFpHCvNFzVduPI1LrpkyJojJ4B56lS3F8DgSBv50BIuty3E9RVPjT1DE
         Vv9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735558354; x=1736163154;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2R7giU3A5o/XecZFI1Eq9IkAFVUB0PWyYXS4ZtvPjLg=;
        b=B/mf/zPCxK/IZg73xlZdG4zDQjSZ0MJq1PVUsQChnsrosMe4evtsho8EvPQtdeCmsD
         ys4ynJoliQnPev3Mjeh00m9B+OlZtA6h2jWKGL3HcYlbK3B1PU4n+wRwI6Mz9kLOHKX5
         H23q3ooYjNPMK7jT9Pst+3hs6KGodupKsCN7FnQCdPysxST8cAPFjtHGkCDQPQfCrxLC
         S1XmAMXu1YYu6xdzMNALT0+CoWi67OHk1BlmcG+2o9B1/PrAUOWbMUOYfTZw34szpllp
         oN29CK4ESEmrfBY3uOU+q5E6QQDlojyfqq4tXfNcr+JR7OgLb+qvceu+fjseONuvjzvs
         Tl5g==
X-Gm-Message-State: AOJu0Yy0Ax3/jdC8p0zxCBgfmPfjSfU6l88aUZTxGZhHmMtnxV0j2Kp1
	+MTftnz2Iq4t+ZZhs1bQPFbyt/sxCaAMyGljijslHHExGybUyUJCQFP4m4/JpIwvvdyvJQxnjPL
	hA3UvN4jB5S/yLuUi+8HosntQI0zc0g==
X-Gm-Gg: ASbGnct00E/bABZZMjotGlLKEYSZfUfdHNN2gVXQVaOfBAJbDJIySNP0rJVOebbROqb
	fHpA0EYA2335Nb0G/uhg56esyt8PnkN5/Soygx/gg+xHF0QZxpljjnyzkVpBTEdrqC1wlfvU+
X-Google-Smtp-Source: AGHT+IGNRIdlJxdYbcHAUidHSxbzugdgmDTMmmXbfCNKucXDwzp8RAyQ5uateTXmy6+U14zKLz2zQEYwPHqLAcXcLFY=
X-Received: by 2002:ad4:5c4b:0:b0:6d8:a70d:5e48 with SMTP id
 6a1803df08f44-6dd2339fdeamr510365966d6.30.1735558354358; Mon, 30 Dec 2024
 03:32:34 -0800 (PST)
MIME-Version: 1.0
References: <PH7P222MB1231FED1441DBB6B8B869A22D00F2@PH7P222MB1231.NAMP222.PROD.OUTLOOK.COM>
In-Reply-To: <PH7P222MB1231FED1441DBB6B8B869A22D00F2@PH7P222MB1231.NAMP222.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 30 Dec 2024 12:32:23 +0100
Message-ID: <CANNYZj8ZEX2mwKLQ2Kxo4MOWeLqGVrADUTP-v21R9y_8CUnY6A@mail.gmail.com>
Subject: Re: [yocto] [HELP] Building custom kernel with different GCC version
To: yocto@lists.yoctoproject.org, fran.millocs@live.com.ar
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 Dec 2024 11:32:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64487

On Sat, 28 Dec 2024 at 19:38, franco ariel via lists.yoctoproject.org
<fran.millocs=3Dlive.com.ar@lists.yoctoproject.org> wrote:
> I am currently working on a custom project using the meta-meson layer for=
 the scarthgap platform. The project requires building a custom Linux kerne=
l that explicitly depends on GCC 12.x. However, the meta-meson layer (and t=
he associated Yocto environment) defaults to GCC 13.x for both the toolchai=
n and the kernel build.
> I would like to configure the build system to use GCC 12.x exclusively fo=
r building the kernel, while keeping GCC 13.x for all other components in t=
he environment. Is there any way to do this?

The quick answer is no.

I'm curious to know what specifically requires gcc 12.x, and not any
other version?

Alex

