Return-Path: <anakin@childerhose.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77927CD6E56
	for <webhook@archiver.kernel.org>; Tue,  2 Jun 2026 02:28:43 +0000 (UTC)
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.15940.1780367322088190365
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Jun 2026 19:28:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@childerhose-ca.20251104.gappssmtp.com header.s=20251104 header.b=IEv5t0jv;
 spf=none, err=permanent DNS error (domain: childerhose.ca, ip: 209.85.210.49, mailfrom: anakin@childerhose.ca)
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-7e6128bd9b3so5585543a34.1
        for <yocto@lists.yoctoproject.org>; Mon, 01 Jun 2026 19:28:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780367321; cv=none;
        d=google.com; s=arc-20240605;
        b=Sv5TAis6+cIQhwt6oPRAKgGztu78K06gw4eN/4iOshnmIWSZalcvlzFClpowr97SSC
         7LWWKMA8gnab/kwQbHK8YWz+e33n/00lYDNonnlhS64QJE2Q3/9UKeOulBQ8Jbv2rYgf
         mmif2GjQQMBEbqNkHLXcElyqWbj+pZ3HgMmx6jOddx+G3S6JbKKXWWRlWoM+u/KmYifI
         CF9XblQUPaDfOqwCpeyr2hODr4B1SkVJTYJCbkhzKybYyD4i6x62o+ru+3IGYPF1ogRk
         s0s6XgDa030Xvw6y5VHmqpSllpA91Yc8vatSr8/y9DnVa7VT7PjeKN7ZlrbE4qgWjyjr
         YJwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=TTdMYMy4muJuz+OWFvISUWbhc+/x69jJWiDnWUFTXE0=;
        fh=gaHWFzVtu3p+JfCKPQnio9n4RIZglU7QiF7v1QFcvSI=;
        b=FsnnmRmL9l/EMv2XZ9XCmM0fCR+xAFvmyOso03WCDEUau2TA4DzCAvi5Lrc9jQdYTb
         kO8EOmeILwdEbQkpfn7waOrZD12IU3PKOIfxHa33NMTqaEhVu8XxcjxLqia6Evt4SaYR
         X1ESNGj/E+7uhvTNTack8FwrKhVWID9NuT7OZ6CfmCyGdFKxD+5naTwqXezMfHNsJ53m
         ZgA1/2CUmHCAsbMs82dTqhxqizQ/5KP4Kjl98pqYBOKEUlUHWdcJrPhV0GzSlyc5nfep
         MEX6mByHv30iHLq0ocWJRWW4Nx5ZN6Wf4rQS0OG5AJhevazN3ASbDJF9+y1VXwhPf/ht
         X3Kg==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=childerhose-ca.20251104.gappssmtp.com; s=20251104; t=1780367321; x=1780972121; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=TTdMYMy4muJuz+OWFvISUWbhc+/x69jJWiDnWUFTXE0=;
        b=IEv5t0jv4BluSz+H2lV+dFYoTZ6GVT2V5lsqagsH+XQ+G4I6yz5zZ5PNrpQlITqdWk
         xjWH2yNsF8AiOskmXquv3wjuWW2Zl4K2j1v3sbxft/6mJPwDcZKlhg4VDA7DgInTvtjE
         ZLdBe/fAdq/w3ysSyjNiEzkwM4335IDwuFUTDiO6Cxn6tMPBtpfQZnd+3NGBMXMhojmZ
         FhbN0Cbcqg0doGmf6IYGNLbKDCa8pQiNR7e6R04uqov4hLFLJEOq8wv8qHaS4ZqwNvc4
         r4vmE+Xa4fS7uwP7xY1IfFBSqWRk1yM3ZPu0cx96vXi+ridAGEX/Wp+vA2M8txnk2A0o
         tdrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780367321; x=1780972121;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TTdMYMy4muJuz+OWFvISUWbhc+/x69jJWiDnWUFTXE0=;
        b=ehS7SnTb4aUaXddvKhNkKKNCq59LCIrQN7/Xk1efmpd3g8kF2JlpXri3QEgGX4lqCT
         XhMTF/bC1h92jU3hB3pP+57qEmdZviGpdj5RY9oLrKXBCn+C1J/Pq5zGqeZIEFUTlKgK
         59RBMRamqVEvEXpH9JPf9t4wGwWluSHz365HmlLWBGj8P5bEBwJTrpwwszOD/R/ruvMM
         UwxyGw/ubGfQFvUAYOXfkP9Mt8pzc9y4wl0YSFZ2XP1mrFiEt1eRuHfzpqsOGlL4ANC6
         pYwoisrzcPRaAoFPPzsg0+P66BylVU+wVJP297G7cKZFl5DzD5yElNAVSurzc9xbeAjP
         +7eQ==
X-Gm-Message-State: AOJu0Ywn1/Xd+X6MSgdxM19tdgD78+Ubf/CpZIhzThWc/S2B6CcVi/3j
	jroKfUkjZYsdDYjk3OSmNXmoYFoIVI96MXVDhHEXaMG2liT0v/BOuA4gE62Tw50bT5SMSNGAXKA
	zhP/Zyx5RHv7zVhygTuSiUk4+agzOu0FDh13WUOSW6smSp02i3xmV6ONslA==
X-Gm-Gg: Acq92OELh7seKcjxqmvlCxTkFUQgBaan33iOFuJAV7JVs37b4ls5suJgbvL31LyE9zh
	iW6cg0QtSE3ZSp08qgdgUD/0VU1XaqCkgJ6B9rgnJqvvBkE5JIoQTJR/rB21QQbwCTRqeaS/mlP
	azu6bfxKY1fEi/IR4+AqrgOKwzqTXwSgK7oC19YkWMDOGR2IHg/YHmhzUUNdV/WNsP6QovtZDcr
	SdoI+iwPDxg+X4NCqZgta5aWm2VzRfC11HZ/hRNlpysXp2WVJT8SC3VGZ8As32wZ2Io4GZ63rDz
	gTgTmEObJSe62BUx0jv0x6ctHgEpZywtUhRaYARy58S12TzkypBY6AWitm1LNRwLfn15pGAnoef
	rraZ7ukmolko7uPKzsJCF+e9tS0OtkN1YXZvz
X-Received: by 2002:a05:6830:6402:b0:7d7:570b:6800 with SMTP id
 46e09a7af769-7e6a1e131e7mr8685605a34.23.1780367321283; Mon, 01 Jun 2026
 19:28:41 -0700 (PDT)
MIME-Version: 1.0
From: Anakin Childerhose <anakin@childerhose.ca>
Date: Mon, 1 Jun 2026 22:28:30 -0400
X-Gm-Features: AVHnY4LArJiwen_rGT4Ah6t7mDpW5ROKeVd8txzoFMMOHqRfzpQLwP7Nss7_dDA
Message-ID: <CAHMZgtkHFgJSQxLMcWkmLgxFXuFM8S3CT=X-T5xAN-axpZA4Gw@mail.gmail.com>
Subject: WKS Language Server + VSCode Extension
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Jun 2026 02:28:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66583

Hello everyone!

I wanted to share with you an application that I wrote to make my life
easier interacting with wks files in yocto.

I created a language server and a VSCode extension for providing in
editor documentation, completion, diagnostics, and goto definition for
wks files.

The language server and VSCode extension is available on my github at
https://github.com/anakin4747/wksls.

The extension is not currently in the VSCode marketplace but a .vsix
is available on the github releases at the same repo (note the
language server isn't written in typescript so it still needs to be
installed separately from the .vsix).

I hope you find it as useful as I do!

Thanks,
Anakin Childerhose

