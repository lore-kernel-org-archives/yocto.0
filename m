Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05FEDC021A9
	for <webhook@archiver.kernel.org>; Mon, 17 Feb 2025 21:00:55 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
 by mx.groups.io with SMTP id smtpd.web11.4222.1739826052773894482
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Feb 2025 13:00:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=CkBQ41cG;
 spf=pass (domain: gmail.com, ip: 209.85.222.175, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-7be49f6b331so472900985a.1
        for <yocto@lists.yoctoproject.org>; Mon, 17 Feb 2025 13:00:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739826052; x=1740430852; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lU3YHMdV9J5ibZsNgTGdwtKfZ9YVf8Yo2l5GuE9Rf6s=;
        b=CkBQ41cG9S/pHGePE7ZXYr15T8huWK2Ju77iWXIkjrN8acwBOciPC8Fmi8a3iC1GvB
         5KQMS62Xi1DIMfRZNDb5wDIXlJKe9m34+0zdg/hgOHw41DGBehGao+2WmCvFC0aSloBZ
         fjO3GbE+kB47hCIM+ukyZRiGKFBZQ7Y2mTaCAcrssOEWwJ0LUVwyxy+PNTJ5yhvWsJNg
         Y254Q7nW3EmFpJ1qtQLbqljZIhswJGhBPFqLYQkNIAH6LoB9woPjOJfkwphTyfHpn7fP
         0M1SBz4jDJ+y4ABHBMGbc6ozgYKAOGGaYRgzR310Yx6LQaENf9YarzcALDMm8cWzT4YI
         1YNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739826052; x=1740430852;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lU3YHMdV9J5ibZsNgTGdwtKfZ9YVf8Yo2l5GuE9Rf6s=;
        b=TYDWRgB/Bl7pyKt/dWfE5oRo9aNPbCH2Q2F8qe8bw8frTkuv83cNoUj7PpUZV+UJED
         XwGGaBADBNWJDurtSO+nIpqmqHC7yndLpVLoAnr/F2E+Da+PXJLP0kNbxlJI8VHew9r3
         IPaKG8z1C8xeeJKksXYsbjNfBXyEH7tKWqVLZUK/sXqezPJdTCcGrfXhjT5mMfwc5BME
         aV7dD+LsdwisPXFcO1T2NmJzuAC7IKhM7/vdfpgNFdsJT67bAaLbZFVFXgnJ/IKG0ORw
         YoYQufIntKwCH7xdfx1LWsL89PcE3gf1FDftdnOi6/oYxaWq/EyP+k33yu/vQBKhlT2H
         rruA==
X-Gm-Message-State: AOJu0Yzx3kkp0lRAuzlpybDfXdOdZUvWXKfJcQ1tDLDa4zwfegcHwBUE
	iPJWeB9Nx9Tnzaeh4yoP2FdBvYj5NZ2s9+J9G2yGZjLTKn6k05gZq9W6ydMBcJdfNplLwaoFg8H
	Bgx9MO5tMmONsHg+B9yHkuNOLp+E=
X-Gm-Gg: ASbGnctRIjjJluuwCvC4MbbyR0ov3gz/PEoJZ49i5KwAdf7iyeHL6TY2GPxL0FEU4SJ
	lngT2UR8lBsCdB/x2WA0mKM5s2pBnLirF8hcY2p46p6gNdKrugk4TVTEjgxYrWz9NCtCh7akkJT
	jjZ6qDR1Zk6ccZ9TecG2ggM+wqRevrbXk=
X-Google-Smtp-Source: AGHT+IE9uEMiASzgRmt/8SFcV2T44udFc8C6e04t4lhXxjuUQa7yg4sm+RN1fKMigooszinZAMMVQ+iG6RqwqG/vw9A=
X-Received: by 2002:a05:620a:3956:b0:7a3:5004:43dc with SMTP id
 af79cd13be357-7c08aa94fd0mr1508877585a.40.1739826051809; Mon, 17 Feb 2025
 13:00:51 -0800 (PST)
MIME-Version: 1.0
References: <CAJo0Az7KJrcS0FvCXLfiT3P_MnSpacWp8mJo5Fe_gc-8drRrxg@mail.gmail.com>
 <CANNYZj9iQBOQwkhyNqgfQ-xNrRoQs3JapDSChQ4cYs3D0i5eng@mail.gmail.com>
 <CAJo0Az6=A899H8fH+dGKHyYmPY_QGLTveJnDOgnUV1J1L5_x-A@mail.gmail.com>
 <CANNYZj-omc9=D2ZPVSzeV0Yt8oHzF5jogOL05R92aZG=b2xbDw@mail.gmail.com> <CAJo0Az4T9BY7x2m8cUNun=Zv5wrySVSZ3FK3whL+n0UZsgBxvQ@mail.gmail.com>
In-Reply-To: <CAJo0Az4T9BY7x2m8cUNun=Zv5wrySVSZ3FK3whL+n0UZsgBxvQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 17 Feb 2025 22:00:40 +0100
X-Gm-Features: AWEUYZniBXhnhGk_mvs6nCBlLdRfvvgp0lw_FKMkSt1zC3jVUdKttAWlpiLGtRg
Message-ID: <CANNYZj8gkkEx3N=heukzRqN68nbb3t3UsVz+oQ-DS2Q7BSR4=A@mail.gmail.com>
Subject: Re: [auh] Question setting up AUH locally
To: Tom Geelen <t.f.g.geelen@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Feb 2025 21:00:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64827

On Mon, 17 Feb 2025 at 21:32, Tom Geelen <t.f.g.geelen@gmail.com> wrote:

> If I adjust
> the UPSTREAM_CHECK_REGEX to:
>
> UPSTREAM_CHECK_REGEX =
> "${PYPI_PACKAGE}-(?P<pver>(\d+[\.\-_]*)+).(tar\.gz|tgz|zip|tar\.bz2)"
>
> It finds a match perfectly.

There is some logic in pypi.bbclass that aim to help with such tweaks.
I suggest you review that class. In particular, I think only
UPSTREAM_CHECK_PYPI_PACKAGE needs to be set, not the whole regex.

> One last question: in the upgrade-helper.conf file. What is expected
> in the 'layerdir' variable? A relative path? The documentation is a
> bit lacking there.

I don't remember because I don't use it. upgrade-helper.py is the
ground source of truth for it, so read that :)

Alex

