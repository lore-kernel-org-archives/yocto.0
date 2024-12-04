Return-Path: <ashishm@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B561AE7716D
	for <webhook@archiver.kernel.org>; Wed,  4 Dec 2024 05:36:30 +0000 (UTC)
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com [209.85.161.51])
 by mx.groups.io with SMTP id smtpd.web11.7290.1733290584613460519
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2024 21:36:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=LZ2KP9Ul;
 spf=pass (domain: mvista.com, ip: 209.85.161.51, mailfrom: ashishm@mvista.com)
Received: by mail-oo1-f51.google.com with SMTP id 006d021491bc7-5f22ea6d645so2273113eaf.2
        for <yocto@lists.yoctoproject.org>; Tue, 03 Dec 2024 21:36:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google; t=1733290584; x=1733895384; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0EtUDDLArzLnBuvDlxcS6Bx3dLvKQOgZjZhbpJOmgfs=;
        b=LZ2KP9UlkJ9cTlyFnG1ji7pn8WBWC1d6TRyEqUwCuIAbE+RJP9E3L3X0zTLdXjBrWE
         PO4JpxkuvHnIc0ZE86H7A5gOKK7RzIdV3kRvlEFnDR0xUgnJD3FlGDDtPsf2PFVkhzwm
         KO47ymB4PG8YomFC3Meswy5EmDBzKn4pww0N4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733290584; x=1733895384;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0EtUDDLArzLnBuvDlxcS6Bx3dLvKQOgZjZhbpJOmgfs=;
        b=ZvKNUluBaAgaxsE6YGNb2zsr/2+VRNg+gPkt4N6Ki0DnURcjPRkONUb7W5qvLeoXLh
         am+b8H3FkvuhV7Am3Txhroo5Im5R3B9C8Lq2FxpikjPBDTze8aZowiiNTQK4Ua71Zign
         u/EiyBUegVM5H06OwzLGw86BDtMsuN8s5S+lPpD4wgmweIIrfr8j45mtV0LYdM2Bl36U
         KfAcsqZeum85xBHmbOHlau/zAexJu3sGPhp1oCf16cGvOSZxFXVnzVuBhjTxxuyZTpBh
         /ix4QjPwJC9S8RqB2mKRgEfN0uH1gfxm4R1rMxZoP/mPrFHkfwaNrKNjs6emECmKyviC
         1KQw==
X-Gm-Message-State: AOJu0YxK9W9ZgSxQm/7jQpI831SxDo8EZI59X/FF/L1xEzXWnUpmf/Xf
	F5LNIz+47OQPQZ3O7N1eEfDn+Syn3IEDhau688J8Jx9NotinWlBbih1xul9oYZaDdsJLM40v9Es
	6X15whds9CrKNo5qjMzYk/tpg7Ec9HhbDyJ+69kSIlvPEyoawv0U=
X-Gm-Gg: ASbGnctqzIwwrZo1hNH4jZok4NN/06GZfwYh1ykJqqkg0iTqRmSZvM+YEhJ/whqLzOM
	tIlz0nGVoU1cAh4lL+F7Q69dDgbxH4l4=
X-Google-Smtp-Source: AGHT+IEvomvjrHfFhs7QCDWE9f7tIZouy8io0Eya+r7sdeUeTHeqCV9ZX8IZaImT6hMdwgvLn9BfvQPJmXRLgZZ0AZk=
X-Received: by 2002:a05:6820:208:b0:5ba:ec8b:44b5 with SMTP id
 006d021491bc7-5f25adff9f2mr5098306eaf.3.1733290583630; Tue, 03 Dec 2024
 21:36:23 -0800 (PST)
MIME-Version: 1.0
References: <CAPJWBnjZoSJcV4B+mDLzU=jbxOmkNsugvHpYRp-oEFeuuXTO-g@mail.gmail.com>
In-Reply-To: <CAPJWBnjZoSJcV4B+mDLzU=jbxOmkNsugvHpYRp-oEFeuuXTO-g@mail.gmail.com>
From: Ashish Mishra <ashishm@mvista.com>
Date: Wed, 4 Dec 2024 11:06:12 +0530
Message-ID: <CAP2OjciQCvBBpA8zD4nA57GaY-aao-BVhD4in6XfrwDbOsS8Jw@mail.gmail.com>
Subject: Re: [yocto] How to install files in root directory
To: yocto@lists.yoctoproject.org, hassanchattarki@gmail.com
Content-Type: multipart/alternative; boundary="00000000000087bb6a06286b29b9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Dec 2024 05:36:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64396

--00000000000087bb6a06286b29b9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Hassan ,

You can create an install or install append function as per your
requirement
Example:

do_install() {
     install -d  ${D}${sysconfdir}/YOUR-CUSTOM-DIR
     install -m 644 ${WORKDIR}/TEST-FILE ${D}${sysconfdir}/YOUR-CUSTOM-DIR
}

The Macro for standard directories like sysconfdir you can get from
https://wiki.koansoftware.com/index.php/Directories_and_installation_variab=
les

Thanks ,
Ashish




On Wed, Dec 4, 2024 at 10:22=E2=80=AFAM MOHAMMED HASSAN via lists.yoctoproj=
ect.org
<hassanchattarki=3Dgmail.com@lists.yoctoproject.org> wrote:

> Hi guys,
> I am unable to install my files, binary, etc in the /root directory. I
> have searched the documentation and tried but to no avail.
> Please share some snippet or recipe code for my reference.
>
>
> Thanks
> Hassan
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64394):
> https://lists.yoctoproject.org/g/yocto/message/64394
> Mute This Topic: https://lists.yoctoproject.org/mt/109914791/4806067
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> ashishm@mvista.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000087bb6a06286b29b9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Hassan ,=C2=A0<div><br></div><div>You can create an ins=
tall or install append function as per your requirement=C2=A0</div><div>Exa=
mple:</div><div><br></div><div>do_install() {<br>=C2=A0 =C2=A0 =C2=A0instal=
l -d =C2=A0${D}${sysconfdir}/YOUR-CUSTOM-DIR<br>=C2=A0 =C2=A0 =C2=A0install=
 -m 644 ${WORKDIR}/TEST-FILE ${D}${sysconfdir}/YOUR-CUSTOM-DIR<br>}<br><br>=
The Macro for standard directories like sysconfdir you can get from <br><a =
href=3D"https://wiki.koansoftware.com/index.php/Directories_and_installatio=
n_variables">https://wiki.koansoftware.com/index.php/Directories_and_instal=
lation_variables</a><br></div><div><br></div><div>Thanks ,<br>Ashish=C2=A0<=
/div><div><br></div><div><br></div><div><br></div></div><br><div class=3D"g=
mail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On =
Wed, Dec 4, 2024 at 10:22=E2=80=AFAM MOHAMMED HASSAN via <a href=3D"http://=
lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;hassanchattarki=3D<a=
 href=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctoproj=
ect.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">Hi guys,<div dir=3D"auto">I am unable to install my files, binary, e=
tc in the /root directory. I have searched the documentation and tried but =
to no avail.=C2=A0</div><div dir=3D"auto">Please share some snippet or reci=
pe code for my reference.</div><div dir=3D"auto"><br></div><div dir=3D"auto=
"><br></div><div dir=3D"auto">Thanks</div><div dir=3D"auto">Hassan</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#64394): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/64394" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/64394</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/109914791/480=
6067" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/109914791/4806067</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:ashishm@mvista.com" target=3D"_blank">ashishm@mv=
ista.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--00000000000087bb6a06286b29b9--

