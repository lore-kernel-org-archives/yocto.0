Return-Path: <mhalstead@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D170AC369D1
	for <webhook@archiver.kernel.org>; Wed, 23 Apr 2025 16:32:28 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web10.202.1745425945881461096
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Apr 2025 09:32:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=ASwx/mjp;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.167.45, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-54d98aa5981so5813851e87.0
        for <yocto@lists.yoctoproject.org>; Wed, 23 Apr 2025 09:32:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1745425943; x=1746030743; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=hWAWCCoSTWgE7uArBMVPCGRaRuuHqFbl6G6+s1ezmxI=;
        b=ASwx/mjppjNJd75Yo+DnPiMBPh3zHgCCKISCePJrNoUwlWrCAymbMAEs/tAr7dwGQA
         bc1XvdyEOkbjNsjGGwwOFq4bH/J4lL62NZf1U6iPTtMaVhNnZMcZZ8hn+qdqrz6/xbeq
         j+zFTUGG9Ik9N3nLhzlDqhAPcx2Rdp5vxTPdM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745425943; x=1746030743;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hWAWCCoSTWgE7uArBMVPCGRaRuuHqFbl6G6+s1ezmxI=;
        b=wsRk0119CHRxM89ChwJLEhMr13RuiXF21Czh+15DatBaAjAyUOfXqvKgaT80lDy3pf
         zQKvQgECEsj4lMLz+QCjQWJoYChJuhnyK8+IwV2ZAoOweYmIaVGeT1D7R6HLtAK0c11X
         JekkiMwxNRIvPQHUXxgcm3flBADnpFXE4/STWOQeAaMzNDMl76gAKxaP0l/5bekz9naz
         5SyL9XOqfL/B2M8yiReOB8LEPUYneMJeRQtTKFTyR1D2tcrTcgggzoJjxgPyBJ/DpveD
         BSbdfu8nnjQNwOw/9wO0csBHaQLosrVgUTciL3nmGPe1r9BwoCvr4D1XyG86atkKvWnl
         7KmQ==
X-Gm-Message-State: AOJu0YxavU7rNOLxON7lAOTPXfpwe2j+o4EoqxJToLXsqJYD8DkcCF69
	iG0WnnjTq4zI1BfC43eWPv8TQgAeHRnS1ku8rKu4J+EffRpe8z89+ki7bL0nJvKUlA/uBPvTeAD
	PmrkiHO4MSHGSiQ949fbh/HI148oJ51wiMGhKbC6D8L4KzSYK5inftw==
X-Gm-Gg: ASbGncvBcv2SeGyQvJMmhTxX7GvXDxRo7vLz/cYctPwCzvbQyTcXAhXBfvCzpq3vMgL
	lwqTMYMLuXkAR6lS4GXJSgE+cokuY7yDUpnq0rGG3/PeM69u8Qbd6NMqnaMiKfgX70hO9BzWEna
	OvNP8vpcah5eDnn2HkP4Qvc8M1KXOpiIOvXw==
X-Google-Smtp-Source: AGHT+IEsLO5qDH52jtW95VXHp/Kjh/gk1fLmgPzPaOVf5A6sYp86JbaHuBl9t5LrxgoWgFNRwSdPdqW/G2/EUY532H0=
X-Received: by 2002:a05:6512:3f2a:b0:549:7d70:52a9 with SMTP id
 2adb3069b0e04-54d6e66d436mr5509837e87.47.1745425942604; Wed, 23 Apr 2025
 09:32:22 -0700 (PDT)
MIME-Version: 1.0
From: Michael Halstead <mhalstead@linuxfoundation.org>
Date: Wed, 23 Apr 2025 09:32:10 -0700
X-Gm-Features: ATxdqUEcpWBbhYUW6VX7ukl73JV9rrQ7F-AR3Q2Z6WHx35_L-zp7WVKvA97JxfU
Message-ID: <CADfgfoa_TOYvKDCS4pitz=PCw2V1zchLB2ZiKkifsQ81+ZGQCw@mail.gmail.com>
Subject: yocto-docs tag corrections: kirkstone-4.0.26 and yocto-4.0.26
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	YP docs mailing list <docs@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000004a8ccf063374a50d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Apr 2025 16:32:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65236

--0000000000004a8ccf063374a50d
Content-Type: text/plain; charset="UTF-8"

During the recent 4.0.26 release yocto-docs commit
e61630ba2e4e865b57e920171a62824a4eba6533 was tagged. This was incorrect and
has been replaced with new tags on
commit 9b4c36f7b02dd4bedfec90206744a1e90e37733c.

Please ensure any copies of yocto-docs have the new corrected tags. The
following command should fetch the corrected tags.

git fetch --force https://git.yoctoproject.org/yocto-docs yocto-4.0.26
kirkstone-4.0.26



-- 
Michael Halstead
Linux Foundation / Yocto Project
Systems Operations Engineer

--0000000000004a8ccf063374a50d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>During the recent 4.0.26 release yocto-docs commit e6=
1630ba2e4e865b57e920171a62824a4eba6533 was tagged. This was incorrect and h=
as been replaced with new tags on commit=C2=A09b4c36f7b02dd4bedfec90206744a=
1e90e37733c.</div><div><br></div><div>Please ensure any copies of yocto-doc=
s have the new corrected tags. The following command should fetch the corre=
cted tags.</div><div><br></div><div>git fetch --force <a href=3D"https://gi=
t.yoctoproject.org/yocto-docs">https://git.yoctoproject.org/yocto-docs</a> =
yocto-4.0.26 kirkstone-4.0.26</div><div><br></div><div><br></div><div><br><=
/div><span class=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" =
class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"lt=
r">Michael Halstead<div>Linux Foundation / Yocto Project</div><div>Systems =
Operations Engineer</div></div></div></div>

--0000000000004a8ccf063374a50d--

