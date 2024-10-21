Return-Path: <adrian.freihofer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13C13D17130
	for <webhook@archiver.kernel.org>; Mon, 21 Oct 2024 20:13:50 +0000 (UTC)
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
 by mx.groups.io with SMTP id smtpd.web11.2221.1729541626054752264
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Oct 2024 13:13:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=PVVexHFI;
 spf=pass (domain: gmail.com, ip: 209.85.161.49, mailfrom: adrian.freihofer@gmail.com)
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-5e56759e6d7so2684666eaf.3
        for <yocto@lists.yoctoproject.org>; Mon, 21 Oct 2024 13:13:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729541625; x=1730146425; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DlyS5fW+AtwKNhLec5VU1RRYyvB+1nx+ZafxW0Dejq8=;
        b=PVVexHFItUITHEGNA0LMCOflz9sHYKhJeaUKNockqimrIrAWtwQQ3VKGQJl2N7QgiO
         fpjNd6P3J+igJu7DUfDbxzY9VDlUR5T78DiXeGJlC+vMd7A43ufIvL3N1dZ/sY35sWUW
         bhBHvqaXOae5Mo7uoplKKgAiB8Aos5VCsknvCD+LQVzWBbZxZxQwlAcV7j98mB3FVwxW
         OZcu9TSS1lOydoJ+s4BTzwM3UTPr7PHEaSknJDk2k+u+wu/oD0e0rnNuK2X4Qr3rGzmz
         FYWTfYYoTX85/HcIcfq5EkTmOc0iamHgKfN8MI4tBxk6yBQ0jb1GB4kclqnDwEiCg86w
         YQJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729541625; x=1730146425;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DlyS5fW+AtwKNhLec5VU1RRYyvB+1nx+ZafxW0Dejq8=;
        b=dw3sg7PXugDGRSw5vrxBcKPJUntrEAoyZH1HG/4HAvBYDME0/l0/ihvCwZhNP5Lg+T
         0IXUk0Gayu7KMMx4jbRL56SZJlOnLZyMpiJaVvcsK+Iewq6al8s+1Oqbh4hNlfNG4Q0N
         Mr+IsAH8OfDSelEXvivSFz7sNHuiff20e0vcsTaDzWIGQzCj46dRrMW7s6n1Q1XlfiVa
         +PYCjRL79gI9vCNhjbkHzlfZdtaEh6DubN3w3XKWjCWoPfZW3o2VVIHU2SV/7Q2rdgY2
         Zc4P3/LDDmmK8ebNtb1iuW5jf7vTi2/UOZS9AuP2+L7NyKEzKQOnkcULKD6hl1l01R24
         ojWw==
X-Gm-Message-State: AOJu0YyWt18k4+VBXeuqxTSncKD8ZBDaEE+I6mo21d+iM+CKPSboH0Lq
	1u+BKZGQIt/AH1Rqzjig8YYJRvXH8UT5eQKAXAXzvoQW4v4cDXJRMen3y03Y1GyduKFwz/uxAHv
	n8XZZpUUrRNFYJRUIDL76u+HNCa+F/w==
X-Google-Smtp-Source: AGHT+IHvgf3pQFiHinbgS8Kbaaz5Jc0DZ1I0D3nWFPxqsHZr6WHxBWIvnx/i4S1FmmOhQDLbGisXmHbthrxzD9Yv9kc=
X-Received: by 2002:a05:6870:6488:b0:28c:8476:dd76 with SMTP id
 586e51a60fabf-28cb00ff030mr290334fac.29.1729541625095; Mon, 21 Oct 2024
 13:13:45 -0700 (PDT)
MIME-Version: 1.0
References: <19kG.1729526063081260825.oijY@lists.yoctoproject.org>
In-Reply-To: <19kG.1729526063081260825.oijY@lists.yoctoproject.org>
From: Adrian Freihofer <adrian.freihofer@gmail.com>
Date: Mon, 21 Oct 2024 22:13:34 +0200
Message-ID: <CAB3asfjOAOcZFBvZB65b_z3EuXx6ryMwB094DWSO8mQUBqkfFQ@mail.gmail.com>
Subject: Re: [yocto] reading tgz file and uncompress in rootfs
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, umeshyv@gmail.com
Content-Type: multipart/alternative; boundary="00000000000030308b0625024aeb"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Oct 2024 20:13:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64072

