Return-Path: <jonaskgandersson@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCEF7C4332F
	for <webhook@archiver.kernel.org>; Thu, 21 Apr 2022 19:59:45 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
 [209.85.208.44])
 by mx.groups.io with SMTP id smtpd.web11.762.1650563820385934395
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Apr 2022 10:57:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=La5QQ7tc;
 spf=pass (domain: gmail.com, ip: 209.85.208.44,
 mailfrom: jonaskgandersson@gmail.com)
Received: by mail-ed1-f44.google.com with SMTP id e30so3983338eda.0
        for <yocto@lists.yoctoproject.org>;
 Thu, 21 Apr 2022 10:57:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=XA9iIP2QLn4t8QgVDOCStLvNUFwzo3HiuUnfVykdA5c=;
        b=La5QQ7tcTbMPEjPvMDDp1v86zYpQYwSD8xeUnoUCeH2titVNREyJ1Rq7+4ykLiq+bI
         SMeBHiDAnnIpNFsng32t7MbtfN6htnBp6C/I+pIYBQVJhcqdZ68q99k5WD57o+7C2bcS
         IVIxckQjsJBjOQhcTSDHywN5tzdr/94n3L2DRjy7IiQOUK+AIsAkD8JBdb1eVyI+r7CE
         WaYGR2l6/5eao4D7H2m31CzKgZmdv0i8j9Ot5GK8mQElbHrzWOU3yPqBloVYvBNjFBwL
         xDkVbqr7KmBkKY4tNlIj+/Eh1RdMs9bG8Wb/VsqbciXROD/58jzmvEYb0vfKKOC5UM5S
         2PKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=XA9iIP2QLn4t8QgVDOCStLvNUFwzo3HiuUnfVykdA5c=;
        b=rW2yGetlCxSGM5vDod+oSTmS2u5HyRjOGviOS9b9gHH9wE0uZwEBp408tRx6Jd2nA+
         P8dbtgnvArrkz5PlGGCC8+vRgEqYhcj7fAvu5ys/8KesiKrzg9Id1q7xhdXtzzzGWA4P
         LAT+YxceC9hDekEM4SAuEY0Ac2U4liu7htU/gBvw7KqFsip/TI77WZJcX+Mf5O8cU5ox
         71zBgLK890VKZrlYV2HxCZgjBICDUG1MmgLMRWEhDpduR2iAmENrTaf1TauZKZ1agESQ
         yxOggyivlomrqBfLG7+QJbdlTWaSSIXZYuv5OdgfCGqSKA8+Nm4UnRQ5d7tR5TXKTWi/
         eV0g==
X-Gm-Message-State: AOAM5301O9dkaiNPR7ETzRZ3f5/pBXgNCBsWOTXVPw6cGPtP/fDSoJsw
	K0kKO5LWbYKzRAMIssfOA2E=
X-Google-Smtp-Source: 
 ABdhPJydY7clM/2sbfAb4Hn1t9/G45BkTx+6LU/y+Nmeurc1SCpEYfBV9Gh/P/Po7+C980BTQGxq6Q==
X-Received: by 2002:a05:6402:2753:b0:423:3895:7031 with SMTP id
 z19-20020a056402275300b0042338957031mr800430edd.170.1650563818711;
        Thu, 21 Apr 2022 10:56:58 -0700 (PDT)
Received: from smtpclient.apple ([81.234.248.32])
        by smtp.gmail.com with ESMTPSA id
 l17-20020a056402231100b0041d98ed7ad8sm11830964eda.46.2022.04.21.10.56.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Apr 2022 10:56:58 -0700 (PDT)
Content-Type: multipart/alternative;
 boundary=Apple-Mail-26146EA8-7F72-41EB-9A20-FB30B94E4EB6
Content-Transfer-Encoding: 7bit
From: Gmail <jonaskgandersson@gmail.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [yocto] secure boot w/ Mender bzImage fails validation #dunfell
Date: Thu, 21 Apr 2022 19:56:57 +0200
Message-Id: <0AB62684-0BE8-49D2-B846-093E8D96285B@gmail.com>
References: 
 <CA+Uj8UwbQFsrbrGDxvMyXz++CoVogJHC0dmwmkOPEaLTfzw0gg@mail.gmail.com>
Cc: "Ballentine, Casey" <casey.ballentine@essvote.com>,
 yocto@lists.yoctoproject.org
In-Reply-To: 
 <CA+Uj8UwbQFsrbrGDxvMyXz++CoVogJHC0dmwmkOPEaLTfzw0gg@mail.gmail.com>
