Return-Path: <worik.stanton@tirotech.co.nz>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4AAAC5475B
	for <webhook@archiver.kernel.org>; Fri,  8 Mar 2024 03:55:14 +0000 (UTC)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com [209.85.222.47])
 by mx.groups.io with SMTP id smtpd.web11.13211.1709870105761318816
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Mar 2024 19:55:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@tirotech-co-nz.20230601.gappssmtp.com header.s=20230601 header.b=OogF51tj;
 spf=none, err=SPF record not found (domain: tirotech.co.nz, ip: 209.85.222.47, mailfrom: worik.stanton@tirotech.co.nz)
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-7db241b1e0cso762499241.2
        for <yocto@lists.yoctoproject.org>; Thu, 07 Mar 2024 19:55:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tirotech-co-nz.20230601.gappssmtp.com; s=20230601; t=1709870104; x=1710474904; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gQ/FRQkGfKF6NPeV912BdR5Cl1ETOp8DJ5ahjq/GpZY=;
        b=OogF51tjXJXDROncwbKZN9XHEp6C5nW7BB7r5OncZZumePo9UN9gA0NJZb2wBALZcw
         h7RJjlQE/OrvkX8UMA4YmYAt1BFbBPUsoDS+kJgJcPxD1MYJ5WnRaJ4a6oc960JJ0k/F
         SXp3i/qM2XPzd1UWKSb8mtdSKsYYg2DhSOuW+qBhqS2PK4sFXeBz+iZAi7AhsFNG5t82
         hRlwVVAGPhp3dfLuKFltU3gpqb1Yqj3BN0GyjIswkqD95LPi73TUSlzBGEKM7WNIsfBw
         vsY8u0jpy44Vxrla96AlG3DlsWAcLGcSRnH69Kh3HQSvDTKf7jOggjfc34HsVqa7Oh1A
         P5rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709870104; x=1710474904;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gQ/FRQkGfKF6NPeV912BdR5Cl1ETOp8DJ5ahjq/GpZY=;
        b=lIb60csto2V9ZlxABQBPT/YEI7HewCHuFh3WVddrDZoqvVgjOKL4GAHFJLGPG2aWdN
         dfFQ/J715CcmsVU/J2509wpByrYcpTnBRpvVjXEx8/4UHHJctdTR8JdlxYbPOdFCXzQ1
         8Ole28LhJZs/DNKf+f40Zy4fp9OSMyyq8etzGfFDCxvMjLMgaeksTxrY0Y6S/7Qfa9uo
         DVUk7lWAiosU/M4p9SjGk/T2FcS2oEwiDEIKdTXpkAFYVaz60jwb2jb2MGQFUDWfbV1K
         IU690P1jbaLMTPEXkmFJPfgBx/SLOp3RMrnv/3koP14DLtUtPIE9jCUlz8/Ue+4oaSMM
         ob2A==
X-Gm-Message-State: AOJu0YyOKfHZzR7nqt53xrc4tL2OEOqkriauQZ86hdN90US0MRSRrVrq
	1DpMVaPg9q4hAPsxAjg2/4buVowN7RG3uWh8GRO9ng232aP+MV4OBJBpakQiXpCUgObIDffKTRA
	nuF8sbqTn1X3DBVxrMTO6kX2SUlHeSuQjoCLhdiL/631O4AtH
X-Google-Smtp-Source: AGHT+IFDUosxBnT+JIqmAqw1UyMjrlNb5+N7Bcp4sMbiJVKLEn3H+tuMSOBurk0Q21Oez37UoJiuZ9E0I4YfLqbBFFs=
X-Received: by 2002:a05:6122:4883:b0:4d3:3a0f:77ce with SMTP id
 eg3-20020a056122488300b004d33a0f77cemr12644532vkb.13.1709870104649; Thu, 07
 Mar 2024 19:55:04 -0800 (PST)
MIME-Version: 1.0
References: <CANuMBWH835Xj0prs1EUrkVjnRFyE4BF7-viJsrHdYMPSdv60Xg@mail.gmail.com>
 <2N60AS.IS9X55HYOFEM2@t-online.de> <17BAA41581F87986.16844@lists.yoctoproject.org>
 <17BAAD265EFFF830.16844@lists.yoctoproject.org>
In-Reply-To: <17BAAD265EFFF830.16844@lists.yoctoproject.org>
From: Worik Stanton <worik.stanton@tirotech.co.nz>
Date: Fri, 8 Mar 2024 16:54:53 +1300
Message-ID: <CANuMBWGiuRADC2BaFBhwG_OkJAVh-Uit6R=BdGksfNS4OkzJKQ@mail.gmail.com>
Subject: Re: [yocto] Yocto Project Quick Build - MACHINE
To: yocto@lists.yoctoproject.org, worik.stanton@tirotech.co.nz
Cc: f_l_k@t-online.de
Content-Type: multipart/alternative; boundary="00000000000033563106131e28d1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Mar 2024 03:55:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62707

--00000000000033563106131e28d1
Content-Type: text/plain; charset="UTF-8"

>
>
> Is there a part of the manual I can read that explains what this is?
>
>
The intel-meta README

--00000000000033563106131e28d1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr"><br><div>Is there a part of the manual =
I can read that explains what this is?</div><div><br></div></div></blockquo=
te><div><br></div><div>The intel-meta README</div><div><br></div><br></div>=
</div>

--00000000000033563106131e28d1--

