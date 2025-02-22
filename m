Return-Path: <info@benjaminmarty.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0ADC021B2
	for <webhook@archiver.kernel.org>; Sat, 22 Feb 2025 14:27:23 +0000 (UTC)
Received: from kiwi.benhosting.org (kiwi.benhosting.org [109.230.227.26])
 by mx.groups.io with SMTP id smtpd.web11.46984.1740234434978076817
 for <yocto@lists.yoctoproject.org>;
 Sat, 22 Feb 2025 06:27:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@benjaminmarty.ch header.s=2021 header.b=RTazTeIG;
 dkim=pass header.i=@benjaminmarty.ch header.s=2021 header.b=RTazTeIG;
 spf=pass (domain: benjaminmarty.ch, ip: 109.230.227.26, mailfrom: info@benjaminmarty.ch)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by kiwi.benhosting.org (Postfix) with ESMTPSA id 8312FABAB43
	for <yocto@lists.yoctoproject.org>; Sat, 22 Feb 2025 15:27:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=benjaminmarty.ch;
	s=2021; t=1740234432;
	bh=b1MRIbcxNBL18FQ3RPM9dXvOGHay0toOV1LiMUWV5Go=;
	h=From:Date:Subject:To:From;
	b=RTazTeIGokcCyRtqj7zmGI7E5U3n3MOIazi0gfWzAYJBhHs1HW6+ZbwuoVXMkfjdA
	 8CcDe4qccSVdqMJsH0IZogxgAgyihWZTupQ/TczoK+oOC/lXwyB9R6ML171zPqiSy4
	 5IDGN9kGnc1eWLjiG8ibkLLdxsXluTnlK8n6gWpDHfu8cxD2tOQ2PQ9abqRbnT/ow5
	 +UK+hJjnaAT/AcgBYZWex+T7EKPPnYYf5kbladWyLm8F9T5DuMwhwBcEYrZLRHfN01
	 ajZRYQmxABsWRo5a5H51v/3sK8LtIYQxCjUkD6UWuySvWC4Oa05b7aOC+4RhQCChH9
	 LROsqOOVZmo6A==
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=benjaminmarty.ch;
	s=2021; t=1740234432;
	bh=b1MRIbcxNBL18FQ3RPM9dXvOGHay0toOV1LiMUWV5Go=;
	h=From:Date:Subject:To:From;
	b=RTazTeIGokcCyRtqj7zmGI7E5U3n3MOIazi0gfWzAYJBhHs1HW6+ZbwuoVXMkfjdA
	 8CcDe4qccSVdqMJsH0IZogxgAgyihWZTupQ/TczoK+oOC/lXwyB9R6ML171zPqiSy4
	 5IDGN9kGnc1eWLjiG8ibkLLdxsXluTnlK8n6gWpDHfu8cxD2tOQ2PQ9abqRbnT/ow5
	 +UK+hJjnaAT/AcgBYZWex+T7EKPPnYYf5kbladWyLm8F9T5DuMwhwBcEYrZLRHfN01
	 ajZRYQmxABsWRo5a5H51v/3sK8LtIYQxCjUkD6UWuySvWC4Oa05b7aOC+4RhQCChH9
	 LROsqOOVZmo6A==
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5e04064af07so4067367a12.0
        for <yocto@lists.yoctoproject.org>; Sat, 22 Feb 2025 06:27:12 -0800 (PST)
X-Gm-Message-State: AOJu0YxRxIgzDv5hfhZ4G6knn8M5Lj0neA1+/eUDEOb0xDHRQLTyOwD2
	iuSNGbwTnjMESTOhED8noIKCliNPTHeT/eI9CZIN+aOi9zw701bQlfPsGnAiohgnqSUJAh3Yctb
	0V3UzoLpyguijRgh554lEyrF4ZRM=
X-Google-Smtp-Source: AGHT+IH/HH7XRJ2dqF2O0wMVjTg5Dx4YgP+6ZQRI+yDh413vICrwEuSvw1LiFxzk7MbGlaNs2cENORToy9dHQInz8Fc=
X-Received: by 2002:a05:6402:4313:b0:5de:4b81:d3fd with SMTP id
 4fb4d7f45d1cf-5e0b70fa0efmr6607124a12.13.1740234432292; Sat, 22 Feb 2025
 06:27:12 -0800 (PST)
MIME-Version: 1.0
From: Benjamin Marty <info@benjaminmarty.ch>
Date: Sat, 22 Feb 2025 15:26:56 +0100
X-Gmail-Original-Message-ID: <CABSdY3KCUvtToyrdUU_sm4rbrrTXY9RS4r85Qg64MMPo97EnRg@mail.gmail.com>
X-Gm-Features: AWEUYZk7CcZD2P1kywO567SVzzNWb50hNWMBsL1dfuAPvBS0JWJ5PaqWTlmp9Q0
Message-ID: <CABSdY3KCUvtToyrdUU_sm4rbrrTXY9RS4r85Qg64MMPo97EnRg@mail.gmail.com>
Subject: [HELP] Raspberry Pi CM4 sometimes hangs during reboot
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 22 Feb 2025 14:27:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64851

Hello

I'm using the meta-raspberrypi (scarthgap) layer on a Raspberry Pi CM4
with an A/B root filesystem setup, updated via RAUC. After completing
an update, RAUC triggers a reboot using the standard reboot command.
However, the CM4 often freezes during shutdown or the subsequent boot,
requiring a power cycle to recover.

Symptoms:
- The system hangs after systemd-shutdown messages, sometimes showing
a kernel backtrace.
- The system sometimes hangs during booting between systemd messages,
location is random. No kernel backtrace or other error messages in
these cases.
- The kernel backtraces vary from time to time and across kernel
versions. (6.6.22, 6.6.30, 6.6.70, 6.6.74)
- This issue has not been observed yet when running Raspbian on the
same hardware. (without RAUC)
- Unclear whether the kernel stops entirely or if it's a systemd-related is=
sue.
- The issue occurs on both a custom carrier board and the CM4IO carrier.

I'm currently running a stress test where the system repeatedly
applies RAUC updates and reboots every few minutes. Under this setup,
the issue occurs every few days to weeks, making it difficult to
reproduce consistently. Because of this, I=E2=80=99m unsure whether this is=
 a
fundamental issue or just a rare edge case.

Has anyone encountered similar behavior with CM4 and meta-raspberrypi?
Any suggestions on debugging strategies would be greatly appreciated.

I=E2=80=99ve also started an issue in the meta-raspberrypi repository:
https://github.com/agherzan/meta-raspberrypi/issues/1409

Thanks

Benjamin