--00000000000030308b0625024aeb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

umeshyv via lists.yoctoproject.org <umeshyv=3Dgmail.com@lists.yoctoproject.=
org>
schrieb am Mo., 21. Okt. 2024, 18:30:

> Hi, I have requirement where recipe file reads set of .tgz files and it
> should store in a location in rootfs and untar them(on freescale board).
> Can you please show some pointers.
>
> SUMMARY =3D " Tools"
> LICENSE =3D "CLOSED"
>
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
>
> SRCREV =3D "${AUTOREV}"
>
> SRC_URI =3D "file://tool1.tgz
> file://tool2.tgz
> file://tool3.tgz
> file://tool4.tgz"
>
The default behavior for tar files is to download them (do_fetch task) and
then extract them into WORKDIR (do_unpack task) or into UNPACKDIR if you
are on a very new Yocto version.

That mean do_install should probably copy files but not call tar. It's
simpler than what you are trying :=E2=81=A0-=E2=81=A0).

You can see what folder structure each of the tasks creates if you look
into the WORKDIR of this recipe. You can find WORKDIR e.g. with
bitbake-getvar -r recipe-name WORKDIR

Adrian

> do_install () {
> install -d ${IMAGE_ROOTFS}/usr/share/sigma-tools
>
> for file in ${WORKDIR}/.tgz;do
>
> tar -xvzf $file -C ${IMAGE_ROOTFS}/usr/share/<folder>
>
> done
>
> Alternatively instead of for loop tried below
>
> tar -xvzf file://tool1.tgz -C ${IMAGE_ROOTFS}/usr/share/<folder>
> tar -xvzf file://tool2.tgz -C ${IMAGE_ROOTFS}/usr/share/<folder>
> tar -xvzf file://tool3.tgz -C ${IMAGE_ROOTFS}/usr/share/<folder>
> tar -xvzf file://tool4.tgz -C ${IMAGE_ROOTFS}/usr/share/<folder>
>
> But when I build following is the error
>
> DEBUG: Python function extend_recipe_sysroot finished
> DEBUG: Executing shell function do_install
> tar (child): Cannot connect to file: resolve failed
> gzip: stdin: unexpected end of file
> tar: Child returned status 128
> tar: Error is not recoverable: exiting now
>
> Can you please suggest to resolve errors and provide solutions
>
> Thanks
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64070):
> https://lists.yoctoproject.org/g/yocto/message/64070
> Mute This Topic: https://lists.yoctoproject.org/mt/109136100/4454582
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> adrian.freihofer@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000030308b0625024aeb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">umeshyv via <a href=3D"http://lists.yoctoproject.org">=
lists.yoctoproject.org</a> &lt;umeshyv=3D<a href=3D"mailto:gmail.com@lists.=
yoctoproject.org">gmail.com@lists.yoctoproject.org</a>&gt; schrieb am Mo., =
21. Okt. 2024, 18:30:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>
<p style=3D"outline:none!important;margin:10px 0px 0px;padding:0px;color:#1=
11111;font-family:-apple-system,BlinkMacSystemFont,&#39;Segoe UI&#39;,Robot=
o,Oxygen,Ubuntu,&#39;Fira Sans&#39;,&#39;Droid Sans&#39;,&#39;Helvetica Neu=
e&#39;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-a=
lign:left;text-indent:0px;text-transform:none;word-spacing:0px;white-space:=
normal;background-color:#ffffff;text-decoration-style:initial;text-decorati=
on-color:initial">Hi, I have requirement where recipe file reads set of .tg=
z files and it should store in a location in rootfs and untar them(on frees=
cale board). Can you please show some pointers.</p>
<p style=3D"outline:none!important;margin:10px 0px 0px;padding:0px;color:#1=
11111;font-family:-apple-system,BlinkMacSystemFont,&#39;Segoe UI&#39;,Robot=
o,Oxygen,Ubuntu,&#39;Fira Sans&#39;,&#39;Droid Sans&#39;,&#39;Helvetica Neu=
e&#39;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-a=
lign:left;text-indent:0px;text-transform:none;word-spacing:0px;white-space:=
normal;background-color:#ffffff;text-decoration-style:initial;text-decorati=
on-color:initial">SUMMARY =3D &quot; Tools&quot;<br style=3D"outline:none!i=
mportant">LICENSE =3D &quot;CLOSED&quot;</p>
<p style=3D"outline:none!important;margin:10px 0px 0px;padding:0px;color:#1=
11111;font-family:-apple-system,BlinkMacSystemFont,&#39;Segoe UI&#39;,Robot=
o,Oxygen,Ubuntu,&#39;Fira Sans&#39;,&#39;Droid Sans&#39;,&#39;Helvetica Neu=
e&#39;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-a=
lign:left;text-indent:0px;text-transform:none;word-spacing:0px;white-space:=
normal;background-color:#ffffff;text-decoration-style:initial;text-decorati=
on-color:initial">FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files:&quot=
;</p>
<p style=3D"outline:none!important;margin:10px 0px 0px;padding:0px;color:#1=
11111;font-family:-apple-system,BlinkMacSystemFont,&#39;Segoe UI&#39;,Robot=
o,Oxygen,Ubuntu,&#39;Fira Sans&#39;,&#39;Droid Sans&#39;,&#39;Helvetica Neu=
e&#39;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-a=
lign:left;text-indent:0px;text-transform:none;word-spacing:0px;white-space:=
normal;background-color:#ffffff;text-decoration-style:initial;text-decorati=
on-color:initial">SRCREV =3D &quot;${AUTOREV}&quot;</p>
<p style=3D"outline:none!important;margin:10px 0px 0px;padding:0px;color:#1=
11111;font-family:-apple-system,BlinkMacSystemFont,&#39;Segoe UI&#39;,Robot=
o,Oxygen,Ubuntu,&#39;Fira Sans&#39;,&#39;Droid Sans&#39;,&#39;Helvetica Neu=
e&#39;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-a=
lign:left;text-indent:0px;text-transform:none;word-spacing:0px;white-space:=
normal;background-color:#ffffff;text-decoration-style:initial;text-decorati=
on-color:initial">SRC_URI =3D &quot;file://tool1.tgz<br style=3D"outline:no=
ne!important"><a style=3D"outline:none!important;color:#0052cc;text-decorat=
ion:var(--aui-link-decoration)" rel=3D"nofollow noopener noreferrer">file:/=
/tool2.tgz</a><br style=3D"outline:none!important"><a style=3D"outline:none=
!important;color:#0052cc;text-decoration:var(--aui-link-decoration)" rel=3D=
"nofollow noopener noreferrer">file://tool3.tgz</a><br style=3D"outline:non=
e!important"><a style=3D"outline:none!important;color:#0052cc;text-decorati=
on:var(--aui-link-decoration)" rel=3D"nofollow noopener noreferrer">file://=
tool4.tgz</a>&quot;</p></div></blockquote></div></div><div dir=3D"auto">The=
 default behavior for tar files is to download them (do_fetch task) and the=
