Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
 by mx.groups.io with SMTP id smtpd.web10.5329.1606302851435593156
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Nov 2020 03:14:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=pc0E1N6K;
 spf=pass (domain: gmail.com, ip: 209.85.218.53, mailfrom: icegood1980@gmail.com)
Received: by mail-ej1-f53.google.com with SMTP id i19so2430666ejx.9
        for <yocto@lists.yoctoproject.org>; Wed, 25 Nov 2020 03:14:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=7oF/gedyVSdRFqwIHuZrhUW0NrOkFC81pIn/6E8ltmA=;
        b=pc0E1N6K6G4Q1QeRgFxeY+M4klpm7dqUxfun/4pmEg/DYvO0CisyN3gJQnxce/CBU4
         CNSG13Y59ntWXM6v+CuW2Zk9IWY3pBmSHFaf7zcz5TFoeDtswCqXX/lKDAJEj51GcSIw
         Yc2NY4KuOMyHBd81sKARKHL4UvP9Q6UYkFAv+WwylRZwlnyP5xhFI7RKN0ipyciYaRHm
         CneYzd0WpF+zWcwPixW+Bkl3lgpKWF5OikguqU7hGkBE59hHfZp35iM4++QxEPNUjcu7
         RQyU+1teSSGU7t/JdG9de08BMWhrKCtPG6dLz63sG/26uPQ6tvNYYe2QXURyVScmYiVJ
         DFbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=7oF/gedyVSdRFqwIHuZrhUW0NrOkFC81pIn/6E8ltmA=;
        b=SR4dSaK9JXqsfHcy/jhoa4WVIJZ+L2VZQGUz09vOZN19uOrXG0Ag1vl64bvtInDQob
         ahILLJrSR6jmwf5fLlxc0SX7M/rKCczJpslth3wPgz9yU5DLmMpZcRx30VidCKvBYy1D
         0LNMz39mmObNReytP6pqDXSoJafV+fvYWJ+J+vE1qOXuMs11wJCMidivopr0scWsHs6J
         VjEOVOxKd3xEiF+Xh1oLz0FjQqHWKnHBRlINORrrNW+stIsLQyjToyJVCdpvVOXP3UTy
         uMF41lyNMLnZeAxUY03sBjhrs9AbSplBQ4vzoCyLwZPXLnXRUKAfhRS0NgxbvdKrX68s
         W21w==
X-Gm-Message-State: AOAM531y1vv4SDioBEaFWvojz671hpykLJMynik+64qXMnZVrCxzngss
	BZ3yjhmF/5aqssY/iPTWGGHaUrU8ThN0EKm9H3L5VqoQ1dg=
X-Google-Smtp-Source: ABdhPJz1PPnv6XHU6Gaqaobn6M3DqBUwarktlw+r2NddTol1LyvI5dDQp7ZKMsej/4cqQUsQLltSyIGxshu3q+/fGU4=
X-Received: by 2002:a17:906:e4f:: with SMTP id q15mr2687398eji.220.1606302849580;
 Wed, 25 Nov 2020 03:14:09 -0800 (PST)
MIME-Version: 1.0
From: "Sergey Ivanov" <icegood1980@gmail.com>
Date: Wed, 25 Nov 2020 13:13:58 +0200
Message-ID: <CAJCbrz4U+JcyEVe46dSWysmM-OzUdnTTs3oVRhz88qiHCCz4BA@mail.gmail.com>
Subject: Parsing recipes: 0% | - hangs for a while
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c043d105b4ec8688"

--000000000000c043d105b4ec8688
Content-Type: text/plain; charset="UTF-8"

Since today i encountered issue in the topic.

I had this issue before when i forgot to turn on vpn (somehow parsing
depends on it). But today is everything is OK and i wonder what went wrong.
More precisely, i'm interested in two points:

1) at which stage parsing of receipts is interested in remote resources?
2) how to disable remote resource usage during parsing in some
sophisticated way?

P.S. after waiting for a while bitbake continues but it is annoying anyway.

-- 
Kind regards,
Sergey Ivanov

--000000000000c043d105b4ec8688
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Since today i encountered issue in the=
 topic. <br><br></div>I had this issue before when i forgot to turn on vpn =
(somehow parsing depends on it). But today is everything is OK and i wonder=
 what went wrong. More precisely, i&#39;m interested in two points:<br><br>=
</div>1) at which stage parsing of receipts is interested in remote resourc=
es?<br></div>2) how to disable remote resource usage during parsing in some=
 sophisticated way?<br><br></div>P.S. after waiting for a while bitbake con=
tinues but it is annoying anyway.<br clear=3D"all"><div><div><div><div><div=
><br>-- <br><div dir=3D"ltr" data-smartmail=3D"gmail_signature">Kind regard=
s,<br>Sergey Ivanov</div></div></div></div></div></div></div>

--000000000000c043d105b4ec8688--
