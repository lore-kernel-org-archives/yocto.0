Return-Path: <rybczynska@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94944109B48B
	for <webhook@archiver.kernel.org>; Tue, 31 Mar 2026 15:07:23 +0000 (UTC)
Received: from mail-dl1-f47.google.com (mail-dl1-f47.google.com [74.125.82.47])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.22768.1774969642801232596
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Mar 2026 08:07:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=JycwRFoL;
 spf=pass (domain: gmail.com, ip: 74.125.82.47, mailfrom: rybczynska@gmail.com)
Received: by mail-dl1-f47.google.com with SMTP id a92af1059eb24-12a747e7b2fso2821489c88.0
        for <yocto@lists.yoctoproject.org>; Tue, 31 Mar 2026 08:07:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774969642; cv=none;
        d=google.com; s=arc-20240605;
        b=O/ei3k5Dsq+4IHJsR1Peg6I/ET8QJelkknvT41KBAYO437RXnZGRsRAED7kIn5zn6U
         ZtAwJfi7y4twnTLTq/XCC86mTdTWrbUp0fHKDpmPgDIdiKZNBuqmjLgf4LKFxfyt6v9q
         9b5jZkWricE7OTRa8oM3j4djmWdIsLmqjrBbMUgODgYkCcN25LeIOVuzeAkt3uz72lvx
         rmM3VddciemOa/hITKMaGh8DvpEGRZPv7FiMMqiQKCiB089wkQMlkZFmtywRMYw2QseM
         lzIFPJnWuOnOrM/cc+9H0mVHsxfN5J17Hoa9Ec97IJ2MmLTnm5AxAR86jiy/4t2OL5no
         3AZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0vvMzaKU929av+oSIg8M0z1cbJTBFJxgCuFpr2kTmh8=;
        fh=luEQ39FiUq0bjv92jqSY1wsb4WoXu9s2c1L3vpTES9s=;
        b=FyhjswOv3IXpw98weUWx1BYrC/4QWIqFfFcYkmjSYPmB/L399MOwUg8r164HLjC7sg
         5H4Pxre6yyhYQMf1s4lKKCaJtwcwPwv3i0xFSPrM7g+C+LMY+XUrBYMOa3dcEJdB/YKo
         k5DAoZoFooOOVNufefgCoKwnD+nTIsJvT8ZsoSEbIvEM8Hk+ej4pxpFeJsYJyMZbVXlP
         03ISX6e3/QnVGL3Xf/vbUh5IqQAhyHpJkwg6iX80kFB+Talj1CBdxcX98my8q9FbmDpU
         DTJyZAh8ymPR0cpAqHW+G04+WUSJT640fzgI7Em57nX3Lrw/KHAGMWwuV13lOq3u/ZVq
         wUWw==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774969642; x=1775574442; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0vvMzaKU929av+oSIg8M0z1cbJTBFJxgCuFpr2kTmh8=;
        b=JycwRFoLzbMrP4j54kBV4nT91GKxVGYD7J8xwosrjOaliF+L86U3xpQTz7at8TQtEz
         i3/Nd4QJGQCssiUAN6ZrpknwTwMe17SAqQat83o2h/8gHOXXXWSFvzat0g3hEFWZMIaD
         A+koYhTaP2J3tHm+qpqBoeEL24wYIm+++UXDW+uv+a0kRH1/QTwWZjEFN7Khl6CF7dlf
         2MSDi7YI92IBK9mJcR33Ns1TovuyuLNgBDR+Qn4NQqDmNjIoSvFrx6ARaWTB9dVAw1kE
         nq9/5cwU68G+/z7xqqQPY6SZ6MT2c0Sm4GYaViIlAdIHXrU/zhrQHz59Tv4P6k5xvJDh
         oNag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774969642; x=1775574442;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0vvMzaKU929av+oSIg8M0z1cbJTBFJxgCuFpr2kTmh8=;
        b=V1yZ39whhvB0Winpfs+LJSQEz0uD/T7F1Mkb3d87kzjb37DKH5gRGdbtwCBcy53PP5
         Lv5qDYsDiiaAwGCJo8/vESXBJCDMXEBwf5DEMGIplQSbI+Dcf9WdCbd6p/H5ff+MO3tq
         NdwDy5tWetWFp7wYFwCHmTyaSXJOtdxTJljxxyjscooLHEdJ+SH+l1yLiWkxVgn0QcJu
         94IbfGk5mMaaVAnto16DXmIdHDlUoBX4N9OWMzhIPwN8+NQJll0t1KHgm1MkaP40R7Eu
         G8oV8gMJTs+ESibyUieAbly/632g6dmU2506RNnFsL9Gny/6/qcAfxUks2d3/CW4sHOK
         Cq9w==
X-Forwarded-Encrypted: i=1; AJvYcCVPn0AN7MHXFQvk9W/TicHygkWJsg/lC/JrGwiKevwr649b+aVQumnycGVghz4rcWS2Q7ZmfQ==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YyQqEcTjyGZM+0Yk1HYi9xfTsbutpi8yIYcjRRzUa5Ozkww9VFb
	Ls/KdeEzIVCzKWmSReN7laDhbsusxoUVxtfXvaWO5EpoWdKtGgKDefLcSub2LBiSEufAW6t6XBh
	8EPGJVyjE0YvQeXlutfUMtbd4USTocSk=
