Return-Path: <fnognn@unife.it>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8E48E006D9
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 01:14:21 -0700 (PDT)
Received: by lboj14 with SMTP id j14so1534914lbo.35
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 01:14:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type
	:x-gm-message-state;
	bh=AO86VYCIUSE0Ydt6+dLuz9vzDSgFVjz43l2VoQrUp3Y=;
	b=IzZDToWvaFCkIZJAWADyEJwbUWWG0DZwNwyaC2JLMDQA7Y7Zj2lauKZ6CyNew7r4zV
	krDz1gabFucBS+KYE2fmuLOok4sWrSemwP10P8iY6ssAxGEa8ckbDLvrkrGAUuF6PSic
	0r2b8UnaiLXjG8I5fk7kvE7rNpA3/vHJ1h39qOEaseTXpg32vlMc23+NfYDtYXqy5kE+
	1UMIT8k7KKEhrlb6F8pzI9OPxA3CZcyJB1P3BPj90wd61TQDTEobEkoIzyAR6auK9R++
	IjZmcqfO+mj+uen3kJa4bwk8WQKfhC3dMyqt5MCHd8S5i75n77+Pmj/qqH/e7oWKHFp+
	b5OA==
Received: by 10.152.125.116 with SMTP id mp20mr19305338lab.19.1340784860240;
	Wed, 27 Jun 2012 01:14:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.96.35 with HTTP; Wed, 27 Jun 2012 01:14:00 -0700 (PDT)
From: Giovanni Foiani <fnognn@unife.it>
Date: Wed, 27 Jun 2012 10:14:00 +0200
Message-ID: <CANsUPaP4h2OUz_4McKQ8jmfm_grv_cCGCMfxZQaGMs7ty8Bf1A@mail.gmail.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQnKo77rmKyhluPHb2lvZeOvtsv+zSit1JKF7U8kpqsu6UFREolyuayzx/m6x7NK8TrGEgDK
X-Mailman-Approved-At: Thu, 28 Jun 2012 10:57:29 -0700
Subject: Yocto and Qt embedded
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 27 Jun 2012 08:14:22 -0000
Content-Type: multipart/alternative; boundary=f46d0435be6e509ba904c36fcd8a

--f46d0435be6e509ba904c36fcd8a
Content-Type: text/plain; charset=ISO-8859-1

Hi,

This is my first post on this mailing list and I'm quite new to Yocto.
I successfully built a distro using the latest release of hob, including Qt
embedded (without X11).
I wrote a Qt application and cross compiled for ARM on my host machine but
when I deploy it on the device (a Freescale iMX53) I get and error because
the application looks for libraries like libQtGui but on the distro all Qt
libraries are named like libQtGuiE (ending with E which I suppose it stands
for Embedded).
Is the problem due to a wrong distro configuration or a compile problem?
(I'm using a default ARM toolchain from Ubuntu repos)

Thanks

Giovanni
--

Dott. Ing. Giovanni Foiani

Cell:        +39-349-3577515
Phone:    +39-0532-97-4106
mail:        giovanni.foiani@unife.it
CenTec - Corso Guercino, 47 - 44042 Cento (FE)

--f46d0435be6e509ba904c36fcd8a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<div><br></div><div>This is my first post on this mailing list and I&#39=
;m quite new to Yocto.</div><div>I successfully built a distro using the la=
test release of hob, including Qt embedded (without X11).</div><div>I wrote=
 a Qt application and cross compiled for ARM on my host machine but when I =
deploy it on the device (a Freescale iMX53) I get and error because the app=
lication looks for libraries like libQtGui but on the distro all Qt librari=
es are named like libQtGuiE (ending with E which I suppose it stands for Em=
bedded).</div>

<div>Is the problem due to a wrong distro configuration or a compile proble=
m? (I&#39;m using a default ARM toolchain from Ubuntu repos)</div><div><br>=
</div><div>Thanks</div><div><br></div><div>Giovanni</div><div>
<div>--<br><br>Dott. Ing. Giovanni Foiani<br><font face=3D"arial, sans-seri=
f"><span style=3D"border-collapse:collapse"><br></span></font></div><div>Ce=
ll:=A0 =A0 =A0 =A0 +39-349-3577515<br>Phone: =A0=A0 +39-0532-97-4106<br>mai=
l:=A0 =A0 =A0 =A0 <a href=3D"mailto:giovanni.foiani@unife.it" target=3D"_bl=
ank">giovanni.foiani@unife.it</a></div>

<div><span style=3D"font-family:arial,helvetica,sans-serif;font-size:13px;l=
ine-height:13px">CenTec - Corso Guercino, 47 - 44042 Cento (FE)</span></div=
><br>
</div>

--f46d0435be6e509ba904c36fcd8a--
