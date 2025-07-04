Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A398DC8303D
	for <webhook@archiver.kernel.org>; Fri,  4 Jul 2025 21:37:09 +0000 (UTC)
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
 by mx.groups.io with SMTP id smtpd.web10.6011.1751665021309298364
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Jul 2025 14:37:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=OXMj3pXT;
 spf=softfail (domain: sakoman.com, ip: 209.85.219.178, mailfrom: steve@sakoman.com)
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-e897c8ca777so1254642276.2
        for <yocto@lists.yoctoproject.org>; Fri, 04 Jul 2025 14:37:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1751665020; x=1752269820; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ztMF87fmsy+Chc1dZKz6XhE04qNi/ko/Z48Cnoz6fVE=;
        b=OXMj3pXTQXHUMl/Nat1IvMGOoGL/GEWHKQ8qJLu7TfW6R1py/KqmZQeuy/KeVNTUxq
         INM/QcNS6vgvut9HL1VR5YF5+zNDsYVi/pt9J+caowFvIb2syzYZlaf3vqDmVjfmEjYX
         0Csblfq1Zex/r/x6DeMyODdxiwwqI9+2SUTRfvrG1UxcjPbpGpE6nqntj5tVLon7bGJO
         GTZtEY5oIW/NuKf+b5ZtXRJKhRpP37sVCakwuo8I/X3tfh2nksUD96Vipc4p7EVkbXqk
         n7ZHwcxLbSPT0eI8aEOBXe31B2F+KrPBpWpcfMxnXnS7EU1tVWbQvSqyty/gZp6TU0yr
         qsvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751665020; x=1752269820;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ztMF87fmsy+Chc1dZKz6XhE04qNi/ko/Z48Cnoz6fVE=;
        b=feApmXERtY4fliPX8IOCQJ6Gi53zY08+01WseGR0Gq7+ZikwyhT3S0H4mkF2MEWlN5
         fewK6CYefA92pdIESX1yldttXRhD1Nr1JMvWg0fbygAnCRRHOBtN3QMSgOYZTGyaj+Hd
         51DapFY9jyc7Tve2nxWBu7Mdu6dp3OCWuaP9b8G+z8f6JpiXvNum/4W1gEtbEdsLfvs4
         aLZ9DacsUGlOFICttLe5BwL+8WQLxPXsxlFC9Trl/OgUXul6WukeodDS/Y6Xb+IlbElM
         1o5jJH235kmqMBU2n3MRRX0kOMZbM0kRvKYTx2qegy85bhwgLZ+oYm3RGI6kGO4amuje
         XRHw==
X-Gm-Message-State: AOJu0Yy68ZMpmmYBAHVApS0bciG2C3SHYAzkhJyQx4ySwFOiBT+Se8aM
	AEaSXRagep5/bGk2lmF5ZELZrupo1g/KHUSUuZki4trO1ZxRyxypLekz+BzvMSSNXZ38r/uuSOO
	hq/AhdW/Rmj0Y+PlcQH4B06K7jeEudMCpebsIJrhRrLXs1Mcqojc+ank=
X-Gm-Gg: ASbGnct6z/GDmevVspsDli9PfWW0QF7HGtGOhm5cLsz2jgli8Dl5kw5jklo9h0Da1pL
	0o/YpVm7PdlXelDeSHawgz9Q/8Zxhx+YIEMtI7mG/MRe/SnpnUW4RfF1bD9PujKHE6z6cSVk1Jk
	QpvuLlfK1w6BAGjfEenDT5xm6gcv7tukjssASlXH9QnnrBzp2WXQdq5dK+k9TqRpzFZuBCdEXuz
	pE=
X-Google-Smtp-Source: AGHT+IEy5mIQoazChzcXKs20NhM2kQ1WK8q8dBN8tq30wefmS0j2I+rlCMmX7eqBaqqiX+7hECl9mRkxNt/UvA8aHmU=
X-Received: by 2002:a05:690c:700d:b0:70c:b983:f058 with SMTP id
 00721157ae682-7176ca053d4mr1960927b3.14.1751665020318; Fri, 04 Jul 2025
 14:37:00 -0700 (PDT)
MIME-Version: 1.0
References: <01010197d713ba6f-e2642c15-ef64-4874-b369-deb0cd1af702-000000@us-west-2.amazonses.com>
In-Reply-To: <01010197d713ba6f-e2642c15-ef64-4874-b369-deb0cd1af702-000000@us-west-2.amazonses.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Fri, 4 Jul 2025 14:36:49 -0700
X-Gm-Features: Ac12FXx49OIRrzsBgeGM70gNVA_VjVADI-L3tm3mHy-7kG1730YpCxjgmgIxbkE
Message-ID: <CAOSpxdZjgXcab5fQZLCRUKtoYb=T-zKKYxN+tyTj3YJKPtDUkg@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-5.2.2.rc2)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Jul 2025 21:37:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65609

This was an "all green" build with the exception of a failing ptest.
This a known intermittent issue on the autobuilder that is also
present on master:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15419

This is the first time we've seen it on walnascar, and upon running
the test again it completed successfully:

https://autobuilder.yoctoproject.org/valkyrie/?#/builders/73/builds/1843

Since this is a known intermittent issue I think it is fine to proceed with=
 QA.

Steve

On Fri, Jul 4, 2025 at 1:14=E2=80=AFPM Pokybuild User via
lists.yoctoproject.org
<pokybuild=3Dyoctoproject.org@lists.yoctoproject.org> wrote:
>
>
>     A build flagged for QA (yocto-5.2.2.rc2) was completed on the autobui=
lder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-5.2.2.rc2
>
>
>     Build URL: https://autobuilder.yoctoproject.org/valkyrie/#/builders/2=
9/builds/1955
>
>     Build hash information:
>
>     bitbake: 74c28e14a9b5e2ff908a03f93c189efa6f56b0ca
> meta-agl: a6202084bbc77708ff599060a0e2f6afb3c15498
> meta-arm: c63ce2117ed9ad720c61a1e2df5d381ca1ac54a2
> meta-aws: 77bbf7b16d5982d711b3188ada49deea391352c4
> meta-clang: b3e5449f0156884d18c17efff99654cde8251411
> meta-intel: 5640f6592c984f4832ff5f2ed1a35a607e5d21c5
> meta-mingw: edce693e1b8fabd84651aa6c0888aafbcf238577
> meta-openembedded: 3c6844219a69d9ca8cb0f1579114efe9a9e2a646
> meta-virtualization: d20e589758ac40a846a8cd22f3b646ef48d02647
> oecore: c855be07828c9cff3aa7ddfa04eb0c4df28658e4
> poky: 41038342a471b4a8884548568ad147a1704253a3
>
>
>
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#567): https://lists.yoctoproject.org/g/qa-build-notif=
ication/message/567
> Mute This Topic: https://lists.yoctoproject.org/mt/113989219/3620601
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/qa-build-notification/leave=
/12627247/3620601/791647976/xyzzy [steve@sakoman.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

