Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0CDACC433F5
	for <webhook@archiver.kernel.org>; Wed,  3 Nov 2021 18:16:25 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com
 [209.85.219.43])
 by mx.groups.io with SMTP id smtpd.web11.307.1635963384551498766
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Nov 2021 11:16:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=W6nmGlaU;
 spf=pass (domain: gmail.com, ip: 209.85.219.43, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f43.google.com with SMTP id i13so3569359qvm.1
        for <yocto@lists.yoctoproject.org>;
 Wed, 03 Nov 2021 11:16:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bpAq0APO+eFizbGPNx61fjm69PvaEJttADRJIxNKsMM=;
        b=W6nmGlaUHXZ6h+fD99CzQAc2HgR9w0UWgFeDjniM+Y9EtR+lTwbXbz8oL2ikr3ioMc
         J/T9yWq7aFCUVFrhbPj7Qp4toJ1tZuR/bjZxg/cY2UdDSw8PPi+7YoxNdnanKEzwMtEH
         CaT5DFYzwTuGheIGLkBtcpD0BDbUeE2Q2IAb2L0JThTfR71iwWxoJrSI6O4mxnvszsCD
         9rg7JdjpnkI49XLIX6I+D7entIhq5s0dyxz/6IgxiXkbljvEJNwNecPN3acdug3vXnQ/
         9LUEV4QBBtxXV1FUDQOZPRDlnyQx7kQFNewQnEEnvDZ7jx6PZorsdQf9zrseJ7/YNqsS
         VLVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bpAq0APO+eFizbGPNx61fjm69PvaEJttADRJIxNKsMM=;
        b=0LiymsKJMQFDkcYhuOuN87UT6txkWjGQ7AYv9KPLbUrS/ZN9zvYfLiiOg2GSEUmj3o
         De2xdkVLOE7xjk2Qa8tEBlfGlL1d9D/S1w64pbb9iB2onw5D/sGwln86teDQv5gzVVWS
         ySzmXA9qi8T2fsOapbpyNRLQdOu+rdMR387jqsF90zY2ntahAgiY4GmEveLVs3W3XWYj
         us1Uy+/V/rXAbmTAM3YFV2a0gmMi/lmbXWXjCUMJyKEgDP0q+5AsFtr7MA7/RqsqGNe1
         dkGCYPfKTNzefVeZXUxxGxBbUx5ZcXP7Y5kjM0pjcFR0Nb0zFtbU3GU1oQenG/WnzPt3
         m+9w==
X-Gm-Message-State: AOAM533H4zx+54G1boOFqU3XLeBAH8oL5PywXvwd5SAg+/PpV3LBVVOh
	s6n27WjT434xgkdNBJzwCKrDN49HWkRUWF29Ef4=
X-Google-Smtp-Source: 
 ABdhPJzLjBLIkisnKN8XTreKp9VZh6H41wIDnGX2vBQjIgWzf5bMqhzCweMfzOZVUlQg+SGG1ESM63oWZ/sg3euoagI=
X-Received: by 2002:a05:6214:188:: with SMTP id
 q8mr44413444qvr.5.1635963383627;
 Wed, 03 Nov 2021 11:16:23 -0700 (PDT)
MIME-Version: 1.0
References: <MADEUP.16B41AFD684614CC.20955@lists.yoctoproject.org>
In-Reply-To: <MADEUP.16B41AFD684614CC.20955@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 3 Nov 2021 11:16:12 -0700
Message-ID: 
 <CAMKF1so+bqFmwUgeoaT0i6vcyS-hddGD4jMzErNpQ2fwyfV-9w@mail.gmail.com>
Subject: Re: [yocto] how to handle third party licenses
To: steven.monsees@baesystems.com
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000058c2a605cfe668c9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Nov 2021 18:16:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55233

--00000000000058c2a605cfe668c9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 3, 2021 at 10:57 AM Monsees, Steven C (US) via
lists.yoctoproject.org <steven.monsees=3Dbaesystems.com@lists.yoctoproject.=
org>
wrote:

>
>
> Looking for the proper Yocto way to handle third party software ported to
> Yocto and built into kernel=E2=80=A6
>
>
>
> I=E2=80=99m not having issues when I recognize the license as a generic l=
icense.
> But the license provided to us by the vendor is not part of the generic
> licenses list that you (Yocto) recognize.
>
>
>
> I was wondering if you could explain how to add a custom license to a
> recipe in yocto.
>
>
>
> The vendor has provided us with a generic license.txt file and I was able
> to add that to the our recipe. I do get a warning though which says:
>
>
>
> *WARNING: aiox-defaultfs-1.0-r0 do_rootfs: The license listed
> DataDeviceCorporation was not in the licenses collected for recipe acexpc=
i*
>
>
>
> Though the warning occurs, I can see the license.txt being saved inside
> the rootfs on our board and is saved under tmp/deploy/licenses/acexpci.
> I=E2=80=99ve been trying to get rid of this warning when the image builds=
, but I
> can=E2=80=99t seem to find anything in the manual or online. One solution=
 says :
> Add *LICENSE_PATH +=3D "${LAYERDIR}/custom-licenses"* under
> conf/layer.conf, which does not resolve this warning.
>
>
Whatever you are setting for LICENSE Variable inside recipe there should be
a file with same name stored inside One of LICENSE_PATH directories.

>
>
> I am currently building with Yocto zeus=E2=80=A6
>
>
>
> Thanks,
>
> Steve
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#55231):
> https://lists.yoctoproject.org/g/yocto/message/55231
> Mute This Topic: https://lists.yoctoproject.org/mt/86797500/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000058c2a605cfe668c9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Nov 3, 2021 at 10:57 AM Monsees, Steven C (US) via =
<a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;st=
even.monsees=3D<a href=3D"mailto:baesystems.com@lists.yoctoproject.org">bae=
systems.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">





<div lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"m_-483987896049440001WordSection1">
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Looking for the proper Yocto way to handle third par=
ty software ported to Yocto and built into kernel=E2=80=A6<u></u><u></u></p=
>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d">I=E2=80=99m not having=
 issues when I recognize the license as a generic license. But the license =
provided to us by the vendor is not part of the generic licenses list that =
you (Yocto) recognize.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d"><u></u>=C2=A0<u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d">I was wondering if you=
 could explain how to add a custom license to a recipe in yocto.<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d"><u></u>=C2=A0<u></u></=
span></p>
<p class=3D"MsoNormal">The vendor has provided us with a generic license.tx=
t file and I was able to add that to the our recipe. I do get a warning tho=
ugh which says:
<u></u><u></u></p>
<p class=3D"MsoNormal"><i><u></u>=C2=A0<u></u></i></p>
<p class=3D"MsoNormal"><i><span style=3D"color:red">WARNING: aiox-defaultfs=
-1.0-r0 do_rootfs: The license listed DataDeviceCorporation was not in the =
licenses collected for recipe acexpci<u></u><u></u></span></i></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Though the warning occurs, I can see the license.txt=
 being saved inside the rootfs on our board and is saved under tmp/deploy/l=
icenses/acexpci. I=E2=80=99ve been trying to get rid of this warning when t=
he image builds, but I can=E2=80=99t seem to find
 anything in the manual or online. One solution says : Add <b>LICENSE_PATH =
+=3D &quot;${LAYERDIR}/custom-licenses&quot;</b> under conf/layer.conf, whi=
ch does not resolve this warning.
<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u></p></div></div></blockquote><div dir=3D"auto=
"><br></div><div dir=3D"auto">Whatever you are setting for LICENSE Variable=
 inside recipe there should be a file with same name stored inside One of L=
ICENSE_PATH directories.=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div lan=
g=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72"><div class=3D"m_-48398789604=
9440001WordSection1"><p class=3D"MsoNormal" dir=3D"auto">=C2=A0<u></u></p>
<p class=3D"MsoNormal">I am currently building with Yocto zeus=E2=80=A6<u><=
/u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks,<u></u><u></u></p>
<p class=3D"MsoNormal">Steve<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#55231): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55231" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/55231</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/86797500/1997=
914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/86797500/1997914</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--00000000000058c2a605cfe668c9--

