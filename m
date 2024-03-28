Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 716BECD11DD
	for <webhook@archiver.kernel.org>; Thu, 28 Mar 2024 20:30:42 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
 by mx.groups.io with SMTP id smtpd.web10.2293.1711657834319854710
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Mar 2024 13:30:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20230601.gappssmtp.com header.s=20230601 header.b=WaerBMaf;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.218.48, mailfrom: jester@theyoctojester.info)
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a4715991c32so184093466b.1
        for <yocto@lists.yoctoproject.org>; Thu, 28 Mar 2024 13:30:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20230601.gappssmtp.com; s=20230601; t=1711657833; x=1712262633; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Od4iXLh+mOJRyXNhH/4hgdm/dRYyD6RFZ3dv+ZFQHTk=;
        b=WaerBMafXidi0P4LppOR99iQs2geHwNflI3/+A+Y96qMGXyOm2n8aked6uQJNjt/KY
         VPzYWlsUQpCZ1arzK4imUvXyXpvr/ihUGZNlWTcOTtBrOSUqR4C063gdsJSOvrNh4QEt
         X3CUp4so9WjN0otnJq/UPtng7PJtcdWto6LChuXoianr5shfgm+oxhdwWhrK8SJlfp6+
         gFOZ5nJqwe9yifZRFoIQZKPy/2NyNq4KY6y+k+ziy6TouetI6dM/YYVkkCVZy2OIOLQn
         LUsYUYnlwbprbKeq/4Wzd4HIjzKJLX2Z+xe+l4M6nzhD4lXU/n/1FOmpp2JsJueD6QdX
         AbbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711657833; x=1712262633;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Od4iXLh+mOJRyXNhH/4hgdm/dRYyD6RFZ3dv+ZFQHTk=;
        b=Ubef65Z2qCla7EUrQUUSUTEOZaz50AU5yoZ35knokkZ+9KgNoGhIagP21tW0tQ9tOA
         dQd1gamxoUnbJEatb4yzDWEplW18we3Z6R1K+pTnPRzWUybmpS2fPZHv5C5h0WmAslnz
         KVeQMhoAs3XfNWxiIrmxRM5L51fOGv2fvZF9y4ThL9klMzb9Bj5U6fGxkwb9Iy8ZkKqB
         uDJEcKNJW6b5/AV2PI7tnmdxIIR1vataHHkqkC0ICVqJ2jL5RRP8vdl1NlYz53yXTySZ
         R02gTC17TeK3m/gAI0Eb8TRpuypB9PHhA8CjiqM4sugo5hzeZDIiI24RGk9h6uZDbhNo
         BM+Q==
X-Gm-Message-State: AOJu0Yw/3ZqtVUoSEZhQaAwFTsDvNXFPVxPU5IQVAgSe/1/w8ELHkkU2
	20eKNqAFInvAPwQSKcJpXHNakY3kp1d9YW8bIUBmTX500zl+PmVwUtaC9s0OU13cPA3YWJvXwFf
	UiTE6JXqHRutYXvPuaSSPR/8utzd4l9Nv/8czZypGGIYocZC9oLmskg==
X-Google-Smtp-Source: AGHT+IHNFVzTrTvhHVsXEXn5uM12TZ8fELKL4bBNWs3RlaMalb0tnqebCR4pnuD9W//dREFCUYqw5PHJHhWRI/6pFCs=
X-Received: by 2002:a17:907:bb9a:b0:a4e:1897:2306 with SMTP id
 xo26-20020a170907bb9a00b00a4e18972306mr228103ejc.5.1711657832427; Thu, 28 Mar
 2024 13:30:32 -0700 (PDT)
MIME-Version: 1.0
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Thu, 28 Mar 2024 21:30:06 +0100
Message-ID: <CAEt6NwrdCRJ7+HkExNv2rWsQoADXZvwFCeEkhUNeeaTUtpy5NA@mail.gmail.com>
Subject: yocto-patches mailing list
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000001453e50614be65c2"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Mar 2024 20:30:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62859

--0000000000001453e50614be65c2
Content-Type: text/plain; charset="UTF-8"

Hi all,

Following some discussions and suggestions to improve, the
yocto-patches@lists.yoctoproject.org mailing list has been created. We want
to move Yocto Project-specific patches and their discussion over to that
list in order to have a clearer separation and therefore go-to address for
contributions and the corresponding discussions, as well as freeing up the
main yocto@ list for technical discussions.

Greets,
Josef
Yocto Project Community Manager

--0000000000001453e50614be65c2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div>Following some discussions and sugge=
stions to improve, the<span class=3D"gmail-Apple-converted-space">=C2=A0</s=
pan><a href=3D"mailto:yocto-patches@lists.yoctoproject.org" target=3D"_blan=
k">yocto-patches@lists.yoctoproject.org</a><span class=3D"gmail-Apple-conve=
rted-space">=C2=A0</span>mailing list has been created. We want to move Yoc=
to Project-specific patches and their discussion over to that list in order=
 to have a clearer separation and therefore go-to address for contributions=
 and the corresponding discussions, as well as freeing up the main yocto@ l=
ist for technical discussions.<div><div><br></div><div>Greets,</div><div>Jo=
sef</div><div>Yocto Project Community Manager</div></div></div>

--0000000000001453e50614be65c2--

