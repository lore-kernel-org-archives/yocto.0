Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 892E5E6ADF2
	for <webhook@archiver.kernel.org>; Mon, 22 Dec 2025 20:43:38 +0000 (UTC)
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.88480.1766436217001825619
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Dec 2025 12:43:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DuJB5XNT;
 spf=pass (domain: gmail.com, ip: 209.85.219.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-88a37cb5afdso64937416d6.0
        for <yocto@lists.yoctoproject.org>; Mon, 22 Dec 2025 12:43:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766436216; x=1767041016; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2s6klGKy7Stzj+Fj3DHFrH2NBPEeVoyOH/CznYQE5jI=;
        b=DuJB5XNT49wzSQUDPKG5d81lVd4rPMii5uPcCTCvNKJNLk4eKOD/2SBbf7GwXgs54M
         QSERzGcUHC2QXw5C80+ggF8irLlU/CKXFXbKqYwYWVg2O2q+b9NebNbQD3ca/OiDnHAI
         IiSEAzH2hJiMnxhTis1NQ0CZhLyi29ToaLeBw0L0szGv97YyqXw7LPrOSdfX0rdCdJ/9
         aP2ZvQ30Por2unEU8tBpQjA5s/51vlIHfhktJ51jD5ou/uUQQlvk8VuSbAYGUOhTTNW/
         52MBKSyPeROxIboAnJ7SCWPQV9UUZs2fVl5u5AC2z9W4TMeRm238HqC+DPPhL9XOCl5I
         W0vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766436216; x=1767041016;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2s6klGKy7Stzj+Fj3DHFrH2NBPEeVoyOH/CznYQE5jI=;
        b=J1imGyGJ/3gOktpIxGMdoJQUPBE75iZd9db3DS93EiwMZYjnwpHK5vEMKTYpQbvEJa
         MOrJIQwDtJlqjjAKkiIoN4LGeIt+TgxIGs805xiSNzdt6QMRd2ag1aaGvEVVTJlmClPE
         Mr+NKl+w+G04X9misteX3RlPcRig3TQQrE+WBINeZPN1OwYYUJ1PzL7IVe0+83zx++bj
         PN3zCMGtoLs4ODfG0k+KPpSqedZ1eVMHldY5txzh1YrjLaTksX1uC4eODCD9zhW3bvyH
         9WXhEEkAdJG4PLUNTpDs159VC2luTQJkYKjXWHkzfmYkUeSt3Jtv2HIOe4CyDsFcg30C
         BFSA==
X-Forwarded-Encrypted: i=1; AJvYcCUtVqhbDQmWhMcB2GaCFRjW/fA0i0QFXsM8FrB6EojatWvssxnC/a3Q/D38+VhSh5b35YHp1g==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yxn4+sPGb44XfgaeNv9xv96VJovGU5/Y6WiaKjXkUUWsuMFdT+9
	F5+oHxLvo7xbKg4JC5pu7UPVgPghQLArB49NdWfvqToCuHIjrY75zVL8tilRptxnr0z94K1D+MX
	kPgGAX925/5FK9oscASWw5abOrHNBs4U=
X-Gm-Gg: AY/fxX7KgA/uUUi0MIsu2jYaTB6kQlzBAedLGIXXkoGxVpoaX9Z/B4aksIZCtdWT5Yp
	y4GP6uly1R83AloJnedCoygbscfaRzlHHaNm7A1rvncRJEjvK/WmiWeod70Y4SRKpBE3iqkAB+f
	kyoB2sElznfzI8OAyicnVXu2KwYU1y94asFSYFNVg7obvsAVE8hhowftzPcjU/kcGNiCadKHCpq
	yYEfvQetJhQfD4pu2a2M+bceGFziu8Bs8VvKLllJLt7yco8GAoh11gFfPA3iWeBLE9K9A==
X-Google-Smtp-Source: AGHT+IELgtYQd4FvHtJYO6EUI1DAujsCa6Ms1hZlP5Csxg3UTvY00Hy0bhr7mMKnkH8+/KHB4OL73jrYU8zkkUjj+/s=
X-Received: by 2002:a05:6214:27e9:b0:88a:525a:8dbf with SMTP id
 6a1803df08f44-88c50bdc165mr248349506d6.15.1766436215905; Mon, 22 Dec 2025
 12:43:35 -0800 (PST)
MIME-Version: 1.0
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 22 Dec 2025 21:43:25 +0100
X-Gm-Features: AQt7F2qd55JQxIZqPc1RlAr_VaJthCigRdt2wTFfJgVHB6w7mDDCCaBlp3khueA
Message-ID: <CANNYZj8+GHDz27vR81fE2p=gmm7oyNZnjgLyMGoNHugMc9jtww@mail.gmail.com>
Subject: recipe version updates in oe-core: what was left out and why. Help appreciated!
To: OE-core <openembedded-core@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 Dec 2025 20:43:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66120

Hello all,

I've just sent a 114-piece recipe update set for oe-core (only the
first 99 made it through, the rest will be sent once I am unblocked),
and I wanted to summarize what was left out and why.

If you can pick these up and complete them, that would be awesome.

1. perl 5.40 -> 5.42 (with associated perlcross 1.6.2 -> 1.6.3 update)

There's an earlier patchset that was left unfinished (see the messages
for the issues):
https://lists.openembedded.org/g/openembedded-core/topic/116577571

2. rpm 4.0.2 -> 6.0.1

Major rpm upgrades typically hit all sorts of failing corner cases in
testing, I left it out to send the rest ASAP.

3. epiphany 48.5 -> 49.2

Needs a recipe for 'blueprint-compiler':
https://gitlab.gnome.org/GNOME/blueprint-compiler

4. webkitgtk 2.50.0 -> 2.50.4

Fails in qemux86-musl:
https://autobuilder.yoctoproject.org/valkyrie/#/builders/6/builds/2907

Patch available in
https://git.openembedded.org/openembedded-core-contrib/log/?h=akanavin/package-version-updates-later

5. libnl 3.11.0 -> 3.12.0

Ptests fail due to missing kernel modules, noted in
https://github.com/thom311/libnl/issues/448

Patch available in
https://git.openembedded.org/openembedded-core-contrib/log/?h=akanavin/package-version-updates-later

6. appstream 1.0.6 -> 1.1.1

Needs libfyaml https://github.com/pantoniou/libfyaml

Appstream itself is needed by libadwaita, which is needed by epiphany.
We could perhaps try to make either optional.

7. openssl 3.5.4 -> 3.6.0

This one is held until after upcoming yocto wrynose LTS, due to
openssl 3.5 itself being LTS and 3.6 not so:
https://openssl-library.org/roadmap/index.html

Cheers,
Alex

