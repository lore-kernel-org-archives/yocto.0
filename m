Return-Path: <sateesh0457@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92926C3ABCC
	for <webhook@archiver.kernel.org>; Tue, 13 May 2025 13:50:22 +0000 (UTC)
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
 by mx.groups.io with SMTP id smtpd.web11.77033.1747144219041124033
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 May 2025 06:50:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=HDwTClBu;
 spf=pass (domain: gmail.com, ip: 209.85.128.181, mailfrom: sateesh0457@gmail.com)
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-708a853c362so51814737b3.2
        for <yocto@lists.yoctoproject.org>; Tue, 13 May 2025 06:50:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747144218; x=1747749018; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KKMp3vK96FpMw8kgNILiwuzpBCY6OWuQE9eK7y0n/oc=;
        b=HDwTClBuuoZ6+WQU3p/AzHIJYZQCGpxxRmY7p01hxty64fHKotNq+PXYN7WWLaJ4SQ
         YIUijYnv/3YzqOtnaWjJac2zxkrXXIzVoIiCDM6hldarafAXYNooTcx/jX0/svCQujp1
         B+OknTpbdmtI6bwwB9c2tbdzxK7MkN/u2pjFKvowOS4sjVibUqiaiT0Z4jU8Ml50fuOj
         Bb3O3izs3WjJsAhZJ896iGnIySTAQucFFM6gYa+bO7qo8Xqzsp3fQu14U0jAU+YrwSJv
         iIltzkRSXkq9fKm9wsVwmlC2dYMgM1QYOWdjJ/9L12XnaFQ+rYVD7PcGDrs9jABZucq+
         KsSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747144218; x=1747749018;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KKMp3vK96FpMw8kgNILiwuzpBCY6OWuQE9eK7y0n/oc=;
        b=T1blctmcWDTmVCBpDDWHo00ML2Q2tzO0UV1FN6LXRiJn6uZMri6zNl3gx0kmwW004/
         QTwHO4rmrJhuPKw0ki1nklvSoIUHCwXJV8s8ciIka4zat2OuvkzfdYJj3sE5lhRiPpfY
         VN9y/vqlZHil+eGPsNpO8A/A6WS+R4VjxctAOzAGIsBOuB1K251pTOMMx+VfjIlPWAvA
         j8rK1hJrN04hysQ+Q7FxpqOZdhvcFiI5RrpbwgtLDCTGQFFJ+K/79tUI9f0y8bKALlWm
         GY5B020YbtwPJnvKodyVelz9UXOfR3Nw7jdUgaZHKOJsT09f7aregrBYTPT5/O0dkNzD
         CNFw==
X-Gm-Message-State: AOJu0YwGLM8gR26l5UL+DZqwvYA4iqjtZKrDzd37Zd4DQrRcXrICGIGd
	1J5Um18zzs49Zb9koz+9aHEUMAGi/eFOT2SKcHiTf6+/X5Gm0y2Y8liQcr6X07QKnbIwL8lXilm
	/RhmOfqw85/XX8/O+Xneo4HIkYoQ=
X-Gm-Gg: ASbGncv0bQfZwQjvJAOcFZV3ZqgaDF1Kd1Kuq4Zf+vJYXAyweSwrRWdB5V4cHBmCNTl
	WS2Ht0najbH5MoH9hkbBnkKJO5iZVzzCuZEPaNQ0keROx7PxJt5MgcOnncy+BQdNUAkSvLGIFNK
	LvKrZd2D3ykmvlQLV9FMYahVaPSyWfqSRYgBNfywGjo0HQFtFlHqRPARfVqMlY6HTrlec=
X-Google-Smtp-Source: AGHT+IFSkJOZHkGUN068odjtQT5Lt/wdmHqOYxjPERp4cWOW7gvsalJN4c46W0jn8lSUbs23E+LJ2z4qLChPXkvvkwc=
X-Received: by 2002:a05:690c:6181:b0:6fb:b1dd:a00d with SMTP id
 00721157ae682-70a3fb0f629mr234291067b3.30.1747144217912; Tue, 13 May 2025
 06:50:17 -0700 (PDT)
MIME-Version: 1.0
References: <5436.1743573020806108283@lists.yoctoproject.org> <1013.1747143711762193626@lists.yoctoproject.org>
In-Reply-To: <1013.1747143711762193626@lists.yoctoproject.org>
From: sateesh m <sateesh0457@gmail.com>
Date: Tue, 13 May 2025 19:20:05 +0530
X-Gm-Features: AX0GCFtu2Nv3TVlg1D-1oNR287TpWN4_PKaz73QC1L06nk_hLGvPjTKAl5u92Lo
Message-ID: <CACsETSv_EprYNrfuxuikxjqFMhvokPnAH2uRY=szGenbTYPdCg@mail.gmail.com>
Subject: Re: [yocto] GLIBCXX_3.4.30' not found
To: claudiubucur@hotmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000007aecfc063504b6e1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 May 2025 13:50:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65329

--0000000000007aecfc063504b6e1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, it is working.

On Tue, 13 May, 2025, 7:11=E2=80=AFpm claudiubucur via Lists.Yoctoproject.O=
rg,
<claudiubucur=3Dhotmail.com@lists.yoctoproject.org> wrote:

> Hello Sateesh,
>
> I'm facing the same issue while trying to build a dunfell project on
> ubuntu 22.
> Did you managed to solve this?
>
> thank you in advance!
> Claudiu
>

--0000000000007aecfc063504b6e1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Yes, it is working.</p>
<br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, 13 May, 2025, 7:11=E2=80=AFpm claudiubucur via <a h=
ref=3D"http://Lists.Yoctoproject.Org">Lists.Yoctoproject.Org</a>, &lt;claud=
iubucur=3D<a href=3D"mailto:hotmail.com@lists.yoctoproject.org">hotmail.com=
@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex"><div>Hello Sateesh,=C2=A0<br><br>I&#39;m facing the same issue while tr=
ying to build a dunfell project on ubuntu 22.=C2=A0<br>Did you managed to s=
olve this?=C2=A0<br><br>thank you in advance!<br>Claudiu</div>
</blockquote></div>

--0000000000007aecfc063504b6e1--

