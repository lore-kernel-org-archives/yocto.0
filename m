Return-Path: <a.broekhuis+yocto@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71F3EC6FD1C
	for <webhook@archiver.kernel.org>; Fri, 24 Mar 2023 07:59:05 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
 by mx.groups.io with SMTP id smtpd.web11.95456.1679644739428990565
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Mar 2023 00:58:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ZVC0OHAk;
 spf=pass (domain: gmail.com, ip: 209.85.208.41, mailfrom: a.broekhuis@gmail.com)
Received: by mail-ed1-f41.google.com with SMTP id t10so4410247edd.12
        for <yocto@lists.yoctoproject.org>; Fri, 24 Mar 2023 00:58:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679644737;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=qKS5lukbj/IEKxfyfA3IjkovfGp//PSvDQ01O5IkdXk=;
        b=ZVC0OHAkref4kvyqoVJ7cGCTqodBEbFGi9RpylIXG6BXV81oALK4F2TXl1YrFuU6jD
         5SAybMOhbFHmmWVjK+ipkV1fEuTEB11jDO/rPPqJt1vCIQ/8NbWDVuHGoS1GeDMqH940
         UBBZ/lbRNG6DrG9BNg08VF5mqM7XQKwnRmZbgiR6WbziFIKB3PIuFH4BVFcz+89ki39V
         f22PefnUqHKjqIQhrSf7PmuDYKue7eR+R2oJ3kWijDf31tEyNB3I3Gc4ix/9BP8ptMqD
         7mURsuGnZX1dJI7U5tPT8eMck+/SmZ4xT6hBaKm5ezbjsPCzAC08yWJpPueGZ/UTOczs
         KNpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679644737;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qKS5lukbj/IEKxfyfA3IjkovfGp//PSvDQ01O5IkdXk=;
        b=xcV0vw3FyCEc1J+iblEV2NR4LNC1IX5OWw9ux5Ad7bQvKORvBgRAh0Jms2sGxT3rlH
         2euyY8xpaqlif4eT3uZRFMJYYZztkJXwBvsbomC+JBEh396LjmeY2NqPlixEtSkIpVOU
         1ewtiPd3vq1nrQwqwKOG7r9fvPQq3n3Ljb4cevC3SRSPNpK1V2WU3XRotn5ZN2ymZMZl
         kgiw+nkEaWEnR505vX0bKBGsYiY77YGIC8MxuvRrv4yk9V2/iDtP4suCV6XDk6YWEVLF
         3B0eReKxpLTI+9lAuQUh/tYQcQHTvcbOWd3J6Qh/t2Y7Kk+mKv6OHbVQMzdSJtGPfvv9
         7nFw==
X-Gm-Message-State: AAQBX9dIfBocbMGKLE1NHtt2FRBgWVkhdhjdTtY0t0fmycn5DBaxlvx5
	XXmZXUnLCjKHlzAs1MqF3sEAgg/pPebtkG04/vIAATgMClQ=
X-Google-Smtp-Source: AKy350b0CBHPYMKB6QYvcpT1q9yaqPpUvunhvEfAH2prahwugSSO05YGhxylsDst9wOSyLVZEBc8wyAhjfvgQ9HEabM=
X-Received: by 2002:a17:906:36cf:b0:92b:7e6a:bca5 with SMTP id
 b15-20020a17090636cf00b0092b7e6abca5mr941004ejc.12.1679644737022; Fri, 24 Mar
 2023 00:58:57 -0700 (PDT)
MIME-Version: 1.0
From: Alexander Broekhuis <a.broekhuis+yocto@gmail.com>
Date: Fri, 24 Mar 2023 08:58:45 +0100
Message-ID: <CA+T-u8d7zzmYXtwvep=ZxeevmhwrgooUAGAzGjRX8F10FWD7qQ@mail.gmail.com>
Subject: Enable parameterised systemd service from different package
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e6309e05f7a0c39a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Mar 2023 07:59:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59504

--000000000000e6309e05f7a0c39a
Content-Type: text/plain; charset="UTF-8"

Hi all,

I've been struggling with this for a while now, and can't seem to find the
proper way, so I hope someone has some hints for me.

I have one package in which a parameterised systemd unit file is added.
This package does not add the actual service, only the myservice@.service
file.

The recipe looks like:

SRC_URI += " \
    file://myservice@.service \
 "

inherit systemd

do_install() {
    install -D -m0644 ${WORKDIR}/docker-compose@.service
${D}${systemd_system_unitdir}/docker-compose@.service
}

SYSTEMD_SERVICE:${PN} = "docker-compose@.service"

FILES:${PN} += "${systemd_system_unitdir}/docker-compose@.service"

Since this recipe does not create any actual service, I doubt the systemd
and service creation is actually needed here.

In 2 different packages I want to add an actual service using this unit
file, those recipes look like:

inherit systemd

RDEPENDS:${PN} += "myservice"
SYSTEMD_PACKAGES = "myservice"
SYSTEMD_SERVICE:${PN} = "myservice@actual.service"

However, the myservice@actual.service does not exist/is not created.

I am not certain if I use SYSTEMD_PACKAGES correctly here and if the
RDEPENDS is the correct way to add myservice to the dependant packages.

Using a bbappend on myservice does work, however then I end up with both
services in all images where myservice is added. Which is not what I want,
different services end up in different images.

Image A: IMAGE_INSTALL += myservice actualservice1
Image B: IMAGE_INSTALL += myservice actualservice2

