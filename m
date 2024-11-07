Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B007DD43370
	for <webhook@archiver.kernel.org>; Thu,  7 Nov 2024 15:51:55 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web11.75226.1730994709247289904
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Nov 2024 07:51:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=MJ7yRFjS;
 spf=pass (domain: gmail.com, ip: 209.85.167.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-539e3f35268so1089298e87.3
        for <yocto@lists.yoctoproject.org>; Thu, 07 Nov 2024 07:51:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730994707; x=1731599507; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mqCCd2eG1u2UZsenhZQvwgSJqKgKGJsVzJRQ2YaR52s=;
        b=MJ7yRFjSoDwN+njAZrB7XgJDSSw/y80sfTd1cU9FVoJNNA8WFZDReFzZMzY7rfmF2i
         vR3cwLbfxEHW9ZPTCVvop54MtkOgB1rSL6UVV2krZ8kOtOmRgDpQII4ieIL3NkoW9R2H
         0Sx3nMp8cAyMT+738o3QXgViHnKFx5fzMXhbwUG45uxu+m1QTcmBBCoJ+czQsK9Khi1A
         1+LDPkKh4ybaN+6fePZAIde3VZMWZayUM5W/GlNSjs8CEsNKGdPhiUMxGSq5hZgCVjEt
         dt1kIGIep6jDWxtoJoqB8e0L76JbEqkc+zf8OZj7boeZKlBEZm2U0DiXaMfKM6KbTGah
         gFAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730994707; x=1731599507;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mqCCd2eG1u2UZsenhZQvwgSJqKgKGJsVzJRQ2YaR52s=;
        b=GkJ4BPpkuozJF+TTn7ksYrQgCgh4mTibBanSRJmzksKCRHX9svAWwF8hfprD4XN4ie
         w2sVs38K4pnnv39RpBYXd+UEIduZ31hs+rwjFJoE1kmO3a20kCYvUVj07u+Ej+Q/iOPP
         GfiQA1PZ361JBlNOvwdaJpM8JdSw4pZeypkAj2UkMuGZczU5rVxx+m8rlwRXh2AiPArb
         nSYUeAVr7j+oOw/tK70CgQlyPVnRpKMUClUQUdbG8QH9sc6p54POZ/mEGVdVPTFplEKb
         /T4aXDZiRNpF/LOQQMnEwcCt4Fs5qoGSA2NaR+qtPpBvZLiIsUH+SJL+pSVY+XCgyq9c
         eVnQ==
X-Gm-Message-State: AOJu0YymYTuOMGWAy4v5bEMQb7zojtJzX7Vi6VQakpgPVH541j8qKccb
	PyBVvSAAg3tJ5AZfc4HClvs3u09T2IOLzsPiuDTcAv7g+CRiHKsqAdo1HElccgDNM5hdhAgdpMh
	MTIezREdvhY5VkpBTQe+MJrVKLYq06w==
X-Google-Smtp-Source: AGHT+IGUXls6GskAbeF6HhIDz+KmZtog+oRqmugwHs8H4pQ4ucJ2y+PSW4yU2ah87PdYw0kPYJQGpDrLNXZgyz2O1vI=
X-Received: by 2002:ac2:4c4f:0:b0:539:8bde:eb90 with SMTP id
 2adb3069b0e04-53d65df8ddfmr12748039e87.32.1730994707163; Thu, 07 Nov 2024
 07:51:47 -0800 (PST)
MIME-Version: 1.0
References: <MW4PR16MB5087DC4C691E4B6A0F1F2070BB5C2@MW4PR16MB5087.namprd16.prod.outlook.com>
In-Reply-To: <MW4PR16MB5087DC4C691E4B6A0F1F2070BB5C2@MW4PR16MB5087.namprd16.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 7 Nov 2024 16:51:36 +0100
Message-ID: <CANNYZj9epiJatwzR6Rb2nHdHykG1AbxJZcvTTERG6oL5knJJjg@mail.gmail.com>
Subject: Re: [yocto] Conditionally set SYSTEMD_SERVICE_${PN} based on version
 of another package
To: yocto@lists.yoctoproject.org, Logan.Grosz@b9c.com
Content-Type: multipart/alternative; boundary="000000000000a0f9d60626549c21"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Nov 2024 15:51:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64232

--000000000000a0f9d60626549c21
Content-Type: text/plain; charset="UTF-8"

Nobody ever promised you can use the same layer with more than one yocto
release. Please make a branch.

Alex

On Thu 7. Nov 2024 at 16.34, Logan Grosz via lists.yoctoproject.org
<Logan.Grosz=b9c.com@lists.yoctoproject.org> wrote:

> Hi, all
>
> My company is trying to migrate a newer version of Yocto and in an effort
> to do that I am making changes to our current layer to facilitate an easier
> transition. One problem I encountered was SystemD 250 installs a target
> factory-reset.target, but we already have a recipe that installs a that
> same file. The recipe is as follows
>
> ```bitbake
> LICENSE = "CLOSED"
> SUMMARY = "A factory reset target"
> DESCRIPTION = "A recipe which provides a common means of creating factory
> reset \
>     tasks. Each application should attach to this target in order to
> perform \
>     any tasks when the device needs to be reset."
>
> SRC_URI = " \
>     file://factory-reset.target \
>     file://factory-reset-reboot.service \
> "
>
> SYSTEMD_SERVICE_${PN} = " \
>     factory-reset.target \
>     factory-reset-reboot.service \
> "
>
> do_install() {
>     install -d ${D}/${systemd_system_unitdir}
>     install -m 0644 \
>         ${WORKDIR}/factory-reset.target \
>         ${WORKDIR}/factory-reset-reboot.service \
>         ${D}/${systemd_system_unitdir}
> }
>
> inherit systemd
> ```
>
> I figured I could get the version of systemd through its installed
> pkg-config, but I'd need to modify the content of `SYSTEMD_SERVICE_${PN`,
> so I tried this
>
> ```bitbake
> LICENSE = "CLOSED"
> SUMMARY = "A factory reset target"
> DESCRIPTION = "A recipe which provides a common means of creating factory
> reset \
>     tasks. Each application should attach to this target in order to
> perform \
>     any tasks when the device needs to be reset."
>
> DEPENDS = "systemd"
>
> SRC_URI = " \
>     file://factory-reset.target \
>     file://factory-reset-reboot.service \
> "
>
> python __anonymous() {
>     import subprocess
>
>     try:
>         output = subprocess.check_output(["pkg-config", "--modversion",
> "systemd"]).decode("utf-8").strip()
>         systemd_version = int(output.split('.')[0])
>         d.setVar("SYSTEMD_VERSION", systemd_version)
>     except (subprocess.CalledProcessError, ValueError):
>         bb.warn("Could not determine systemd version. Assuming version <
> 250")
>         d.setVar("SYSTEMD_VERSION", 249)  # Default to 249 if systemd
> version cannot be determined
> }
>
> SYSTEMD_SERVICE:${PN} = "factory-reset-reboot.service"
> SYSTEMD_SERVICE:${PN}:append = "${@ ' factory-reset.target' if
> int(d.getVar('SYSTEMD_VERSION')) < 250 else '' }"
>
> do_install() {
>     # systemd 250 introduces factory-reset.target for the same reasons we
> created it in the first place
>     if [ ${SYSTEMD_VERSION} -lt 250 ]; then
>         install -d ${D}/${systemd_system_unitdir}
>         install -m 0644 ${WORKDIR}/factory-reset.target
> ${D}/${systemd_system_unitdir}
>     fi
>
>     install -d ${D}/${systemd_system_unitdir}
>     install -m 0644 ${WORKDIR}/factory-reset-reboot.service
> ${D}/${systemd_system_unitdir}
> }
>
> inherit systemd pkgconfig
> ```
>
> Obviously, this has troubles at the parsing stage.. so, this won't work. I
> was wondering if there was a nice solution to this problem so I can make my
> recipe compatible with both layer versions during the migration.
>
> Thank you,
> Logan
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64231):
> https://lists.yoctoproject.org/g/yocto/message/64231
> Mute This Topic: https://lists.yoctoproject.org/mt/109446043/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000a0f9d60626549c21
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Nobody ever promised you can use the same layer with more=
 than one yocto release. Please make a branch.</div><div dir=3D"auto"><br><=
