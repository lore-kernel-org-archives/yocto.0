Return-Path: <khoidinhtrinh@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94453C43334
	for <webhook@archiver.kernel.org>; Tue, 12 Jul 2022 16:15:20 +0000 (UTC)
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com
 [209.85.167.174])
 by mx.groups.io with SMTP id smtpd.web10.11196.1657642518676299207
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Jul 2022 09:15:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=p4hneTBS;
 spf=pass (domain: gmail.com, ip: 209.85.167.174,
 mailfrom: khoidinhtrinh@gmail.com)
Received: by mail-oi1-f174.google.com with SMTP id t189so10999568oie.8
        for <yocto@lists.yoctoproject.org>;
 Tue, 12 Jul 2022 09:15:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fJvrUpIiykOAUVh7pPIwo+BRuPoml1FunrYjgdUCa94=;
        b=p4hneTBSScs+4J0yte0oX4d1c3VCnXW2qkJ92b8ahr5egdsrSN3ZKYR1m0JNNO/UHi
         yRx0btoUyUcjv2LEUfI1LTV5B6YcErwHThitsbUQGbBHlUmuMDmufKlw9PnSIWUUVghv
         xcvO26HVVKEop2wy+Pk1sRL8gHvmgcaygmEGm+POB7fUh6OXvG+ntHfiIlx1G31jX2rZ
         Sn9C6jutim3/o4te5ErQIo6sAeU2Fy92bszNtrHjaxQyKuQbWamD1DngFFZtIZLP92b/
         jTrakhYsP08E0yXRLNZHWPDqKg5mk35nABZS8Wsmy7UyWPxteFvHBP9iKzsFwrlOmZSC
         uy6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fJvrUpIiykOAUVh7pPIwo+BRuPoml1FunrYjgdUCa94=;
        b=Z8wGS/LX5EjQrw4GOq14rgdkb790PdpClPMVZT72ZM/LWlKwlrckHYPvDD35B5N0DJ
         jGFX4x1Ft/HVeDNJJu8r8Wekida1Oat52qw0YqKCA2iWOJBcQNeUUi7v+2rid7U5U+/7
         9p3eTo0ZxUJuAbFdkZclVqADKRFO9SdkQ1Y6KkFwunmfEx1GbcElwJPiUDbkyAe/gfX3
         i3mZN2pIKjD/gtBHEz24/LKRq+tPMd+ImqZexnpcpv6P4UxsM5qqI6mBagPnYJs7lvhq
         PdMuFcPQ2ZOyfpqRIR4gxnOBQRQYUpJqh82GFpnf/n070A/NfyyctkBJfcmLux2YrHhl
         qx6g==
X-Gm-Message-State: AJIora/xkzURv3809ujhTFJu8u+R6PD+EUhVxV2j2I1LG4soLxWG9JaT
	/8FDVSVeWGB6hGvdw7Tvcp1HlMpyr8vZl3cvXR8=
X-Google-Smtp-Source: 
 AGRyM1sBlkBywacPrgTyxB2rQJJ5f9h5/Ttk4mtTYonfYSOgxdTgIecfqqp6yCha3hIzk5K9wXlBT2kKu5IewgxCVDU=
X-Received: by 2002:a05:6808:1b8d:b0:32f:7995:b32b with SMTP id
 cj13-20020a0568081b8d00b0032f7995b32bmr2312714oib.219.1657642517435; Tue, 12
 Jul 2022 09:15:17 -0700 (PDT)
MIME-Version: 1.0
References: 
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.949ef384-8293-46b8-903f-40a477c056ae.0579b8aa-d2a5-42d7-9e61-2548c06e61ef@emailsignatures365.codetwo.com>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.0d2bd5fa-15cc-4b27-b94e-83614f9e5b38.2d9bc8b4-92c7-47b2-b9e8-ac8d32e87ee0@emailsignatures365.codetwo.com>
 <6b3d2b0146aeaf2c25e0440e7dd6aa0c17cb4a36.camel@delisys.ch>
 <8f0726b6-c7ed-83a1-6069-41bf8370b3bb@topic.nl>
