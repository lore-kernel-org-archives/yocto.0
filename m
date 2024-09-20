Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D431C78829
	for <webhook@archiver.kernel.org>; Fri, 20 Sep 2024 11:34:39 +0000 (UTC)
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com [209.85.161.46])
 by mx.groups.io with SMTP id smtpd.web11.15880.1726832077371765049
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Sep 2024 04:34:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=G5lR5ICw;
 spf=pass (domain: gmail.com, ip: 209.85.161.46, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f46.google.com with SMTP id 006d021491bc7-5e1c65eb68aso1135417eaf.2
        for <yocto@lists.yoctoproject.org>; Fri, 20 Sep 2024 04:34:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726832076; x=1727436876; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=F7tcPxBd+x+DeHUlZjlEn4V5TT/7Ui84BiocqFRQeGw=;
        b=G5lR5ICw9WJo+8yOHtFxG/DZ04hgpQ1+szjiMCW/Y6j89jkj46yR8e1jg6jsM0B3BC
         ex9KypXW3iPMtNeWeOAiIiG+FfHRFVVGDMFEq6nfGxnOF7Jl9YpAutDTmxJnZQuLMIDB
         w+iPMdsFMr6JnjrIhKPhufye3lzdSG+i/kcO2WtmLtnQXQpab1pnKs19zyoelKeVV5IS
         nlcudFdhJ3NjlIx3SDJAXfnCurjyXa5eviCsNttiDwY3ARk0L0s4GntWcjGyMxP1e+tP
         Q5EKt67HFpiz6Sfd2vQTVUGmZmWPZSVkjN/xdlGyhYowXe221jwPd2FGazVweXaYInHM
         qt7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726832076; x=1727436876;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F7tcPxBd+x+DeHUlZjlEn4V5TT/7Ui84BiocqFRQeGw=;
        b=am6rJkluuNkNZyW+srHvTY13UH2xgQ4z/z9kr8af1759ka1RDig58kYspS87tqj6o/
         aTeERP7BlHTKuRYGmTcDNgv2kFFylICL4imHInkFi9m/LVsE5VLs7qzJg8Cz3BOn1NtQ
         sDXW7Y7rNx1yKNmOgfErU9W+lX8n+SUTnLRDzwm4eAiMV3Z4/xcfhRGydU/ok4CKgD1E
         N0TJdCkBxvhAzIXCYc13vM6jAqeKUkynBqmEHdB5tEOqewfkpZPcC/1u9TdmeaKtPbvE
         c1vFMExXPPvPSJlzZlyMESFjIakekOnQlc6DVTFppq7ers2czrevT0beBC+R84nqLMMF
         73rQ==
X-Gm-Message-State: AOJu0YxjFKpwGXhFbzNLuBP0gVpFzN3JCDxjewX55ix4MiLZf2ktHMlS
	BT0jH93Q6xUKcoCRYCH2e+BJAeRM9LsJi6ouCZ90y7I3xYXZ33BxNljItxb22XqJmGSiwVy37LW
	bP7n4IAcGjgla1dc5HSwMhB8X7Hw=
X-Google-Smtp-Source: AGHT+IFUhZsQlHS1vCdqrywSXunasSC7MAu6vwRYW0JUGRopFMypOZdMXNEYl24e6nK+Vrx8V742hUswKtJag/nF8T4=
X-Received: by 2002:a05:6820:1ac1:b0:5e1:ebaa:efc9 with SMTP id
 006d021491bc7-5e58d1a05e7mr999555eaf.8.1726832076506; Fri, 20 Sep 2024
 04:34:36 -0700 (PDT)
MIME-Version: 1.0
References: <CAMKF1sp080KnfUpP9zWVNyh2Jm6HQ-uh=U+HcLCGTFQqzO5_aw@mail.gmail.com>
 <17877.1726817430762729816@lists.yoctoproject.org>
In-Reply-To: <17877.1726817430762729816@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 20 Sep 2024 04:34:25 -0700
Message-ID: <CAMKF1srBGaKNYeAAzW6oOa6pbw72=N8+t_zPNCdkR0x+fgzHrg@mail.gmail.com>
Subject: Re: [yocto] Missing opencv files in toolchain #yocto
To: poornesh.g@mindteck.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000081d04206228b6c3c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 20 Sep 2024 11:34:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63874

--00000000000081d04206228b6c3c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 20, 2024 at 3:30=E2=80=AFAM Poornesh G ( India - Bangalore ) vi=
a
Lists.Yoctoproject.Org <poornesh.g=3Dmindteck.com@lists.yoctoproject.org>
wrote:

> Thanks Khem Raj for your replay.
>
> I followed procedure suggested by you . I used *"bitbake -c populate_sdk
> core-image-minimal"* , now I can get the opencv related files in my
> toolchain.
> But with this it seems few QT5 related files are missing so I could not
> able to cross-compile my Qt5 application which was working with toolchain
> created using "bitbake meta-toolchain-qt5".
>
> *Error log:*
>
> *------------------------------------------------------------------------=
---------------------------------------------------------------*
> poornesh@IBE2113N:~/Desktop/qtapp/opencv/provu-v0.0.4.04$ qmake
> Cannot find feature spec_pre.prf
> Error processing project file:
> /home/poornesh/Desktop/qtapp/opencv/provu-v0.0.4.04/provu.pro
>
> *------------------------------------------------------------------------=
---------------------------------------------------------------*
>
>
> May I get your suggestions on this !
>

Add opencv to TOOLCHAIN_TARGET_TASK variable might help to get into non
image based sdk


>
> Thanks,
>

--00000000000081d04206228b6c3c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Sep 20, 2024 at 3:30=E2=80=AFAM Poornesh G ( India =
- Bangalore ) via <a href=3D"http://Lists.Yoctoproject.Org">Lists.Yoctoproj=
ect.Org</a> &lt;poornesh.g=3D<a href=3D"mailto:mindteck.com@lists.yoctoproj=
ect.org">mindteck.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex"><div>Thanks Khem Raj for your replay.</div>
<div>=C2=A0</div>
<div>I followed procedure suggested by you . I used <strong>&quot;bitbake -=
c populate_sdk core-image-minimal&quot;</strong> , now I can get the opencv=
 related files in my toolchain.</div>
<div>But with this it seems few QT5 related files are missing so I could no=
t able to cross-compile my Qt5 application which was working with toolchain=
 created using &quot;bitbake meta-toolchain-qt5&quot;.<br><br><strong>Error=
 log:</strong></div>
<div><strong>--------------------------------------------------------------=
-------------------------------------------------------------------------</=
strong></div>
<div>poornesh@IBE2113N:~/Desktop/qtapp/opencv/provu-v0.0.4.04$ qmake=C2=A0<=
br>Cannot find feature spec_pre.prf<br>Error processing project file: /home=
/poornesh/Desktop/qtapp/opencv/provu-v0.0.4.04/<a href=3D"http://provu.pro"=
 target=3D"_blank">provu.pro</a></div>
<div><strong>--------------------------------------------------------------=
-------------------------------------------------------------------------</=
strong></div>
<div>=C2=A0</div>
<div>=C2=A0</div>
<div>May I get your suggestions on this !</div></blockquote><div dir=3D"aut=
o"><br></div><div dir=3D"auto">Add opencv to TOOLCHAIN_TARGET_TASK variable=
 might help to get into non image based sdk</div><div dir=3D"auto"><br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex"><div dir=3D"auto"></div>
<div>=C2=A0</div>
<div>=C2=A0</div>
<div>Thanks,</div>
</blockquote></div></div>

--00000000000081d04206228b6c3c--

