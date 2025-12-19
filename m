Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2F2C3E6688A
	for <webhook@archiver.kernel.org>; Fri, 19 Dec 2025 20:22:42 +0000 (UTC)
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.25582.1766175759205559759
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Dec 2025 12:22:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20230601.gappssmtp.com header.s=20230601 header.b=Vw2Lm5uI;
 spf=neutral (domain: theyoctojester.info, ip: 209.85.215.173, mailfrom: jester@theyoctojester.info)
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-c13771b2cf9so1883076a12.1
        for <yocto@lists.yoctoproject.org>; Fri, 19 Dec 2025 12:22:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20230601.gappssmtp.com; s=20230601; t=1766175758; x=1766780558; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=93FirMeR+nBPE4NVXye+XQECwFg4GTXCHvApIcWURrc=;
        b=Vw2Lm5uIcbH7rtVE6UJgsf4t1253P7vrxc52FhBVlG4etj4wjs3pM3I93XM5Cyz68Q
         LY/IJ3h0Fof1rFK0kg/nA9Lvk0OwDDOICqvCYmyG1X/qQqWAKDWR7WDujHFL81ZrxYvJ
         q69Xj0UMwlFp3tHCXa9IkcXHz6SF4eyyiN2OgHVwPDq09E988sWKA2uTGvKBl9ld2gpT
         IqEWk9VA64Yy5roZa9LqFf3qVmD3B59DOtROp9+ywRseYgD9wxLTLkF2HZrtCsIJA5Rr
         U0675leHLUL/tdIYSrnQPDXpPWXOxSG3loC80L6jJYfiIsbN/U4mURdAxJDF/aFhfADE
         niZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766175758; x=1766780558;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=93FirMeR+nBPE4NVXye+XQECwFg4GTXCHvApIcWURrc=;
        b=mQrXTil+dUxRlt0ESrJsXIkHgqiBATewtGUPQQKnQsXryxHpKSoPiOHAnyKXs0XcEv
         4nN4t+Fhjyg6Nd7ZO7z4rCJyb5CnjpAyxVCWFijzZDJzQoRLyS90hBxGxr//PlkTmCMY
         s3qtc+8EWs4ANU7NAKHKTVQK1EjCXPTmwrQn+OUpxwbW89aiKTMShMY6RBnt1D2hplk7
         FDBcRY2/SHtNniAeenaf7cnXKGbAPjFQ/Gx63NKFa3UO6mirJ1mY+mYmwdJ4Wl9GEWXP
         GNTnejJvYPWogqdEPOkm6AgYhhPeZAaXSyVJZ2TgeXYkkIDNHRjSF4FZXQZBGkbwy26X
         unUw==
X-Forwarded-Encrypted: i=1; AJvYcCUyqFBZQP64vyxKpqYmQOvO+COBSMUZIXAsIvxt5NdOnTPNmiizqzkhJXNUxDYu45eL62MwpQ==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzNQj2IsyK6oZdilqzsp0DLk5syncVL6mmvogFTEWBr8PrhZ3zC
	ry5UnK36fcCU9+1wMjyWaKOFYX88y3Y2jbb1NXn5dVkAlbvROo2YTPO2r3Vs2e4kZWhFaXzA/y6
	eW+mWmOF9ZC8iBs6omiiIKRXxGpeeyQdSfhr3ObLngQ==
X-Gm-Gg: AY/fxX6NyQvGnqGz4RKM5ZAaOgKOx/FGqPoXo9+AIo1MtCFiu/fARZfGyN1oaIp5NYy
	2mpFa1COypPbyCuyzovwlxTLsI7jUm7yndkVcVtrgg1EgrsOlHhESC0I2HxIshNaH2zSPoc45na
	k6e/pC0G61DmCpagN2DllxWOGmu85KFvHr24PNpeiXyVDaSurTfsLQ1lhOCB5wyCNPdj7s9eDeP
	UvyABROB9fbtZN2adLSHSLmlSo/koOhRv5nBxob9vo/H7RxJkoI6OjTlVqAzsz3s8HJx8V5hjm6
	Grrx2IizQbVs0DhvddaUnGSNaEEB8Q==
X-Google-Smtp-Source: AGHT+IEy9zGkweVFgHWGtOQ6KPtFhlk8ugxESNKseJJ6QGZifHpP597Kb9myi8T5Gd1P9FhSxKFkUbPEoYK0yDdKNyA=
X-Received: by 2002:a05:693c:60c9:b0:2ae:5092:935 with SMTP id
 5a478bee46e88-2b05ec48f34mr4407582eec.35.1766175758210; Fri, 19 Dec 2025
 12:22:38 -0800 (PST)
MIME-Version: 1.0
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Fri, 19 Dec 2025 21:22:11 +0100
X-Gm-Features: AQt7F2p5yy0bf7IU8PpLHd_QPReP4pqgDGNsMRs87qs08Xk-R9w8EWPsRUOcZF0
Message-ID: <CAEt6Nwo64QB0ygUK5qCcB46-V8Twk-jWrGCbtMR1MP8EvnMSiA@mail.gmail.com>
Subject: Final stretch for the OE Workshop 2026 CFP
To: openembedded-devel@lists.openembedded.org, 
	openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	openembedded-members@lists.openembedded.org, 
	openembedded-core <openembedded-core@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 19 Dec 2025 20:22:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66117

You already know that we will host the OE Workshop 2026 on February 2
- the Monday after FOSDEM.

You already know that there will be a friendly, enthusiast crowd ready
to take on all thing OpenEmbedded and Yocto.

You already know that this is the perfect way to wrap up the weekend.

And now you know: the CFP is in its final 48h. That one things which
you always wanted to talk about, now is the time to submit it at
https://pretalx.com/orga/event/openembedded-workshop-2026-2025/

Looking forward to read your ideas :-)

Greetz,
Josef
(OpenEmbedded social media dude, event conspirator and occasional timekeeper)

