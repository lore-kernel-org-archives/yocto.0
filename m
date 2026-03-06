Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64F29FCC05E
	for <webhook@archiver.kernel.org>; Fri,  6 Mar 2026 18:42:17 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.1922.1772822533007915640
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Mar 2026 10:42:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=haeK31dt;
 spf=pass (domain: smile.fr, ip: 209.85.128.49, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4836f363ad2so111548815e9.1
        for <yocto@lists.yoctoproject.org>; Fri, 06 Mar 2026 10:42:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1772822531; x=1773427331; darn=lists.yoctoproject.org;
        h=subject:to:cc:from:message-id:date:content-transfer-encoding
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Jb7ISJV8sF6fPWe9IkXmy5KxdQQNMf8VFK8hF9EsnlE=;
        b=haeK31dtGfaoGfMmW4c0u+0iNXg9xsZ09JEjNaNTJIxdEsvE6TeHfxaJbB6jChr2+Y
         YtuJtsYlDINUU58xPkIwoat76u2s2ItR5BDB5YKaEjQaQ8BUW7aqIKsEvcMEZTXPrvuO
         tIUDZSyMwdUvktIq6DAXK2JNvRCpLLf7L7m9M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772822531; x=1773427331;
        h=subject:to:cc:from:message-id:date:content-transfer-encoding
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jb7ISJV8sF6fPWe9IkXmy5KxdQQNMf8VFK8hF9EsnlE=;
        b=uPqTc9QkTmlYq4WqRJXW9bJABwWyPFuyYaPUPUMNQUQwYxZH1bQQjxfGdig60yGhbW
         3nP93PUTfqWe56+o0PsTVhgTVesI+cNT0HcSgxbN6MHCphveakpZafsTu61P7LST8yuc
         HYgBgTDAFjEu9PJkIB9WBlVdngpQA7lb2W+hfAr6Qdmf0ZC6gtaGikKcncXhl+/D0+AF
         xVWT9b/3R1FfyeBuIJOC3mXjI2FHN7czhJh2oxlzBdpKUvwXCx3ZLT0ELQ+8Sr6QuKMR
         7ziv2jg42buUZ44TErmES0gRL8bqxDQuy/JxPSag6y5J+STxu+S0ZVOiBUEwjdt2iUlp
         kvDA==
X-Forwarded-Encrypted: i=1; AJvYcCXjHC+EdFUqWQ5lLDel9WZTvMCzwTgvbeaVDkyXx1fK7l2KzLvEXFcTW1+8gxY70aRpuRilUg==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzX+ogtXO6AzwDcZKf0+BhseeaqEUOJsITJPfBGvE68KBkLCoxj
	XOqht/rfN7Jn0G8SPdZpU2oaeDugMad+2hxLKv+Pnoz3BF4OzyifpB6Z9r8tVdMSnPc=
X-Gm-Gg: ATEYQzy7xuNh/WqHG10NRtT8asHLIiT5RuMiSF1nabBkhC1j/mBG1U0xpzlJOAJ5eo9
	3LTdabZ7/od4dFlZYlWxPPsoGbvx+ptYgdFAdkw4Gep4AuyAeDZhr9fqacyhPhmQXjaZookpMAm
	sMidAecc7+ky4lVZ2qG7rN/hEb6WU7OE6VBdtuRN5UrIz+Dk8GCcKS7AscoRCR0d1p7t3bkjOGM
	4o1jv7Ah4QCW8MFJWi45Pz/f+aHelhk2D/qUjYwYlYrMKlZERWdEqntxqhiBm5slZm3ouhg2xAF
	74tyimw/PEkuO5Hl3CJpRc302Nmbquy2/TP2IQj9n+XlJTUmVknQLxQv1LTGtfS/6YLIEcWM2g1
	Iy/UKI8QJlmFM0yWhWv6bZYu3aD9LB5TX0mG5rM3fgaUVCuWhbl+0UZ6bCEkgOABcckeGgjo7DC
	MhfzqtKtFdMA+Ecy8K1rTeu9wD5QZ/2XRd2g==
X-Received: by 2002:a05:600c:8a1b:10b0:485:2af3:3f91 with SMTP id 5b1f17b1804b1-4852af3406emr16878535e9.14.1772822531345;
        Fri, 06 Mar 2026 10:42:11 -0800 (PST)
Received: from localhost ([212.133.41.103])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485237f2d2bsm24717255e9.4.2026.03.06.10.42.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2026 10:42:10 -0800 (PST)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 06 Mar 2026 19:42:07 +0100
Message-Id: <DGVX4XQ6VLWT.1HOMXA78ZXLBG@smile.fr>
From: "Yoann Congal" <yoann.congal@smile.fr>
Cc: "Marko, Peter" <Peter.Marko@siemens.com>, "Shaik Moin" <moins@kpit.com>,
 "Pratik Farkase" <pratik.farkase@est.tech>, "Naman Jain" <namanj1@kpit.com>
To: "OE-Core ML" <openembedded-core@lists.openembedded.org>, "Yocto Mailing
 list" <yocto@lists.yoctoproject.org>, "OE-architecture ML"
 <openembedded-architecture@lists.openembedded.org>
Subject: Clarification on ptest/selftest backports for stable branches
X-Mailer: aerc 0.20.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 Mar 2026 18:42:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66307

Hi everyone,

Following recent discussions regarding merging ptests in stable branches, w=
e
are clarifying the policy for backporting ptests and selftests to stable
branches.

(I'm transcribing the Yocto project TSC decision)

Moving forward, we will apply the following criteria:
* Backporting new tests is acceptable only when they accompany a
  corresponding bugfix.
* No standalone tests: If a test case is submitted on its own without
  fixing a specific regression, it will be rejected by default.

The rationale is twofold:
1. New tests on stable branches add limited value if they aren't targeting =
a
   known, occurring issue.
2. AB-INT: We cannot afford additional intermittent failures.  We need to
   minimize the risk of introducing noise into the build results.

Regards,
--=20
Yoann Congal
Smile ECS

