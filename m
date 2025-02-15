Return-Path: <ecordonnier@snap.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2E11C021A0
	for <webhook@archiver.kernel.org>; Sat, 15 Feb 2025 22:05:48 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
 by mx.groups.io with SMTP id smtpd.web11.18600.1739657139053527146
 for <yocto@lists.yoctoproject.org>;
 Sat, 15 Feb 2025 14:05:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@snap.com header.s=google header.b=O23RLulj;
 spf=pass (domain: snapchat.com, ip: 209.85.218.51, mailfrom: ecordonnier@snapchat.com)
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-ab7e3d0921bso573934466b.3
        for <yocto@lists.yoctoproject.org>; Sat, 15 Feb 2025 14:05:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snap.com; s=google; t=1739657137; x=1740261937; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RYB+057LleIS9ZlW0b0xocoMZyztI1xGmtEM2m8gfSM=;
        b=O23RLuljKD+hliAPnn0WcAU2Z3+Z5F1vNcSvDVSYeUesvFQWGxXsAkb/cKpgm03lSG
         qR7LBaIEctVCKo5QAxFI0zsqhf7yd1tzVEmvoioEqocQsQeDvdIM9+K5MRWPNYJDEkGo
         54bB+95kAAnuCt/nofgVV9x7g0deYnyXKhiNA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739657137; x=1740261937;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RYB+057LleIS9ZlW0b0xocoMZyztI1xGmtEM2m8gfSM=;
        b=uL/GFROkIe2qZH+6DGrnypOOU1/S8ihfF0j6fxmnhKV0a8mMDZ1A08G4CP6qsagYNW
         7DVNTJut27w+9FBQjk3d2biQRCX90ukIC7LCI7gTYgryyFarF9ZcCxAyezfXXJQH88MP
         ImSs8azSS/KCQrcoYR96bYAOBweQ4GK5wkXhbZIdq11oBAro7TU9ZCkZPjKopzUDSlbL
         tD0MeryV/PoEWu3SQdmTbYm9ga0HV/HdMbp3yMeJOtlGFpYwYgMxlzCNstxNnE8eMNAo
         R7vx8cwi9BXg25xvNBIrF8NgMAFqzH1CQZ0M1B/v8WKgh8KtcPAY4yuEBjQ30YVj71ot
         r0bg==
X-Gm-Message-State: AOJu0Yy6gBIlmg1IQbXEgXcs2waO9Gyy21E5GoAAja8C+BHCHKKMyVM7
	scKEO8c53SyuWRAa8qFHc55dmEunZ4a5Xxu3XiyC6NXhLNKWND2oCNH9CtiQtPOUU4fosU1NX98
	zE9+wYq4V/brE3y4JoKymgYLfICIGYRemEqvl3Ezr581TJB/bZcU=
X-Gm-Gg: ASbGnctsPBvpxkh3dsTjf3MMvvr9qxkBukYvNuTFzSqt8d3c6ESxS4e1sGPP1QgO+Hw
	AsQhJf5QTmHqYITlEVnSmkTjf4YknxKc6kJsD2P3pTK6pBNN4acxexqrufuv5G0yWuxc3ADmQ
X-Google-Smtp-Source: AGHT+IFZ4K8jEfP4Leq+lNZvVY5GWL0tvgSJ2766cQaalSoGDme6pXkoIOZlJIFnJf1cm/99R2FtwOlfnV4JytnzBec=
X-Received: by 2002:a17:906:3117:b0:ab7:b356:62e0 with SMTP id
 a640c23a62f3a-abb711c3ef2mr358213466b.53.1739657136660; Sat, 15 Feb 2025
 14:05:36 -0800 (PST)
