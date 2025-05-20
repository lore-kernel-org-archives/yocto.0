Return-Path: <mohammad.rasim96@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F159CC3ABDD
	for <webhook@archiver.kernel.org>; Tue, 20 May 2025 17:11:53 +0000 (UTC)
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
 by mx.groups.io with SMTP id smtpd.web11.26604.1747761108132266937
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 May 2025 10:11:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=U0haiceJ;
 spf=pass (domain: gmail.com, ip: 209.85.160.51, mailfrom: mohammad.rasim96@gmail.com)
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-2db2f23f174so2336960fac.2
        for <yocto@lists.yoctoproject.org>; Tue, 20 May 2025 10:11:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747761107; x=1748365907; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=szI+2ShewBbQ3Z+kUtcOL/k/6NP1rUmpWWzGULWDt9o=;
        b=U0haiceJAmCdrGZ4ja9dtGgxyioxrwkJECcWWqr6sleZ3akR5m85eJfyn8sg72u8x0
         iAqyT5KFySbVhU7XXsMDYY4KvUrs5hnHUVdwzpFRDWOSPd3k6FyLzZljcIik6gVqA2K1
         gufxTak8eQDoFxjMsmSRa2qaP/RLALGNgVRL3o+yCwZaX20eN2cHxbAX0by8fOrQ+h1Q
         xpCfI23s0b4pOydpLkpHeLcw2od9l/qSYEOeN4IvZHEpp3zQ7wEIcf18eOh+Na5W5m7y
         1gkNbNkaOWewvRN9aMXVOl2s3apGGW2rxGUmuMd955D8BuVAtuYxWVc95AO1hOUyNBjd
         nWjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747761107; x=1748365907;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=szI+2ShewBbQ3Z+kUtcOL/k/6NP1rUmpWWzGULWDt9o=;
        b=alz87tLolgO6gjgiLF8fzDVt6lb99r5iNLOTH2bPKCtH7oXxNdJuPfqZRkoti3xw1y
         80wXyXGs/y1kk+oH0skoBCUgd4VjCWJnckhCZyoER95m5N5ucp9QSXP1IpBtpnt5ru9d
         lWVnll7iTs1SR+ab/Zw1JpvHOsAjD5gh3OBitopnVKPSs4yhc9Q72BRVggrb8UiFwTKm
         kuZBgiwFn/pY7Pg9N//6cSPc7ffJQLEV8a8ktNjl2Al6Apdf+T8J4YqNdcTGjZme/r5P
         qZALbJT1R14zogqpChZ20Q2MHAVTq/2qeZwGMuDDABfmmnP5b2eYGSEM/jlmn5G6IIm/
         z4uQ==
X-Gm-Message-State: AOJu0YzGaHULdyb6lof+7Oyik34R5jQrupyOimUpcT8ICW6kBS/y7RJ1
	TwJNhurF0UB1pY7gxIfM+fMR7yfcL0Zh8PXh6nJWEVPGcVJ7FeJriikLOHxRia0B/pbYtdcuakA
	4TXS1fzwmW1bjpae+YeYagPGJJ/jOVxcAyWl7Np0=
X-Gm-Gg: ASbGnct3fi1Q5WxFKRrd9QPJkxkz6KbankJB8BRdsuYRUd+2929m2e8uD+VSKVCWcXX
	FszhfcEFPjMGBKZKkdiKFi6CVO5vXHe5jWQLUPvM2kyjGXaaOVAX9kzK59V8NVgUWv0FLrLMZmx
	QBW3E3xSCVOEL7I7KvjnGLKTgtACFL3dAF
X-Google-Smtp-Source: AGHT+IEpm8DbhEpF+lXVE/60NOfEFrZ0sfvYKKeoeQKRk6YeaaX6s6vjnVCIhlOKe4E9FPKuXo1eK/ygNBVzLs+T0OI=
X-Received: by 2002:a05:6870:8301:b0:29e:4340:b1b with SMTP id
 586e51a60fabf-2e3c1c026eemr11396171fac.9.1747761106836; Tue, 20 May 2025
 10:11:46 -0700 (PDT)
MIME-Version: 1.0
From: MOHAMMAD RASIM <mohammad.rasim96@gmail.com>
Date: Tue, 20 May 2025 20:11:34 +0300
X-Gm-Features: AX0GCFsbef5ByWgLoxSq6st00PvXhwFzOlwBMRbtgRbgs8HX7QJQ7sWT40q9tnA
Message-ID: <CACq04CGjYASSJR6ie3FFGs-BgJLZipzrX8ozBmzrBSrAb+ODyA@mail.gmail.com>
Subject: Only build the packages that needs rebuilding
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ece2570635945709"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 May 2025 17:11:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65375

--000000000000ece2570635945709
Content-Type: text/plain; charset="UTF-8"

Hello,
Is there a way to make yocto/bitbake download prebuilt packages from a repo
and only build packages that has a modified recipe or the user request to
forcibly build?
In alpine linux for example when you build an image you can make the build
system download the packages from the alpine project repo (or another repo
if the package is hosted elsewhere)
And only build the package that doesn't have a prebuilt version or whose
recipe (called APKBUILD in alpine world)

This makes building a customizable image very fast and also reproducible.


Kind Regards

--000000000000ece2570635945709
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello,<div dir=3D"auto">Is there a way to make yocto/bitb=
ake download prebuilt packages from a repo and only build packages that has=
 a modified recipe or the user request to forcibly build?</div><div dir=3D"=
auto">In alpine linux for example when you build an image you can make the =
build system download the packages from the alpine project repo (or another=
 repo if the package is hosted elsewhere)</div><div dir=3D"auto">And only b=
uild the package that doesn&#39;t have a prebuilt version or whose recipe (=
called APKBUILD in alpine world)</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">This makes building a customizable image very fast and also repro=
ducible.</div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div><div =
dir=3D"auto">Kind Regards</div></div>

--000000000000ece2570635945709--

