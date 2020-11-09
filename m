Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
 by mx.groups.io with SMTP id smtpd.web09.7390.1604898740643590267
 for <yocto@lists.yoctoproject.org>;
 Sun, 08 Nov 2020 21:12:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y3xgST2B;
 spf=pass (domain: gmail.com, ip: 209.85.221.175, mailfrom: nikhilvp29@gmail.com)
Received: by mail-vk1-f175.google.com with SMTP id e8so1136660vkk.8
        for <yocto@lists.yoctoproject.org>; Sun, 08 Nov 2020 21:12:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=WEyswnzHXfolVh8vJ4ItN8AxxSBumTonrpb8HH0UJGA=;
        b=Y3xgST2BDk5spaOAkrlbIUqnwpP9lqZJssvYd8SARRba39IvpwypcBiqOe/cMHlz7b
         FLezKdBnABpZQ8rubLr73beWDMljnViCrOwujDInP/UZ5f/sfJ4PSvYrXh1rq3bJd7Os
         pyWy7EmYbhQ6Ud4J1w+gQsJtkHjkBe41TPvZ3wMZ+7TDS/HijGuKN8k6Kn+hpjwI78ie
         kog2U+DLv1Y7QF4GOOgey/WP2vXvHJaVxUL2X8Y+aWtaPobMSCeZ2rhdiBXvBZzKY5wy
         Z8Fp5Gk7QSSrcKzV4h9Afuj+knhX4wv2GL6hFP24S/qbXnLSNdMtVt0REE7pmynx0p/C
         /Ovw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=WEyswnzHXfolVh8vJ4ItN8AxxSBumTonrpb8HH0UJGA=;
        b=VUaDPM+unif0dgweqOD1UEtMBB5v32r228f8Pzx/4g7P5pw3Woai0IRU9pTKpmuqfM
         4spmf11+PPDqymdySB7xEcvrvwcP9ssiZleEl93yZkMKkY4AOFAh0rnK/Lo+cMS6UZcb
         ZytN7xlG1AsVMjz7WXvNZMDNfeWcy2fzdLzCUPAPZgouA2Ut6O6C/HDVbzgDhiFo3xZJ
         BXxca0vq8nKO0kd7Nus0Q9pjvocMrAvw90UE9TJyrJwBpwYY1D6qSL5iVv8MN/UiMnD7
         erT4j6Up6rQvjdnL9HV6kmaoaQ8GRx6mgImIOdaP0fmt8PUBQU3h9zJjRIwkGuD6nzNI
         qTXg==
X-Gm-Message-State: AOAM532wgICeMhhE88q9l+ggVru7OaDM2K1BLfjCTicvnEP52Hz3Hhb0
	yCTkFi2Nd/piDMEEll0ZFLTPd/sBbKuUNOSeJMYviqQr3wIeXA==
X-Google-Smtp-Source: ABdhPJzppa5Ff8ABHoyoBg4zr4dqMxw6/4ERAjtu7df7ByDwOMNWDkRCl/FZJ2Z1D2ubFel0d0JndnfruUPkCwk27JI=
X-Received: by 2002:a1f:3655:: with SMTP id d82mr6101060vka.22.1604898739431;
 Sun, 08 Nov 2020 21:12:19 -0800 (PST)
MIME-Version: 1.0
From: "NIKHIL PATIL" <nikhilvp29@gmail.com>
Date: Mon, 9 Nov 2020 10:42:08 +0530
Message-ID: <CAJw=dJ9pQ+Xqs-UajoUcCHGNJANmaXagCW0ePx3YxBfq5SRyUw@mail.gmail.com>
Subject: Dependencies error while compiling .
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000043ad2105b3a59bba"

--00000000000043ad2105b3a59bba
Content-Type: text/plain; charset="UTF-8"

Hi team ,
      while compiling a package i am getting following error :-

