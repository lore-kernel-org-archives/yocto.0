Return-Path: <maik.vermeulen@lightyear.one>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4AAB0C43217
	for <webhook@archiver.kernel.org>; Thu, 13 Oct 2022 13:17:53 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
 by mx.groups.io with SMTP id smtpd.web10.7338.1665667067063696203
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Oct 2022 06:17:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@lightyear.one header.s=google header.b=Vbpoj78f;
 spf=pass (domain: lightyear.one, ip: 209.85.218.45, mailfrom: maik.vermeulen@lightyear.one)
Received: by mail-ej1-f45.google.com with SMTP id ot12so3895091ejb.1
        for <yocto@lists.yoctoproject.org>; Thu, 13 Oct 2022 06:17:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lightyear.one; s=google;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Om0zIZea5K6BaOgy4vLwFX/IOdLl9BGz5UVrm+3ave0=;
        b=Vbpoj78fHyUHw/aGOGc/e+C5AfD7o6SMVyss8oeg1bIgXXC+KDRR/+M/zz6nWSsqdh
         Da+Si0rbD8tOs5bSC4O57OoNnsqEJZuugZmUOLuz3nh51AajlVBrJmTWDryDq1EMpOqY
         pNByluoFv+Gjb0vJB3oyJdvpMo4Qf7svaCqdDeuEreKesgd+S4vZCyjkR+oBb1/38Dz+
         K16wJyewWe/iVFkOVKTmG0FCJfnBphbKZ9Escu1PfplvZP5W55WQI0m7fc4/ltY1A+ak
         Ns8acQCIQAeF+ayQSlFF4CfXhNvyuD8oP22ZX+8Lgy9w5VIywqhK45DN+5uCFEFIRn4U
         1N/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Om0zIZea5K6BaOgy4vLwFX/IOdLl9BGz5UVrm+3ave0=;
        b=RligfNyXgr8iIOXVxOy70TDhhH2aO5h5uBuH3Kw+tZjzwBIAo0BAaUKjQvoeZM3gBh
         WH2varkf3zi7POfP25r7BNcKVjUWpZBtIHwv63ZYSoDgJO0unBnte1zRhQLAff4Ql86R
         NuS+QSfzrct9dPA0NQ0B5Hnx6KFhblNpUcFecy65iALoclxmSlIeHNs5XhnDo/cFdzVM
         k2af1v50VAgcZsceWFsewgw3BV1pdb+WoT1PnrAk+5wj3MRJQAUU2JyImtzlhakzWPoZ
         1q+gIvG2Djn7iUiwJ05+NAQ9+ZINZHW8c5I5CSMl7rBsx3fw+fsD/xpgCwPAkcQa8Ob/
         Y7hA==
X-Gm-Message-State: ACrzQf2jO8sJ1pgDeenCYmp+lcK8vPoOcxT8sCCPGdmG5DvsslkeGlUk
	u91CKzZfmCo1gxMqdwXqB24M0fbgevRCuO1imnVuS62IMZ5IdhT/0ifZD1/i0f5o7M2/lxz2n3q
	YbU2Pn0sVcibegok7rOZWcOBdtkykY/KHxHEYa6TmcQ==
X-Google-Smtp-Source: AMsMyM5bZCpYKAQQpBQ18dKw+3PWq9kk68XRmtwHvWqQV4MkrocFITaw3I1SBV1qnVYnb5p5QoqsLM0xl8gs59zQ/70=
X-Received: by 2002:a17:907:7b95:b0:72f:9c64:4061 with SMTP id
 ne21-20020a1709077b9500b0072f9c644061mr26893069ejc.351.1665667064929; Thu, 13
 Oct 2022 06:17:44 -0700 (PDT)
MIME-Version: 1.0
From: Maik Vermeulen <maik.vermeulen@lightyear.one>
Date: Thu, 13 Oct 2022 15:17:12 +0200
Message-ID: <CAKO9uzo34iJPxD42PkYbBoh_2-=8cd64_pYTMBd7TtPeTnFeRA@mail.gmail.com>
Subject: Disabling SSH by default (but keeping the service)
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b869c305eaea5563"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Oct 2022 13:17:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58330

--000000000000b869c305eaea5563
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

We tried two things to disable SSH by default in our image recipe:
inherit systemd
SYSTEMD_AUTO_ENABLE_openssh-sshd =3D "disable"

pkg_postinst_ontarget_openssh () {
    systemctl disable --now sshd.socket
}

However, both methods don't seem to work. We can still SSH to the device.
Furthermore, this is the unit list:
sshdgenkeys.service            loaded active exited       OpenSSH Key
Generation
system-sshd.slice                 loaded active active
system-sshd.slice
sshd.socket                          loaded active listening    sshd.socket

