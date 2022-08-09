Return-Path: <philippe.midol-monnet@easymile.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B225CC19F2D
	for <webhook@archiver.kernel.org>; Tue,  9 Aug 2022 09:00:56 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com
 [209.85.218.47])
 by mx.groups.io with SMTP id smtpd.web08.9623.1660035649343075954
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Aug 2022 02:00:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@easymile.com header.s=easymile header.b=Kzqe8UJg;
 spf=pass (domain: easymile.com, ip: 209.85.218.47,
 mailfrom: philippe.midol-monnet@easymile.com)
Received: by mail-ej1-f47.google.com with SMTP id j8so21030406ejx.9
        for <yocto@lists.yoctoproject.org>;
 Tue, 09 Aug 2022 02:00:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=easymile.com; s=easymile;
        h=to:subject:message-id:date:from:mime-version:from:to:cc;
        bh=9hNOmDtZFMJ8iC8/2vPeNlj4NDe7bmVLtVQ2LWu1Qpk=;
        b=Kzqe8UJg7tZRT/SeF9SBwEu7FSHnCMUVR24NBOodztv1zG+PY1+cc/K+Lk4vigMtA2
         h930Akf5+eiTgSwL8tX0UVeVgpUkQDhJInaU+5dLfGJZzT/ALJTU3UnLqfm2ev25XmWL
         74SsO4x50CPJEHmDS9qiuQ+9Mk+hsILyRZAX4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc;
        bh=9hNOmDtZFMJ8iC8/2vPeNlj4NDe7bmVLtVQ2LWu1Qpk=;
        b=sy4qvQRhelpmZhidawM6GCr+weXgD3kNRe5pj6bQ55tyTP4jp5NgvEVpLkqIIlqbZr
         rAabN4hXNjUWZ+lGhWrGIokH21qCpLhOSB11ecwr2faQN7M3E4xG7CuPU2J/EVz79UpV
         qfcbdZhVSVttQ1for4oiqXAsbpOrwo1fuYePV3H15B90gpCjDl06/FfoDxnus+xqZbtt
         cfWyjzIpNvKNrSaI8D7h9+dzSc6KGvyWzStupaZVAZoN/Q5wSqZHBB00ApUpDGgfulhI
         Ge+W2+Wcu0l+6itQuGds1/rmOhjBp19mvv1MMzSEjH82TuJkr/lXZY1Ee0wpe3GBSMGK
         kBSg==
X-Gm-Message-State: ACgBeo1S7t1G+QM8M5WhrgVs228KDsmrPN5rluKtCE7MtOoL5QRmX+kM
	ffm2lxczieNRuQtj9JDhc8tACDI+Vz3InNTIC3MT0OOCbRP/WA==
X-Google-Smtp-Source: 
 AA6agR5TSySqzLUvBhWZHRl1RpWrjB1abjkzU7heGDm735L1H6HxmJCMb0b6JMCcKJnJwhLinZo4GZB2sURC6Yw8exk=
X-Received: by 2002:a17:907:628a:b0:72f:678d:6047 with SMTP id
 nd10-20020a170907628a00b0072f678d6047mr16049121ejc.456.1660035647279; Tue, 09
 Aug 2022 02:00:47 -0700 (PDT)
MIME-Version: 1.0
From: Philippe Midol-Monnet <philippe.midol-monnet@easymile.com>
Date: Tue, 9 Aug 2022 11:00:36 +0200
Message-ID: 
 <CAH+Kq0w1RYu8UKzD0PMJfaFhQM5dopmKUJTXF3RFDULwA09Lug@mail.gmail.com>
Subject: How to insure SRCREV is consistent with PV
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000012377905e5cb2b4a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 Aug 2022 09:00:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57812

--00000000000012377905e5cb2b4a
Content-Type: text/plain; charset="UTF-8"

Hi

Since the last version of bibake it looks like SRCREV must be set with a
SHA1 in order to fetch source from a git repository. We previously set it
with a tag corresponding to PV.
Manually retrieving the sha1 of the commit of a tag can easily lead to
mistakes.

Is there a way to ensure that the SRCREV is consistent with  PV?

Regards

Philippe

--00000000000012377905e5cb2b4a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi</div><div><br></div><div>Since the last version of=
 bibake it looks like SRCREV must be set with a SHA1 in order to fetch sour=
ce from a git repository. We previously set it with a tag corresponding to =
PV.</div><div>Manually retrieving the sha1 of the commit of a tag can easil=
y lead to mistakes.</div><div><br></div><div>Is there a way to ensure that =
the SRCREV is consistent with=C2=A0 PV?</div><div><br></div><div>Regards</d=
iv><div><br></div><div>Philippe <br></div></div>

--00000000000012377905e5cb2b4a--

