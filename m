Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com [209.85.222.41])
 by mx.groups.io with SMTP id smtpd.web10.20786.1610903517000035906
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 Jan 2021 09:11:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZO73CxmL;
 spf=pass (domain: gmail.com, ip: 209.85.222.41, mailfrom: kerenyi.nagy.zoltan@gmail.com)
Received: by mail-ua1-f41.google.com with SMTP id i5so966592uat.9
        for <yocto@lists.yoctoproject.org>; Sun, 17 Jan 2021 09:11:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=kwDne0ClukgmDGAFigGF6o6HDD7QzTvUw7z+ghKKU8Y=;
        b=ZO73CxmLpDnI1zDIYw8iwtb7gsrlgNoNeRvrWbI++3KBi83+0GZBuMyqQ17S3tdJWm
         gQDXt9Vw3KWeRsMOKhVVQSowKXgAdW9p53pU2SUFqSW7EG4nyd9XFN7lBE9tDz8duIZ1
         hsF/iHehmjXPRjHcNfh2iS2aE187mDtoK6+WoI46QHSLen19gFXP76Gjt/I4Xd34pKdr
         2GdFYXdAlXavZQYnVmeEXNLh+rSNw0WW6NXtquXrWCOz8qI5/2h8TEqfEkU1sMLjurC5
         4KlnKpkGobByLZ+h7SAVe2RCKp/vdXFqV6NHBB1Dn07YvlLg8Tebv+QnOz16WR7EPa68
         fEdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=kwDne0ClukgmDGAFigGF6o6HDD7QzTvUw7z+ghKKU8Y=;
        b=Flsj/tVOIfTLeM88p1Hu/44QuSg+lfy3aoDanv+ppyYxz1czntPbIwuSmLkfQnV0c6
         BA5/4ig/mZmkomq70WjfuZhGaYaqGXXprIQOjh1Hn2boiym0LeMpf8L/PTKBX+k6OKRt
         7SYR4yZDiSgJnXayzhIoCadggukf8aLwYFDfdRmfH4RVRr0ZHppiSPuq8I2UmjPOyKNn
         AhzRC2sn/2ONz1iB7cUxwquFgdMYSntI9cY3E+rgnT178TTqZQTk0SweUiGeMAfDJfz2
         ozpRRGSflw6q7O/0J8CBIOJOd7Yo1dKna4nL0ZybGjpTYiMCz3bu5ypT+YeJwMR0/kMH
         NTEg==
X-Gm-Message-State: AOAM533b1UYcCAuiqd8Un6Uf1z9v467GP9yTw9OPBsk2fwnTyz6WAM3Z
	VLYaBvkZPjONTD8oRAdhZ2Z1CWPIY1ECQHFQSFSaqeysiFvvgg==
X-Google-Smtp-Source: ABdhPJwFLHJph7c6VKXQcKsnyKPUVSM2CZcEUKeq6evJ9BkWY3JvL1zz/emP5oLhWFkRKxWadvtrMLOsrQQ7kQCc8Ss=
X-Received: by 2002:a9f:24af:: with SMTP id 44mr597423uar.68.1610903515779;
 Sun, 17 Jan 2021 09:11:55 -0800 (PST)
MIME-Version: 1.0
From: "Zoltan Kerenyi Nagy" <kerenyi.nagy.zoltan@gmail.com>
Date: Sun, 17 Jan 2021 18:11:14 +0100
Message-ID: <CAHwRhWZaMTeeStkoBbeki2u8psthnd0QFetKSjSxn5En9FyeBA@mail.gmail.com>
Subject: devtool add
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d354b205b91bb38e"

--000000000000d354b205b91bb38e
Content-Type: text/plain; charset="UTF-8"

Hi Folks,

Is it possible to create a recipe file with devtool?

*devtool add cdc-ncm
https://raw.githubusercontent.com/torvalds/linux/master/drivers/net/usb/cdc_ncm.c
<https://raw.githubusercontent.com/torvalds/linux/master/drivers/net/usb/cdc_ncm.c>*

There is gonna be a file not found error:


*FileNotFoundError: [Errno 2] No such file or directory: 'cdc_ncm.c'ERROR:
Command 'script -e -q -c "recipetool --color=always create --devtool -o
/tmp/devtoolo5nw4pcb
'https://raw.githubusercontent.com/torvalds/linux/master/drivers/net/usb/cdc_ncm.c
<https://raw.githubusercontent.com/torvalds/linux/master/drivers/net/usb/cdc_ncm.c>'
 -x /home/zoli/poky/build/workspace/sources/devtoolsrc39q8anfa -N cdc-ncm"
/dev/null' failed*

However when I wget the same source, the c file downloads correctly.

Do you have any idea?

Thanks,

--000000000000d354b205b91bb38e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"color:#333399">Hi Fo=
lks,</div><div class=3D"gmail_default" style=3D"color:#333399"><br></div><d=
iv class=3D"gmail_default" style=3D"color:#333399">Is it possible to create=
 a recipe file with devtool?</div><div class=3D"gmail_default" style=3D"col=
or:#333399"><br></div><div class=3D"gmail_default" style=3D"color:#333399">=
<i><font size=3D"1">devtool add cdc-ncm <a href=3D"https://raw.githubuserco=
ntent.com/torvalds/linux/master/drivers/net/usb/cdc_ncm.c">https://raw.gith=
ubusercontent.com/torvalds/linux/master/drivers/net/usb/cdc_ncm.c</a></font=
></i><br></div><div class=3D"gmail_default" style=3D"color:#333399"><br></d=
iv><div class=3D"gmail_default" style=3D"color:#333399">There is gonna be a=
 file not found error:</div><div class=3D"gmail_default" style=3D"color:#33=
3399"><i><font size=3D"1"><br></font></i></div><div class=3D"gmail_default"=
 style=3D"color:#333399"><i><font size=3D"1">FileNotFoundError: [Errno 2] N=
o such file or directory: &#39;cdc_ncm.c&#39;<br>ERROR: Command &#39;script=
 -e -q -c &quot;recipetool --color=3Dalways create --devtool -o /tmp/devtoo=
lo5nw4pcb &#39;<a href=3D"https://raw.githubusercontent.com/torvalds/linux/=
master/drivers/net/usb/cdc_ncm.c">https://raw.githubusercontent.com/torvald=
s/linux/master/drivers/net/usb/cdc_ncm.c</a>&#39; =C2=A0-x /home/zoli/poky/=
build/workspace/sources/devtoolsrc39q8anfa -N cdc-ncm&quot; /dev/null&#39; =
failed</font></i></div><div class=3D"gmail_default" style=3D"color:#333399"=
><font size=3D"1"><br></font></div><div class=3D"gmail_default" style=3D"co=
lor:#333399"><font size=3D"2">However when I wget the same source, the c fi=
le downloads correctly.</font></div><div class=3D"gmail_default" style=3D"c=
olor:#333399"><font size=3D"2"><br></font></div><div class=3D"gmail_default=
" style=3D"color:#333399"><font size=3D"2">Do you have any idea?</font></di=
v><div class=3D"gmail_default" style=3D"color:#333399"><font size=3D"2"><br=
></font></div><div class=3D"gmail_default" style=3D"color:#333399"><font si=
ze=3D"2">Thanks,<br></font></div><div class=3D"gmail_default" style=3D"colo=
r:#333399"><font size=3D"1"><br></font></div></div>
<br>-- <br>Zolee

--000000000000d354b205b91bb38e--
