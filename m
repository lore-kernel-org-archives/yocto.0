Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7078DC4167B
	for <webhook@archiver.kernel.org>; Tue, 14 Nov 2023 10:35:30 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web11.9943.1699958121325038187
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Nov 2023 02:35:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=i+vG5TwD;
 spf=pass (domain: gmail.com, ip: 209.85.221.47, mailfrom: martin.jansa@gmail.com)
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-32fb1c35fe0so3103368f8f.1
        for <yocto@lists.yoctoproject.org>; Tue, 14 Nov 2023 02:35:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699958120; x=1700562920; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=TT1HKWZaKOswLQ2x54HxV0XvxSTglcMVj+fSSraj7e0=;
        b=i+vG5TwDabXhHE7zus4CwYqnyXM9cARCozev3GwN2JimJdYZ3lrfHzTaUjhWzc/HIp
         kut4CLrJJCLt0hZ4aTAPPRgILwXetRMM2AbQSDNrTM0BZ1k88DX7i9PpV2ZzAQWQRS9h
         RfpS3Mlxy60JYhY2Ve0U2hoEhvr55iPXPhh/BE3wTiMUBYESverrx742cB0AFhEWKcXQ
         vzBAT2ofX5FV/MsdVHHJVjZICJ9htR9YUXPQQ/h1aJwHQKlPdu6JKpavvYt/JRjBrnnS
         lTS0Qy1gxIcQ1PTBJBBpiv4s49Kyfcz7/lBa9GHh/8pHa15RjH2MjYjDEZUVmEGJj8Jf
         TrZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699958120; x=1700562920;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TT1HKWZaKOswLQ2x54HxV0XvxSTglcMVj+fSSraj7e0=;
        b=VoCR0gr9f+KIu6xzyPATnBs/ZeW3nmFToM+WdCQbNM/tyvXNejqkceLX54qp4EpiDT
         OTLXvFCbyg0abwnkclJEMAcURspWA/a/ZbC8sv6rFYdqZ+glFOEb8M5W9SeNxiEfYiiN
         QO1a80z2FAnXdNpzoCbTFEsrD+essu0q5eybttMSS4UQQ1CnVkUIKHME7NxTFXstMLQF
         hAN8Bo13S0p5rnrMC7fNVvwkCrIKSC1LtkPA191v/szPR+AHw/1ha0Zv9t5tLmZwSEJd
         FjyifpfDfqmX7ErefYImPTFp5JydOLRekN18GP/2YH8tVQuVcbdKeBxhhCK6UC8QUbn2
         n+Yg==
X-Gm-Message-State: AOJu0Yzbxd/cTEOZw7LRa4deraBtRNT4ryVZEa4gOYO2sHVOGStQ1cFr
	ftN7a4MNJzbpBPPENwiqiw75JqQJ3Gp5jrEp2eM=
X-Google-Smtp-Source: AGHT+IFXelI5ZZC8ivLzdkk/2aemvmxYNgMnyjUzNVbyCtp6Sxo6Y9JkpAeoNIeDobWWxO6n87EP9egvujyFtNf00lA=
X-Received: by 2002:a5d:64ee:0:b0:32d:a0a9:4785 with SMTP id
 g14-20020a5d64ee000000b0032da0a94785mr6885978wri.7.1699958119494; Tue, 14 Nov
 2023 02:35:19 -0800 (PST)
MIME-Version: 1.0
References: <VtS6.1699940496697949006.LKX7@lists.yoctoproject.org>
In-Reply-To: <VtS6.1699940496697949006.LKX7@lists.yoctoproject.org>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Tue, 14 Nov 2023 11:35:06 +0100
Message-ID: <CA+chaQeKhqn8VrckDda58in0QdnFReL+Q+27PjpccX7PYTyAzQ@mail.gmail.com>
Subject: Re: [yocto] Bitbake error for node js #linux #poky #toolchain #ubuntu #yocto
To: sairajlp99@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d8784c060a1a57dc"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Nov 2023 10:35:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61677

--000000000000d8784c060a1a57dc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You need more ram or at least swap to build nodejs, or restrict
PARALLEL_MAKE for nodejs not to trigger OOMK.

On Tue, Nov 14, 2023 at 11:20=E2=80=AFAM <sairajlp99@gmail.com> wrote:

> Hi iam trying to build pionix ti AM62x https://github.com/PionixPublic
> EVSE SDK
> Bitbake builds till 99 percent and last module nodejs runs for 2 hours an=
d
> gets error and system experience freeze iam using Linux host machine of
> latest 22.04 version with 500gb of storage and Ram of 16gb
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61676):
> https://lists.yoctoproject.org/g/yocto/message/61676
> Mute This Topic: https://lists.yoctoproject.org/mt/102580846/3617156
> Mute #poky:https://lists.yoctoproject.org/g/yocto/mutehashtag/poky
> Mute #toolchain:
> https://lists.yoctoproject.org/g/yocto/mutehashtag/toolchain
> Mute #ubuntu:https://lists.yoctoproject.org/g/yocto/mutehashtag/ubuntu
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Mute #linux:https://lists.yoctoproject.org/g/yocto/mutehashtag/linux
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> martin.jansa@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000d8784c060a1a57dc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You need more ram or at least swap to build nodejs, or res=
trict PARALLEL_MAKE for nodejs not to trigger OOMK.</div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 14, 2023 at =
11:20=E2=80=AFAM &lt;<a href=3D"mailto:sairajlp99@gmail.com">sairajlp99@gma=
il.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">Hi iam trying to build pionix ti AM62x <a href=3D"https://github.com/=
PionixPublic" target=3D"_blank">https://github.com/PionixPublic</a> EVSE SD=
K=C2=A0<br>Bitbake builds till 99 percent and last module nodejs runs for 2=
 hours and gets error and system experience freeze iam using Linux host mac=
hine of latest 22.04 version with 500gb of storage and Ram of 16gb
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#61676): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/61676" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/61676</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/102580846/361=
7156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/102580846/3617156</a><br>
Mute #poky:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/po=
ky" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/y=
octo/mutehashtag/poky</a><br>
Mute #toolchain:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehasht=
ag/toolchain" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproje=
ct.org/g/yocto/mutehashtag/toolchain</a><br>
Mute #ubuntu:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/=
ubuntu" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/mutehashtag/ubuntu</a><br>
Mute #yocto:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/y=
octo" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g=
/yocto/mutehashtag/yocto</a><br>
Mute #linux:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/l=
inux" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g=
/yocto/mutehashtag/linux</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:martin.jansa@gmail.com" target=3D"_blank">martin=
.jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000d8784c060a1a57dc--