In-Reply-To: <8f0726b6-c7ed-83a1-6069-41bf8370b3bb@topic.nl>
From: Khoi Dinh Trinh <khoidinhtrinh@gmail.com>
Date: Tue, 12 Jul 2022 09:15:06 -0700
Message-ID: 
 <CAMLPRYczkk+ceHD8Mnf=BMv2GJrEF_75mwLek37rccwPKZvYZQ@mail.gmail.com>
Subject: Re: [yocto] Switching between multiple DISTROs without
 "contamination"
To: Mike Looijmans <mike.looijmans@topic.nl>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000006a99c905e39df9ca"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Jul 2022 16:15:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57516

--0000000000006a99c905e39df9ca
Content-Type: text/plain; charset="UTF-8"

Thank you Nicolas for asking this question since I will probably run into
this issue soon if not for this email thread. The answers so far have been
very helpful but I just want to clarify a bit more on why doesn't the
package get rebuilt? From my understanding, Yocto should rerun a task when
the signature of the task changes and since do_install has an override on
mydistro-dev, shouldn't the content and thus the signature of do_install
change when switching distro and so Yocto should rerun it? I have a lot of
tasks with override not just on DISTRO but other things like MACHINE or
custom variables so I want to understand the rebuild mechanism as best I
can.

Best,
Khoi Trinh

On Tue, Jul 12, 2022 at 8:05 AM Mike Looijmans <mike.looijmans@topic.nl>
wrote:

> Quick answer: Don't build multiple distros in one build directory.
>
> You might get away with setting TMPDIR = "tmp-${DISTRO}" to give each
> its own.
>
> But I'd rather advice to set up two separate builds and just point the
> downloads and sstate-cache to the same location. It'll be faster than
> the TMPDIR option.
>
> Or figure out how to put the difference in the IMAGE only. Then you can
> just build both images (in parallel, woot), which is faster, more
> convenient and saves on diskspace.
>
> What I often do is have my-application.bb generate a
> my-application-utils package that only gets installed in the "dev" image
> but not in the production one, which only installs "my-application".
>
> You could also create a "my-application-dev.bb" recipe that includes
> my-application.bb and just changes what it needs to be different.
>
>
>
>
> Met vriendelijke groet / kind regards,
>
> Mike Looijmans
> System Expert
>
>
> TOPIC Embedded Products B.V.
> Materiaalweg 4, 5681 RJ Best
> The Netherlands
>
> T: +31 (0) 499 33 69 69
> E: mike.looijmans@topicproducts.com
> W: www.topic.nl
>
> Please consider the environment before printing this e-mail
> On 12-07-2022 15:37, Nicolas Jeker via lists.yoctoproject.org wrote:
> > Hi all,
> >
> > I'm currently using an additional layer and image to differentiate
> > between a release and development build (enabling NFS, SSH, root login,
> > etc.). To create a development build, I manually add the layer to
> > bblayers.conf. This works quite well, but feels a bit clumsy to
> > integrate into a CI/CD pipeline.
> >
> > Per these past discussions here [1][2], I'm now trying to migrate to
> > multiple DISTROs, something like "mydistro" and "mydistro-dev".
> >
> > While migrating some of the changes, I discovered that I run into
> > caching(?) issues. I have a recipe for an internal application and want
> > to include additional systemd service files in the development image.
> >
> > What I did was this:
> >
> > Added "application-dbg.service" to recipes-internal/application/files
> >
> > Adapted application.bb recipe:
> >
> > SRC_URI:append:mydistro-dev = " file://application-dbg.service"
> >
> > do_install {
> >      # ...snip...
> >      # systemd service
> >      install -d ${D}${systemd_system_unitdir}
> >      install -m 0644 ${WORKDIR}/application.service
> > ${D}${systemd_system_unitdir}
> > }
> >
> > do_install:append:mydistro-dev() {
> >      # debug systemd services
> >      install -d ${D}${systemd_system_unitdir}
> >      install -m 0644 ${WORKDIR}/application-dbg.service
> > ${D}${systemd_system_unitdir}
> > }
> >
> >
> > When I run "DISTRO=mydistro-dev bitbake application" followed by
> > "DISTRO=mydistro bitbake application", the debug service file is still
> > present in the package. This seems to be caused by the "image"
> > directory in the recipe WORKDIR not being cleaned between subsequent
> > do_install runs. Is this expected behaviour? What's the best solution?
> >
> > Kind regards,
> > Nicolas
> >
> > [1]:
> >
> https://lore.kernel.org/yocto/CAH9dsRiArf_9GgQS4hCg5=J_Jk6cd3eiGaOiQd788+iSLTuU+g@mail.gmail.com/
> > [2]:
> >
> https://lore.kernel.org/yocto/VI1PR0602MB3549F83AC93A53785DE48677D3FD9@VI1PR0602MB3549.eurprd06.prod.outlook.com/
> >
> >
> >
>
> --
> Mike Looijmans
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57515):
> https://lists.yoctoproject.org/g/yocto/message/57515
> Mute This Topic: https://lists.yoctoproject.org/mt/92332946/6433300
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> khoidinhtrinh@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

