Return-Path: <swami310@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78823C624D4
	for <webhook@archiver.kernel.org>; Tue,  1 Sep 2026 13:52:09 +0000 (UTC)
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.8611.1788270720357281058
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Sep 2026 06:52:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=tKKHGnEv;
 spf=pass (domain: gmail.com, ip: 209.85.222.171, mailfrom: swami310@gmail.com)
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-92ed3993c1eso63322085a.1
        for <yocto@lists.yoctoproject.org>; Tue, 01 Sep 2026 06:52:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788270719; cv=none;
        d=google.com; s=arc-20260327;
        b=mq8xOhsvvyPm60oNj1oY2au75LmUhs+kn1KhUm4iQbwevmu7LzDFr/NNDYDRjvEGvr
         JZnHAzkKordSlsmx3nATSRkvB4/fIUSag/Y4c4XZWbIrZ9RA/HxVw73mDQswyJwSS01W
         i8F8pOvKmFAxRfEl8vzd8I3hLQuDOqpz1ftEMrlh3fhntSEOcRxwRk52DBE3srxOvYoY
         egoczq9p2VbsAjQEo9LNuzrHBiH/hVy53jogTWo4cqcyvLHznGfSFRz6GQ6b7EA+R2HJ
         kr9pHeyPQB5RR8LnfzpxiTzcy3XPrlOUaBLAmLt67IdY8w5lCM/d1cv60WApKryv55ZY
         rExg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=iLbmmryBLB31maBCQ3Oha8nrhIro2OOCQs+U1w8orco=;
        fh=K6w1aCBF67TzXiQFIx8zX9AzuJ5Y0T0AFLZTUyKUyZw=;
        b=gK4hpqkAQuoNRPHVWmM/oeZNS4lPkfeqN3knIcRX27NAhm0staLS62BjUi5KNdW2+L
         ao+x2uFlz16Kk6lPhisQf0FGTpSmyYXBbBviJ7Y+OgvPiHaYvXl/KVpaBUtEkHkrDl85
         7BPl7mpPvHIiN0rHEIRiJKira3KwhMs56jFKntXJHsgDtdVymWrk9SvVKQuaQpjacRZn
         BPhs9Rbb+MHAcjf49UJWY17aoD3DQc2b3fhns03YvXHfwL5kRlxKsp/GVLueqPnHylYK
         vaL96XkQ261Y4YonmWiH+nWk6jFn3mWC4QFKqzyGVXgmpccY3QXp1Qk4+PYoRJMXg2f6
         Lg4Q==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788270719; x=1788875519; darn=lists.yoctoproject.org;
        h=content-type:cc:to:subject:message-id:date:from:mime-version:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=iLbmmryBLB31maBCQ3Oha8nrhIro2OOCQs+U1w8orco=;
        b=tKKHGnEvtgnPZGwpq3UyzVfNeDSwr/5ZM7sJB3xFr8SjT5qcy85U3gX8PW3s0b2b5l
         1ZHBxtJthdK9RW7OYng24tsLLxDA7lYY85sM0M/E3+91+9plUkdj6mZ35Fy7XAJkY4V4
         +sE9luGsfrvF5f148TDis+JkimJv4vcXE7E1D1qwcOZ7M2c++JqquX7TNeKtd9IwmOjJ
         Gl4oKSkc985afT54QU+PKEiDMdktyfwATAsZ/a6p2UXEz39xjTMaDLvZVOH4JWg70VyJ
         mRT7YzJH3zqsXcKlsn31FdsAC9/olwXJ8xSMyDqJQmR/pkDBJPSgt3u5J+MhDitqcAnI
         mJeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788270719; x=1788875519;
        h=content-type:cc:to:subject:message-id:date:from:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=iLbmmryBLB31maBCQ3Oha8nrhIro2OOCQs+U1w8orco=;
        b=qGsi8mRQKGdGW/56aEQ5y69ImTJRn8V7Z2xjqVt0/8no1SHK+xqBRreG4cpO+9PHkT
         iAhippj0sVPOBh8F+6Aa9R/9HmOvtIpYIEKfuErBPJad0ITP7v4Obe2qyVsbeIcg7/MT
         mZqaM2VhcZHvXUMraEh1aflCjQbPmw6Syts4GIXHbZ+J05Grx4dt88lxjFaoE5w+9WNK
         crE6Wn/DpTbmJpjANfw8ZTI/LK/AWfhjoDcBoZJSow+YTIh04ayHOBGqWT1+2g+L4GPD
         S4vsH0oUBMo46jTNOApHjZ2kNJSy7bDjNEJcPdLRZpu+DAyK12jRjRIDfgwdhdYdeM9d
         uP9g==
