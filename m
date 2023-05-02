Return-Path: <antabboud@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0CCAFC77B75
	for <webhook@archiver.kernel.org>; Tue,  2 May 2023 22:17:46 +0000 (UTC)
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com [209.85.161.41])
 by mx.groups.io with SMTP id smtpd.web11.4693.1683065859026979007
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 May 2023 15:17:39 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=PhB4DoEx;
 spf=pass (domain: gmail.com, ip: 209.85.161.41, mailfrom: antabboud@gmail.com)
Received: by mail-oo1-f41.google.com with SMTP id 006d021491bc7-541fb831026so1614417eaf.3
        for <yocto@lists.yoctoproject.org>; Tue, 02 May 2023 15:17:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683065858; x=1685657858;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7vJ+uaBvZAB6pqfyZqSpnlxTzCkLD6NX6A2/Vh+RyfY=;
        b=PhB4DoEx3pJEis/VUbQcd9FjBtzB3Gjv63g2Amh85f2O4NEhv//PcKsj4IFjOBbe4k
         ymJkdKZwkhokIjWXJNFw6BMmdk953bXK/K87KW70Y9e2WLLqZGFMffdjnFbTxgpiOGpY
         Ec2GhM1jTgAJxpcMeG7h8uspLwYtrqOymNBZzwx7wX/z7A4RKcsih0kNbi/XnbGgOhOo
         E+CjN8965oee9dqShJ0wpmiQpQjxmmwirkH+OagR5iOasPl8eRR1UKbrM9PZabNzTp/A
         IY+mzeR9Ncx8RbV4z8him/8PZa+SW4O1S1qyJP8sVoBj+OzCW2ciEhxKMxImFZXAh/Y1
         fl3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683065858; x=1685657858;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7vJ+uaBvZAB6pqfyZqSpnlxTzCkLD6NX6A2/Vh+RyfY=;
        b=h54LR8t3dMxBlBfDpWLxHMOFkkoG+H89yma89xD5cWIXQhzPBHmfdg+Ny2RAmbofpV
         /M6XyT1hNoXqyD7YpYbWaP3ZGa+11S8V9PHHZv7FbBvhkcVrNCLtRrQ+pENw8kN/EW26
         fx1g3h6ljo9h4apDgmpetPJgvrviHQgP6dLXFL63glbSPAhmHWJCkJkRecQOZLdnDjH6
         HtWKWSvghhBhfg6S2Kc5bIqXe8lrnZeUrdZWG0iSTPKmTSTNpugy8ER3ONxZN/SQXgIY
         tTG71X17o6ZQP8DRkYT9UL2kmq05zcZssGGiazD6EELdtnoPJMdsxG81ZTovwH8aH8Yu
         vrdQ==
X-Gm-Message-State: AC+VfDzSL13m4rfrEIW7HitNCmm91+efQsR48ElNOTKKbqs2NuWGpALO
	CxUlJjDWlIO7vCJ4pyfNsBJwHEUb2YDGuvQhEFOnVXaNsQQpCuS7
X-Google-Smtp-Source: ACHHUZ7WAOoGsC0oYekgh1KieE4wzT78G8yUA+9g97/IULqb76j0frxp4wMoezEewRgpC8/TIC5fCUJYfxu2z/ip364=
X-Received: by 2002:a4a:e2da:0:b0:546:4032:87b6 with SMTP id
 l26-20020a4ae2da000000b00546403287b6mr8857917oot.6.1683065857927; Tue, 02 May
 2023 15:17:37 -0700 (PDT)
MIME-Version: 1.0
From: Anthony Abboud <antabboud@gmail.com>
Date: Tue, 2 May 2023 18:17:27 -0400
Message-ID: <CAEAv8SAsr=37-qCpzYU88=SO+vRWdkcz9kcD0B8SrODj77XZaA@mail.gmail.com>
Subject: Trouble Adding Files to rootfs
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000986f8105fabd4e0a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 May 2023 22:17:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59845

