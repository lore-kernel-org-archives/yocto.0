Return-Path: <luiz.balloti@timpelmedical.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE1DDC48BF6
	for <webhook@archiver.kernel.org>; Mon,  4 Mar 2024 14:08:19 +0000 (UTC)
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
 by mx.groups.io with SMTP id smtpd.web11.99145.1709561295516616818
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Mar 2024 06:08:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@timpelmedical-com.20230601.gappssmtp.com header.s=20230601 header.b=cKCkG3N5;
 spf=pass (domain: timpelmedical.com, ip: 209.85.221.181, mailfrom: luiz.balloti@timpelmedical.com)
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-4d33dd7d354so847411e0c.1
        for <yocto@lists.yoctoproject.org>; Mon, 04 Mar 2024 06:08:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=timpelmedical-com.20230601.gappssmtp.com; s=20230601; t=1709561294; x=1710166094; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xVY9uMJsNfkC1cD7SynmogX1vwIS/ZPcDk6SQ58UViA=;
        b=cKCkG3N50GyC7ovEyMmP/AnaMMOaw5Nb4YBe+gS0YtL6oqTJE55Bul3O1LPqQ+t6eM
         3o5Dl0UqjzbsvQ6gx3LzM2qrljdLco1ROfw/bR+LbCudHws5nDzahZPJTycSgrUJqx5p
         /25WbmeGEo8HOq4vPfnfV7lTw1oEijFpfIH8rK2m9oZh67MLCtj/f8rIk+OCVf22GwDh
         8smhBnMkqBM4jYqCX7Klk34ucpBE0t6di3lkwN4OhsZlLLiGJSfJ6JUDGGLh0oei/lbx
         xvw9lFa7JEVAvTBqtfE77sECdytHvWDyV5ZQKuyoUHnuesp35NJ0IwsbKiXdS45sb/nb
         SveA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709561294; x=1710166094;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xVY9uMJsNfkC1cD7SynmogX1vwIS/ZPcDk6SQ58UViA=;
        b=hB//iStOXdUcjLTMKqj0soXbxmOmcbrIhi/x+BUxCh1/nB+uFdHAkWL6+hGfrNgQ4r
         cdMmH/sAarO9JOJ5GQ+KyUVhNDnhUQGIA7ywACbdsoVKGgQIvS2EL41ReUNIUgLfAtwS
         2ZU5Y5J6rXXt5GQ2qWgy2vyWfb0MvMwJU7UtoV6j8xTf2zU+TqLJeMen3xaH1Ng3Cskl
         Vg3mF/48IgceECNn2xR8TcsuYxwHUSazMwRaiv4YBAk27dHEmd/rETiWEmBSMQf/If0S
         6PhW+GIAeOvPuBvWUUpzU9qNf/hshNS8TqqP1qlvcjuPsVUw0/OlMQmtChzlfLZBzPsg
         vBUw==
X-Gm-Message-State: AOJu0YyERMS8cP3aPFsWHrfnhVDoxe2mHBiJA92VxyeKroccvHKZqUx+
	YaUC7LrVDvwt4ghD15/zfzAZXB/xoRySgxkY1kVg7zd4GGzM8P3mJ54z0xTfZaxSWk0cwZG2//a
	FLRgksrMIwOns2tLS4fDofknK2HTKfuOWzZTxADH9o0E0ELct
X-Google-Smtp-Source: AGHT+IEcuhsRJquc35hsuhQt+V9UCOx6Zzw9gWWkxX9lBSr4dYWrzQPfXjZS/GT6vRAounKhMrBY6uPiRrV1RvkbTqA=
X-Received: by 2002:a05:6122:420e:b0:4cb:277d:9d22 with SMTP id
 cm14-20020a056122420e00b004cb277d9d22mr5858717vkb.16.1709561294209; Mon, 04
 Mar 2024 06:08:14 -0800 (PST)
MIME-Version: 1.0
References: <DB3PR0102MB3658E433CD17D9A27297B8E5FC5C2@DB3PR0102MB3658.eurprd01.prod.exchangelabs.com>
 <D3FB0380-6404-4015-9FFB-C29944612056@arm.com>
