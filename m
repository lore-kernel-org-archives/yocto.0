Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFDBAEBFD25
	for <webhook@archiver.kernel.org>; Mon, 13 Apr 2026 09:34:27 +0000 (UTC)
Received: from mail-dy1-f174.google.com (mail-dy1-f174.google.com [74.125.82.174])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.268576.1776072863915229882
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Apr 2026 02:34:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20251104.gappssmtp.com header.s=20251104 header.b=g8dgmDvZ;
 spf=neutral (domain: theyoctojester.info, ip: 74.125.82.174, mailfrom: jester@theyoctojester.info)
Received: by mail-dy1-f174.google.com with SMTP id 5a478bee46e88-2d96243c91fso1153963eec.1
        for <yocto@lists.yoctoproject.org>; Mon, 13 Apr 2026 02:34:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776072863; cv=none;
        d=google.com; s=arc-20240605;
        b=WUAA8yqGRUQ9gyg1bOzq9tza8+tlJ1KTu26wGrpqpRNbi6qd0B+OmucDtAlbFSWozn
         41y6SbFcAgvGsIuY83MrBc40TDe+YYJw6eXu75WsX6fcCRDvnkuADLt26gCygagpGnM/
         3IVQV0Ibe41uKcuDQrsX/l1rMI+jEqLkTqf+GT2zS0A6Pb/fiTykqa4Crrzcwq9UZbLb
         wJMd/zuZf3Iyb1Xr4/ERD9GeMbPKZ8qQVkBQUrodPjKTd3X0COBOjbt1jFMEvvmd929g
         RtbIDnXXVHh1RJ9XTBWNU9Hm/u1yeNEWONmHp5I/zqfDxpunJswPrs71FOQOKNnYCM1K
         ZU+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=8SPrdQYbpvLHgszqkcvocibLA0+iltAIA+9krl3CZ2w=;
        fh=PfOR+n5bbxL/43W4vAowzKZjAxIvRJQRCkeIWLMQnno=;
        b=Z+C7PWBPJkWeC17LtJC7EAh+HJ8q8Bm8t++azpJzCxm5/tv4RZ43rJldybpCBBjeyz
         iIjbXe5xmEnsY+pD+KPjO1oixf0rFz9Vl0NPwmGmpe+jH3nkqBLsA4sjFS+o1xFLz5MX
         LeTz11xtJy65DXT+RGd3MB1KMAaA4kB/+R8V6X/AVPOVsOPAGln+fhgvA1iB+YrWZuPu
         fi+he6xJ/v/u8H14CR+bu/vQNQsSLV0Riyr0EyOsMu+NtV97/1MVvKUCHbauMoSPt2yy
         FooTvS0WaQ8jGFjFTJVUj71ZKVXq48N9+kaxOiFM7XjqsDCKX7m+RFk+Juie7xh0QW5N
         9M8w==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20251104.gappssmtp.com; s=20251104; t=1776072863; x=1776677663; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8SPrdQYbpvLHgszqkcvocibLA0+iltAIA+9krl3CZ2w=;
        b=g8dgmDvZANuauVAXe2KaopnPLC02JURiqTDvSqnVyBsuCroCF62VPHJUDHX3ijIt6T
         zpYVoG+y9GQ2D6DRP4+R28p4QTVykppO6k5P7KxONOHdxM40N5Tpe3ElUuLzYEoPnzJY
         oxZUKEAnU0Mv32hseX73jazV0R0gSP30+MqymjBLQbWUTI3QDWSuFYMh8hBatGB/QXp1
         8jyMPgbOa2+QtN+veBUeu3DzzvXozBXIQycPdbpq/4mRW90m96nrMGZVmM/JxbvivXR1
         Jlk/o/3FIDHCh194FxRPR/Ao1DYXEb2MmaSBEkmIdY2NJTBvXPIgq7MiaSC0toiRlN8x
         X+sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776072863; x=1776677663;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8SPrdQYbpvLHgszqkcvocibLA0+iltAIA+9krl3CZ2w=;
        b=M1qhmUNC0KfU58uaXwAWgWReDxOXHekmaNo3iN4mYXJip44UjbYbikNN0MZhmph9O6
         BqRbzQOjtwnVByRUOG9Dsdvamq8cUmet8/OAs3S62odOA5DOUoz42FnmTdgujkTHYhCn
         3CyB9EjBKNFOOzHadEuXORIbXSBRX1l1SP+OMvYsIkoAB8uju+UkKMKei7m2WHJIZiOc
         NlHG0pZZGlpR92Xyo675PxLWa/KkOeU4PWU09UYTGQYDXdI1WSzEyy7WktW8LOqUP655
         26tARvrvqutPMiYGg8VVItbzlOcHDDDABRg20f60+0Fkuk7FOcY/Tw9aIneTohvuyBNR
         9zMQ==
