Return-Path: <mhalstead@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16826C55822
	for <webhook@archiver.kernel.org>; Tue,  4 Aug 2026 18:49:20 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.23742.1785869355876576031
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Aug 2026 11:49:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=KpHvENcc;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.167.50, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5b2a44a3b66so231600e87.1
        for <yocto@lists.yoctoproject.org>; Tue, 04 Aug 2026 11:49:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785869354; cv=none;
        d=google.com; s=arc-20260327;
        b=jMnyRvTzevJEacZ0CcjKhnATCQGyHkjo5nQNElRmP2V7dvXKqjknzQN4BqetXvuJP1
         +76LLUOylSwwzDCsts2yGIWsUjEpzGpFNB6daAiDvEEENhww01c/dhP7uOSExYAEdAP9
         xGNR7FHwqlpPxMMCuKxkb2f4d3Xzi+ihHbHNHGiGYA9tmqyvzkg6u4dGo3WIamBe8I2u
         u/qLK4+CJrWR7EMw7Qzn2SfQYnkqTboTXFXqgMaWCFvmCtRO+igJkuuDq83uSNwUimT7
         c4CyoN1+v32kAr58m2mgNqc0HAv8pwuq9MzCWLjGLxJTzhCbDO6retsOZC1YGEVfYVlK
         fLug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=XtVtEjBTSkfnSY99KnbpNT7nzAGNAqnad7DKdNpFwFk=;
        fh=z2bhqTOezP5QiCPlV3mxtsdaO8p1P9GAc6kpYPhhwWo=;
        b=f6p02kgLAIWFDkkKZSXWTegPqspG6q9mpTnPIHjONCMenOCM+s2ruv3wAD1VWHQ3WD
         FvZ8o4cJgeLC4fnQknDpmglYVwQurtQP1bT4pJDOZRoi23AZmKeCtZo6VcGZ/YWZH/3D
         hFJJKe6WutFal4ZRRs95LUz4NBcr/TJ6CTlG2Bj22+88g+YAFiSVxJLmKn8ppQCb6JTB
         swzTU6MFK70miFmgV2fN0vNj14FkXi0oqndKaCWrV3l0FD6CmH19eMR1Ra1REVUNLhKb
         ufrwUlQThmo7soI43uimJvA7Udhpn7wjVOnjoSJfBOQISeIt6LX7+V5X5easJ7y3v4Z/
         gS5w==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1785869354; x=1786474154; darn=lists.yoctoproject.org;
        h=content-type:cc:to:subject:message-id:date:from:mime-version:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=XtVtEjBTSkfnSY99KnbpNT7nzAGNAqnad7DKdNpFwFk=;
        b=KpHvENccd+B0yEIDaa3VsR1CaNF4u8YavUAc9Fjqvthg0NcS/tC4Zcyv7IuAE7h7uu
         XWH9GkybRXHxDlm09aCM5KBhanKxOwY5v7Mmwcw+wFWp0MCjtVSz9lWBmiy6wozn1+6V
         LT7hIDrCsshJW6cCJmsaStDuR2EOzU7kQpFTY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785869354; x=1786474154;
        h=content-type:cc:to:subject:message-id:date:from:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=XtVtEjBTSkfnSY99KnbpNT7nzAGNAqnad7DKdNpFwFk=;
        b=Vb2RHSz7uWh9dslgNqUTwLD/W+DLbp/7LIoAV0uzel38fBgkcoJWCwdUJcoWhEpG7U
         NIYcwRQQjrdrCM/ZYLluVyQTw/46iO65yjoJA5EnOdARwJSbvziLwIyKm24N9hsDVJjZ
         r2L3NP5oh5P28/7LEB98GKtI9NUZIyWw3CWpk2T2D72Qka86vEMxfuScoWWpFZuNyfxn
         tngzNYdYYiXlWt8BaK1cJ5vzNbxlhS2Zh6SIBF5QeIBP/bAX3JR7dzj6TVrENaj2vyIQ
         kpjoA3mT9EyfWifAGccglsri9rcJ4q43hd1AsawH7XiNFjjEYhBGBoZ0Ca8nPnd5yVRR
         MFrw==
X-Gm-Message-State: AOJu0YyqGq5lcwycewmJc3q3XhHAF3CPkU7xcRVMmX/dAZqHzIimOYML
	n6PSBT54+3Xvy7rszM3hYE23g948xMewALgI2mvtwx0Xm7K8okAWEFnNb72OviNez4Qdz4Wm6oK
	iDJFeA7viazrR+e2uVNXs1r/tvbcIwOq8f+mqffH1wmcire1X+7gQy66uMg==
