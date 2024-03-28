Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6435DCD11DD
	for <webhook@archiver.kernel.org>; Thu, 28 Mar 2024 20:10:32 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web10.1860.1711656623290717280
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Mar 2024 13:10:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20230601.gappssmtp.com header.s=20230601 header.b=PEW7NI+O;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.167.51, mailfrom: jester@theyoctojester.info)
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-513e25afabaso1440104e87.2
        for <yocto@lists.yoctoproject.org>; Thu, 28 Mar 2024 13:10:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20230601.gappssmtp.com; s=20230601; t=1711656621; x=1712261421; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=I/O8U9HWEsexVLiy0RvIYWmTjb92YYaLWBhnuptwlNg=;
        b=PEW7NI+ODREuP5hfk/M7U2sZGc7dj4Iw/wrO4en4JbLmToDBmrJfbdnUrCSiVsAYQt
         McUwBq4rEdFHwaHxsmh6As+St6hiMDoTqqN2bCH9vsmqwNtgaiybqdlNHljklaoFULii
         JK522B2p7owFGdlXlUbLBtzzbNnVJX9ub1FaKVSSBDX2fJVqO4Pm9+f0FOpUZWxg9sZJ
         6ww8XO8BbYlGKOKq8vC8SZSYFUjMTRO9w1AFY3O9BUyiM7ot4S2jQzUi9SH33j0aahQk
         kh3wyAULjzRJK15uc5Q5AvP87B2GapxjW2ej+peEx6yIZr2bt0V+IKMSHdc3OyM1h0fq
         sBnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711656621; x=1712261421;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I/O8U9HWEsexVLiy0RvIYWmTjb92YYaLWBhnuptwlNg=;
        b=GMa0w9acPDlFebPHGgIWPiLu7Qt2FbEXzyOAXKcZuyNaT6wjTXcIQns3I0/tfUsuOG
         keFkOUtQgnamL/ytHkzdoW/FaG1i1tUbiZJACgeaUhOL3KHyBWZSaw2MA+1Vd/pEO11C
         UBQs++6ioPEd9O2xN6sNCFbnVEZaGGQnHCgrUd6BesI5eiIP4/qlrnM4C4HNY7N2f1df
         VqZY1rMVDIy42wxVBw6QwNCFtvcFpvR00xgM8qlOmf+UxgPl72d+gx6Rx3AVTq0CXnux
         EevTc8f0G5bcSFpjBFOvE5lada1Uao5jHBmXTMdvJ6iFMkfjqN18UmM1X4bEUph71Vfp
         RZ6g==
X-Forwarded-Encrypted: i=1; AJvYcCUU9xibb8m5UZxe23Hk5GHf8FCJRs9W2gczLXBUdvPR77WEmN8J5DkmfS8JE4+0nr51zZYENg5yfsGoeG/t8yWJLfV8/R2o8QuQFkLO
X-Gm-Message-State: AOJu0Yzz+XrIDQHay6V+A94zwaBK6bJd7MEquk+BSE2jRUjfzMSMlk9T
	Q9TX7p86Ip+brbTq+4siD77vtB7+/5r4ShY2SYHHvApb5SivkVqaWUoGkl/URTd8Kd2HFh3BQHF
	qZct7uBkvG6IynUWLD2HSUqbBjpv13oE1g/P3Yw==
X-Google-Smtp-Source: AGHT+IFs6R3dOU2HWKWFkPkil/RmGU6xAnQwSboXdSZsFRFvgt7WRcFALgYn2I5eFyV9BZcVGJ5hbTdahKa0iWojdkI=
X-Received: by 2002:a05:6512:48c9:b0:513:cae8:4409 with SMTP id
 er9-20020a05651248c900b00513cae84409mr331830lfb.7.1711656621157; Thu, 28 Mar
 2024 13:10:21 -0700 (PDT)
MIME-Version: 1.0
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Thu, 28 Mar 2024 21:09:55 +0100
Message-ID: <CAEt6NwpL8Wich0H_65nBtCgLV_7unNwLZ44b2w9o0bHb-76KUw@mail.gmail.com>
Subject: Yocto status mailing list
To: openembedded-core <openembedded-core@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: members@lists.openembedded.org, members <members@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000e1db550614be1cf1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Mar 2024 20:10:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62858

--000000000000e1db550614be1cf1
Content-Type: text/plain; charset="UTF-8"

Hi all,

Following some discussions and suggestions to improve, the
yocto-status@lists.yoctoproject.org mailing list has been created. It will
serve as a low-traffic, high-density list aimed at those who want a big
picture of things going on without getting overwhelmed by patches and their
discussions.

Currently, this mailing list will receive the weekly status report, as
already known from the openembedded-core and yocto mailing lists. If you
are following those and are happy with it, you don't need to change
anything. If you would like to receive only the condensed status, please
join yocto-status. Upon relevant events or decisions additional mails
beyond the weekly report might be sent to this list, but we will keep the
volume very low.

Greets,
Josef
Yocto Project Community Manager

--000000000000e1db550614be1cf1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div>Following some discussions and sugge=
stions to improve, the <a href=3D"mailto:yocto-status@lists.yoctoproject.or=
g">yocto-status@lists.yoctoproject.org</a> mailing list has been created. I=
t will serve as a low-traffic, high-density list aimed at those who want a =
big picture of things going on without getting overwhelmed by patches and t=
heir discussions.<div><br></div><div>Currently, this mailing list will rece=
ive the weekly status report, as already known from the openembedded-core a=
nd yocto mailing lists. If you are following those and are happy with it, y=
ou don&#39;t need to change anything. If you would like to receive only the=
 condensed status, please join yocto-status. Upon relevant events or decisi=
ons additional mails beyond the weekly report might be sent to this list, b=
ut we will keep the volume very low.</div><div><br></div><div>Greets,</div>=
<div>Josef</div><div>Yocto Project Community Manager</div></div>

--000000000000e1db550614be1cf1--

