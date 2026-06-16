Return-Path: <aminkheddache@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7BABCD98E4
	for <webhook@archiver.kernel.org>; Tue, 16 Jun 2026 18:18:27 +0000 (UTC)
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.4475.1781633900741137867
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Jun 2026 11:18:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=Rz5xBOSc;
 spf=pass (domain: gmail.com, ip: 209.85.161.50, mailfrom: aminkheddache@gmail.com)
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-69e489edbf8so3508175eaf.0
        for <yocto@lists.yoctoproject.org>; Tue, 16 Jun 2026 11:18:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781633900; cv=none;
        d=google.com; s=arc-20240605;
        b=VQnetteEQhFcx7aDXq8Xxze833zXp3vbPLR2q3S8FE2/atNP77x858brYcN4/jhqz7
         W75RN/nFVy6/FR4pLYF70W67EZXXc8y20a8TKD5t1kHcDn2k1ub4JUArY4YN/fWeFUMd
         kxAhfx8wG6Pq0GqL73D8AlCrxvey9krMJ9PrFU/o3M3a3E4J4VQdaBaIAD1GnJAQwVQ9
         GmtuqzvpevBCM3QND62IdKwQ/XfRZbH9x9TotIgGtitYM28fUivmNIiQOppPp8mH5pw5
         830zG32aDvZDiXzM3Zw3z1r266qAmPGNJW+e/V0QcpWKorJpIWfZhsSBd+gWBIpoqrgW
         NXZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=wRb/6qRWOb4oQ7ze7sb8e3IW9XFI8TikSVn7j/XHRLc=;
        fh=YWTfNBan/oMsSC72+8TCvCtC1uUYKWtBYoPNISBzTPQ=;
        b=HgXFh0felJ0giKrgtVb5yFTAkjjuzRlkDDCnXn2GlPlDqfwro+wxqJOFjWJmIvM2cQ
         lw6CKeoGJVJkmMaWRZdqBDzzpbS+XPJ0A/0JWn4Re3FFZkpjbgCkkl/qQaN/urJ1F++q
         1nm0UFI06PyXQH6KGnDlACHpJEObVAoba6HQdXRm6r8lReuYetNEyQ4im/SMasxJL9Gj
         BsERr3j3gkTl900Bix1kVcoaVpHMEy2hVgXVNzrf/UIFer/rxE4PttAiTIBHVWKykWau
         kOSdN4qeEzt4uUOVBgJRkSGWJgBv612qddU4nBDppdyF4x2rbFP0k5+yNDHgSvZm20ma
         cu7w==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781633900; x=1782238700; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wRb/6qRWOb4oQ7ze7sb8e3IW9XFI8TikSVn7j/XHRLc=;
        b=Rz5xBOScwbs2OjpoS8kiPCUb8zs2CLWss6+mbat0hFvHcHtnj7dQdGlzKhwu6JBqlj
         8hLv7F6wirXDS9RDyTa2gnyOXNKbOM7iy7bMAFO5Jxw+A6A5IRgQfSxELNrvKO2pGwop
         nGtO/j8J+dHh23WI/kZRX5w/231mbJnUeaqaCVjuxx+8Ahax5iSfCBCpV5aa0QLrLc60
         dvVQN8LBxpbx5LFi9xcxEZBVB4WCgJjhzm0Ms/ykKzksd7RiJAnPGIkbjQqTsYI3XHYm
         hRrvgOkX06fozbGMnj0U1sftZ+t7y1vI8svCaBbyDCxiCLdQdJYqfTjOp8Q8oZT/AVlW
         0Ncg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781633900; x=1782238700;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wRb/6qRWOb4oQ7ze7sb8e3IW9XFI8TikSVn7j/XHRLc=;
        b=qJYYNu3DVn/UDwXJ9cVM7aC73vErT8EiadCtYPFGmHMuYtyrxQxc5kiEtPb0cnsuEx
         KPCIvJO6zuvVDqCyVvvOxKTcMhL3rYA2ihtDU3yzDVxTjM2AWOgd8Gxr8OH7VB4NK8PR
         Guu51YsmKBl1RyMG/Uuon9aLdJEaQFpw3JImPTvT0hjopyLmSZR4XAo1rLPA7Uq8KEOh
         L1/NbmDIDIFsxZ8rcvflhAM7SHr5DZrr5Y+lyO/vid7iN+5gkO+trzdVkIlB0COxu+Ge
         FXYyD0dQnaqCIV2lpw+p9HvlN4pO91Ys7IHTc+aRdKyctMmt3VEEJ6OfgrCq/Epuj9Se
         LkNg==