/div><div dir=3D"auto">Alex</div><div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Thu 7. Nov 2024 at 16.34, Logan Grosz vi=
a <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;=
Logan.Grosz=3D<a href=3D"mailto:b9c.com@lists.yoctoproject.org">b9c.com@lis=
ts.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-styl=
e:solid;padding-left:1ex;border-left-color:rgb(204,204,204)">




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Hi, all</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
My company is trying to migrate a newer version of Yocto and in an effort t=
o do that I am making changes to our current layer to facilitate an easier =
transition. One problem I encountered was SystemD 250 installs a target
<code style=3D"font-family:monospace">factory-reset.target</code>, but we a=
lready have a recipe that installs a that same file. The recipe is as follo=
ws</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"direction:ltr;margin-left:40px;font-family:Aptos,Aptos_Embedd=
edFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;colo=
r:rgb(0,0,0)">
```bitbake</div>
<div style=3D"direction:ltr;margin-left:40px;font-family:&quot;Aptos Mono&q=
uot;,Aptos_EmbeddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:=
rgb(0,0,0)">
LICENSE =3D &quot;CLOSED&quot;</div>
<div style=3D"direction:ltr;margin-left:40px;font-family:&quot;Aptos Mono&q=
uot;,Aptos_EmbeddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:=
rgb(0,0,0)">
SUMMARY =3D &quot;A factory reset target&quot;</div>
<div style=3D"direction:ltr;margin-left:40px;font-family:&quot;Aptos Mono&q=
uot;,Aptos_EmbeddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:=
rgb(0,0,0)">
DESCRIPTION =3D &quot;A recipe which provides a common means of creating fa=
ctory reset \</div>
<div style=3D"direction:ltr;margin-left:40px;font-family:&quot;Aptos Mono&q=
uot;,Aptos_EmbeddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:=
rgb(0,0,0)">
=C2=A0 =C2=A0 tasks. Each application should attach to this target in order=
 to perform \</div>
<div style=3D"direction:ltr;margin-left:40px;font-family:&quot;Aptos Mono&q=
uot;,Aptos_EmbeddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:=
rgb(0,0,0)">
=C2=A0 =C2=A0 any tasks when the device needs to be reset.&quot;</div>
<div style=3D"direction:ltr;margin-left:40px;font-family:&quot;Aptos Mono&q=
uot;,Aptos_EmbeddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:=
rgb(0,0,0)">
<br>
</div>
<div style=3D"direction:ltr;margin-left:40px;font-family:&quot;Aptos Mono&q=
uot;,Aptos_EmbeddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:=
rgb(0,0,0)">
SRC_URI =3D &quot; \</div>
<div style=3D"direction:ltr;margin-left:40px;font-family:&quot;Aptos Mono&q=
uot;,Aptos_EmbeddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:=
rgb(0,0,0)">
=C2=A0 =C2=A0 file://factory-reset.target \</div>
<div style=3D"direction:ltr;margin-left:40px;font-family:&quot;Aptos Mono&q=
uot;,Aptos_EmbeddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:=
rgb(0,0,0)">
=C2=A0 =C2=A0 file://factory-reset-reboot.service \</div>
<div style=3D"direction:ltr;margin-left:40px;font-family:&quot;Aptos Mono&q=
uot;,Aptos_EmbeddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:=
rgb(0,0,0)">
&quot;</div>
<div style=3D"direction:ltr;margin-left:40px;font-family:&quot;Aptos Mono&q=
uot;,Aptos_EmbeddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:=
rgb(0,0,0)">
<br>
</div>
<div style=3D"direction:ltr;margin-left:40px;font-family:&quot;Aptos Mono&q=
uot;,Aptos_EmbeddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:=
rgb(0,0,0)">
SYSTEMD_SERVICE_${PN} =3D &quot; \</div>
<div style=3D"direction:ltr;margin-left:40px;font-family:&quot;Aptos Mono&q=
uot;,Aptos_EmbeddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:=
rgb(0,0,0)">
=C2=A0 =C2=A0 factory-reset.target \</div>
<div style=3D"direction:ltr;margin-left:40px;font-family:&quot;Aptos Mono&q=
uot;,Aptos_EmbeddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:=
rgb(0,0,0)">
=C2=A0 =C2=A0 factory-reset-reboot.service \</div>
<div style=3D"direction:ltr;margin-left:40px;font-family:&quot;Aptos Mono&q=
uot;,Aptos_EmbeddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:=
rgb(0,0,0)">
&quot;</div>
<div style=3D"direction:ltr;margin-left:40px;font-family:&quot;Aptos Mono&q=
uot;,Aptos_EmbeddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:=
rgb(0,0,0)">
<br>
</div>
<div style=3D"direction:ltr;margin-left:40px;font-family:&quot;Aptos Mono&q=
uot;,Aptos_EmbeddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:=
rgb(0,0,0)">
do_install() {</div>
<div style=3D"direction:ltr;margin-left:40px;font-family:&quot;Aptos Mono&q=
uot;,Aptos_EmbeddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:=
rgb(0,0,0)">
=C2=A0 =C2=A0 install -d ${D}/${systemd_system_unitdir}</div>
<div style=3D"direction:ltr;margin-left:40px;font-family:&quot;Aptos Mono&q=
uot;,Aptos_EmbeddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:=
rgb(0,0,0)">
=C2=A0 =C2=A0 install -m 0644 \</div>
<div style=3D"direction:ltr;margin-left:40px;font-family:&quot;Aptos Mono&q=
uot;,Aptos_EmbeddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:=
rgb(0,0,0)">
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${WORKDIR}/factory-reset.target \</div>
<div style=3D"direction:ltr;margin-left:40px;font-family:&quot;Aptos Mono&q=
uot;,Aptos_EmbeddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:=
rgb(0,0,0)">
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${WORKDIR}/factory-reset-reboot.service \</div>
<div style=3D"direction:ltr;margin-left:40px;font-family:&quot;Aptos Mono&q=
uot;,Aptos_EmbeddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:=
rgb(0,0,0)">
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${D}/${systemd_system_unitdir}</div>
<div style=3D"direction:ltr;margin-left:40px;font-family:&quot;Aptos Mono&q=
uot;,Aptos_EmbeddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:=
rgb(0,0,0)">
}</div>
<div style=3D"direction:ltr;margin-left:40px;font-family:&quot;Aptos Mono&q=
uot;,Aptos_EmbeddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:=
rgb(0,0,0)">
<br>
</div>
<div style=3D"direction:ltr;margin-left:40px;font-family:Aptos,Aptos_Embedd=
edFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;colo=
r:rgb(0,0,0)">
<span style=3D"font-family:&quot;Aptos Mono&quot;,Aptos_EmbeddedFont,Aptos_=
MSFontService,monospace">inherit systemd</span><br>
```</div>
<div style=3D"direction:ltr;margin-left:40px;font-family:Aptos,Aptos_Embedd=
edFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;colo=
r:rgb(0,0,0)">
<br>
</div>
<div style=3D"direction:ltr;margin-left:0px;font-family:Aptos,Aptos_Embedde=
dFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I figured I could get the version of systemd through its installed pkg-conf=
ig, but I&#39;d need to modify the content of `SYSTEMD_SERVICE_${PN`, so I =
tried this</div>
<div style=3D"direction:ltr;margin-left:0px;font-family:Aptos,Aptos_Embedde=
dFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"direction:ltr;margin-left:40px;font-family:Aptos,Aptos_Embedd=
edFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;colo=
r:rgb(0,0,0)">
```bitbake</div>
<div style=3D"direction:ltr;margin-left:40px;font-family:&quot;Aptos Mono&q=
uot;,Aptos_EmbeddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:=
rgb(0,0,0)">
LICENSE =3D &quot;CLOSED&quot;</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
SUMMARY =3D &quot;A factory reset target&quot;</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
DESCRIPTION =3D &quot;A recipe which provides a common means of creating fa=
ctory reset \</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 tasks.=C2=A0Each application should attach to this target in =
order to perform \</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 any tasks when the device needs to be reset.&quot;</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
DEPENDS =3D=C2=A0&quot;systemd&quot;</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
SRC_URI =3D &quot; \</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 file://factory-reset.target \</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 file://factory-reset-reboot.service \</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
&quot;</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
python __anonymous() {</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 import subprocess</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 try:</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 =C2=A0 =C2=A0 output =3D subprocess.check_output([&quot;pkg-c=
onfig&quot;, &quot;--modversion&quot;, &quot;systemd&quot;]).decode(&quot;u=
tf-8&quot;).strip()</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 =C2=A0 =C2=A0 systemd_version =3D int(output.split(&#39;.&#39=
;)[0])</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 =C2=A0 =C2=A0 d.setVar(&quot;SYSTEMD_VERSION&quot;, systemd_v=
ersion)</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 except (subprocess.CalledProcessError, ValueError):</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.warn(&quot;Could not determine systemd versi=
on. Assuming version &lt; 250&quot;)</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 =C2=A0 =C2=A0 d.setVar(&quot;SYSTEMD_VERSION&quot;, 249) =C2=
=A0# Default to 249 if systemd version cannot be determined</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
}</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
SYSTEMD_SERVICE:${PN} =3D &quot;factory-reset-reboot.service&quot;</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
SYSTEMD_SERVICE:${PN}:append =3D &quot;${@ &#39; factory-reset.target&#39; =
if int(d.getVar(&#39;SYSTEMD_VERSION&#39;)) &lt; 250 else &#39;&#39; }&quot=
;</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
do_install() {</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 # systemd 250 introduces factory-reset.target for the same re=
asons we created it in the first place</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 if [ ${SYSTEMD_VERSION} -lt 250 ]; then</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d ${D}/${systemd_system_unitdir}</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -m 0644 ${WORKDIR}/factory-reset.target=
 ${D}/${systemd_system_unitdir}</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 fi</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 install -d ${D}/${systemd_system_unitdir}</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
=C2=A0 =C2=A0 install -m 0644 ${WORKDIR}/factory-reset-reboot.service ${D}/=
${systemd_system_unitdir}</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
}</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"margin-left:40px;font-family:&quot;Aptos Mono&quot;,Aptos_Emb=
eddedFont,Aptos_MSFontService,monospace;font-size:12pt;color:rgb(0,0,0)">
inherit systemd pkgconfig</div>
<div style=3D"direction:ltr;margin-left:40px;font-family:Aptos,Aptos_Embedd=
edFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;colo=
r:rgb(0,0,0)">
```</div>
<div style=3D"direction:ltr;margin-left:0px;font-family:Aptos,Aptos_Embedde=
dFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"direction:ltr;margin-left:0px;font-family:Aptos,Aptos_Embedde=
dFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Obviously, this has troubles at the parsing stage.. so, this won&#39;t work=
. I was wondering if there was a nice solution to this problem so I can mak=
e my recipe compatible with both layer versions during the migration.=C2=A0=
</div>
<div id=3D"m_-8752096563497330228Signature" style=3D"color:inherit">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Thank you,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Logan</div>
</div>
</div>

<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#64231): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/64231" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/64231</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/109446043/168=
6489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/109446043/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000a0f9d60626549c21--

