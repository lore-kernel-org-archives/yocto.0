Return-Path: <ayoub.zaki@googlemail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DAF1AC25B76
	for <webhook@archiver.kernel.org>; Mon,  3 Jun 2024 14:45:27 +0000 (UTC)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
 by mx.groups.io with SMTP id smtpd.web11.85430.1717425918423881240
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Jun 2024 07:45:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@googlemail.com header.s=20230601 header.b=dAjAFjgj;
 spf=pass (domain: googlemail.com, ip: 209.85.219.170, mailfrom: ayoub.zaki@googlemail.com)
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-df4d5d0b8d0so3914642276.2
        for <yocto@lists.yoctoproject.org>; Mon, 03 Jun 2024 07:45:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1717425917; x=1718030717; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=vjgNt4vNa0O9iJNS4HUnT4ua4n9XMBIrs4xkKN9NSdE=;
        b=dAjAFjgjSgZCEv7UZtxP1X+4oIaoJUcnKcUaiYdlHo/t5yoM8E53/sL1yBJ4qYr5pC
         prEjCr/bqV7ajmZtE0V5j4pr/SrgaD8gdG9PJp7OcjTOA15nehJkBeGKJdxdOShHOHlo
         KBRc1XlbEpj4qR9TsdSAn0Zak1jHuxAI42iHWpzBGHWxvtgSWvYhQqB06DdEy2yJJL+k
         BoFOKaiC+yTq2aWAEsKP1dYlkS1qOtO6Y1tIARFPeyFNZX3WqOcjaAhG3iW4nLStnOJX
         +VySfMIcim+EE3CBmfG+nFjQr6WxXwqG4/TRxr7isMuv0u3JYroPm5EK8wf4cItT41DM
         c6FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717425917; x=1718030717;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vjgNt4vNa0O9iJNS4HUnT4ua4n9XMBIrs4xkKN9NSdE=;
        b=WoEohdqXFJeUbaMG0XNpEaw5a8Y4kRj47NkUcxT8SoK2TcBWWTAnFh4s/XA81juigu
         nYgzzDqrcToD39znW8qJITlsHFFxy9bhyxmOuY6wOsfG8vHcP5Jj7RcuAqjydYMNsNvb
         f5XzYwI+bopyxNkbLKpscMZNDnZM1jh3ft0B+zd+Jvf/HXT15u4Ku34mq0uEhUrAEHU0
         vhIYGt4K5iHQJwAKo9GQUJpDxUh3uJRZNasfwGi2GWJt7Wf5a03DIzzKkXObzjKoxUCZ
         PdsK0BtM8AsHTOceGc4Rhj20uUkMZ7Hyfu7LcmpygzvZkE0UDFiXLk7a7rHSokpKJska
         5Jmw==
X-Gm-Message-State: AOJu0YwiV9ReQrd59hpKIXemG1pJ7ZBo+9eC7eaHpEIwEy6VJKv7DFA8
	oCyY6CIlzfORd/pvTZmK0UUmyqDIDCNdE84erFVgRi5IaehLtzKwctVwkAtosH7gdRFkI6iEcYo
	jmZB8JppRE0cW04gz9suRnWmIHBiLkX7R
X-Google-Smtp-Source: AGHT+IHBFMRbo/BI9rGL74UtEL/v470oDkJGsJaU6lHOkXNjTHX7udNxCq6EMEjbow9Di5Q3mBTxBgrP0NW8AvEtIOI=
X-Received: by 2002:a25:a2c5:0:b0:dfa:96e4:f54d with SMTP id
 3f1490d57ef6-dfa96e4f95emr3612045276.41.1717425917108; Mon, 03 Jun 2024
 07:45:17 -0700 (PDT)
MIME-Version: 1.0
From: Ayoub Zaki <ayoub.zaki@googlemail.com>
Date: Mon, 3 Jun 2024 16:45:05 +0200
Message-ID: <CA+-BmJZxdiOzpTs9j+WFWNnn-wtAH1zdUZdQQq9HniMhFij1+A@mail.gmail.com>
Subject: Systemd resolv.conf
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b7ae050619fd61c5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Jun 2024 14:45:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63260

--000000000000b7ae050619fd61c5
Content-Type: text/plain; charset="UTF-8"

Hello,

after upgrading to scarthgap, I noticed that the name resolution
doesn't work anymore:

~ # ping yocto.org
ping: bad address 'yocto.org'
~ #

