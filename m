Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEF1C54E64
	for <webhook@archiver.kernel.org>; Sat, 23 Mar 2024 00:13:36 +0000 (UTC)
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
 by mx.groups.io with SMTP id smtpd.web11.10445.1711152807990855113
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Mar 2024 17:13:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=aZaYnoII;
 spf=pass (domain: gmail.com, ip: 209.85.219.175, mailfrom: ticotimo@gmail.com)
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-dcc80d6006aso2740418276.0
        for <yocto@lists.yoctoproject.org>; Fri, 22 Mar 2024 17:13:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711152807; x=1711757607; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=pnaZZ4DW23tUk3RW/PFFB2g4Ex8hyDAs0uBdnVMkTdA=;
        b=aZaYnoIIK9QIRpKOsMQP1HuZzYb8mryxm6m4LSRfrckGGPosdVImvwkHP8c0hBwwil
         h5eATB/cD9bAdAbrdC4mi8E++8pkHBuDKaK1JEerI5k7vcTgzCG0EEujIpHYIWFeH8wd
         SiRD97Cv5G+0tikB2i8Fj6g9dcwWpGEIMppWDmdpQr6TBiv+kJ8bg1eUird1yTcrg82j
         heNl4C9Pgt+dQNoQBgw9+30vw5ydWp5zlo50qQBtzm7NKpm/CQ/LC78h8uK3qeafnV3s
         lTIXr4toCxEOXWSmnSh3uwe1moINF+5TcX4YLJxix3EP7A2QILGEHjrTDM7G95PhsR0q
         l3Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711152807; x=1711757607;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pnaZZ4DW23tUk3RW/PFFB2g4Ex8hyDAs0uBdnVMkTdA=;
        b=llomqTKGDfii5xvwASqu4nmsz88t3p9GUTtf8BxnLwU1O9shC09ZzElVTrPRb/Avj3
         jK/MyUuOyY70Ibs1za35raiD5RZnOFrmBfA57haQ/y365VdD6UcoyBlX5C2j6x/CVAuy
         7d+EN4nZfvFdzgHBUyC1diuRUBn5kb5elKcFkyt6yf7xrqHfhjwhCob03tS/OoIzkJsK
         vaFgsOYvmgaHBV/miFWZGmliJGxiWYx7nkl9LaCDPQ724NgmUQBqLgq3AyRPulRKLdvs
         KgKWnGn1pKUa1vK4C+u1f/v+aFAhjG9wvVHZIgh/JGQkizbfPuyOuf3+WkeqJ9s5uHnJ
         8PDQ==
X-Forwarded-Encrypted: i=1; AJvYcCUFsuCYZV/aQvVgCs6MxqGTn69vnbKuIkycWsqkPfbinUIEeeQxiuniDSg/ZQzwMvogEQkhz9jwmQ7UZQTnk7dYAoMxrV6aCOP7ATuy
X-Gm-Message-State: AOJu0YwwvLV5ITbeLToGrH5Fqmc5N0W6Gi0Rsjan1hC9p7onuc8CtG1H
	IhlmkiCSXb3fMqQBZhpNrF1cPD2VHAwRFVSW4DJVxZBFCwM99DHdPo3b0rLFfvlOXn+rhYv+3FM
	/kKv90SsByu54tJHkn5H0DaZnHnM=
X-Google-Smtp-Source: AGHT+IEp3J+ADPEu1mOB1i3ygt4+CvRl5FSy98DnhAqrWoZUdKaU1iAMZ1kWcq400Utg2U181VqrPrzXGJ5QFK4yeIQ=
X-Received: by 2002:a5b:a8e:0:b0:dcf:411a:3d22 with SMTP id
 h14-20020a5b0a8e000000b00dcf411a3d22mr812629ybq.60.1711152807192; Fri, 22 Mar
 2024 17:13:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAOSpxdb=_8337e_QyL_mgMdXKgAjEkp3W5VxEK_kk+p+7ZGzaA@mail.gmail.com>
 <5367.1711114785536349162@lists.yoctoproject.org> <CANx9H-DnRaOrC_hHY5THrOCzc8taWb9ak3wX0Bs=23UCyCN+Eg@mail.gmail.com>
