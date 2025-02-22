Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36300C021B2
	for <webhook@archiver.kernel.org>; Sat, 22 Feb 2025 16:41:04 +0000 (UTC)
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
 by mx.groups.io with SMTP id smtpd.web11.49924.1740242463557476494
 for <yocto@lists.yoctoproject.org>;
 Sat, 22 Feb 2025 08:41:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Cjtgv4Mk;
 spf=pass (domain: gmail.com, ip: 209.85.210.52, mailfrom: raj.khem@gmail.com)
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-7272f3477e9so999908a34.3
        for <yocto@lists.yoctoproject.org>; Sat, 22 Feb 2025 08:41:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740242462; x=1740847262; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qfWG9cKiDjF35UT5TaetCua0j0p210N9npY1YYyFyGI=;
        b=Cjtgv4MkKQSO0Qs4z1dsSzKTdhc9cjOnlAXLTRqltm/z79q/oY/+d8YeziU2Yi9Vjf
         viryyFk5T+jYnGmSXPktTBii+cakDEFcgsg2w8Zrkg2tlFAuG1QgI5ks+RtHn0+FzP3Z
         ATqwwtpLn/uoZUIeErN1j3+wMXZmO+psqJbPR89wiCZpn23fBLvB19ulr9rYcIPhsBUz
         AdZ4QZ2F0qnZVnQzdRSpXyN7eM/trSisX0p3b/u6T2Hs1QMqdvYZdRGJ3EH4tZgaQU5l
         XXNxB2pGkxoxIpcGTzNA/T1tZs89MTMiJ09Wviy3Kn5HCiXQyIM4Bw87pOhnZOnDa/8T
         LmPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740242462; x=1740847262;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qfWG9cKiDjF35UT5TaetCua0j0p210N9npY1YYyFyGI=;
        b=HRd0pPGNxhr4VsGeuC4OdvvNm5QpGcJ8RA1L+74ohQDw1/VkqyarbofaEQy9l4Wrba
         uKHIYQ3xtp9GEA8q/KSgtfJipQO8W5tCQmo0RzyumRez7MQNHDJlD93FUSPD3pUMvik+
         pFk+1L62hsMBLVWoMB8tJi3+aODFN3eWeBFgr1il7LcpEqaqA3AYEdWsRbU1TkFD9znx
         Iu/p8Zose3qcO2+wW0tW+8KOmA9/A+mHHz++6N3hT7PLN77exdOw4bQYRhTKprCRlSrY
         YPl9eTT4oGLq/9m8ioqzM0Q6Vn2+AgwVHlAZ6xqvkLsXtqFQo5k3ZnZexeELDLn4SC9s
         87fA==
X-Gm-Message-State: AOJu0YxOEPZa5Z4CTQ/fL9IDDd+joY6CaiPj/vcp+HubyzS9O3XAjR4d
	hqNxn/zKyouuGecW8vfERQXHQy1MvS69Fwshjk4OyEv9pLcHFkeWUdqzqbCS52kcjOhowOz2xLt
	kBVU5ss5lEBP5Sh32LDDHOj30z/hR/qodAdk=
X-Gm-Gg: ASbGncvWOfwYTkDmGU8iyGCk7I/2aD4/xlax0nOTjV0khodQoliopkc9SiIBCEIeDX1
	OsJgQEMD9oy955oEqfu7b9IDmBPzIw/OUaa7o2W9NOtVRAF/L1XbjBkIFm5WjsIPEh9ttN930PO
	u0wO2xVFBkwL0qH6+Mg2R/bcwpa/StXgEcjKNnx8F6
X-Google-Smtp-Source: AGHT+IG7lrYj/+glnztRBvp9uOnimGqR3d4eyfCt/XU3w+Cz3/BBZkehsb41evBVg9i5gvrGDDadGYRloN0AZF/6Nwg=
X-Received: by 2002:a05:6808:221f:b0:3eb:4f4d:c292 with SMTP id
 5614622812f47-3f4246d8660mr5085294b6e.18.1740242461968; Sat, 22 Feb 2025
 08:41:01 -0800 (PST)
MIME-Version: 1.0
References: <CABSdY3KCUvtToyrdUU_sm4rbrrTXY9RS4r85Qg64MMPo97EnRg@mail.gmail.com>
In-Reply-To: <CABSdY3KCUvtToyrdUU_sm4rbrrTXY9RS4r85Qg64MMPo97EnRg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 22 Feb 2025 08:40:36 -0800
X-Gm-Features: AWEUYZm6mvxKjLswzOHcsxkbeLMPY3Qph7Qs1hiTxsUuWtlVq9Rmi0HAVaB-yPg
Message-ID: <CAMKF1sp-_u+rZutauNXDovm_yAH_TMyocPKxNQ7t4Bwbuy6T=w@mail.gmail.com>
Subject: Re: [yocto] [HELP] Raspberry Pi CM4 sometimes hangs during reboot
To: yocto@lists.yoctoproject.org, info@benjaminmarty.ch
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 22 Feb 2025 16:41:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64852

Hi Benjamin

On Sat, Feb 22, 2025 at 6:27=E2=80=AFAM Benjamin Marty via
lists.yoctoproject.org <info=3Dbenjaminmarty.ch@lists.yoctoproject.org>
wrote:
>
> Hello
>
> I'm using the meta-raspberrypi (scarthgap) layer on a Raspberry Pi CM4
> with an A/B root filesystem setup, updated via RAUC. After completing
> an update, RAUC triggers a reboot using the standard reboot command.
> However, the CM4 often freezes during shutdown or the subsequent boot,
> requiring a power cycle to recover.
>
> Symptoms:
> - The system hangs after systemd-shutdown messages, sometimes showing
> a kernel backtrace.
> - The system sometimes hangs during booting between systemd messages,
> location is random. No kernel backtrace or other error messages in
> these cases.
> - The kernel backtraces vary from time to time and across kernel
> versions. (6.6.22, 6.6.30, 6.6.70, 6.6.74)
> - This issue has not been observed yet when running Raspbian on the
> same hardware. (without RAUC)
> - Unclear whether the kernel stops entirely or if it's a systemd-related =
issue.
> - The issue occurs on both a custom carrier board and the CM4IO carrier.
>
> I'm currently running a stress test where the system repeatedly
> applies RAUC updates and reboots every few minutes. Under this setup,
> the issue occurs every few days to weeks, making it difficult to
> reproduce consistently. Because of this, I=E2=80=99m unsure whether this =
is a
> fundamental issue or just a rare edge case.
>
> Has anyone encountered similar behavior with CM4 and meta-raspberrypi?
> Any suggestions on debugging strategies would be greatly appreciated.
>

There could be general unpredictability in boot/shutdown sequence.
I think you might want to run a reboot cycle test, e.g.
https://bec-systems.com/942/running-a-reboot-cycle-test-shell-script-with-s=
ystemd/

If the reboot cycle is still running after 24 hours then you can
deduce that the issue is
to be looked at further in relation to RAUC update or other subsystems.

> I=E2=80=99ve also started an issue in the meta-raspberrypi repository:
> https://github.com/agherzan/meta-raspberrypi/issues/1409
>
> Thanks
>
> Benjamin
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#64851): https://lists.yoctoproject.org/g/yocto/messag=
e/64851
> Mute This Topic: https://lists.yoctoproject.org/mt/111325709/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