To: Leo <sartre.leo@gmail.com>
X-Mailer: iPhone Mail (19B81)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Apr 2022 19:59:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56834


--Apple-Mail-26146EA8-7F72-41EB-9A20-FB30B94E4EB6
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi

If OTA updates is not an option maybe RAUC can be an option for you?

/Jonas Andersson

> 21 apr. 2022 kl. 17:54 skrev Leo <sartre.leo@gmail.com>:
>=20
> =EF=BB=BF
> Hi Casey,
>=20
> Please have a look at https://git.yoctoproject.org/meta-intel/tree/classes=
/uefi-sign.bbclass, with this class you can sign a bzimage compiled with the=
 kernel efi stub.
>=20
> Regards
> --
> L=C3=A9o
>=20
>> Le jeu. 21 avr. 2022 =C3=A0 16:13, Ballentine, Casey via lists.yoctoproje=
ct.org <casey.ballentine=3Dessvote.com@lists.yoctoproject.org> a =C3=A9crit :=

>> Unfortunately, the uefi-comboapp requires systemd-boot, which Mender does=
n't currently support with mender-partuuid which our system requires for sof=
tware updates over USB. Our devices aren't connected to the internet so OTA u=
pdates aren't an option for us. I've started a discussion on Mender.io to se=
e if someone there can help us solve this issue, but in the meantime, any th=
oughts/suggestions are certainly appreciated!
>>=20
>> -Casey=20
>>=20
>>=20
>=20
>=20
> --=20
> L=C3=A9o
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56831): https://lists.yoctoproject.org/g/yocto/message=
/56831
> Mute This Topic: https://lists.yoctoproject.org/mt/90356869/3618328
> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [jonaskgandersso=
n@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20

--Apple-Mail-26146EA8-7F72-41EB-9A20-FB30B94E4EB6
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Hi<div><br></div><div>If OTA updates is not=
 an option maybe RAUC can be an option for you?</div><div><br><div dir=3D"lt=
r">/Jonas Andersson</div><div dir=3D"ltr"><br><blockquote type=3D"cite">21 a=
pr. 2022 kl. 17:54 skrev Leo &lt;sartre.leo@gmail.com&gt;:<br><br></blockquo=
te></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"ltr=
"><div>Hi Casey,</div><div><br></div><div>Please have a look at <a href=3D"h=
ttps://git.yoctoproject.org/meta-intel/tree/classes/uefi-sign.bbclass" targe=
t=3D"_blank">https://git.yoctoproject.org/meta-intel/tree/classes/uefi-sign.=
bbclass</a>, with this class you can sign a bzimage compiled with the kernel=
 efi stub.</div><div><br></div><div>Regards</div><div>--</div><div>L=C3=A9o<=
br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">Le&nbsp;jeu. 21 avr. 2022 =C3=A0&nbsp;16:13, Ballentine, Casey via <=
a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;case=
y.ballentine=3D<a href=3D"mailto:essvote.com@lists.yoctoproject.org">essvote=
.com@lists.yoctoproject.org</a>&gt; a =C3=A9crit&nbsp;:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">Unfortunately, the uefi-comboapp requi=
res systemd-boot, which Mender doesn't currently support with mender-partuui=
d which our system requires for software updates over USB. Our devices aren'=
t connected to the internet so OTA updates aren't an option for us. I've sta=
rted a discussion on Mender.io to see if someone there can help us solve thi=
s issue, but in the meantime, any thoughts/suggestions are certainly appreci=
ated!<br><br>-Casey
<br>
<br>
<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"gm=
ail_signature">L=C3=A9o</div>
<span></span><br><span>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-</span><=
br><span>Links: You receive all messages sent to this group.</span><br><span=
>View/Reply Online (#56831): https://lists.yoctoproject.org/g/yocto/message/=
56831</span><br><span>Mute This Topic: https://lists.yoctoproject.org/mt/903=
56869/3618328</span><br><span>Mute #dunfell:https://lists.yoctoproject.org/g=
/yocto/mutehashtag/dunfell</span><br><span>Group Owner: yocto+owner@lists.yo=
ctoproject.org</span><br><span>Unsubscribe: https://lists.yoctoproject.org/g=
/yocto/unsub [jonaskgandersson@gmail.com]</span><br><span>-=3D-=3D-=3D-=3D-=3D=
-=3D-=3D-=3D-=3D-=3D-=3D-</span><br><span></span><br></div></blockquote></di=
v></body></html>=

--Apple-Mail-26146EA8-7F72-41EB-9A20-FB30B94E4EB6--

