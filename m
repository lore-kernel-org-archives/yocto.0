Return-Path: <t.f.g.geelen@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E7F6C021A9
	for <webhook@archiver.kernel.org>; Mon, 17 Feb 2025 18:09:44 +0000 (UTC)
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
 by mx.groups.io with SMTP id smtpd.web11.275.1739815779398352088
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Feb 2025 10:09:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=A88uJT1q;
 spf=pass (domain: gmail.com, ip: 209.85.216.51, mailfrom: t.f.g.geelen@gmail.com)
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-2fc291f7ddbso5123671a91.1
        for <yocto@lists.yoctoproject.org>; Mon, 17 Feb 2025 10:09:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739815778; x=1740420578; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=j72kbChqpCUn6vJiNa7wrq1fIAVA2HTcZD4/CHsP050=;
        b=A88uJT1q0cuhdeQwyqm1e1c6CWiOmeNTODrtR+G/p5bXaAAtj2eP4UODP7wv9/eYam
         4g+XrBYnJgU08BG8Qlu98wkctRjU4KIHnoty3FlgDbHcofZ7sPM3q6NcO044+pHXADnB
         kV3GQ5tT82P2b+GPjJT0ejF06/B0oLxE6+i6WeTwvhiByIo4KK/ehkewgoXB/cEPBeyQ
         4fyBb1ZtLCkMrzAbLUfs+eNHjedSZoJUiflNs3WtgwbhMFx0ROKbOQ8rllok5Zp3lUmv
         r3abCOVB2QDHi/EoKnBqPdRVzZgLNDvtobN2SW6F5UwoexIXlhLi+jM3DukOnOtxhgAk
         RVoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739815778; x=1740420578;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=j72kbChqpCUn6vJiNa7wrq1fIAVA2HTcZD4/CHsP050=;
        b=MHrlazygsEuuXKyTQjemR753JQ5xYX19+ngr5jKGYciS9jCFR9dIAyZkxc9CHXNCN1
         Al81f64w/WcCJKvtAVlkq0/2UEoR08f6y0G96APCEEhRS+uc2vNn1BXy2BXcUtMQcpYv
         f3Vu+ZIJOfGwfztddxAVjTvlEwQ5zypdrPeUCYEDnKY/H6HdQkQAy1QAGGVRdCEXmdL2
         HrOwodML7yKIix74Tu5tpJWNJ0brKtdBA4Mt6HqiB2fDPJ80OZRReXKKiygGpqcjNPNX
         0+t4LSk9+Z6qDQrCUHwE4lUGjCavOx/qIMqdZZ0kEPHbgCdcQ6MEuSh955BHGC0bTRO0
         VY+w==
X-Gm-Message-State: AOJu0Yw94LAqLuYghpyevyigPkmswyO4v4yqpltM0WjK9su7q66ZGsDV
	TqkSAamWNiWPJoih0P9edHTek7V3OD643Y1bPGn+2nYmXfzRllPxUB3JByDfzqa+AJOQX52evrT
	vGCcgV1BXj+8LfGjQ+kayB+rHFUEaSyyh
X-Gm-Gg: ASbGncskuufRkirZ6r7h02FfocKLTDkzDJIorP594KTDI0KT/bXCtMCqqwo2+Fxc/W+
	kXhKFiYhS8Qzq6GaUIu9XENx0q8UXoevDCiVqXChoePpVLBYXG0x+wO0HeKFcbnaJ/l78uR8=
X-Google-Smtp-Source: AGHT+IFHkHoZVbNHG0ZJKwfh+vt6myPXK7sBy3tqJyy/gnAO/i9dFIQ8O6WOOmL9Nh7IA2fSQQDEV2uB+HabYp8urzo=
X-Received: by 2002:a17:90b:510c:b0:2ee:ab29:1a57 with SMTP id
 98e67ed59e1d1-2fc40d13203mr16879579a91.2.1739815776829; Mon, 17 Feb 2025
 10:09:36 -0800 (PST)
MIME-Version: 1.0
From: Tom Geelen <t.f.g.geelen@gmail.com>
Date: Mon, 17 Feb 2025 19:09:27 +0100
X-Gm-Features: AWEUYZkKD0bQP_LM70ZUOWfQYzClrblBmQEr3dSjLCBieXRBoXcucLyacYq0Eg4
Message-ID: <CAJo0Az7KJrcS0FvCXLfiT3P_MnSpacWp8mJo5Fe_gc-8drRrxg@mail.gmail.com>
Subject: [auh] Question setting up AUH locally
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Feb 2025 18:09:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64821

Hi all,

I am currently trying to set up AUH locally in order to ease the
maintenance of the layer I'm maintaining (meta-homeassistant).
I have followed the steps given here
https://docs.yoctoproject.org/dev-manual/upgrading-recipes.html and
have configured it to parse all the recipes in my layer (99% python
based recipes).

Now I have a problem. It correctly parses all recipes, however it
finds no upgrade candidates. This is strange as I know some are in
need of an upgrade, and a newer version is available on pypi for
instance. Moreover I get quite some skips with the following error:

Skip package meta-homeassistant/python3-hass-nabucasa (status =
UNKNOWN_BROKEN, current version = 0.87.0, next version = 0.80.0)

Where does it get the 'next version' value from as the latest version
upstream is 0.92.0.
I might have misconfigured something. I used the default
upgrade-helper.conf with the following additions:

layer_mode=yes
layer_name=meta-homeassistant
layer_dir=BUILDDIR/../sources/meta-homeassistant
layer_machines=qemux86-64

Thanks in advance,

Tom