Log data follows:
| DEBUG: Executing python function extend_recipe_sysroot
| NOTE: Direct dependencies are ['virtual:native:/data/nikhil/
inti_dmsv/yocto_build/meta/recipes-devtools/pseudo/pseudo_git.bb:
do_populate_sysroot', '/data/nikhil/inti_dmsv/yocto_
build/meta/recipes-devtools/quilt/quilt-native_0.65.bb:do_populate_sysroot']
| NOTE: Installed into sysroot: []
| NOTE: Skipping as already exists in sysroot: ['pseudo-native',
'quilt-native']
| DEBUG: Python function extend_recipe_sysroot finished
| DEBUG: Executing shell function do_install

if anyone knows , please help.

--00000000000043ad2105b3a59bba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi team ,<div>=C2=A0 =C2=A0 =C2=A0 while compiling a packa=
ge i am getting following error :-</div><div>=C2=A0 =C2=A0=C2=A0</div><div>=
<table cellpadding=3D"0" class=3D"gmail-ajC" style=3D"border-spacing:0px;li=
ne-height:20px;font-family:Roboto,RobotoDraft,Helvetica,Arial,sans-serif;fo=
nt-size:14px"><tbody><tr class=3D"gmail-ajv"><td colspan=3D"2" tabindex=3D"=
0" class=3D"gmail-gL" style=3D"vertical-align:top;width:auto;padding:2px 0p=
x"><span class=3D"gmail-gI" style=3D"vertical-align:top">Log data follows:<=
br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:small"><span s=
tyle=3D"font-family:Arial,Helvetica,sans-serif;font-size:small">| DEBUG: Ex=
ecuting python function extend_recipe_sysroot</span><br style=3D"font-famil=
y:Arial,Helvetica,sans-serif;font-size:small"><span style=3D"font-family:Ar=
ial,Helvetica,sans-serif;font-size:small">| NOTE: Direct dependencies are [=
&#39;virtual:native:/data/nikhil/</span><span style=3D"font-family:Arial,He=
lvetica,sans-serif;font-size:small">inti_dmsv/yocto_build/meta/</span><span=
 style=3D"font-family:Arial,Helvetica,sans-serif;font-size:small">recipes-d=
evtools/pseudo/</span><span style=3D"font-family:Arial,Helvetica,sans-serif=
;font-size:small">pseudo_git.bb:do_populate_</span><span style=3D"font-fami=
ly:Arial,Helvetica,sans-serif;font-size:small">sysroot&#39;, &#39;/data/nik=
hil/inti_dmsv/yocto_</span><span style=3D"font-family:Arial,Helvetica,sans-=
serif;font-size:small">build/meta/recipes-devtools/</span><span style=3D"fo=
nt-family:Arial,Helvetica,sans-serif;font-size:small">quilt/quilt-native_0.=
65.bb:do_</span><span style=3D"font-family:Arial,Helvetica,sans-serif;font-=
size:small">populate_sysroot&#39;]</span><br style=3D"font-family:Arial,Hel=
vetica,sans-serif;font-size:small"><span style=3D"font-family:Arial,Helveti=
ca,sans-serif;font-size:small">| NOTE: Installed into sysroot: []</span><br=
 style=3D"font-family:Arial,Helvetica,sans-serif;font-size:small"><span sty=
le=3D"font-family:Arial,Helvetica,sans-serif;font-size:small">| NOTE: Skipp=
ing as already exists in sysroot: [&#39;pseudo-native&#39;, &#39;quilt-nati=
ve&#39;]</span><br style=3D"font-family:Arial,Helvetica,sans-serif;font-siz=
e:small"><span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:sm=
all">| DEBUG: Python function extend_recipe_sysroot finished</span><br styl=
e=3D"font-family:Arial,Helvetica,sans-serif;font-size:small"><span style=3D=
"font-family:Arial,Helvetica,sans-serif;font-size:small">| DEBUG: Executing=
 shell function do_install<br></span><br>if anyone knows , please help.<br =
class=3D"gmail-Apple-interchange-newline"><br></span></td></tr></tbody></ta=
ble><br></div></div>

--00000000000043ad2105b3a59bba--