X-Gm-Message-State: AOJu0YyuP7Pgp/7KujTmvsmWOlFnRyz/ZCinLP5nhe9MhDY2d+e+OSIr
	jEdtGEFNfJYkFS1UGS9fTkFmwt48k5DYkdezeviR2fWWpiVcAa+6/VcK9x4ec844mhEWsZFx4rI
	99iNoxzcENUsBO24AWJ09IqmxfOuGEiEH+qCEgqs=
X-Gm-Gg: Acq92OEbRZ7NuoUqe+0MVqRELI43VC7CYp9A/sahp6OY3hphq3EPUI9YmhPHZqsBlm8
	KnEbZPViSriUeetAXI+X6hGgOEfkcStH+HLePUB4ebM2HqsVSV0eTYgZ4EyNjvM+F2+O9Iuz5hl
	4GT8BFnIvqeHpxOEq2R01KP3gAVeSLtp7KFNig2P+JIiqh2hKtJDUUHl26RM9ksu0uTDnBdrzmT
	9YuETnHuIVSySLAC4fVKsDwfL7TOxH6L2PRD+qIFtFoaPTstpcI0yJa5pU/kV9pkMavTkr0T7gL
	UHk/jwfVJejQzl1WHmfqo9PU3I9vfXRinxaODhKQjQ==
X-Received: by 2002:a05:6820:4d09:b0:69d:9e3d:4e19 with SMTP id
 006d021491bc7-6a0b607e970mr273656eaf.30.1781633899899; Tue, 16 Jun 2026
 11:18:19 -0700 (PDT)
MIME-Version: 1.0
From: amine kheddache <aminkheddache@gmail.com>
Date: Tue, 16 Jun 2026 20:18:08 +0200
X-Gm-Features: AVVi8Cclt-BJIoon23HgEFd7dZpopV1muwBWXyD1UVJv18f050JiUN9i_4VdVwA
Message-ID: <CAKH+xAEb+FmxjnkMj9D-i5N3427_QLr8h1h7Z7kAJxKx_fX_0Q@mail.gmail.com>
Subject: Pterocos - A free, browser-based code editor for quick prototyping
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000b92f79065462f72a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Jun 2026 18:18:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66604

--000000000000b92f79065462f72a
Content-Type: text/plain; charset="UTF-8"

Hello Yocto Project community,

I would like to share Pterocos (https://pterocos.eu.org), a free online
code editor that runs directly in your browser. It requires no installation
and includes an integrated AI chat assistant for debugging and code
generation.

**Key Features:**
- Supports HTML, CSS, JavaScript with live preview.
- Supports many languages (Python, Java, C#, Rust, PHP, etc.).
- Powered by the Monaco Editor (VS Code's engine).
- Local storage for project persistence.
- Open-source and free forever.

It is useful for quick prototyping, learning new languages, or sharing
runnable code examples in documentation and discussions. Its "no setup"
nature makes it ideal for quick demonstrations.

I would appreciate any feedback from the Yocto community.

Best regards,
AmineKHD

--000000000000b92f79065462f72a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"rtl">Hello Yocto Project community,<br><br>I would like to shar=
e Pterocos (<a href=3D"https://pterocos.eu.org">https://pterocos.eu.org</a>=
), a free online code editor that runs directly in your browser. It require=
s no installation and includes an integrated AI chat assistant for debuggin=
g and code generation.<br><br>**Key Features:**<br>- Supports HTML, CSS, Ja=
vaScript with live preview.<br>- Supports many languages (Python, Java, C#,=
 Rust, PHP, etc.).<br>- Powered by the Monaco Editor (VS Code&#39;s engine)=
.<br>- Local storage for project persistence.<br>- Open-source and free for=
ever.<br><br>It is useful for quick prototyping, learning new languages, or=
 sharing runnable code examples in documentation and discussions. Its &quot=
;no setup&quot; nature makes it ideal for quick demonstrations.<br><br>I wo=
uld appreciate any feedback from the Yocto community.<br><br>Best regards,<=
br>AmineKHD</div>

--000000000000b92f79065462f72a--