In-Reply-To: <D3FB0380-6404-4015-9FFB-C29944612056@arm.com>
From: Luiz Balloti <luiz.balloti@timpelmedical.com>
Date: Mon, 4 Mar 2024 11:08:01 -0300
Message-ID: <CAPtt3O9NoyHLmeFRPThdunx3X9TLfWE42qj4m3EvQ51A7Z=j2A@mail.gmail.com>
Subject: Re: [yocto] Using SBOM/spdx with DependencyTrack/CyclonDX
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a9e51c0612d641e9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Mar 2024 14:08:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62664

--000000000000a9e51c0612d641e9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

J=C3=B6rg, fixed CVEs should be encoded in a "vulnerabilities" section in a
CycloneDX SBOM, or in an ancillary VEX document which references SBOM
components. Unfortunately, Dependency-Track currently ignores the
vulnerabilities section of uploaded SBOMs, so the only way is to upload the
SBOM, wait until it is processed by the Dependency-Track instance and then
upload the VEX document.

Regards,

Luiz

Em seg., 4 de mar. de 2024 =C3=A0s 06:59, Ross Burton <ross.burton@arm.com>
escreveu:

> On 3 Mar 2024, at 10:09, J=C3=B6rg Sommer via lists.yoctoproject.org
> <joerg.sommer=3Dnavimatix.de@lists.yoctoproject.org> wrote:
> > does anyone use DependencyTrack https://dependencytrack.org/ to analyse
> CVE vulnerabilities? I've created a script to convert the spdx.tar.zst to=
 a
> CycloneDX JSON and upload this to DependencyTrack. But I'm having the
> problem that CVEs fixed in Yocto by patches are not reflected in the spdx=
.
> There is the sourceInfo field that lists fixed CVEs, but I don't know how
> to encode this in CycloneDX. How is this done with SDPX? Does anyone do C=
VE
> analysis with SPDX?
>
> This is something that=E2=80=99s being actively worked on.  In the mean t=
ime, if
> you=E2=80=99re transforming the SPDX into CycloneDX then I suggest that y=
ou also
> read the cve-checker JSON output too, that contains information about wha=
t
> CVEs have been resolved via patches.
>
> Ross
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62661):
> https://lists.yoctoproject.org/g/yocto/message/62661
> Mute This Topic: https://lists.yoctoproject.org/mt/104700370/6464681
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> luiz.balloti@timpelmedical.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000a9e51c0612d641e9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">J=C3=B6rg, fixed CVEs should be encoded in a &quot;vulnera=
bilities&quot; section in a CycloneDX SBOM, or in an ancillary VEX document=
 which references SBOM components. Unfortunately, Dependency-Track currentl=
y ignores the vulnerabilities section of uploaded SBOMs, so the only way is=
 to upload the SBOM, wait until it is processed by the Dependency-Track ins=
tance and then upload the VEX document.<div><br></div><div>Regards,</div><d=
iv><br></div><div>Luiz</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">Em seg., 4 de mar. de 2024 =C3=A0s 06:59, Ros=
s Burton &lt;<a href=3D"mailto:ross.burton@arm.com">ross.burton@arm.com</a>=
&gt; escreveu:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">O=
n 3 Mar 2024, at 10:09, J=C3=B6rg Sommer via <a href=3D"http://lists.yoctop=
roject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a>=
 &lt;joerg.sommer=3D<a href=3D"mailto:navimatix.de@lists.yoctoproject.org" =
target=3D"_blank">navimatix.de@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt; does anyone use DependencyTrack <a href=3D"https://dependencytrack.org=
/" rel=3D"noreferrer" target=3D"_blank">https://dependencytrack.org/</a> to=
 analyse CVE vulnerabilities? I&#39;ve created a script to convert the spdx=
.tar.zst to a CycloneDX JSON and upload this to DependencyTrack. But I&#39;=
m having the problem that CVEs fixed in Yocto by patches are not reflected =
in the spdx. There is the sourceInfo field that lists fixed CVEs, but I don=
&#39;t know how to encode this in CycloneDX. How is this done with SDPX? Do=
es anyone do CVE analysis with SPDX?<br>
<br>
This is something that=E2=80=99s being actively worked on.=C2=A0 In the mea=
n time, if you=E2=80=99re transforming the SPDX into CycloneDX then I sugge=
st that you also read the cve-checker JSON output too, that contains inform=
ation about what CVEs have been resolved via patches.<br>
<br>
Ross<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#62661): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/62661" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/62661</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/104700370/646=
4681" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/104700370/6464681</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:luiz.balloti@timpelmedical.com" target=3D"_blank=
">luiz.balloti@timpelmedical.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000a9e51c0612d641e9--

