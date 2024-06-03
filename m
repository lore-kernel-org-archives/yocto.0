Return-Path: <simonkbaby@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DD4CC25B75
	for <webhook@archiver.kernel.org>; Mon,  3 Jun 2024 22:25:56 +0000 (UTC)
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
 by mx.groups.io with SMTP id smtpd.web11.7234.1717453551060684729
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Jun 2024 15:25:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=F9TK1Fyv;
 spf=pass (domain: gmail.com, ip: 209.85.210.43, mailfrom: simonkbaby@gmail.com)
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-6f12171523eso2554901a34.1
        for <yocto@lists.yoctoproject.org>; Mon, 03 Jun 2024 15:25:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717453550; x=1718058350; darn=lists.yoctoproject.org;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s02V6CcTDPvIv+iBFY4XG53fnD6iKEZKWcakIgfkMxw=;
        b=F9TK1FyvCexD80o51vgKb9me5uT8kkWaro59DLhEpOowq+Wvk0VYglwgOcNMFoOMsg
         QUxrDFgnlqk9To4wNTOJ8fPYSnc5UzCs311qzi5BYEsZUbnv3v/X7Md+X9zl5f8xEYLT
         Nkp3foLEs3wTMWZ8zlMx44H+dpsVYdm7f4jIzaYFKld5QoFLbo9Ngd6eYllhsuw2GHD9
         zWdPIMVjhycS40mlr3Wtq9qfJCaDYYAScVw2GDWFEuNfHskib7dBErvGLbVNXbNhZr4H
         uTSY+cnRZtn7LMe23NelYT78v+9FKyocLcArjx3v0kY6Cmo2SH/qZM/RVlk7Na1DadvK
         YITg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717453550; x=1718058350;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s02V6CcTDPvIv+iBFY4XG53fnD6iKEZKWcakIgfkMxw=;
        b=qTD6JwLk0RJEXlYv4V/WwX1a+f9kPHQoJHNS3MQrd1yesLvpUMbv6AIrl9OvdvbZja
         V6oGhD5X90jRata71gAbyjsY5WFCmXmtNqKlK2Vnc5zlwXAAfIx72rG6utEqUeEwiopR
         VFPOV4HcEdpknAzUYLaxj+RN3w3D/kln0enPzsa5ViXy69wYgsPOo+ZAOTBudl5y6BQa
         OC2p2zZMUe17j4zy5xZiGbMoYlYG1Qy2hW8MuJtRpnjIqnNT7mFi9xK9w1uNFKI0Vyl2
         AMvkvmCHPC1s5yW5Wz57aHzghjIIGacK5Pba3PvmEpjaSPL7ad464mKs4nQYK1lBmkyq
         7tdg==
X-Gm-Message-State: AOJu0YxLkR7+loVHcRoMtFPKvJUbhmBemKW46d8gt5FGvkkRuKmmFntO
	NvP++Lp/FgDDkW9C7xHDwdr5ztrAMDMIYbKFInZzA5eY0jDsZV0FL97Jcg==
X-Google-Smtp-Source: AGHT+IEYRtPO4drVqb6eQepq3Rn4EBy1CqViP0pY4+vXbL19zwyAYa8z+850xaBhG++3tFZGDdEnMA==
X-Received: by 2002:a9d:6b94:0:b0:6f1:242b:90ce with SMTP id 46e09a7af769-6f911fb9caemr10729123a34.34.1717453549617;
        Mon, 03 Jun 2024 15:25:49 -0700 (PDT)
Received: from smtpclient.apple ([2600:381:f521:22c9:55f6:2ed4:bcf6:670])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-6f9105a9f09sm1652778a34.78.2024.06.03.15.25.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jun 2024 15:25:49 -0700 (PDT)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
From: SIMON BABY <simonkbaby@gmail.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [yocto] query on do_stage
Date: Mon, 3 Jun 2024 15:25:38 -0700
Message-Id: <E69285F2-03A9-403E-AE8A-67BB2B6C5952@gmail.com>
References: <eda7a7666e799206b7fc548c3609f52256a4dce8.camel@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org
In-Reply-To: <eda7a7666e799206b7fc548c3609f52256a4dce8.camel@linuxfoundation.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Mailer: iPhone Mail (21F90)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Jun 2024 22:25:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63265

Thank you Richard.=20

Regards
Simon=20
Sent from my iPhone

> On Jun 3, 2024, at 2:48=E2=80=AFPM, Richard Purdie <richard.purdie@linuxfo=
undation.org> wrote:
>=20
> =EF=BB=BFOn Fri, 2024-05-31 at 15:17 -0700, SIMON BABY via
> lists.yoctoproject.org wrote:
>> Hei Team,
>>=20
>> I have a recipe below. I did not see the staging directory under the
>> tmp generated folder. Is there a hidden folder or where are the files
>> going?
>>=20
>>=20
>>=20
> [...]
>=20
>>=20
>> do_stage () {
>>         mkdir -p ${STAGING_INCDIR}/marvell-umsd
>>         cp --dereference -R ${MSD_ROOT}/include/*
>> ${STAGING_INCDIR}/marvell-umsd/
>>         cp ${MSD_ROOT}/library/msdDrv.o ${STAGING_LIBDIR}
>> }
>>=20
>>=20
>>=20
>> I checked the path below and could not see the include files or the=20
>> msdDrv.o copied anywhere. Please correct me with any other solution.
>> Can I go with do_install () ?
>> The requirement is to use this recipe as a dependency for other
>> modules to use the include file and library.=20
>=20
> do_stage was a task which was removed many many years ago:
>=20
> https://git.yoctoproject.org/poky/commit/?id=3Ddc807f54f858419f97e211cd62f=
d2d30db9a80de
>=20
> i.e. around 2010.
>=20
> We opted to have the output from do_install work for both sysroots and
> target packages.
>=20
> Cheers,
>=20
> Richard