In-Reply-To: <CANx9H-DnRaOrC_hHY5THrOCzc8taWb9ak3wX0Bs=23UCyCN+Eg@mail.gmail.com>
From: Tim Orling <ticotimo@gmail.com>
Date: Fri, 22 Mar 2024 17:13:16 -0700
Message-ID: <CANx9H-D6hJ9uCTknO2Y2dGeGOVYiyrZoB083yGapYx4ehtAv-A@mail.gmail.com>
Subject: Re: [yocto] Final dunfell release build on April 15, 2024
To: mlynch@hi-techniques.com, yocto@lists.yoctoproject.org
Cc: Steve Sakoman <steve@sakoman.com>
Content-Type: multipart/alternative; boundary="0000000000003ab106061448cf94"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 23 Mar 2024 00:13:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62828

--0000000000003ab106061448cf94
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 22, 2024 at 5:12=E2=80=AFPM Tim Orling <ticotimo@gmail.com> wro=
te:

>
>
> On Fri, Mar 22, 2024 at 6:39=E2=80=AFAM <mlynch@hi-techniques.com> wrote:
>
>> Does Dunfell EOL mean builds for TI platforms that actually build and
>> boot can be done using a newer branch?  E.G.  As of yet, I have been una=
ble
>> to build for TI "beagle" platforms that will boot using any branch other
>> than Dunfell.  I tried both master and kirkstone, a few weeks ago, and
>> neither produces anything bootable for the "beagle" platforms.
>>
>
> You should really ask on the meta-ti mailing list. Unless you mean the
> beagle-yocto BSP support in poky/meta-poky-bsp.
>

I meant meta-yocto-bsp

>
>
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#62824):
>> https://lists.yoctoproject.org/g/yocto/message/62824
>> Mute This Topic: https://lists.yoctoproject.org/mt/105069080/924729
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>> ticotimo@gmail.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>
>>

--0000000000003ab106061448cf94
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Mar 22, 2024 at 5:12=E2=80=AFPM Tim Orling &lt;<a h=
ref=3D"mailto:ticotimo@gmail.com">ticotimo@gmail.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left-width:1px;border-left-style:solid;padding-left:1ex;border-left-color=
:rgb(204,204,204)"><div><br></div><div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Fri, Mar 22, 2024 at 6:39=E2=80=AFAM &l=
t;<a href=3D"mailto:mlynch@hi-techniques.com" target=3D"_blank">mlynch@hi-t=
echniques.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:soli=
d;padding-left:1ex;border-left-color:rgb(204,204,204)"><p>Does Dunfell EOL =
mean builds for TI platforms that actually build and boot can be done using=
 a newer branch?=C2=A0 E.G.=C2=A0 As of yet, I have been unable to build fo=
r TI &quot;beagle&quot; platforms that will boot using any branch other tha=
n Dunfell.=C2=A0 I tried both master and kirkstone, a few weeks ago, and ne=
ither produces anything bootable for the &quot;beagle&quot; platforms.</p><=
/blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">You should really=
 ask on the meta-ti mailing list. Unless you mean the beagle-yocto BSP supp=
ort in poky/meta-poky-bsp.</div></div></div></blockquote><div dir=3D"auto">=
<br></div><div dir=3D"auto">I meant meta-yocto-bsp=C2=A0</div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1p=
x;border-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,20=
4)"><div><div class=3D"gmail_quote"><div dir=3D"auto"></div></div></div><di=
v><div class=3D"gmail_quote"><div dir=3D"auto"><br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;bo=
rder-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)">=
<p dir=3D"auto"></p>
<p>=C2=A0</p>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#62824): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/62824" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/62824</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/105069080/924=
729" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/105069080/924729</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>
</blockquote></div></div>

--0000000000003ab106061448cf94--