I've thought about 2 workarounds:
1) Create the symbolic link myself, which does feel like a hack
2) Create a custom systemd preset file myself, which should trigger
enabling of the service during the first boot

However, reading the documentation of SYSTEMD_PACKAGES, I hoped/expected
the above recipe would actually work.

--000000000000e6309e05f7a0c39a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div id=3D"m_-7632253450119187190gmail-:19o" style=3D"dire=
ction:ltr;margin:8px 0px 0px;padding:0px;font-size:0.875rem"><div id=3D"m_-=
7632253450119187190gmail-:tw" style=3D"font-variant-numeric:normal;font-var=
iant-east-asian:normal;font-stretch:normal;font-size:small;line-height:1.5;=
overflow:hidden"><div dir=3D"ltr">Hi all,<div><br></div><div>I&#39;ve been =
struggling with this for a while now, and can&#39;t seem to find the proper=
 way, so I hope someone has some hints for me.</div><div><br></div><div>I h=
ave one package in which a parameterised systemd unit file is added. This p=
ackage does not add the actual service, only the myservice@.service file.</=
div><div><br></div><div>The recipe looks like:</div><div><div style=3D"back=
ground-color:rgb(43,43,43);color:rgb(169,183,198);font-family:&quot;JetBrai=
ns Mono&quot;,monospace;font-size:9.8pt"><pre style=3D"white-space:pre-wrap=
"><span style=3D"color:rgb(152,118,170);font-style:italic">SRC_URI </span>+=
=3D <span style=3D"color:rgb(106,135,89)">&quot; \</span><span style=3D"col=
or:rgb(106,135,89)"><br></span><span style=3D"color:rgb(106,135,89)">    fi=
le://myservice@.service \<br></span><span style=3D"color:rgb(106,135,89)"> =
&quot;<br></span><span style=3D"color:rgb(106,135,89)"><br></span><span sty=
le=3D"color:rgb(204,120,50)">inherit</span> systemd<br><span style=3D"color=
:rgb(106,135,89)"><br></span><span style=3D"color:rgb(255,198,109)">do_inst=
all</span>() {<br>    install -D -m0644 ${WORKDIR}/docker-compose@.service =
${D}${systemd_system_unitdir}/docker-compose@.service<br>}<br><br><span sty=
le=3D"color:rgb(152,118,170);font-style:italic">SYSTEMD_SERVICE</span>:<spa=
n style=3D"color:rgb(152,118,170);font-style:italic">${PN} </span>=3D <span=
 style=3D"color:rgb(106,135,89)">&quot;docker-compose@.service&quot;<br></s=
pan><span style=3D"color:rgb(106,135,89)"><br></span><span style=3D"color:r=
gb(152,118,170);font-style:italic">FILES</span>:<span style=3D"color:rgb(15=
2,118,170);font-style:italic">${PN} </span>+=3D <span style=3D"color:rgb(10=
6,135,89)">&quot;${systemd_system_unitdir}/docker-compose@.service</span><s=
pan style=3D"color:rgb(106,135,89)">&quot;</span></pre></div></div><div>Sin=
ce this recipe does not create any actual service, I doubt the systemd and =
service creation is actually needed here.</div><div><br></div><div>In 2 dif=
ferent packages I want to add an actual service using this unit file,=C2=A0=
those recipes look like:</div><div><div style=3D"background-color:rgb(43,43=
,43);color:rgb(169,183,198);font-family:&quot;JetBrains Mono&quot;,monospac=
e;font-size:9.8pt"><pre style=3D"white-space:pre-wrap"><span style=3D"color=
:rgb(204,120,50)">inherit</span> systemd <br><br><span style=3D"color:rgb(1=
52,118,170);font-style:italic">RDEPENDS</span>:<span style=3D"color:rgb(152=
,118,170);font-style:italic">${PN} </span>+=3D <span style=3D"color:rgb(106=
,135,89)">&quot;myservice&quot;<br></span><span style=3D"color:rgb(152,118,=
170);font-style:italic">SYSTEMD_PACKAGES </span>=3D <span style=3D"color:rg=
b(106,135,89)">&quot;myservice&quot;<br></span><span style=3D"color:rgb(152=
,118,170);font-style:italic">SYSTEMD_SERVICE</span>:<span style=3D"color:rg=
b(152,118,170);font-style:italic">${PN} </span>=3D <span style=3D"color:rgb=
(106,135,89)">&quot;myservice@actual.service&quot;</span></pre></div></div>=
<div><div>However, the myservice@actual.service does not exist/is not creat=
ed.</div><div><br></div><div>I am not certain if I use SYSTEMD_PACKAGES cor=
rectly here and if the RDEPENDS is the correct way to add myservice to the =
dependant packages.</div><div><br></div><div>Using a bbappend on myservice =
does work, however then I end up with both services in all images where mys=
ervice is added. Which is not what I want, different services end up in dif=
ferent images.</div><div><br></div><div>Image A: IMAGE_INSTALL=C2=A0+=3D my=
service actualservice1<br></div><div>Image B: IMAGE_INSTALL=C2=A0+=3D myser=
vice actualservice2<br></div><div><br></div><div>I&#39;ve thought about 2 w=
orkarounds:</div><div>1) Create the symbolic link myself, which does feel l=
ike a hack</div><div>2) Create a custom systemd preset file myself, which s=
hould trigger enabling of the service during the first boot</div><div><br><=
/div><div>However, reading the documentation of SYSTEMD_PACKAGES, I hoped/e=
xpected the above recipe would actually work.</div></div></div></div></div>=
</div>

--000000000000e6309e05f7a0c39a--