MIME-Version: 1.0
References: <182464E92903DD33.31881@lists.yoctoproject.org>
In-Reply-To: <182464E92903DD33.31881@lists.yoctoproject.org>
From: Etienne Cordonnier <ecordonnier@snap.com>
Date: Sat, 15 Feb 2025 23:05:25 +0100
X-Gm-Features: AWEUYZljoIKwJXWtpP7EFRA82wdNCN9HHqVR1dHO-fP7t_2A7Ry4cr3MyYiWGjA
Message-ID: <CAHUKmYZC9RP+ND+Uqbyuuv3WQq=xPnv=Tip7U=Fzru0eGN9n6g@mail.gmail.com>
Subject: Re: [yocto] libstd-rs bug when updating to 5.0.7
To: yocto@lists.yoctoproject.org, ecordonnier@snap.com
Content-Type: multipart/alternative; boundary="000000000000a99f33062e357d59"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 15 Feb 2025 22:05:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64817

--000000000000a99f33062e357d59
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

For reference I think it is this known issue:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14965

On Sat, Feb 15, 2025 at 2:31=E2=80=AFPM Etienne Cordonnier via
lists.yoctoproject.org <ecordonnier=3Dsnap.com@lists.yoctoproject.org> wrot=
e:

> Hi,
> I'm working on a proper fix, but just wanted to give a heads up:
>
> When updating from 5.0.6 to 5.0.7, a patch in binutils  (
> 1e47fd8e4427f9d84048139804f75b83471bab28 ) causes a rebuild of libstd-rs.
> For some unclear reason, libstd-rs then installs a second version of the
> rust standard library into
> e.g. tmp/work/armv8a-poky-linux/libstd-rs/1.75.0/sysroot-destdir/usr/lib/=
rustlib/aarch64-poky-linux-gnu/lib/
>
> This then creates an error compiling rust code down the line:
>
> error[E0464]: multiple candidates for `rmeta` dependency `core` found
>
> followed by tons of rustc errors related to all standard rust keywords
> being unknown.
>
> The work-around is to cleansstate libstd-rs
>
> =C3=89tienne
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64815):
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject=
.org_g_yocto_message_64815&d=3DDwIFaQ&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkIC=
C2epckfdiw&r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&m=3DAZcTPZEqNArE=
OJusEpSFHNm6woFFuwj73K6kON6M9RNln0kho9Jz9EX3YsBmm6Ex&s=3DjIqHMZDxbev8UWweCK=
oO5kZ0eFkfb-zfQS-viKPmvWw&e=3D
> Mute This Topic:
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject=
.org_mt_111199304_7048771&d=3DDwIFaQ&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC=
2epckfdiw&r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&m=3DAZcTPZEqNArEO=
JusEpSFHNm6woFFuwj73K6kON6M9RNln0kho9Jz9EX3YsBmm6Ex&s=3DhXW0CSvJv99SYms_wRK=
b7EOx_sSc41GAl-woFzdcHWA&e=3D
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe:
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject=
.org_g_yocto_unsub&d=3DDwIFaQ&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfd=
iw&r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&m=3DAZcTPZEqNArEOJusEpSF=
HNm6woFFuwj73K6kON6M9RNln0kho9Jz9EX3YsBmm6Ex&s=3DPu8lvjc9qM5WO7HjiYB1YyJCrE=
cLzoNYNm22cUQN9is&e=3D
> [ecordonnier@snap.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000a99f33062e357d59
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">For reference I think it is this known issue:=C2=A0<a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14965">https://bugz=
illa.yoctoproject.org/show_bug.cgi?id=3D14965</a>=C2=A0</div><br><div class=
=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr=
">On Sat, Feb 15, 2025 at 2:31=E2=80=AFPM Etienne Cordonnier via <a href=3D=
"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;ecordonnier=
=3D<a href=3D"mailto:snap.com@lists.yoctoproject.org">snap.com@lists.yoctop=
roject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">Hi,<br>I&#39;m working on a proper fix, but jus=
t wanted to give a heads up:<br><br>When updating from 5.0.6 to 5.0.7, a pa=
tch in binutils=C2=A0 ( 1e47fd8e4427f9d84048139804f75b83471bab28 ) causes a=
 rebuild of libstd-rs. For some unclear reason, libstd-rs then installs a s=
econd version of the rust standard library into e.g.=C2=A0tmp/work/armv8a-p=
oky-linux/libstd-rs/1.75.0/sysroot-destdir/usr/lib/rustlib/aarch64-poky-lin=
ux-gnu/lib/<br><br>This then creates an error compiling rust code down the =
line:<br><br>error[E0464]: multiple candidates for `rmeta` dependency `core=
` found<br><br>followed by tons of rustc errors related to all standard rus=
t keywords being unknown.<br><br>The work-around is to cleansstate libstd-r=
s<br><br>=C3=89tienne</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#64815): <a href=3D"https://urldefense.proofpoint.com/v2=
/url?u=3Dhttps-3A__lists.yoctoproject.org_g_yocto_message_64815&amp;d=3DDwI=
FaQ&amp;c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonVuMI=
GRfPx_Qj9TsRih1DULJTKUkSGa66m67E&amp;m=3DAZcTPZEqNArEOJusEpSFHNm6woFFuwj73K=
6kON6M9RNln0kho9Jz9EX3YsBmm6Ex&amp;s=3DjIqHMZDxbev8UWweCKoO5kZ0eFkfb-zfQS-v=
iKPmvWw&amp;e=3D" rel=3D"noreferrer" target=3D"_blank">https://urldefense.p=
roofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject.org_g_yocto_message_6=
4815&amp;d=3DDwIFaQ&amp;c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp=
;r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&amp;m=3DAZcTPZEqNArEOJusEp=
SFHNm6woFFuwj73K6kON6M9RNln0kho9Jz9EX3YsBmm6Ex&amp;s=3DjIqHMZDxbev8UWweCKoO=
5kZ0eFkfb-zfQS-viKPmvWw&amp;e=3D</a> <br>
Mute This Topic: <a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dht=
tps-3A__lists.yoctoproject.org_mt_111199304_7048771&amp;d=3DDwIFaQ&amp;c=3D=
ncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonVuMIGRfPx_Qj9TsR=
ih1DULJTKUkSGa66m67E&amp;m=3DAZcTPZEqNArEOJusEpSFHNm6woFFuwj73K6kON6M9RNln0=
kho9Jz9EX3YsBmm6Ex&amp;s=3DhXW0CSvJv99SYms_wRKb7EOx_sSc41GAl-woFzdcHWA&amp;=
e=3D" rel=3D"noreferrer" target=3D"_blank">https://urldefense.proofpoint.co=
m/v2/url?u=3Dhttps-3A__lists.yoctoproject.org_mt_111199304_7048771&amp;d=3D=
DwIFaQ&amp;c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonV=
uMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&amp;m=3DAZcTPZEqNArEOJusEpSFHNm6woFFuwj=
73K6kON6M9RNln0kho9Jz9EX3YsBmm6Ex&amp;s=3DhXW0CSvJv99SYms_wRKb7EOx_sSc41GAl=
-woFzdcHWA&amp;e=3D</a> <br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-=
3A__lists.yoctoproject.org_g_yocto_unsub&amp;d=3DDwIFaQ&amp;c=3DncDTmphkJTv=
jIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUk=
SGa66m67E&amp;m=3DAZcTPZEqNArEOJusEpSFHNm6woFFuwj73K6kON6M9RNln0kho9Jz9EX3Y=
sBmm6Ex&amp;s=3DPu8lvjc9qM5WO7HjiYB1YyJCrEcLzoNYNm22cUQN9is&amp;e=3D" rel=
=3D"noreferrer" target=3D"_blank">https://urldefense.proofpoint.com/v2/url?=
u=3Dhttps-3A__lists.yoctoproject.org_g_yocto_unsub&amp;d=3DDwIFaQ&amp;c=3Dn=
cDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonVuMIGRfPx_Qj9TsRi=
h1DULJTKUkSGa66m67E&amp;m=3DAZcTPZEqNArEOJusEpSFHNm6woFFuwj73K6kON6M9RNln0k=
ho9Jz9EX3YsBmm6Ex&amp;s=3DPu8lvjc9qM5WO7HjiYB1YyJCrEcLzoNYNm22cUQN9is&amp;e=
=3D</a>=C2=A0 [<a href=3D"mailto:ecordonnier@snap.com" target=3D"_blank">ec=
ordonnier@snap.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000a99f33062e357d59--