X-Gm-Message-State: AOJu0YwAGmKvxx9m2WekIBvpON5y8TgcAcjPQjm8SceXxN4x6iFC1zm5
	wkTMPisRtSmrS9aUoZJtCqsf5PO8rat2RWVTPAAncY8nwmAs0qltLgUzpy6apIIwhStrR8qc0Ax
	hnHZaq9oVBc7wtQrGGJT75DD3oBaTpU5CJQhCLsHQyg==
X-Gm-Gg: AeBDiesmkJxBnfKFzLJGkes0iPUBX2S8LFV53EUGcMKe+ZDzik58rZGPrwfv4E1ONgJ
	uvn1EI1d07kd1zzjmvfqSavdKzqAVxL0k+8gwQly5aiF2AEBAPSkR9F07YCvAfl1rzgzQ9hR/1L
	lPuN6yB2Mhw7qMubfNi1lxmXjrlV628g7zLG6E8UVmI8x+VWpA8xcOJ86rVhLpCR8qoUfrnMq7F
	nMqM/QWkhv9up+5+e1Ca9ODWUXPLfOXV1T4Pa3jW+oUzxbeNVcT4GoeX7D69eLAoKG5Vx956dXM
	aIrG0Q==
X-Received: by 2002:a05:7300:8292:b0:2d9:32c8:2b69 with SMTP id
 5a478bee46e88-2d932c83617mr1328252eec.28.1776072863138; Mon, 13 Apr 2026
 02:34:23 -0700 (PDT)
MIME-Version: 1.0
References: <6KwS.1775631328520262279.RWyv@lists.yoctoproject.org>
 <CAEt6Nwo_d+6yCCJgrWFuGviSkPXFr82GZ5dtwQDK5=7m2CHmFA@mail.gmail.com> <d060ac53-8cda-4014-9158-c68d87a7bad7@phytec.de>
In-Reply-To: <d060ac53-8cda-4014-9158-c68d87a7bad7@phytec.de>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Mon, 13 Apr 2026 11:33:56 +0200
X-Gm-Features: AQROBzCbIN26f5j5xlHAKPLTJlGulGKz-6m5pFdn00Gb_fwtIueEdDP-AU8hGc4
Message-ID: <CAEt6Nwp5RVA8RuXNq-HqgG8vaZMmOwJuqWgnU1shiaN61tHeOg@mail.gmail.com>
Subject: Re: [yocto] Fetch Issue
To: Wadim Egorov <w.egorov@phytec.de>
Cc: yocto@lists.yoctoproject.org, snehadhar39@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Apr 2026 09:34:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66407

Hi @Wadim,

well, next time we plan to adapt on minutes notice at 3AM to a
bandwitdh attack, we will announce it. Big promise!

Greetz,
Josef

On Mon, Apr 13, 2026 at 10:23=E2=80=AFAM Wadim Egorov <w.egorov@phytec.de> =
wrote:
>
>
>
> On 4/13/26 8:11 AM, Josef Holzmayr via lists.yoctoproject.org wrote:
> > Hi,
> >
> > Due to a load of load by bots/scrapers, the git:// protocol endpoints
> > had to (finally) be deprecated a few days ago. Please move your URLs
> > to https://git.yoctoproject.org, then things should be fine. Please
> > let us know if not.
>
> Would be nice to announce such changes. But maybe I missed it
>
>
> >
> > Greetz,
> > Josef
> >
> > On Sun, Apr 12, 2026 at 9:45=E2=80=AFPM sneha Dhar via lists.yoctoproje=
ct.org
> > <snehadhar39=3Dgmail.com@lists.yoctoproject.org> wrote:
> >>
> >> Hi
> >>
> >> Is anyone else experiencing issues accessing git.yoctoproject.org? We =
are seeing fetch failures for meta-intel, poky, etc.
> >> Thanks.
> >>
> >>
> >>
> >>
> >>
> >> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >> Links: You receive all messages sent to this group.
> >> View/Reply Online (#66404): https://lists.yoctoproject.org/g/yocto/mes=
sage/66404
> >> Mute This Topic: https://lists.yoctoproject.org/mt/118793581/3616782
> >> Group Owner: yocto+owner@lists.yoctoproject.org
> >> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [w.egorov@ph=
ytec.de]
> >> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >>
>