We are on openssh_7.6p1.

Any ideas why this is happening?

Kind regards,

Maik Vermeulen

Embedded Software Engineer =E2=80=94 Lightyear <https://www.lightyear.one/>
+31 6 16 82 73 79 <+31616827379>

--=20
=20
<https://lightyear.one/careers?utm_source=3Dsignature&utm_campaign=3Dspotli=
ghtroles&utm_medium=3Demail#vacancies>

--=20


Automotive Campus 70 =E2=80=945708 JZ Helmond, the Netherlands
www.lightyear.one=20
<https://lightyear.one/>
 <https://www.linkedin.com/company/lightyear.one/>

This email may contain information which is privileged and/or=20
confidential. If you received this e-mail in error, please notify us=20
immediately by e-mail and delete the email without copying or disclosing=20
its contents to any other person. Lightyear is a trade name of Atlas=20
Technologies B.V. and is registered at the Dutch Chamber of Commerce under=
=20
number 67264298.=C2=A0

--000000000000b869c305eaea5563
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>We tried two things to disable SSH =
by default in our image recipe:</div><div>inherit systemd</div><div>SYSTEMD=
_AUTO_ENABLE_openssh-sshd =3D &quot;disable&quot;<br></div><div><br></div><=
div>pkg_postinst_ontarget_openssh () {<br>=C2=A0 =C2=A0 systemctl disable -=
-now sshd.socket<br>}<br></div><div><br></div><div>However, both methods do=
n&#39;t seem to work. We can still SSH to the device.</div><div>Furthermore=
, this is the unit list:</div><div>sshdgenkeys.service=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 loaded active exited=C2=A0 =C2=A0 =C2=A0 =C2=A0OpenSSH=
 Key Generation<br>system-sshd.slice=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0loaded active active=C2=A0 =C2=A0 =C2=A0 =C2=A0 sys=
tem-sshd.slice<br>sshd.socket=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 loaded active listening=C2=A0=
 =C2=A0 sshd.socket<br></div><div><br></div><div>We are on=C2=A0openssh_7.6=
p1.</div><div><br></div><div>Any ideas why this is happening?</div><div><di=
v><br></div><div>Kind regards,<br clear=3D"all"><div><div dir=3D"ltr" class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><b=
r><div><span style=3D"color:rgb(29,29,27);font-family:Helvetica,Arial,sans-=
serif;font-size:16px">Maik Vermeulen</span></div><br><div><span style=3D"co=
lor:rgb(29,29,27);font-family:Helvetica,Arial,sans-serif;font-size:13px">Em=
bedded Software Engineer=E2=80=82=E2=80=94=E2=80=82<a href=3D"https://www.l=
ightyear.one/" rel=3D"noopener noreferrer" style=3D"color:rgb(51,206,224)" =
target=3D"_blank">Lightyear</a></span></div><div><span style=3D"color:rgb(2=
9,29,27);font-family:Helvetica,Arial,sans-serif;font-size:13px"><a href=3D"=
tel:+31616827379" rel=3D"noopener" style=3D"color:rgb(29,29,27)" target=3D"=
_blank">+31 6 16 82 73 79</a></span></div></div></div></div></div></div></d=
iv>

<br>
<a href=3D"https://lightyear.one/careers?utm_source=3Dsignature&amp;utm_cam=
paign=3Dspotlightroles&amp;utm_medium=3Demail#vacancies" target=3D"_blank">=
<img src=3D"https://f.hubspotusercontent40.net/hubfs/2629990/lightyear_recr=
uitment_banner.gif" alt=3D"https://lightyear.one/careers?utm_source=3Dsigna=
ture&amp;utm_campaign=3Dspotlightroles&amp;utm_medium=3Demail#vacancies"></=
a><br><div><br></div>
<br>
<br><br><div style=3D"text-align:center"><font size=3D"2">Automotive Campus=
 70 =E2=80=945708 JZ Helmond, the Netherlands</font></div><div style=3D"tex=
t-align:center"><a href=3D"https://lightyear.one/" target=3D"_blank"><font =
size=3D"2">www.lightyear.one</font></a><a href=3D"https://www.linkedin.com/=
company/lightyear.one/" target=3D"_blank"><br></a></div><br><div style=3D"t=
ext-align:center"><span style=3D"color:rgb(128,128,128);font-size:x-small">=
This email may contain information which is privileged and/or confidential.=
 If you received this e-mail in error, please notify us immediately by e-ma=
il and delete the email without copying or disclosing its contents to any o=
ther person. Lightyear is a trade name of Atlas Technologies B.V. and is re=
gistered at the Dutch Chamber of Commerce under number 67264298.=C2=A0</spa=
n></div>
--000000000000b869c305eaea5563--