n extract them into WORKDIR (do_unpack task) or into UNPACKDIR if you are o=
n a very new Yocto version.</div><div dir=3D"auto"><br></div><div dir=3D"au=
to">That mean do_install should probably copy files but not call tar. It&#3=
9;s simpler than what you are trying :=E2=81=A0-=E2=81=A0).</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">You can see what folder structure eac=
h of the tasks creates if you look into the WORKDIR of this recipe. You can=
 find WORKDIR e.g. with</div><div dir=3D"auto">bitbake-getvar -r recipe-nam=
e WORKDIR=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">Adrian</=
div><div dir=3D"auto"></div><div dir=3D"auto"><div class=3D"gmail_quote"><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex"><div>
<p style=3D"outline:none!important;margin:10px 0px 0px;padding:0px;color:#1=
11111;font-family:-apple-system,BlinkMacSystemFont,&#39;Segoe UI&#39;,Robot=
o,Oxygen,Ubuntu,&#39;Fira Sans&#39;,&#39;Droid Sans&#39;,&#39;Helvetica Neu=
e&#39;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-a=
lign:left;text-indent:0px;text-transform:none;word-spacing:0px;white-space:=
normal;background-color:#ffffff;text-decoration-style:initial;text-decorati=
on-color:initial">do_install () {<br style=3D"outline:none!important"><tt s=
tyle=3D"outline:none!important">install -d ${IMAGE_ROOTFS}/usr/share/sigma-=
tools</tt></p>
<p style=3D"outline:none!important;margin:10px 0px 0px;padding:0px;color:#1=
11111;font-family:-apple-system,BlinkMacSystemFont,&#39;Segoe UI&#39;,Robot=
o,Oxygen,Ubuntu,&#39;Fira Sans&#39;,&#39;Droid Sans&#39;,&#39;Helvetica Neu=
e&#39;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-a=
lign:left;text-indent:0px;text-transform:none;word-spacing:0px;white-space:=
normal;background-color:#ffffff;text-decoration-style:initial;text-decorati=
on-color:initial">for file in ${WORKDIR}/.tgz;do</p>
<p style=3D"outline:none!important;margin:10px 0px 0px;padding:0px;color:#1=
11111;font-family:-apple-system,BlinkMacSystemFont,&#39;Segoe UI&#39;,Robot=
o,Oxygen,Ubuntu,&#39;Fira Sans&#39;,&#39;Droid Sans&#39;,&#39;Helvetica Neu=
e&#39;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-a=
lign:left;text-indent:0px;text-transform:none;word-spacing:0px;white-space:=
normal;background-color:#ffffff;text-decoration-style:initial;text-decorati=
on-color:initial">tar -xvzf $file -C ${IMAGE_ROOTFS}/usr/share/&lt;folder&g=
t;</p>
<p style=3D"outline:none!important;margin:10px 0px 0px;padding:0px;color:#1=
11111;font-family:-apple-system,BlinkMacSystemFont,&#39;Segoe UI&#39;,Robot=
o,Oxygen,Ubuntu,&#39;Fira Sans&#39;,&#39;Droid Sans&#39;,&#39;Helvetica Neu=
e&#39;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-a=
lign:left;text-indent:0px;text-transform:none;word-spacing:0px;white-space:=
normal;background-color:#ffffff;text-decoration-style:initial;text-decorati=
on-color:initial">done</p>
<p style=3D"outline:none!important;margin:10px 0px 0px;padding:0px;color:#1=
11111;font-family:-apple-system,BlinkMacSystemFont,&#39;Segoe UI&#39;,Robot=
o,Oxygen,Ubuntu,&#39;Fira Sans&#39;,&#39;Droid Sans&#39;,&#39;Helvetica Neu=
e&#39;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-a=
lign:left;text-indent:0px;text-transform:none;word-spacing:0px;white-space:=
normal;background-color:#ffffff;text-decoration-style:initial;text-decorati=
on-color:initial">Alternatively instead of for loop tried below</p>
<div style=3D"outline:none!important;margin:9px 0px;padding:0px;border:1px =
solid #c1c7d0;background:#f4f5f7;font-size:12px;line-height:1.33333;font-fa=
mily:monospace;border-radius:3px;color:#111111;font-style:normal;font-varia=
nt-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing=
:normal;text-align:left;text-indent:0px;text-transform:none;word-spacing:0p=
x;white-space:normal;text-decoration-style:initial;text-decoration-color:in=
itial">
<div style=3D"outline:none!important;margin:0px;padding:9px 12px">
<pre style=3D"outline:none!important;margin:0px;padding:0px;max-height:30em=
;overflow:auto;white-space:pre-wrap">tar -xvzf file://tool1.tgz -C ${IMAGE_=
ROOTFS}/usr/share/&lt;folder&gt;
tar -xvzf file://tool2.tgz -C ${IMAGE_ROOTFS}/usr/share/&lt;folder&gt;
tar -xvzf file://tool3.tgz -C ${IMAGE_ROOTFS}/usr/share/&lt;folder&gt;
tar -xvzf file://tool4.tgz -C ${IMAGE_ROOTFS}/usr/share/&lt;folder&gt;</pre=
>
</div>
</div>
<p style=3D"outline:none!important;margin:10px 0px 0px;padding:0px;color:#1=
11111;font-family:-apple-system,BlinkMacSystemFont,&#39;Segoe UI&#39;,Robot=
o,Oxygen,Ubuntu,&#39;Fira Sans&#39;,&#39;Droid Sans&#39;,&#39;Helvetica Neu=
e&#39;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-a=
lign:left;text-indent:0px;text-transform:none;word-spacing:0px;white-space:=
normal;background-color:#ffffff;text-decoration-style:initial;text-decorati=
on-color:initial">But when I build following is the error</p>
<p style=3D"outline:none!important;margin:10px 0px 0px;padding:0px;color:#1=
11111;font-family:-apple-system,BlinkMacSystemFont,&#39;Segoe UI&#39;,Robot=
o,Oxygen,Ubuntu,&#39;Fira Sans&#39;,&#39;Droid Sans&#39;,&#39;Helvetica Neu=
e&#39;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-a=
lign:left;text-indent:0px;text-transform:none;word-spacing:0px;white-space:=
normal;background-color:#ffffff;text-decoration-style:initial;text-decorati=
on-color:initial">DEBUG: Python function extend_recipe_sysroot finished</p>
<div style=3D"outline:none!important;margin:0px;padding:0px;color:#111111;f=
ont-family:-apple-system,BlinkMacSystemFont,&#39;Segoe UI&#39;,Roboto,Oxyge=
n,Ubuntu,&#39;Fira Sans&#39;,&#39;Droid Sans&#39;,&#39;Helvetica Neue&#39;,=
sans-serif;font-size:14px;font-style:normal;font-variant-ligatures:normal;f=
ont-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:le=
ft;text-indent:0px;text-transform:none;word-spacing:0px;white-space:normal;=
background-color:#ffffff;text-decoration-style:initial;text-decoration-colo=
r:initial">
<table style=3D"outline:none!important;border-collapse:collapse;margin:5px =
0px 5px 2px;width:auto;word-break:break-all">
<tbody style=3D"outline:none!important">
<tr style=3D"outline:none!important">
<td style=3D"outline:none!important;border:1px solid #c1c7d0;padding:3px 4p=
x">DEBUG: Executing shell function do_install</td>
</tr>
<tr style=3D"outline:none!important">
<td style=3D"outline:none!important;border:1px solid #c1c7d0;padding:3px 4p=
x">tar (child): Cannot connect to file: resolve failed</td>
</tr>
<tr style=3D"outline:none!important"></tr>
<tr style=3D"outline:none!important">
<td style=3D"outline:none!important;border:1px solid #c1c7d0;padding:3px 4p=
x">gzip: stdin: unexpected end of file</td>
</tr>
<tr style=3D"outline:none!important">
<td style=3D"outline:none!important;border:1px solid #c1c7d0;padding:3px 4p=
x">tar: Child returned status 128</td>
</tr>
<tr style=3D"outline:none!important">
<td style=3D"outline:none!important;border:1px solid #c1c7d0;padding:3px 4p=
x">tar: Error is not recoverable: exiting now</td>
</tr>
</tbody>
</table>
</div>
<p style=3D"outline:none!important;margin:10px 0px 0px;padding:0px;color:#1=
11111;font-family:-apple-system,BlinkMacSystemFont,&#39;Segoe UI&#39;,Robot=
o,Oxygen,Ubuntu,&#39;Fira Sans&#39;,&#39;Droid Sans&#39;,&#39;Helvetica Neu=
e&#39;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-a=
lign:left;text-indent:0px;text-transform:none;word-spacing:0px;white-space:=
normal;background-color:#ffffff;text-decoration-style:initial;text-decorati=
on-color:initial">Can you please suggest to resolve errors and provide solu=
tions</p>
<p style=3D"outline:none!important;margin:10px 0px 0px;padding:0px;color:#1=
11111;font-family:-apple-system,BlinkMacSystemFont,&#39;Segoe UI&#39;,Robot=
o,Oxygen,Ubuntu,&#39;Fira Sans&#39;,&#39;Droid Sans&#39;,&#39;Helvetica Neu=
e&#39;,sans-serif;font-size:14px;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-a=
lign:left;text-indent:0px;text-transform:none;word-spacing:0px;white-space:=
normal;background-color:#ffffff;text-decoration-style:initial;text-decorati=
on-color:initial">Thanks</p>
</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#64070): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/64070" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/64070</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/109136100/445=
4582" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/mt/109136100/4454582</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a> [<a href=3D"mailto:adrian.freihofer@gmail.com" target=3D=
"_blank" rel=3D"noreferrer">adrian.freihofer@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div></div>

--00000000000030308b0625024aeb--