X-Gm-Message-State: AFuF++l9Oxo5TVp2GzGMRrlLlpmdyqNjgUQE7jpjHcO7sAeDrw9M5OB8
	afCTyt503TgcaUEHqMzm2DFvzszcwwyEb+EbwmXtyrLLQ6JgQ6pYFC3l9B0bGePqDSQ5S+GYBPV
	8FPjuWKQA6bsqgVjyftyxFw8jDTk/zNSOloGe
X-Gm-Gg: AR+sD13rN86mHivGbH82Mr4G+fEC9MOecSWKB7tnH7fjGyTGLxsAFo3dxfJfznBxG/l
	N+E1lNpbfpUEpU1molrGEat8cNpR0myJtUFqOvycdMohn0u+u2nT6L9ueP0b8VaIlPG61fzaiBe
	JrDdwOkuwDIX+gMAAWhItCwwiTe1rtdTh22amR9d4iA5AWDCkD/+g6lDo219iJaP9tsFsRjY7ma
	jmE9jfaZK+mpw52qU3rU1l99k+OUwmGBzl/byq85gDMJm66oNUuV9z2bzr6Sq4wGSh62lP2OhwV
	mbyd7UJapCYdxFUSb6gViAkpRCUTFBkiqKtc7L80vxj21tE6gU6fEb3VQP9sQOgV5HbURXxGa+S
	rbJkXPZNK1HHl
X-Received: by 2002:a05:620a:a115:b0:937:58a2:45c6 with SMTP id
 af79cd13be357-93913904268mr3584036685a.31.1788270718877; Tue, 01 Sep 2026
 06:51:58 -0700 (PDT)
MIME-Version: 1.0
From: Swaminathan K <swami310@gmail.com>
Date: Tue, 1 Sep 2026 19:21:47 +0530
X-Gm-Features: AcwNN1VyEoXGjt6fSGrQUfPdFxhpyawrn8YRZAiNQ9bEaQ4-5Ecan-GojyESu3Q
Message-ID: <CA+-_Cq=SWJf7-TniK6iLaXzNe9zeSAhWMxkzRtjZT9H_MSAMcg@mail.gmail.com>
Subject: LLM Performance: Yocto vs. Ubuntu
To: yocto@lists.yoctoproject.org
Cc: Michael Opdenacker <michael.opdenacker@rootcommit.com>
Content-Type: multipart/alternative; boundary="000000000000f61458065a6c3880"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Sep 2026 13:52:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66700

--000000000000f61458065a6c3880
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all

I have been experimenting with running local LLMs on a Yocto image and
compared the performance to standard Ubuntu 26.04 LTS.
My goal was to determine if the significantly lower idle RAM usage of Yocto
(~100MB vs. ~1GB on Ubuntu) translates to better inference performance.

Test Environment & Setup:
    I ran three tests :  Test 1 : on Ubuntu desktop 24.04 LTS
                                  Test 2 : On Ubuntu server 26.04 LTS
                                  Test 3 : Yocto Linux  ( Wrynose)

 I ensured the same version of llama-cpp was used was compiled with these
flags enabled: (-march=3Dskylake -mavx2 -mfma).
 Note: This was critical.  without these flags, performance was negligible.