-- 
Best,
Khoi Trinh

--0000000000006a99c905e39df9ca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thank you Nicolas for asking this question since I wi=
ll probably run into this issue soon if not for this email thread. The answ=
ers so far have been very helpful but I just want to clarify a bit more on =
why doesn&#39;t the package get rebuilt? From my understanding, Yocto shoul=
d rerun a task when the signature of the task changes and since do_install =
has an override on mydistro-dev, shouldn&#39;t the content and thus the sig=
nature of do_install change when switching distro and so Yocto should rerun=
 it? I have a lot of tasks with override not just on DISTRO but other thing=
s like MACHINE or custom variables so I want to understand the rebuild mech=
anism as best I can.<br></div><div><br></div><div>Best,</div><div>Khoi Trin=
h<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Tue, Jul 12, 2022 at 8:05 AM Mike Looijmans &lt;<a href=3D"ma=
ilto:mike.looijmans@topic.nl">mike.looijmans@topic.nl</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">Quick answer: Don&#39;=
t build multiple distros in one build directory.<br>
<br>
You might get away with setting TMPDIR =3D &quot;tmp-${DISTRO}&quot; to giv=
e each <br>
its own.<br>
<br>
But I&#39;d rather advice to set up two separate builds and just point the =
<br>
downloads and sstate-cache to the same location. It&#39;ll be faster than <=
br>
the TMPDIR option.<br>
<br>
Or figure out how to put the difference in the IMAGE only. Then you can <br=
>
just build both images (in parallel, woot), which is faster, more <br>
convenient and saves on diskspace.<br>
<br>
What I often do is have <a href=3D"http://my-application.bb" rel=3D"norefer=
rer" target=3D"_blank">my-application.bb</a> generate a <br>
my-application-utils package that only gets installed in the &quot;dev&quot=
; image <br>
but not in the production one, which only installs &quot;my-application&quo=
t;.<br>
<br>
You could also create a &quot;<a href=3D"http://my-application-dev.bb" rel=
=3D"noreferrer" target=3D"_blank">my-application-dev.bb</a>&quot; recipe th=
at includes <br>
<a href=3D"http://my-application.bb" rel=3D"noreferrer" target=3D"_blank">m=
y-application.bb</a> and just changes what it needs to be different.<br>
<br>
<br>
<br>
<br>
Met vriendelijke groet / kind regards,<br>
<br>
Mike Looijmans<br>
System Expert<br>
<br>
<br>
TOPIC Embedded Products B.V.<br>
Materiaalweg 4, 5681 RJ Best<br>
The Netherlands<br>
<br>
T: +31 (0) 499 33 69 69<br>
E: <a href=3D"mailto:mike.looijmans@topicproducts.com" target=3D"_blank">mi=
ke.looijmans@topicproducts.com</a><br>
W: <a href=3D"http://www.topic.nl" rel=3D"noreferrer" target=3D"_blank">www=
.topic.nl</a><br>
<br>
Please consider the environment before printing this e-mail<br>
On 12-07-2022 15:37, Nicolas Jeker via <a href=3D"http://lists.yoctoproject=
.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a> wrote=
:<br>
&gt; Hi all,<br>
&gt;<br>
&gt; I&#39;m currently using an additional layer and image to differentiate=
<br>
&gt; between a release and development build (enabling NFS, SSH, root login=
,<br>
&gt; etc.). To create a development build, I manually add the layer to<br>
&gt; bblayers.conf. This works quite well, but feels a bit clumsy to<br>
&gt; integrate into a CI/CD pipeline.<br>
&gt;<br>
&gt; Per these past discussions here [1][2], I&#39;m now trying to migrate =
to<br>
&gt; multiple DISTROs, something like &quot;mydistro&quot; and &quot;mydist=
ro-dev&quot;.<br>
&gt;<br>
&gt; While migrating some of the changes, I discovered that I run into<br>
&gt; caching(?) issues. I have a recipe for an internal application and wan=
t<br>
&gt; to include additional systemd service files in the development image.<=
br>
&gt;<br>
&gt; What I did was this:<br>
&gt;<br>
&gt; Added &quot;application-dbg.service&quot; to recipes-internal/applicat=
ion/files<br>
&gt;<br>
&gt; Adapted <a href=3D"http://application.bb" rel=3D"noreferrer" target=3D=
"_blank">application.bb</a> recipe:<br>
&gt;<br>
&gt; SRC_URI:append:mydistro-dev =3D &quot; file://application-dbg.service&=
quot;<br>
&gt;<br>
&gt; do_install {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 # ...snip...<br>
&gt;=C2=A0 =C2=A0 =C2=A0 # systemd service<br>
&gt;=C2=A0 =C2=A0 =C2=A0 install -d ${D}${systemd_system_unitdir}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 install -m 0644 ${WORKDIR}/application.service<br>
&gt; ${D}${systemd_system_unitdir}<br>
&gt; }<br>
&gt;<br>
&gt; do_install:append:mydistro-dev() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 # debug systemd services<br>
&gt;=C2=A0 =C2=A0 =C2=A0 install -d ${D}${systemd_system_unitdir}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 install -m 0644 ${WORKDIR}/application-dbg.service=
<br>
&gt; ${D}${systemd_system_unitdir}<br>
&gt; }<br>
&gt;<br>
&gt;<br>
&gt; When I run &quot;DISTRO=3Dmydistro-dev bitbake application&quot; follo=
wed by<br>
&gt; &quot;DISTRO=3Dmydistro bitbake application&quot;, the debug service f=
ile is still<br>
&gt; present in the package. This seems to be caused by the &quot;image&quo=
t;<br>
&gt; directory in the recipe WORKDIR not being cleaned between subsequent<b=
r>
&gt; do_install runs. Is this expected behaviour? What&#39;s the best solut=
ion?<br>
&gt;<br>
&gt; Kind regards,<br>
&gt; Nicolas<br>
&gt;<br>
&gt; [1]:<br>
&gt; <a href=3D"https://lore.kernel.org/yocto/CAH9dsRiArf_9GgQS4hCg5=3DJ_Jk=
6cd3eiGaOiQd788+iSLTuU+g@mail.gmail.com/" rel=3D"noreferrer" target=3D"_bla=
nk">https://lore.kernel.org/yocto/CAH9dsRiArf_9GgQS4hCg5=3DJ_Jk6cd3eiGaOiQd=
788+iSLTuU+g@mail.gmail.com/</a><br>
&gt; [2]:<br>
&gt; <a href=3D"https://lore.kernel.org/yocto/VI1PR0602MB3549F83AC93A53785D=
E48677D3FD9@VI1PR0602MB3549.eurprd06.prod.outlook.com/" rel=3D"noreferrer" =
target=3D"_blank">https://lore.kernel.org/yocto/VI1PR0602MB3549F83AC93A5378=
5DE48677D3FD9@VI1PR0602MB3549.eurprd06.prod.outlook.com/</a><br>
&gt;<br>
&gt; <br>
&gt;<br>
<br>
-- <br>
Mike Looijmans<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#57515): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/57515" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/57515</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/92332946/6433=
300" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/92332946/6433300</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:khoidinhtrinh@gmail.com" target=3D"_blank">khoid=
inhtrinh@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr">Best,<div>Khoi Trinh</div></div></div>

--0000000000006a99c905e39df9ca--

