Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F164BC19F2D
	for <webhook@archiver.kernel.org>; Tue,  9 Aug 2022 09:27:16 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web10.9789.1660037229306872583
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Aug 2022 02:27:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=eX6EYG9v;
 spf=pass (domain: gmail.com, ip: 209.85.128.45,
 mailfrom: martin.jansa@gmail.com)
Received: by mail-wm1-f45.google.com with SMTP id
 s11-20020a1cf20b000000b003a52a0945e8so3851556wmc.1
        for <yocto@lists.yoctoproject.org>;
 Tue, 09 Aug 2022 02:27:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=XrIBfWursIdEkkL9DLRnZ5dDlRUsHU6HWOGBmCUxl8o=;
        b=eX6EYG9va6KO96hJCd5apUHumb4MTZ32qfGg04Z4IyCS9gS32C9w76mw4wHMCc/uRN
         SL162FgkVIsGGDupT28muzzNt5BUoszQu3TI9Tn93MLH5W3IhyKGO2RA9mjs7s5A55LK
         UBWezXUvIOueOxo1pRMyjfilEh0Hx3MMe1LzyemCvG2HZPRWDlUo/pPpYah2iQdXuDRz
         YLxn7W1S3s8b8PTQUWY0j7QV4F95UfDOkWTfpqYOc+S+u3meOy2Qze5sCiEVUaIC0J+f
         WoDnn5yPtNWl6f4GoAS3xS0z8N7e2KbPJdkiE+3bRf7ZCNlivaXCmUX6KnvO7xfOFd8P
         IEvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=XrIBfWursIdEkkL9DLRnZ5dDlRUsHU6HWOGBmCUxl8o=;
        b=bC4mX4tDSLAQhKtPLy94yAvT4D8HJ5JTxiQWxZnIBiftHM8a8Hyz6XFmsDs51mdoPs
         bW013NWbVWDGM4Vgs3qwI9+056HfMr7D78bdm6GAUiBeTvuNYPUgLuuGtCxZzNWv2mdx
         El8cNYYnbYFyk0DKdvlOfi6EGVrKQ3AQtNHEnxInIggE3SefgBKSk5g782980ayf2KU4
         o88Wb86vxVCpGNIjVL6guZtM6scLh4b/C1kNfGP9bL7Dr3RXqEYLA621eZCFFcUf7+3v
         46vL02b7icq/IiOKN7IUfuBCTp9l0dJDtbYcuZUmvzSzkqAR8UlPiX4VtnSjlSmpZOFj
         GEyg==
X-Gm-Message-State: ACgBeo1U2E8RyDgYAwbHSQWOcWezEbCSBWK35Y7l5ma2HwfRSPWDV04g
	DWrQDcYZY4IE6P2+I5v29L0Sd8OZBZhDTOZ41jk=
X-Google-Smtp-Source: 
 AA6agR4rqUKCXKeRcdh1owhuxCAJxMZNa1EWUE6f6G0B8J0D58+xyRcNuXbEUlaRK4IMlUjs9pJExn9429hJEDz4sDg=
X-Received: by 2002:a05:600c:2206:b0:3a5:2b80:c80f with SMTP id
 z6-20020a05600c220600b003a52b80c80fmr9369168wml.2.1660037227519; Tue, 09 Aug
 2022 02:27:07 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAH+Kq0w1RYu8UKzD0PMJfaFhQM5dopmKUJTXF3RFDULwA09Lug@mail.gmail.com>
In-Reply-To: 
 <CAH+Kq0w1RYu8UKzD0PMJfaFhQM5dopmKUJTXF3RFDULwA09Lug@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Tue, 9 Aug 2022 11:26:20 +0200
Message-ID: 
 <CA+chaQdMET-RP124EmuD=v1mOiBUZ_jzT=XPr02jTM4nd8foaQ@mail.gmail.com>
Subject: Re: [yocto] How to insure SRCREV is consistent with PV
To: Philippe Midol-Monnet <philippe.midol-monnet@easymile.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000042a39905e5cb89ac"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 Aug 2022 09:27:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57813

--00000000000042a39905e5cb89ac
Content-Type: text/plain; charset="UTF-8"