and tested on the same Lenovo laptop with 16GB RAM

Observations:

    Ubuntu Desktop vs. Yocto: Yocto was the clear winner. I guess , the
massive idle overhead of Ubuntu Desktop noticeably hurt performance.
    Ubuntu Server vs. Yocto: Surprisingly, Ubuntu Server showed a slight
edge in prompt processing, while generation speeds were nearly identical.

Performance Comparison (Ubuntu Server vs. Yocto wrynose):

    Qwen 3.5 9B:
        Prompt Processing (pp512): Ubuntu 16.79 t/s vs Yocto 15.62 t/s
        Generation (tg128): Ubuntu 4.85 t/s vs Yocto 4.77 t/s
    Llama 3.2 3B:
        Prompt Processing (pp512): Ubuntu 46.41 t/s vs Yocto 44.09 t/s
        Generation (tg128): Ubuntu 12.86 t/s vs Yocto 12.88 t/s

It is interesting that while Yocto wins against the heavy Desktop
environment, it trails slightly against a leaner Server environment. .
I=E2=80=99d llike to understand why the "leaner" OS didn't outperform the s=
tandard
Ubuntu Server in this specific scenario.
Are there specific options  that could bridge this gap?


regards
Swami

--000000000000f61458065a6c3880
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all<br><br><div>I have been experimenting with run=
ning local LLMs on a Yocto image and compared the performance to standard U=
buntu 26.04 LTS.=C2=A0</div><div>My goal was to determine if the significan=
tly lower idle RAM usage of Yocto (~100MB vs. ~1GB on Ubuntu) translates to=
 better inference performance.</div><br>Test Environment &amp; Setup:<br></=
div><div>=C2=A0 =C2=A0 I ran three tests :=C2=A0 Test 1 : on Ubuntu desktop=
 24.04 LTS</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Test 2 :=
 On Ubuntu server 26.04 LTS</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 Test 3 : Yocto Linux=C2=A0 ( Wrynose)</div><div>=C2=A0=C2=A0</di=
v><div>=C2=A0I ensured the same version of llama-cpp was used was compiled =
with these flags enabled: (-march=3Dskylake -mavx2 -mfma).<br>=C2=A0Note: T=
his was critical.=C2=A0 without these flags, performance was negligible.</d=
iv><div><br></div><div>and tested on the same Lenovo laptop with 16GB RAM</=
div><div><br>Observations:<br><br>=C2=A0 =C2=A0 Ubuntu Desktop vs. Yocto: Y=
octo was the clear winner. I guess , the massive idle overhead of Ubuntu De=
sktop noticeably hurt performance.<br>=C2=A0 =C2=A0 Ubuntu Server vs. Yocto=
: Surprisingly, Ubuntu Server showed a slight edge in prompt processing, wh=
ile generation speeds were nearly identical.<br><br>Performance Comparison =
(Ubuntu Server vs. Yocto wrynose):<br><br>=C2=A0 =C2=A0 Qwen 3.5 9B:<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 Prompt Processing (pp512): Ubuntu 16.79 t/s vs Yoc=
to 15.62 t/s<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Generation (tg128): Ubuntu 4.85=
 t/s vs Yocto 4.77 t/s<br>=C2=A0 =C2=A0 Llama 3.2 3B:<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 Prompt Processing (pp512): Ubuntu 46.41 t/s vs Yocto 44.09 t/s<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 Generation (tg128): Ubuntu 12.86 t/s vs Yocto=
 12.88 t/s<br><br>It is interesting that while Yocto wins against the heavy=
 Desktop environment, it trails slightly against a leaner Server environmen=
t. .<br>I=E2=80=99d llike to understand why the &quot;leaner&quot; OS didn&=
#39;t outperform the standard Ubuntu Server in this specific scenario.=C2=
=A0</div><div>Are there specific options=C2=A0 that could bridge this gap?<=
/div><div><br></div><div><br></div><div>regards</div><div>Swami</div></div>

--000000000000f61458065a6c3880--