X-Gm-Gg: AR+sD11SPGIM7qH+C8tm2m1W8ewvI7vXLbr9WKeiw/iQ/42zV/o5echYc1LbHoSlXFu
	9OK1wW2IIFm64adpN5ByV9/oYndnGENrA8jA2yX639xYkagRrllvTGt2utk+pO/w3ZqHOpisW1H
	E5Vp/xNNqpCrQkdOps9bdblB60rZ7gTQT+icLJkSkRAiWvEcbTUrWjy8p7O+3ufZRv3nkkuZq5E
	9GYPk/k3mqk0sL6Ubchb+8ut9nZOqSwYQuCaIfu6WJCb7ZU9aPskFW2GlJxl9ZkqaIE+E1j09zR
	qVGoG5Y4ik6oqIaFBR7jZT6m0X0O805wJXDCsCgzm2EoeLNLSQyyVujhPUAfq5HErt+7Bgq6KPF
	tqPl1ROn4L3M=
X-Received: by 2002:a05:6512:2386:b0:5b0:eda:de2a with SMTP id
 2adb3069b0e04-5b2f4cc4699mr81862e87.35.1785869353625; Tue, 04 Aug 2026
 11:49:13 -0700 (PDT)
MIME-Version: 1.0
From: Michael Halstead <mhalstead@linuxfoundation.org>
Date: Tue, 4 Aug 2026 11:49:02 -0700
X-Gm-Features: AUfX_mzhD_rWqIZA1_rvO_XWus3Db7RkVn8SIL4PgK0thzq42hp1wSSJPGGr8wM
Message-ID: <CADfgfoaBH7L+505aFdn69wvW2PaSPA=bneDN2CfFBgEpduuN0g@mail.gmail.com>
Subject: Default to isolated Python virtual environments (venv)
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, Paul Barker <paul@pbarker.dev>
Content-Type: multipart/alternative; boundary="00000000000070435506583d1c29"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Aug 2026 18:49:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66677

--00000000000070435506583d1c29
Content-Type: text/plain; charset="UTF-8"

I tracked down the persistent issue on the autobuilder setup where worker
builds were failing after maintenance specifically on systems like
RHEL8-based hosts where we don't run the system python3.

We had `virtualenv_site_packages: true` configured across the cluster to
better test distro-provided Python packages and stay aligned with current
docs. Setting `virtualenv_site_packages: false` for RHEL8 and OpenSUSE 15.6
based workers resolved the issue.

I propose we stop using site packages on the autobuilder in general to
avoid similar issues in the future. I already have the changes ready for
the next maintenance window.

If we do so our documentation should probably be updated to match so
developers avoid these same environment edge cases. We could
update ref-manual/system-requirements.html to default to standard, isolated
virtual environments and pull host Python dependencies via PyPI rather than
assuming distro packages.

Let me know what you think or if there are any edge cases I haven't
considered.

-- 
Michael Halstead (he/him)
Linux Foundation / Yocto Project
Staff IT Engineer

--00000000000070435506583d1c29
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I tracked down the persistent issue on the autobuilde=
r setup where worker builds were failing after maintenance specifically on =
systems like RHEL8-based hosts where we don&#39;t run the system python3.<b=
r><br>We had `virtualenv_site_packages: true` configured across the cluster=
 to better test distro-provided Python packages and stay aligned with curre=
nt docs. Setting `virtualenv_site_packages: false` for RHEL8 and OpenSUSE 1=
5.6 based workers resolved the issue.<br><br>I propose we stop using site p=
ackages on the autobuilder in general to avoid similar issues in the future=
. I already have the changes ready for the next maintenance window.<br><br>=
If we do so our documentation should probably be updated to match so develo=
pers avoid these same environment edge cases. We could update=C2=A0ref-manu=
al/system-requirements.html to default to standard, isolated virtual enviro=
nments and pull host Python dependencies via PyPI rather than assuming dist=
ro packages.<br><br>Let me know what you think or if there are any edge cas=
es I haven&#39;t considered.=C2=A0</div><div><br></div><span class=3D"gmail=
_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"=
 data-smartmail=3D"gmail_signature"><div dir=3D"ltr">Michael Halstead (he/h=
im)<br>Linux Foundation / Yocto Project<br>Staff IT Engineer</div></div></d=
iv>

--00000000000070435506583d1c29--

