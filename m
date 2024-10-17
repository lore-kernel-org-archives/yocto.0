Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5509D37496
	for <webhook@archiver.kernel.org>; Thu, 17 Oct 2024 13:57:45 +0000 (UTC)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
 by mx.groups.io with SMTP id smtpd.web10.48965.1729173458125495932
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Oct 2024 06:57:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=FxlJ03BD;
 spf=pass (domain: gmail.com, ip: 209.85.218.53, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a9a1b71d7ffso142952266b.1
        for <yocto@lists.yoctoproject.org>; Thu, 17 Oct 2024 06:57:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729173456; x=1729778256; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=0B49y79OVFibvm8LVr7X3Ncd9bvGPx+5m9KOz3PMS/c=;
        b=FxlJ03BD5LABQflc9V1/vAdqDHq3K+kpqDeG2vGJLuW12+DI/JdzXGRHxK4oAA1QPq
         9XpnN2FgqmaFfcB9RlokFgDCUxSdre0lp77ftluIxonP2yVtlQAhYawdPvxUGHGceNpl
         lbPWrz71H4BEwS7ai+H/YsYucpjiPHyHRDPXctu9Ga1v1ByhRVtHi1aj9RY+w6IkPciE
         AFBhFQ1wHVRB9dAZFQZiGfDpVhJ4os+2XmyKAVZX6RJxBaAM3wxtfv/kXZX0lOm/2cQI
         MzAbpWR3MFIK2h40f8tijVlFOXFzD2WidqUqRYsrammcMB2ZxPeEnenvOmCkFJim2JK1
         SCJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729173456; x=1729778256;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0B49y79OVFibvm8LVr7X3Ncd9bvGPx+5m9KOz3PMS/c=;
        b=JkzEOn0f0cACeYCXc6+W1XtrymU+rKGyNrtAEq7KkmSD6RYXS9Lx6qe8A6da309qPB
         ry+owIfNmbRMyBvcjB5EbWHpHFWiFS1EuBPypXu5Nkwpnwi6qatRvDyZ3AKrvEhhNjdI
         UMEgyhyDRVWyKC76wIGOI43L+bFW0+Xh5Y+/bt6l72A7StARMUFVO1PGs0EUo3dpBQzy
         n69QJ25ngAtEGM44dHJfmUvCDhG1NOUINFHGdi6Ocpmo99dYPRXEwcoppOdzIcnSTman
         A6avZu1/ro9j9LbGjzXXPCIhEQFCC35br7F9KBqbB4DsBAhsGOdVd91CF/ky2WN0XU92
         GQAw==
X-Gm-Message-State: AOJu0Yxv0DNLlbbLsLP01p003wLe10uOjqUEVvNPG2WUKVV0bVsAW0Jx
	kUzyLNS6/UgbNEheGHlVdzGciK52syHU6H2yPg8iYnpG7c7fSPOGXkIbMUo7ZXitZdinbstcQ+z
	FyY5/C0PFN3Up0jRxI5XJDn8s1OJEtw==
X-Google-Smtp-Source: AGHT+IGErqpFn8Xtsum58Vk8ZaLE9iCepi87QAgMN6plk7YxBukzL7q7yDV/Fsy5dB7PvcCct+IDdYGsVp7f9ZSOLzk=
X-Received: by 2002:a17:907:703:b0:a9a:4f78:c3 with SMTP id
 a640c23a62f3a-a9a4f78030amr302613166b.21.1729173456127; Thu, 17 Oct 2024
 06:57:36 -0700 (PDT)
MIME-Version: 1.0
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Thu, 17 Oct 2024 19:27:24 +0530
Message-ID: <CAPJWBnjrjU785=2-+YPqZ9r8Ao8mP4hyNKsH3G30oSD7-rrqqg@mail.gmail.com>
Subject: dhcp package missing for yocto kirkstone
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009b92830624ac9175"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Oct 2024 13:57:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64045

--0000000000009b92830624ac9175
Content-Type: text/plain; charset="UTF-8"

Hi guys,
I notice that the dhcp package is not available from the
poky/meta/recipes-connectivity/ directory. I confirmed this on the poky
gitlab page and it seems like it's gonna be that way for future actions.

Is the package deprecated and no longer available? In such a case do you
think I can pull files from the dunfell tree and append here, will it work?

Regards,
Hassan

--0000000000009b92830624ac9175
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi guys,<div>I notice that the dhcp package is not availab=
le from the poky/meta/recipes-connectivity/ directory. I confirmed this on =
the poky gitlab page and it seems like it&#39;s=C2=A0gonna be that way for =
future=C2=A0actions.</div><div><br></div><div>Is the package deprecated and=
 no longer available? In such a case do you think I can pull files from the=
 dunfell tree and append here, will it work?</div><div><br></div><div>Regar=
ds,</div><div>Hassan</div><div><br></div></div>

--0000000000009b92830624ac9175--