~ # ping 217.160.0.14
PING 217.160.0.14 (217.160.0.14): 56 data bytes
64 bytes from 217.160.0.14: seq=0 ttl=57 time=24.174 ms
64 bytes from 217.160.0.14: seq=1 ttl=57 time=19.452 ms

--- 217.160.0.14 ping statistics ---
2 packets transmitted, 2 packets received, 0% packet loss
round-trip min/avg/max = 19.452/21.813/24.174 ms


~ # ls -l /etc/resolv.conf
lrwxrwxrwx    1 root     root            20 Mar  9  2018 /etc/resolv.conf
-> /var/run/resolv.conf
~ # cat /var/run/resolv.conf
cat: can't open '/var/run/resolv.conf': No such file or directory



After linking manually :

~ # ln -sf /etc/resolv-conf.systemd /etc/resolv.conf
~ #
~ #
~ # ping yocto.org
PING yocto.org (217.160.0.14): 56 data bytes
64 bytes from 217.160.0.14: seq=0 ttl=57 time=17.577 ms
64 bytes from 217.160.0.14: seq=1 ttl=57 time=18.716 ms
^C
--- yocto.org ping statistics ---
2 packets transmitted, 2 packets received, 0% packet loss
round-trip min/avg/max = 17.577/18.146/18.716 ms


shouldn't be that added in the systemd recipe :

https://git.yoctoproject.org/poky/tree/meta/recipes-core/systemd/systemd_255.4.bb?h=scarthgap#n352

Best regards

--000000000000b7ae050619fd61c5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>after upgrading to scarthgap, I =
noticed that the name resolution doesn&#39;t=C2=A0work anymore:</div><div><=
br></div><div>~ # ping <a href=3D"http://yocto.org">yocto.org</a><br>ping: =
bad address &#39;<a href=3D"http://yocto.org">yocto.org</a>&#39;<br>~ # <br=
><br>~ # ping 217.160.0.14<br>PING 217.160.0.14 (217.160.0.14): 56 data byt=
es<br>64 bytes from <a href=3D"http://217.160.0.14">217.160.0.14</a>: seq=
=3D0 ttl=3D57 time=3D24.174 ms<br>64 bytes from <a href=3D"http://217.160.0=
.14">217.160.0.14</a>: seq=3D1 ttl=3D57 time=3D19.452 ms<br><br>--- 217.160=
.0.14 ping statistics ---<br>2 packets transmitted, 2 packets received, 0% =
packet loss<br>round-trip min/avg/max =3D 19.452/21.813/24.174 ms<br></div>=
<div><br></div><div><br></div><div>~ # ls -l /etc/resolv.conf <br>lrwxrwxrw=
x =C2=A0 =C2=A01 root =C2=A0 =C2=A0 root =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A020 Mar =C2=A09 =C2=A02018 /etc/resolv.conf -&gt; /var/run/resolv.con=
f<br>~ # cat /var/run/resolv.conf<br>cat: can&#39;t open &#39;/var/run/reso=
lv.conf&#39;: No such file or directory<br></div><div><br></div><div><br></=
div><div><br></div><div>After linking manually :</div><div><br></div><div>~=
 # ln -sf /etc/resolv-conf.systemd /etc/resolv.conf<br>~ # <br>~ # <br>~ # =
ping <a href=3D"http://yocto.org">yocto.org</a><br>PING <a href=3D"http://y=
octo.org">yocto.org</a> (217.160.0.14): 56 data bytes<br>64 bytes from <a h=
ref=3D"http://217.160.0.14">217.160.0.14</a>: seq=3D0 ttl=3D57 time=3D17.57=
7 ms<br>64 bytes from <a href=3D"http://217.160.0.14">217.160.0.14</a>: seq=
=3D1 ttl=3D57 time=3D18.716 ms<br>^C<br>--- <a href=3D"http://yocto.org">yo=
cto.org</a> ping statistics ---<br>2 packets transmitted, 2 packets receive=
d, 0% packet loss<br>round-trip min/avg/max =3D 17.577/18.146/18.716 ms<br>=
</div><div><br></div><div><br></div><div>shouldn&#39;t be that added in the=
 systemd recipe :</div><div><br></div><div><a href=3D"https://git.yoctoproj=
ect.org/poky/tree/meta/recipes-core/systemd/systemd_255.4.bb?h=3Dscarthgap#=
n352">https://git.yoctoproject.org/poky/tree/meta/recipes-core/systemd/syst=
emd_255.4.bb?h=3Dscarthgap#n352</a><br></div><div><br></div><div>Best regar=
ds</div></div>

--000000000000b7ae050619fd61c5--

