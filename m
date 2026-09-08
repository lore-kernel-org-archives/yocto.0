Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5611C79FA0
	for <webhook@archiver.kernel.org>; Tue,  8 Sep 2026 09:19:41 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.2739.1788856806406503440
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Sep 2026 01:40:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@balena.io header.s=google header.b=F8WptzgI;
 spf=pass (domain: balena.io, ip: 209.85.208.42, mailfrom: yann.cardaillac@balena.io)
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-6a600a1caf8so6772505a12.2
        for <yocto@lists.yoctoproject.org>; Tue, 08 Sep 2026 01:40:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788856805; cv=none;
        d=google.com; s=arc-20260327;
        b=RqmbcdzV4oViYfDwR/L/5B4EEvVaLMPTJXo9Oa2SuYjTjz3xBtslfJOTkf93Bii0ve
         EgJnLITp+nZZf4LjJTh7S2WuP+JqNrAb1K+K6DrNcTpZaet7rNhO8wn0fiT7P+zmEzq6
         x8a9AdsBw+MeiMyW9aY7UE4CWe4WihRB0Fc6fNuH+6h6oQaH3uWAvxbiu1Hb9yDrJPCE
         wLug11/wj+80VjNhUxPoYPlu3Edn4JzanqC4LpIgsXrTW/qz+ZOu0ln+org+hMiU0xWw
         APM6pymhwtpian4Gh+nHWhvxMcCybZq3Uv4HTGcZxAKMu0yQ/roZUWy3/Vqabhr7pi8G
         lhpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=Zb/4FeitXykNo0R9TXoymnlTb9woPnzNX0aWARXA5XE=;
        fh=gaHWFzVtu3p+JfCKPQnio9n4RIZglU7QiF7v1QFcvSI=;
        b=Ro7p+23lPtMK0usnAYiE3Jtl6Ufq4cAY7v1xxV+qYJatUdIRA15O0agOHCYNOalk68
         LCyQ8jJ7OFD0AwX1b2YdYcork+7kjOtI2IcPcIStjGhUCjiLcNMX9FC0nsx0IikIT/uj
         6xvNW1nvqePSJZQn99iE6mtgnr00bGynufGjSHtpTXMbQ/Kfyxtb4LtmFxaKSYkopS4w
         azOy7vMaVJnjXg57XkMHiRzBOWDY9vX9nqYD7Mk4C9ecP2I6RlMAPOnbbq0W4K+Io0b2
         4Rv/XYWmym41FuV2NR32PXs8gCGxQ6Wvdd35H/e/DlDWDNIsb8c+5YyaOMi2HYXu/cK7
         4BuA==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=balena.io; s=google; t=1788856805; x=1789461605; darn=lists.yoctoproject.org;
        h=content-type:to:subject:message-id:date:from:mime-version:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=Zb/4FeitXykNo0R9TXoymnlTb9woPnzNX0aWARXA5XE=;
        b=F8WptzgIfC3X08prf7gfoRfBQ940tG0cI3ozsJGjV/GKsUtRr3SN5KZ4PK+fqSxb5D
         VZiaptatnh+55TIucTXTugYNskTPLFlVHf0Ud09zUfXS1KhaIqz3fULwlvafyFQux6Ho
         ftvK/qaDfbas6duGcHV7p3H98v4edFhCUpAgvEmmF2gOAkCHjxrxOF1DkHE2/xZb3aAG
         YVQXx7RWnskJV2a8a3R26Fb90TWaEZojtIWNSUvZCFCZMD+xlvMKbL+OW4XnNVQE2uw2
         xjR2kSwBaBeCnIiuW+3VmC4d7Fx9NlE3hl6xe/s6ehn6ynW8oaYn2goKHoNa/l1h9yZS
         wGmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788856805; x=1789461605;
        h=content-type:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Zb/4FeitXykNo0R9TXoymnlTb9woPnzNX0aWARXA5XE=;
        b=auAJsqVPlaUCcJBwncQDYYJ/5HBEh2zEVlgJVe2v7NZAWyl3QznAAvg6gIBkB7+rX/
         B7ooce7S6YTe8BhvP/YqslqZn8Ap5Pg2P2R98QoiXmJQx2Bt41GMFLZcbDvmsvBjrk+o
         Yia/QBOgbhIsh6CiU1Ai0uIFIDYzn7eU4nXZn9F35Vgaqbuf3v6z/j7AJrSiHLr7tWIl
         c/D9041Kk4e0s4LrQfVp9wOXclPM+HJdYmp3QKlnzjP1BJ23nGnUDxTdwZfjtk1x5FiN
         v0i0oaqIRDQe2ExleyfzPzjHUdSJNgbo2nqd73RIYUSmmQGea0kM/3xBIUT2cSUkN/0G
         S9Ww==