In webOS we use do_unpack postinst which checks that the SRCREV matches
with the expected tag name and that the tag is annotated, see
https://github.com/webosose/meta-webosose/blob/master/meta-webos/classes/webos_enhanced_submissions.bbclass#L117

Then for our own components (mostly using CMake) we also pass the version
from the recipe into CMake:
https://github.com/webosose/meta-webosose/blob/master/meta-webos/classes/webos_cmake.bbclass#L30
which is then compared with the version inside the component source during
the build:
https://github.com/webosose/cmake-modules-webos/blob/c3a5d821d1723c89936eaca82dc6d15605ad45ee/webOS/webOS.cmake#L530
so you cannot claim different version even if you tag matches it.

It's a bit more complicated, because we use WEBOS_VERSION variable which is
then split into PV (VERSION + SUBMISSION) and SRCREV,
but with enforced consistency across all our components this worked quite
well.

Cheers,

On Tue, Aug 9, 2022 at 11:00 AM Philippe Midol-Monnet <
philippe.midol-monnet@easymile.com> wrote:

> Hi
>
> Since the last version of bibake it looks like SRCREV must be set with a
> SHA1 in order to fetch source from a git repository. We previously set it
> with a tag corresponding to PV.
> Manually retrieving the sha1 of the commit of a tag can easily lead to
> mistakes.
>
> Is there a way to ensure that the SRCREV is consistent with  PV?
>
> Regards
>
> Philippe
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57812):
> https://lists.yoctoproject.org/g/yocto/message/57812
> Mute This Topic: https://lists.yoctoproject.org/mt/92911220/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> Martin.Jansa@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--00000000000042a39905e5cb89ac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">In webOS we use do_unpack postinst which checks that the S=
RCREV matches with the expected tag name and that the tag is annotated, see=
<div><a href=3D"https://github.com/webosose/meta-webosose/blob/master/meta-=
webos/classes/webos_enhanced_submissions.bbclass#L117">https://github.com/w=
ebosose/meta-webosose/blob/master/meta-webos/classes/webos_enhanced_submiss=
ions.bbclass#L117</a><br></div><div><br></div><div>Then for our own compone=
nts (mostly using CMake) we also pass the version from the recipe into CMak=
e:</div><div><a href=3D"https://github.com/webosose/meta-webosose/blob/mast=
er/meta-webos/classes/webos_cmake.bbclass#L30">https://github.com/webosose/=
meta-webosose/blob/master/meta-webos/classes/webos_cmake.bbclass#L30</a><br=
></div><div>which is then compared with the version inside the component so=
urce during the build:</div><div><a href=3D"https://github.com/webosose/cma=
ke-modules-webos/blob/c3a5d821d1723c89936eaca82dc6d15605ad45ee/webOS/webOS.=
cmake#L530">https://github.com/webosose/cmake-modules-webos/blob/c3a5d821d1=
723c89936eaca82dc6d15605ad45ee/webOS/webOS.cmake#L530</a><br></div><div>so =
you cannot claim different version even if you tag matches it.</div><div><b=
r></div><div>It&#39;s a bit more complicated, because we use WEBOS_VERSION =
variable which is then split into PV (VERSION=C2=A0+ SUBMISSION) and SRCREV=
,</div><div>but with enforced consistency across all our components this wo=
rked quite well.</div><div><br></div><div>Cheers,</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 9, 2022 =
at 11:00 AM Philippe Midol-Monnet &lt;<a href=3D"mailto:philippe.midol-monn=
et@easymile.com">philippe.midol-monnet@easymile.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi=
</div><div><br></div><div>Since the last version of bibake it looks like SR=
CREV must be set with a SHA1 in order to fetch source from a git repository=
. We previously set it with a tag corresponding to PV.</div><div>Manually r=
etrieving the sha1 of the commit of a tag can easily lead to mistakes.</div=
><div><br></div><div>Is there a way to ensure that the SRCREV is consistent=
 with=C2=A0 PV?</div><div><br></div><div>Regards</div><div><br></div><div>P=
hilippe <br></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#57812): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/57812" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/57812</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/92911220/3617=
156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/92911220/3617156</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:Martin.Jansa@gmail.com" target=3D"_blank">Martin=
.Jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--00000000000042a39905e5cb89ac--