X-Gm-Gg: ATEYQzwOieRjkqYsFDYo+bsXA3Uf3ldbhjTdyjZfYqdaWeRkCPg/2l9/4XTzeSXfGGE
	dB6LymhDTjSlwPlSA0aRwD6VLvFGK0WBZVcdc6BN4JLAC2WsznqcJyMYiqbktDWu75qdeGAVzqO
	B+0tKt3+W0aKAD3xpjkm0AdDgVMubz9DfjTAMv5+8jozgTttunfgu0zWryXr+gXBwyTC/Insh4w
	CSPqB96YRJbohAN0kr7F8dux2vQqSAtnoC7u2ZkHx3vtQVjadC7FdzNn2Ex7YcmXL7MRv1S1YVI
	AEWcEcuqzB7Ys115aId/IygT+lgam03QDnqubmFV
X-Received: by 2002:a05:7022:6706:b0:128:d2f2:5cf8 with SMTP id
 a92af1059eb24-12ab28fd24amr9588924c88.34.1774969641953; Tue, 31 Mar 2026
 08:07:21 -0700 (PDT)
MIME-Version: 1.0
References: <CADfgfoZ2-_Vypjx4mDypmh=Hace4+gm5_4S-aN=Zad6O_CKw9A@mail.gmail.com>
In-Reply-To: <CADfgfoZ2-_Vypjx4mDypmh=Hace4+gm5_4S-aN=Zad6O_CKw9A@mail.gmail.com>
From: Marta Rybczynska <rybczynska@gmail.com>
Date: Tue, 31 Mar 2026 17:07:08 +0200
X-Gm-Features: AQROBzBHJS1XwUwQKeSjDlCN3FTf3QM-uoLrIQOMaIYC29FzoZpcurcgeOHd2UE
Message-ID: <CAApg2=SVfBskC38U4206M84DB9B8DpcJFveU-PZzVFQA129X-g@mail.gmail.com>
Subject: Re: [Openembedded-architecture] Yocto Project Release Tagging Changes
To: mhalstead@linuxfoundation.org
Cc: openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, "Lee, Chee Yang" <chee.yang.lee@intel.com>
Content-Type: multipart/alternative; boundary="000000000000feef22064e53522d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 31 Mar 2026 15:07:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66372

--000000000000feef22064e53522d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 27, 2026 at 11:48=E2=80=AFPM Michael Halstead via lists.openemb=
edded.org
<mhalstead=3Dlinuxfoundation.org@lists.openembedded.org> wrote:

> Following discussions in the Yocto Project and OpenEmbedded TSCs we
> have begun standardizing git repository tags across the Yocto Project.
> This is being implemented to ensure consistency and simplify our
> automation around releases.
>
> Going forward, the following tagging standards will be enforced:
>
> Yocto Project Release Tags: All official Yocto Project release tags
> will consistently match the yocto-v.v.v format.
> Branch-Specific Tags: Tags that include the branch name (e.g.,
> kirkstone-4.0.34) that duplicate the official yocto-* tags will be
> removed from all repositories.
> Milestone Tags: Existing milestone tags will be replaced or converted
> to align with the new standard format, ensuring consistency with our
> versioning scheme. For example, 6.0_M2 will be replaced with
> yocto-6.0_M2.
>
> Please adjust any local scripts or workflows that rely on the older
> tag formats. Let me know if you have any questions or concerns
> regarding this change.
>
>
From the security perspective, removing existing tags isn't a wise
idea in case of forensics needs (need to figure out what was running
on a specific device).

Existing tags should stay for archive purposes.

Kind regards,
Marta

--000000000000feef22064e53522d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Mar 27,=
 2026 at 11:48=E2=80=AFPM Michael Halstead via <a href=3D"http://lists.open=
embedded.org">lists.openembedded.org</a> &lt;mhalstead=3D<a href=3D"mailto:=
linuxfoundation.org@lists.openembedded.org">linuxfoundation.org@lists.opene=
mbedded.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">Following discussions in the Yocto Project and OpenEmbedded TSCs=
 we<br>
have begun standardizing git repository tags across the Yocto Project.<br>
This is being implemented to ensure consistency and simplify our<br>
automation around releases.<br>
<br>
Going forward, the following tagging standards will be enforced:<br>
<br>
Yocto Project Release Tags: All official Yocto Project release tags<br>
will consistently match the yocto-v.v.v format.<br>
Branch-Specific Tags: Tags that include the branch name (e.g.,<br>
kirkstone-4.0.34) that duplicate the official yocto-* tags will be<br>
removed from all repositories.<br>
Milestone Tags: Existing milestone tags will be replaced or converted<br>
to align with the new standard format, ensuring consistency with our<br>
versioning scheme. For example, 6.0_M2 will be replaced with<br>
yocto-6.0_M2.<br>
<br>
Please adjust any local scripts or workflows that rely on the older<br>
tag formats. Let me know if you have any questions or concerns<br>
regarding this change.<br><br></blockquote><div><br></div><div>From the sec=
urity perspective, removing existing tags isn&#39;t a wise</div><div>idea i=
n case of forensics needs (need to figure out what was running</div><div>on=
 a specific device).</div><div><br></div><div>Existing tags should stay for=
 archive purposes.</div><div><br></div><div>Kind regards,</div><div>Marta=
=C2=A0</div></div></div>

--000000000000feef22064e53522d--

