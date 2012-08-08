Return-Path: <fnognn@unife.it>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C77D1E00346
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 08:14:15 -0700 (PDT)
Received: by lagr15 with SMTP id r15so516021lag.35
	for <yocto@yoctoproject.org>; Wed, 08 Aug 2012 08:14:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type
	:x-gm-message-state;
	bh=Bij+pSM4/wXCQWoqBehjbNtc6n5N2ljj2aKl/HlaRB8=;
	b=d1mYu4FQSUDGloB6r/xbIR2zbKZu0lhhklpQ0FCd4USBHtRlsa+yiJdre3a9PH27nJ
	yon/5jwkWqLFbUFn+bFAzFlHvtzZGJNR6qcwUSY88Fx3Tke+h/COwMI3E/utCoS+oant
	J6mdlkHrj8nkbq/F4uardRqXtoW+jX3qqIf9OercSnJqRdswRJTrRk7DQweWHeHu553r
	MFvhaTmW97Uqm5ZiGQjyUl6P6+n2TmD4jK52bHjfw1ws0HW2KPvcl4c0U49ftecVcbBa
	Gyhmc8v6rl+cJjzY26Xh3hJucop+lOpmSVAbhBD2l+ORCtn7xXv81vM5siF0iXedYUhg
	k76A==
Received: by 10.152.122.9 with SMTP id lo9mr507081lab.41.1344438854545; Wed,
	08 Aug 2012 08:14:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.46.42 with HTTP; Wed, 8 Aug 2012 08:13:54 -0700 (PDT)
From: Giovanni Foiani <fnognn@unife.it>
Date: Wed, 8 Aug 2012 17:13:54 +0200
Message-ID: <CANsUPaNSFsapsHbjxcBvjDi4Yo-8eJ1trLDvycKLBX9m4RDNSg@mail.gmail.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQmDIQT2I8CcThuF2I8fjba71qlmFt8b3ibD8fBjMkl1vdq2Q+9sclHfNC3zFiVJpJVvFlcW
Subject: Custom splash screen using psplash
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
X-List-Received-Date: Wed, 08 Aug 2012 15:14:16 -0000
Content-Type: multipart/alternative; boundary=f46d043bd6fa58ef1104c6c290f5

--f46d043bd6fa58ef1104c6c290f5
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I need to setup a custom splash screen replacing the Yocto logo with a
custom image.
I generated my logo using make-image script into psplash screen and
replaced the previous one in meta/recipes-core/psplash/files folder.
Then I run


   - bitbake psplash -c cleansstate
   - bitbake psplash

and then generate a new image, but during boot I still see the Yocto logo.
Which is the right procedure?
Does the my custom logo (a png image) have some requirements (i.e. size,
colors, etc..)?

Thanks

Giovanni
--

Dott. Ing. Giovanni Foiani

Cell:        +39-349-3577515
Phone:    +39-0532-97-4106
mail:        giovanni.foiani@unife.it
CenTec - Corso Guercino, 47 - 44042 Cento (FE)

--f46d043bd6fa58ef1104c6c290f5
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<div><br></div><div>I need to setup a custom splash screen replacing the=
 Yocto logo with a custom image.</div><div>I generated my logo using make-i=
mage script into psplash screen and replaced the previous one in=A0meta/rec=
ipes-core/psplash/files folder.</div>

<div>Then I run=A0</div><div><br></div><div><ul><li>bitbake psplash -c clea=
nsstate</li><li>bitbake psplash</li></ul><div>and then generate a new image=
, but during boot I still see the Yocto logo.</div><div>Which is the right =
procedure?</div>

<div>Does the my custom logo (a png image) have some requirements (i.e. siz=
e, colors, etc..)?</div><div><br></div><div>Thanks</div><div><br></div><div=
>Giovanni</div>
<div>--<br><br>Dott. Ing. Giovanni Foiani<br><font face=3D"arial, sans-seri=
f"><span style=3D"border-collapse:collapse"><br></span></font></div><div>Ce=
ll:=A0 =A0 =A0 =A0 +39-349-3577515<br>Phone: =A0=A0 +39-0532-97-4106<br>mai=
l:=A0 =A0 =A0 =A0 <a href=3D"mailto:giovanni.foiani@unife.it" target=3D"_bl=
ank">giovanni.foiani@unife.it</a></div>

<div><span style=3D"font-family:arial,helvetica,sans-serif;font-size:13px;l=
ine-height:13px">CenTec - Corso Guercino, 47 - 44042 Cento (FE)</span></div=
><br>
</div>

--f46d043bd6fa58ef1104c6c290f5--