X-Gm-Message-State: AFuF++loSTfgEFzLdVDG859Rg8XLDRngCpD0eS5CsyN1FsnC2AsuHixe
	A3dR2kTakVTCHR8OsgH4OVGip6k1Qj35G7Bbz7LkPOHgWAe5cEPqH/xfGtLSlZkPIMHLJ7NAIJQ
	CreunBj245KBf3/81ETw0l3UF0DDdue8iFeGcakqQmFDO1xJpM7ywop5JzQ==
X-Gm-Gg: AYBFou2pW7LszB1bG1AQfk4dJxOuzBXPBVVtUJwY3gHQ7LBqwnvDF15zzniLHvqyG8D
	iUP4RuazGhFd08fQa4idjQOYhovUF9aNLNReJfFwA/UAaul7lugahawXo8l/zkVhIn/nG9EGkD1
	XgSX9XFHXgiRaC28L59bYbTfLPXQIiQaBmA+T0mR9xk/0791NsRWuTyzCvmMv8nKBduWQLkIi74
	3cXkIhP6BH6d6IRTZFkd9Pwos1u9MicSGh6yQL/T3ee9S1rbmT8g7ScAAbnFT+iVfEn4lo30b1A
	gT6X5x9B2/Uu0S+D4K1wBTPhHYxMxYM325rrQRXq718IIUqavZqAQU4WFh81OmRT0qjq5O0YZ8u
	Gpr5auatLstEk5ViYLJ8Eqz8m95nYqQ==
X-Received: by 2002:a05:6402:3546:b0:6a7:ee56:8158 with SMTP id
 4fb4d7f45d1cf-6a7ee56823emr8592328a12.38.1788856804547; Tue, 08 Sep 2026
 01:40:04 -0700 (PDT)
MIME-Version: 1.0
From: "Yann Cardaillac" <yann.cardaillac@balena.io>
Date: Tue, 8 Sep 2026 10:39:53 +0200
X-Gm-Features: AcwNN1XAIYenwLJusvXsj36Al3158UXu0wMax0S2b6vf5tC6k25hp2gvBu8tCFY
Message-ID: <CACuRGzBAnGRfu-vRgJg5-ucBWcGfHRnsPH9mJuAubJ17K-E06A@mail.gmail.com>
Subject: Multi-vendor Yocto distro: how do you structure layers?
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000063b25c065af4ae79"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Sep 2026 09:19:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66708

--00000000000063b25c065af4ae79
Content-Type: text/plain; charset="UTF-8"

Hello Yocto community,

I've been using Yocto for almost 10 years and keep hitting the same problem:
How do you keep one distro coherent across multiple vendor BSPs and yocto
versions?

What I've tried personally:
- stack two vendor BSPs under one distro: conflicts everywhere (Yocto
version, kernel, systemd, invasive DISTRO layers)
- fold the distro into each cleaned-up vendor BSP: works while the board
count stays small, but doesn't scale, because I ended up with multiple
version of my distro

I now work at balena, where one distro is shared across many boards/vendors
with a deliberate layer split. I'll present that layout at OSS Summit.

I'd like to hear how others approach this. If you're willing to share:
1. How you separate distro vs vendor vs board
2. What broke when you tried to scale (version skew, DISTRO pollution,
kernel/BSP coupling, etc.)
3. Tradeoffs you accepted on purpose

Reply here or ping me privately. Pointers to public repos are very welcome.

Thanks!

Yann

--00000000000063b25c065af4ae79
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Yocto community,</div><div><br></div><div>I&#39=
;ve been using Yocto for almost 10 years and keep hitting the same problem:=
<br>How do you keep one distro coherent across multiple vendor BSPs and yoc=
to versions?</div><div><br></div><div>What I&#39;ve tried personally:<br>- =
stack two vendor BSPs under one distro: conflicts everywhere (Yocto version=
, kernel, systemd, invasive DISTRO layers)<br>- fold the distro into each c=
leaned-up vendor BSP: works while the board count stays small, but doesn&#3=
9;t scale, because I ended up with multiple version of my distro</div><div>=
<br>I now work at balena, where one distro is shared across many boards/ven=
dors with a deliberate layer split. I&#39;ll present that layout at OSS Sum=
mit.</div><div><br></div><div>I&#39;d like to hear how others approach this=
. If you&#39;re willing to share:<br>1. How you separate distro vs vendor v=
s board<br>2. What broke when you tried to scale (version skew, DISTRO poll=
ution, kernel/BSP coupling, etc.)<br>3. Tradeoffs you accepted on purpose</=
div><div><br>Reply here or ping me privately. Pointers to public repos=C2=
=A0are very welcome.</div><div><br>Thanks!</div><div><br></div><div>Yann</d=
iv></div>

--00000000000063b25c065af4ae79--

