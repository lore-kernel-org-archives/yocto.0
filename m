Return-Path: <daniele.lugli@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB0DEC4707B
	for <webhook@archiver.kernel.org>; Tue,  9 Jan 2024 20:31:42 +0000 (UTC)
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
 by mx.groups.io with SMTP id smtpd.web11.28009.1704832298701063743
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Jan 2024 12:31:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mR3HQOfW;
 spf=pass (domain: gmail.com, ip: 209.85.210.174, mailfrom: daniele.lugli@gmail.com)
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-6d9cdd0a5e6so1733156b3a.3
        for <yocto@lists.yoctoproject.org>; Tue, 09 Jan 2024 12:31:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704832298; x=1705437098; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QLnh1lUybz+HSGoul+HwePW19fgjIYBsICGPR5ZXtNE=;
        b=mR3HQOfWI/ym3PePj2U9DbYmpBb2XB3otmqU6oUPRsROAHGsKERX8EsS6MgrJGAgmA
         Oqu8rZVDwUYOvVvjd02lCXOR5F5USFb67JeXqeGNFj5ruCgK9gB2TYtMpVvrWFjQN15S
         7h5x8Olh7tGZzUGZlcYqe6xVpfk9SvYAcHnMtYtm0J4OEMovdkiV/keyONHzc/ndhFSX
         O9CIiQ34n+Ah3ZvT7Y4DtPusbX9NcYSO4k1enREnkux9XUAhNZu8gFubp0+FGuPJkdVT
         RDwj6Xb6iiqnPAMef/97ZDDf/qqDVwIhbsQS4c+UsCROVGmDPUk7id00dDmKNlXCZkYp
         2ohQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704832298; x=1705437098;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QLnh1lUybz+HSGoul+HwePW19fgjIYBsICGPR5ZXtNE=;
        b=g2NFBexOoo3XIxvbc5GqICdEe/C6HPxzpaLfSGb0PBN6fw1u6zzAgwxzVWh/RoFiVr
         7JW1iY5dGPeZLme3hvR9dPOUYiyenKpA5cEifHmDupJjIWeOQZxK6H3RRubsoC0h0JrP
         IhIVIFFRIUwpEYiPvAGWF3mJWPJXmKVXtMzFp2lcMWrhGp+ERTF+vjvkD1sxqLIgMj51
         eIlEDOMTKRBO7pNMT35HsJUEuTr1vCoWXOlhN9VGdKBx+TalanwZDahYi6XXxFJtgjcA
         ea7IymbKv2p2eywwnW1dV1PMLbPZ/c/q1N/IWggDVaLoCgBPFwkiHo/TTPZ/muonQKK5
         R3Uw==
X-Gm-Message-State: AOJu0YzrCz4tOc3MmImf8ZS7PWEXqT1qnOMDa6IOUM439bji4MFnRZS+
	dS0RApHecOsKYLT0qOeCZbj+KFPMp1ZScUC0+Cc=
X-Google-Smtp-Source: AGHT+IETHL6D59Vth/upiM87WbEPARtsD3ICyqS09KDQ7CkNtpJ/vbdDmbOK7FcLKdojB25pdmnhMcCm/lKNHhv6rlY=
X-Received: by 2002:aa7:8893:0:b0:6d9:a865:7fb7 with SMTP id
 z19-20020aa78893000000b006d9a8657fb7mr46542pfe.13.1704832297820; Tue, 09 Jan
 2024 12:31:37 -0800 (PST)
MIME-Version: 1.0
References: <CAMKF1spDcQJ6OBwqudAPiseOu3PXHrfwkCQ0c60DCbaw8mXuEg@mail.gmail.com>
 <28934.1704816100450184675@lists.yoctoproject.org> <CANNYZj_me5m6HCsYZvJgJamCO9DtnZCBes0JFmuCxfvVdsEHEQ@mail.gmail.com>
In-Reply-To: <CANNYZj_me5m6HCsYZvJgJamCO9DtnZCBes0JFmuCxfvVdsEHEQ@mail.gmail.com>
From: Daniele Lugli <daniele.lugli@gmail.com>
Date: Tue, 9 Jan 2024 21:31:26 +0100
Message-ID: <CADuc0QeWVx7o63WB1J3yjXa5=JR_Kq4DTnNs4ZCWdmfo0n_qbw@mail.gmail.com>
Subject: Re: [yocto] Problem with overlayed recipes
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org, Khem Raj <raj.khem@gmail.com>
Content-Type: multipart/alternative; boundary="0000000000008363ea060e8933e3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 Jan 2024 20:31:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62127

--0000000000008363ea060e8933e3
Content-Type: text/plain; charset="UTF-8"

Il giorno mar 9 gen 2024 alle ore 17:07 Alexander Kanavin <
alex.kanavin@gmail.com> ha scritto:

> You need to inspect ${T}/log.do_rootfs for your image to check what is
> actually being installed.
>
> Also check the packages for simple-local to verify that they contain
> what you expect to see on the image.
>
> Alex
>
> Sorry Alex, my bad. My simple-local and the rt-tests are in log.do_rootfs
and in the target  ssytem.
Probably I booted from the wrong pen drive, I have a bunch of them on my
desk.

So, copying the image recipe from the meta-intel layer to meta-mytest and
modifying it  did work.
I still am curious why the brand new recipe didn't.

Thank you and best regards.

Daniele Lugli
General Logic srl
Viale Curreno, 41
10133 Torino
tel 329 3933041
www.general-logic.com
www.linkedin.com/in/daniele-lugli

--0000000000008363ea060e8933e3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">Il giorno mar 9 gen 2024 alle ore 17:07 Alexander Kanavin &lt;<a=
 href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmail.com</a>&gt; ha s=
critto:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">You need=
 to inspect ${T}/log.do_rootfs for your image to check what is<br>
actually being installed.<br>
<br>
Also check the packages for simple-local to verify that they contain<br>
what you expect to see on the image.<br>
<br>
Alex<br>
<br></blockquote><div>Sorry Alex, my bad. My simple-local and the rt-tests =
are in log.do_rootfs and in the target=C2=A0 ssytem.</div><div>Probably I b=
ooted from the wrong pen drive, I have a bunch of them on my desk.</div><di=
v><br></div><div>So, copying the image recipe from the meta-intel layer to =
meta-mytest and modifying it=C2=A0 did work.</div><div>I still am curious w=
hy the brand new recipe didn&#39;t.</div><div><br></div><div>Thank you and =
best regards.</div><div><br></div><div>
<div><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div><div =
dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div>Daniele Lugli<=
br></div>General Logic srl<br></div><div>Viale Curreno, 41<br></div><div>10=
133 Torino<br></div><div>tel 329 3933041<br></div></div><div><a href=3D"htt=
p://www.general-logic.com" target=3D"_blank">www.general-logic.com</a></div=
><div><a href=3D"http://www.linkedin.com/in/daniele-lugli" target=3D"_blank=
">www.linkedin.com/in/daniele-lugli</a><br></div></div></div></div></div></=
div></div></div>=C2=A0 <br></div></div></div>

--0000000000008363ea060e8933e3--

