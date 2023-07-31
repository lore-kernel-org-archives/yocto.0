Return-Path: <oduconge@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7402EC001DE
	for <webhook@archiver.kernel.org>; Mon, 31 Jul 2023 13:57:27 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web10.8053.1690811846211892377
 for <yocto@lists.yoctoproject.org>;
 Mon, 31 Jul 2023 06:57:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=bdaOWJxM;
 spf=pass (domain: gmail.com, ip: 209.85.221.53, mailfrom: oduconge@gmail.com)
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-317744867a6so4060665f8f.1
        for <yocto@lists.yoctoproject.org>; Mon, 31 Jul 2023 06:57:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690811844; x=1691416644;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=yq0NDKgxYQwboy+NVaQzyYm8xh2si6y5nPD3vyrW6WE=;
        b=bdaOWJxMwZZnveNpKH/+QNR+7XTJy5cyguenxro90BxVXO9GFjYprxmk8P/rTUOG8e
         fTqUdrjM/sA5Q2SKMu/BuR4R6Sm5ZbQMIExjc2uhCOE054jTCHzBce2106Mg30d7vFti
         VJJq0s73rRxpcRwOLyjv5ERwSb0omPw9kJY4ZvrtkL2mENcoswQY0YzbzVl9u8iguDOa
         wvJNlex1DpNmM6WCYFy+vzxk6ZxSJRYdcNr5e1MsNVRnJ61PXUNToTV1QwhqnPgXgmqm
         vRCmNxSGWax2QIdazOYOLbh9bwl+SkkG27VDJNc6mD6b3lSo4wLwxqjljCTWvmTH2mRu
         oh0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690811844; x=1691416644;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yq0NDKgxYQwboy+NVaQzyYm8xh2si6y5nPD3vyrW6WE=;
        b=gi78830jliMAUBJ2BBBmb6aBaTDEVfg0LxtJDNuzZVhzvRzZtVzI9b2bjTpYdiZdNT
         YvRmbl9szHvA/OC0BrXaX+8DV7QkFt3YzBgpvt1TR+aFTybkPQxJ6HlR0GFP8aMfSepK
         FJogEaVinoE8ZLEzINrGrxq2jiDgEW5LkkyDS5NLo/YVre5Ul7fYj47SJxVxYrVBRSDb
         f9QOxJm2hHhGPJaCNsIjFH31enjV4QkmZ+vUGzzvZT1bmu6HfSB9CF771beVZmw91ISA
         Ir6A80mvjAZW/gmpyzn/OxQEE39pgCd9yxnAA/adELUZAGTLDyRFpSfsm/ILuYLQp6ch
         1sFw==
X-Gm-Message-State: ABy/qLar/a6GNmNAs1AcKW6ElcggOBUQucrnUUS4hxdXUENhN4sts4vm
	lLir1kBwyzmVmscbZCg0xSeL99MBdAIa9nSJ7gHxNIjU
X-Google-Smtp-Source: APBJJlFXU8LcZjJn5YiceqUtrS5yMbcOMHVAzbtDMPZ+QaO1JgfTXLAAmQF6M4zdKzSYEMq0o/b4wZEy2gBHMQFehQw=
X-Received: by 2002:a05:6000:11:b0:314:1d7f:a69 with SMTP id
 h17-20020a056000001100b003141d7f0a69mr6522440wrx.67.1690811843983; Mon, 31
 Jul 2023 06:57:23 -0700 (PDT)
MIME-Version: 1.0
From: Orlay Garcia Ducunge <oduconge@gmail.com>
Date: Mon, 31 Jul 2023 09:58:36 -0400
Message-ID: <CAD+JpYZdVinzxFaR++CNr9yJ5Vi_EKxSzQ97XWs-U2J=HAMrJg@mail.gmail.com>
Subject: test
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000057bc930601c8cf0c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 31 Jul 2023 13:57:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60690

--00000000000057bc930601c8cf0c
Content-Type: text/plain; charset="UTF-8"

hello...

--00000000000057bc930601c8cf0c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">hello...=C2=A0</div>

--00000000000057bc930601c8cf0c--