--000000000000986f8105fabd4e0a
Content-Type: text/plain; charset="UTF-8"

HI Yocto Community,

I am currently working on build a custom Boot2Qt image to learn about
How-To's since it's my first time playing with Yocto. I am successfully
able to build an image for my system; manually inserting and launching my
Qt application works great.

Now I want to include this app and some files into the rootfs of the image.
I modified the recipe by adding the following lines at the end to attempt
this:

```
SRC_URI += " \
file://qtApp_qml \
file://startup.sh \
file://fb.modes \
"

do_install() {
  install -d ${D}/home/root
  install -m 755 ${WORKDIR}/qtApp_qml ${D}/home/root/

  install -d ${D}/etc/init.d
  install -m 755 ${WORKDIR}/startup.sh ${D}/etc/init.d/

  install -d ${D}/etc
  install -m 755 ${WORKDIR}/fb.modes ${D}/etc/
}

FILES_${PN} += " \
        /home/root/qtApp_qml \
        /etc/init.d/startup.sh \
        /etc/fb.modes \
"
```

But I'm simply unable to get those three files to show up at all in the
final build (both the folders and files!).

I've tried a few variations I saw around but still nothing. Any idea what's
missing?

Thanks!
Anthony

--000000000000986f8105fabd4e0a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">HI Yocto Community,<div><br></div><div>I am currently work=
ing on build a custom Boot2Qt image to learn about How-To&#39;s since it&#3=
9;s my first time playing with Yocto. I am successfully able to build an im=
age for my system; manually inserting and launching my Qt application works=
 great.</div><div><br></div><div>Now I want to include this app and some fi=
les into the rootfs of the image. I modified the recipe by adding the follo=
wing lines at the end to attempt this:</div><div><br></div><div><span style=
=3D"color:rgb(51,51,51);font-family:&quot;Helvetica Neue&quot;,Helvetica,Ar=
ial,sans-serif;font-size:14px;white-space:pre-wrap">```</span><br style=3D"=
box-sizing:border-box;color:rgb(51,51,51);font-family:&quot;Helvetica Neue&=
quot;,Helvetica,Arial,sans-serif;font-size:14px;white-space:pre-wrap">SRC_U=
RI +=3D &quot; \<br>	file://qtApp_qml \<br>	file://startup.sh \<br>	file://=
fb.modes \	<br>&quot;</div><div><br>do_install() {<br>=C2=A0 install -d ${D=
}/home/root<br>=C2=A0 install -m 755 ${WORKDIR}/qtApp_qml ${D}/home/root/<b=
r>=C2=A0 <br>=C2=A0 install -d ${D}/etc/init.d<br>=C2=A0 install -m 755 ${W=
ORKDIR}/startup.sh ${D}/etc/init.d/<br>=C2=A0 <br>=C2=A0 install -d ${D}/et=
c<br>=C2=A0 install -m 755 ${WORKDIR}/fb.modes ${D}/etc/<br>}<br><br>FILES_=
${PN} +=3D &quot; \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 /home/root/qtApp_qml \<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 /etc/init.d/startup.sh \<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 /etc/fb.modes \<br>&quot;<br style=3D"box-sizing:border-box;colo=
r:rgb(51,51,51);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans=
-serif;font-size:14px;white-space:pre-wrap"><span style=3D"color:rgb(51,51,=
51);font-family:&quot;Helvetica Neue&quot;,Helvetica,Arial,sans-serif;font-=
size:14px;white-space:pre-wrap">```</span><br></div><div><div><br></div><di=
v>But I&#39;m simply unable to get those three files to show up at all in t=
he final build (both the folders and files!).</div><div><br></div><div>I&#3=
9;ve tried a few variations I saw around but still nothing. Any idea what&#=
39;s missing?</div><div><br></div><div>Thanks!</div><div>Anthony</div></div=
></div>

--000000000000986f8105fabd4e0a--

