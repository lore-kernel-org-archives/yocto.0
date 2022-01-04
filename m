Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922FAC433EF
	for <webhook@archiver.kernel.org>; Tue,  4 Jan 2022 20:31:50 +0000 (UTC)
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com
 [209.85.222.54])
 by mx.groups.io with SMTP id smtpd.web10.1640.1641328309091725009
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Jan 2022 12:31:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=eNuRWytj;
 spf=pass (domain: gmail.com, ip: 209.85.222.54,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f54.google.com with SMTP id p37so65140990uae.8
        for <yocto@lists.yoctoproject.org>;
 Tue, 04 Jan 2022 12:31:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EdqVo+lXOedzoGLoeNyOoK0OBMJFKmC0AxxZgG3xdW4=;
        b=eNuRWytjA4KGiw3v5qCj6zxZSOlDyc7smOvUTZvxBEqgp/IQWSKypI10YD2INX3mtC
         B5t6V5AJH8fbdaNpZRLwbXfvmdlcxq9QFqhtjkCLd9oWiX0FONAxx3LiUsb31SepSkXP
         nkKqeavPoaaWNRoRg44dLy8XoOdWUMCGOuI+cPkXm6ABOlQu8SRfYkckMAd9msA5xXf8
         89qEIO9S0dHiQ2z86HV1pOFlOyfMMLqpvXDsro1uDxJT/oTgHGfBSWWX3y+/aRkv1VgS
         YjCg/mekyJE9tfRh/dPK5iZyKWuEVdu1vE0GSCUbz/LqjTshKYUQZ89AqhKmCZrsZZ1f
         da6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EdqVo+lXOedzoGLoeNyOoK0OBMJFKmC0AxxZgG3xdW4=;
        b=HOkgXLxVNzxKn/auabKOhMbHUnSynFkAqJonl4DPrR5QMejbdt0n7TDGD4qk3E7o/5
         2V+GzRQPztrc+unWfbTOkxBSLFyZTX35UBATbXiRO8d5/pG5CcOiayFzzui3iake2dqv
         eQ/1H+3Te8f503FZ8XYHUniLSJNsY5qvbv2/gbBWqEJ8gVGi7HFgioO3BcjVoJs7FpJV
         G40Vi6QobAlUvYpFBLX5C5f0+GIksQ2GVdXO2vyJzAfRvl8U5bz9DyJQWKH0+AwFDzlA
         dvxx/D445gZeXD0p8jvWY8acXfsvtR4DPl8cXeHTC57MRMjhjXKejCqJ1JtQsO7QB1qg
         gVlQ==
X-Gm-Message-State: AOAM531D+zMFyd93RE+iktKDpHQ548TCqpDjisbaIDR5k/AeRnVh92U6
	8lkBO57FX7vhXgLfT4KLxnhwi/E4jGsFJ1uqPsw=
X-Google-Smtp-Source: 
 ABdhPJwJxY3Tufwv59498wlrj5Oxum5SDnuFkakOHKR3wZI70yWGqxtVSJmUUR9zTItICnMtWuhmqKqi30auzDtLPCA=
X-Received: by 2002:a05:6102:370c:: with SMTP id
 s12mr14274468vst.42.1641328308157;
 Tue, 04 Jan 2022 12:31:48 -0800 (PST)
MIME-Version: 1.0
References: <MADEUP.16C728626400C98E.31076@lists.yoctoproject.org>
In-Reply-To: <MADEUP.16C728626400C98E.31076@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 4 Jan 2022 21:31:37 +0100
Message-ID: 
 <CANNYZj86UR7e77HXjtf50Vz-jcbUtMc_q72QYJrw_tbdTmmndg@mail.gmail.com>
Subject: Re: [yocto] BBLAYERS
To: steven.monsees@baesystems.com
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c4814105d4c78616"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Jan 2022 20:31:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55731

--000000000000c4814105d4c78616
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You need to set up a separate build directory for each of the layer
configurations: the point of the build directory is to actually specify
which layers you want. Just make sure they all share sstate cache dir, and
downloads dir, and bitbake will reuse what it can.

Alex

On Tue, 4 Jan 2022 at 20:36, Monsees, Steven C (US) via
lists.yoctoproject.org <steven.monsees=3Dbaesystems.com@lists.yoctoproject.=
org>
wrote:

>
>
> Is it possible to use BBMASK to remove from builds ?
>
>
>
> *From:* Monsees, Steven C (US)
> *Sent:* Tuesday, January 4, 2022 2:32 PM
> *To:* 'yocto@lists.yoctoproject.org' <yocto@lists.yoctoproject.org>
> *Subject:* RE: BBLAYERS
>
>
>
>
>
> Any suggestions=E2=80=A6 ?
>
>
>
> *From:* Monsees, Steven C (US)
> *Sent:* Tuesday, January 4, 2022 7:22 AM
> *To:* yocto@lists.yoctoproject.org
> *Subject:* BBLAYERS
>
>
>
>
>
> Under my Yocto build, I have basically 2 build directories (one for Arm
> and one for Intel platforms)=E2=80=A6 each build directory has its own bb=
layer.conf.
>
>
>
> Under each of these directories I build multiple images for each platform=
=E2=80=A6
>
>
>
> If say, on the Intel side, I can build for 3 MACHINES creating 3 unique
> kernel images A, B, and C (they all share a common bblayer.conf) and I th=
en
> want to modify one kernel to include meta-virtualization=E2=80=A6
>
>
>
> *How would I manage the bblayer.conf to add this layer to only B=E2=80=99=
s build
> so as not to impact the building of =E2=80=9CA=E2=80=9D  or =E2=80=9CC=E2=
=80=9D ?*
>
>
>
> If I just add it to the common bblayer.conf, =E2=80=9CA=E2=80=9D and =E2=
=80=9CC=E2=80=9D are impacted by
> the addition and show:
>
>
>
> WARNING: You have included the meta-virtualization layer, but
> 'virtualization' has not been enabled in your DISTRO_FEATURES. Some
> bbappend files may not take effect. See the meta-virtualization README fo=
r
> details on enabling virtualization support.
>
>
>
> Thanks,
>
> Steve
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55730):
> https://lists.yoctoproject.org/g/yocto/message/55730
> Mute This Topic: https://lists.yoctoproject.org/mt/88188555/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000c4814105d4c78616
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You need to set up a separate build directory for eac=
h of the layer configurations: the point of the build directory is to actua=
lly specify which layers you want. Just make sure they all share sstate cac=
he dir, and downloads dir, and bitbake will reuse what it can.</div><div><b=
r></div><div>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Tue, 4 Jan 2022 at 20:36, Monsees, Steven C (=
US) via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a=
> &lt;steven.monsees=3D<a href=3D"mailto:baesystems.com@lists.yoctoproject.=
org">baesystems.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_958662905684647653WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<u=
></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Is it possible =
to use BBMASK to remove from builds ?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<u=
></u></span></p>
<div>
<div style=3D"border-color:rgb(225,225,225) currentcolor currentcolor;borde=
r-style:solid none none;border-width:1pt medium medium;padding:3pt 0in 0in"=
>
<p class=3D"MsoNormal"><b>From:</b> Monsees, Steven C (US) <br>
<b>Sent:</b> Tuesday, January 4, 2022 2:32 PM<br>
<b>To:</b> &#39;<a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_=
blank">yocto@lists.yoctoproject.org</a>&#39; &lt;<a href=3D"mailto:yocto@li=
sts.yoctoproject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt=
;<br>
<b>Subject:</b> RE: BBLAYERS<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<u=
></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Any suggestions=
=E2=80=A6 ?<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><u></u>=C2=A0<u=
></u></span></p>
<div>
<div style=3D"border-color:rgb(225,225,225) currentcolor currentcolor;borde=
r-style:solid none none;border-width:1pt medium medium;padding:3pt 0in 0in"=
>
<p class=3D"MsoNormal"><b>From:</b> Monsees, Steven C (US) <br>
<b>Sent:</b> Tuesday, January 4, 2022 7:22 AM<br>
<b>To:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a><br>
<b>Subject:</b> BBLAYERS<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Under my Yocto build, I have basically 2 build direc=
tories (one for Arm and one for Intel platforms)=E2=80=A6 each build direct=
ory has its own bblayer.conf.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Under each of these directories I build multiple ima=
ges for each platform=E2=80=A6
<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">If say, on the Intel side, I can build for 3 MACHINE=
S creating 3 unique kernel images A, B, and C (they all share a common bbla=
yer.conf) and I then want to modify one kernel to include meta-virtualizati=
on=E2=80=A6
<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><b>How would I manage the bblayer.conf to add this l=
ayer to only B=E2=80=99s build so as not to impact the building of =E2=80=
=9CA=E2=80=9D=C2=A0 or =E2=80=9CC=E2=80=9D ?<u></u><u></u></b></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">If I just add it to the common bblayer.conf, =E2=80=
=9CA=E2=80=9D and =E2=80=9CC=E2=80=9D are impacted by the addition and show=
:<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">WARNING: You have included the meta-virtualization l=
ayer, but &#39;virtualization&#39; has not been enabled in your DISTRO_FEAT=
URES. Some bbappend files may not take effect. See the meta-virtualization =
README for details on enabling virtualization
 support.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks,<u></u><u></u></p>
<p class=3D"MsoNormal">Steve<u></u><u></u></p>
</div>
</div>

<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55730): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55730" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/55730</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/88188555/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/88188555/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000c4814105d4c78616--

