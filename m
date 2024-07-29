Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20EFCC3DA61
	for <webhook@archiver.kernel.org>; Mon, 29 Jul 2024 04:46:44 +0000 (UTC)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
 by mx.groups.io with SMTP id smtpd.web11.49896.1722228394010606900
 for <yocto@lists.yoctoproject.org>;
 Sun, 28 Jul 2024 21:46:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=SmAiq/yp;
 spf=pass (domain: gmail.com, ip: 209.85.218.53, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a7a975fb47eso448734166b.3
        for <yocto@lists.yoctoproject.org>; Sun, 28 Jul 2024 21:46:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722228392; x=1722833192; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=TeDfJOlFUFTWSlF0s0iawOX3nKSQpxOtZiSHnJDx104=;
        b=SmAiq/ypRQZxC+E4xjYqM75pks8IVtsKrSr6kOHnSzcgtIbrFY6jY7F0WBr04NhOa5
         yPlC0hxhbQLb49tKp50R+IvMINiRuaaWVe3FDRz2NK68GuM7bFxmoavpt4v1fn9WkjW+
         fkVErShHUAsDPOZ89C0+LMfw2kEhumOk2i6FDHsQ88G+Q2PstevDN/bdvzD6Ao7Vceo7
         wKGnFXOfa5b8FBooXs90mHKPgWEpVuc6WDIa2u6Nc+HpjWSyyyXZAxhhFmBWVmCE7bqH
         3yLDxy0g+KZuUDvbi4xjQKMIUU2nukndQcMkQr/Cu8OMcLOgLTTT3iuB4AzhblGH7B6R
         l4Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722228392; x=1722833192;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TeDfJOlFUFTWSlF0s0iawOX3nKSQpxOtZiSHnJDx104=;
        b=fDdJU/plMXI3LMEpOONZt/cLesbF52ii1QA2CaKxm5pp0G0M3dQsPg+Fo5NhWFaK/Q
         aK/CMKxpH4wibIiQZ+xP3nwyFRut6b8zpf2xcGEg4/LqG8tj9qN/cE6nfT6paMZ4Md+e
         Af1Mqb2CZNHx4El4SIqSt5nBBGKZrdE6qgB2GxZicio4ptTQy9tBvSPVIlST8txWwVQ0
         zr64FEytj9jiLIQuMsCkuX3fk7Q4AUta6vzbDJEdPnMr+DZzieVuU3UDJERHaTgYKTNB
         B5eLytR9tsaixtJ+dNKMsjg95hpikpsAp/YeL7FuaxWlEMhTvbNHEfaWKx46EQxE8o0M
         BNbQ==
X-Gm-Message-State: AOJu0YypEg5o2+vZnvQROyO63CDxmnsNC669iU57OaPAL6l/XlOrTZrD
	r3Hxt30kvf3mR7osN1ru9WwsKDsiT3dK8DEhl8NDCNbrXh9Ui2BAOO1olcNYENJ4CuHg5kHTdBF
	euW4UqFhrPwufgyi1WjVIow11e7HEv1Fo
X-Google-Smtp-Source: AGHT+IEnRKxxO9UiOaEuUrRaczHWJKNTAjtm7+038I7cZyG+0jQysWYZS0GyjXKsIEpJiG0QxrHLOgPQxveeU9VJ5Sw=
X-Received: by 2002:a17:907:86ac:b0:a7a:1d35:4106 with SMTP id
 a640c23a62f3a-a7d3ffdadcdmr408966566b.5.1722228391623; Sun, 28 Jul 2024
 21:46:31 -0700 (PDT)
MIME-Version: 1.0
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Mon, 29 Jul 2024 10:16:20 +0530
Message-ID: <CAPJWBnjOA=_vu+1uEq16Dtq_gGuVSdGWsRh88k9SK_1OZUwGFg@mail.gmail.com>
Subject: Update glib-2.0 from 2.7 to 2.8
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000008143ed061e5b8b42"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 29 Jul 2024 04:46:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63580

--0000000000008143ed061e5b8b42
Content-Type: text/plain; charset="UTF-8"

Hi guys,
I have kirkstone SDK with me that supports glib-2.0 version 2.70. I
currently require version 2.80 which I noticed is available in the main
branch of git. Do you think pulling the recipes and manually replacing the
file will resolve my issue. Or any other good methods I can try?

Thanks
Hassan

--0000000000008143ed061e5b8b42
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0guys,<br><div>I have kirkstone SDK with me that su=
pports glib-2.0 version 2.70. I currently require version 2.80 which I noti=
ced is available in the main branch of git. Do you think pulling the recipe=
s and manually replacing the file will resolve my issue. Or any other good =
methods I can try?</div><div><br></div><div>Thanks</div><div>Hassan=C2=A0</=
div></div>

--0000000000008143ed061e5b8b42--

