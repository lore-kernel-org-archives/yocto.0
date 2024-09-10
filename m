Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0626EECE564
	for <webhook@archiver.kernel.org>; Tue, 10 Sep 2024 12:59:35 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
 by mx.groups.io with SMTP id smtpd.web11.22409.1725973170073638126
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Sep 2024 05:59:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=HGuprlKW;
 spf=pass (domain: gmail.com, ip: 209.85.208.178, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2f74e468baeso67084161fa.2
        for <yocto@lists.yoctoproject.org>; Tue, 10 Sep 2024 05:59:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725973168; x=1726577968; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PxpR/ZA5UrpfRL4QjatxA+Ej1IrLXeYqXReaaS71ovw=;
        b=HGuprlKWhoF9y4BI7W1Xux3KAaRAqCUe5qMFYuCw+oJaSg/qXehU4NW97x6W76J3yX
         Z2GQv6vCFyo84DXMfYNWIE2PsTHc2bHiIEfP5DAveiPJtC6LFvAmz9ZUtP3WAHu4O0fu
         pO+SQ13V761CkAmmRcVYVKNcRrMPCSbwSqlt2NrJ4cltQ4ZudGpvYi42AHNrnAtiyATg
         sKMAuLw4AXEG4xEMBlFmv0h8Utm7mbsntfA0wO/aHcqBJDUMN+H8DC8VpZV37uFPobIA
         voJkewxeMbQv9FRJrTFXfn1vzNLR5ADLWaG1W2AiLt/TyurnybqPzkqdmOK9xjaozCrb
         c7Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725973168; x=1726577968;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PxpR/ZA5UrpfRL4QjatxA+Ej1IrLXeYqXReaaS71ovw=;
        b=sm7R/4gUOeAoyv9ymvUYxqOmOYbDiVwV08PDKak3Tp8iEuk1qHuZskOMKg+qkjMPur
         1t3m6g2j7/FRi+WyxacNXbUTdyA0S/JukfTUVRc4DO+MbbCwmqXc26YY2YUMMM3DBjWx
         35HvKYVPzKeuo1IvMZkxlxQGbyAbyB0N7fiUuAQT2Wq5gZvzIslAms9XJD9GDYN3Hvfg
         HEeTjV295vToSQYX5oK4Hw3uJtLsrbvI+sWmn7AN92FRTOUcnwuHz14XB5dQZ0pfqtyd
         tZj/NNnkaDVE//j6kElxb+qKYBXUoxFeNfH5RDvnZ/8o1EHK+BM792CTISKPOuNz8PFY
         nTZg==
X-Gm-Message-State: AOJu0YyttTECEo72WgBtYHGH7rfOqmum5X38M4OeDqFM7UZjkFmXaZzK
	LEaIzErBWioPEJKd809Oxux8DabgZ3Uu6wJYOgTi1pr04ZTyWM9we0oil6piz+UKHMOx4btJwdX
	7ZntcQe9N8wPsvZpZrDpRBAkuWj0=
X-Google-Smtp-Source: AGHT+IGCm8QbN15+wBctpLMxDGNlP29sbX27FvonZ7pZjessiThRh189Vi3x0AfwKkSV3E/nW8VPtrA+1fWUzDdi0GE=
X-Received: by 2002:a2e:87d9:0:b0:2f6:5df8:bfcb with SMTP id
 38308e7fff4ca-2f75b93077amr58533811fa.38.1725973167459; Tue, 10 Sep 2024
 05:59:27 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj_qD7ptzqA_vh6Vh96f8ni-uk+WrG0bhBnRAy4iWAsMZg@mail.gmail.com>
 <30802.1725972936993907698@lists.yoctoproject.org>
In-Reply-To: <30802.1725972936993907698@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 10 Sep 2024 14:59:16 +0200
Message-ID: <CANNYZj_baBKNd35sZH8dQGrt+a5jBJT4VpdDFkaQXBkNw1hoig@mail.gmail.com>
Subject: Re: [yocto] How to import image build name to application recipe?
To: agv100@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000089d9250621c37188"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Sep 2024 12:59:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63814

--00000000000089d9250621c37188
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes. You can build many images with the same bitbake invocation, they=E2=80=
=99re
defined with recipes, and the application recipe is built only once for all
of them. Any image specific variable including the image name is visible
only from the tasks of the image recipe.

Alex

On Tue 10. Sep 2024 at 14.55, Gennady Abramov via Lists.Yoctoproject.Org
<agv100=3Dgmail.com@lists.yoctoproject.org> wrote:

> Hi Alex,
> So, am I understand correctly, it is impossible to import destination
> image name inside particular application recipe?
>

--00000000000089d9250621c37188
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Yes. You can build many images with the same bitbake invo=
cation, they=E2=80=99re defined with recipes, and the application recipe is=
 built only once for all of them. Any image specific variable including the=
 image name is visible only from the tasks of the image recipe.</div><div d=
ir=3D"auto"><br></div><div dir=3D"auto">Alex</div><div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue 10. Sep 2024 at 14.=
55, Gennady Abramov via <a href=3D"http://Lists.Yoctoproject.Org">Lists.Yoc=
toproject.Org</a> &lt;agv100=3D<a href=3D"mailto:gmail.com@lists.yoctoproje=
ct.org">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width=
:1px;border-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204=
,204)"><div>Hi Alex,</div>
<div>So, am I understand correctly, it is impossible to import destination =
image name inside particular application recipe?</div>
</blockquote></div></div>

--00000000000089d9250621c37188--

