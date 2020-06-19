Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com [209.85.222.49])
 by mx.groups.io with SMTP id smtpd.web11.6553.1592572827901973012
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Jun 2020 06:20:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=C0jfidf7;
 spf=pass (domain: gmail.com, ip: 209.85.222.49, mailfrom: tomekthemessenger@gmail.com)
Received: by mail-ua1-f49.google.com with SMTP id c9so3145521uao.11
        for <yocto@lists.yoctoproject.org>; Fri, 19 Jun 2020 06:20:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=zP84fTqtxPf/DTfY3HUoy3BBVtBV6aPhmaNdIvIYkvE=;
        b=C0jfidf7D8UoNYVE3YurULJL6MWZa28W1UwiyI8hjnzuQ1HNuwumC7i2YmruEC5pFS
         WjRjNqmmWof6WsjlBYuUYGBIb1l1YvKtyBRk7VLeLo2Q7ZOpef8CLTHC6M52rJZypo3/
         zAh6GryD+o6g2d801ZEGTKOKa4OIBEsJUwvulBh+iIO1/MfROmGueHBN2sO9auaLzi2T
         Ls7td+2aObcouhg+j5FMTv2fJFZCIQZrZfeVet1yA8xzA0g+ly3XGj7QBtQuRbg2zrz5
         Qy4jd1VY7t0aU2QRK7BTiFZOnf/pmAJ+i1dXm/DP3O6FPo1e3NRbFTD97aw6Brj6BmRH
         TSNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=zP84fTqtxPf/DTfY3HUoy3BBVtBV6aPhmaNdIvIYkvE=;
        b=f/I6r7hnUiMT35b+EHtyU/hXE0G7Gh+6HekWz8QACtb4QnmJ+UNu3hGHdxacPgt5mO
         aXQ0Nhl3AoGYSNFI+eeReN/UarKP+mYjUTHT712D/oLD331LhvSqXyiV7Y3AffraRJMj
         R4uwcKDXUoLiRM1qJydH3PSXuPsreCRiPweeaJS9Mi/xCnXvN8DAg5uNM+RTm6R0bdl5
         74UcsDuXcnFgJN3I2ZF94vzx1wlBTiqyy37C9zOj6pnPSxL0S/wlO9GA+Wkmwv3NTBTA
         xzbK9GGSqRXGGv61/g2Q4xodl07dZvtfOTWh6H+k5TTBGfRDymkgmkWQXuIR0CcNtu44
         aKfA==
X-Gm-Message-State: AOAM531aNpJU2v2yCkkPjO/8L2xHb2UVhsLBLBHuXuJnFVtOJjQZI2vU
	P4xijh+QItKu3Mg5n3Zhb4Ht5aoI7hL0aKKhSMePGKaO1Js=
X-Google-Smtp-Source: ABdhPJzFG61L4TPbw2VNQnkcPE+gMOKUtyRSPUfCphhXxlQ454x+qym81eRASAigNTaoQ5ozbiESw50H4Es0+269vas=
X-Received: by 2002:ab0:1651:: with SMTP id l17mr2480840uae.21.1592572826672;
 Fri, 19 Jun 2020 06:20:26 -0700 (PDT)
MIME-Version: 1.0
From: tomekthemessenger@gmail.com
Date: Fri, 19 Jun 2020 15:20:13 +0200
Message-ID: <CAA4NGyuwrkQrQ05AR_2OyaYTxrF41sqx1AoaDFbJaU99TwCjxQ@mail.gmail.com>
Subject: [yocto] MACHINE and inc files
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009ce2ce05a86fc121"

--0000000000009ce2ce05a86fc121
Content-Type: text/plain; charset="UTF-8"

Hi
I have various ${MACHINE} called:
uruguay-x11
uruguay-x21
supa-rte-x11
supa-rte-x13
supa-rte-x21
velismate-x11
velismate-x21

I created some bb recipe:
temp.bb
where there are common things done for all machines.
Now I need to perform different things for  uruguay, supa-rte and velismate.
How to do this? Should I create
uruguay-%.inc supa-%.inc and velismate-%.inc?
and in temp.bb write:
include ${MACHINE}.inc
but this won't work as bitbake will expect full name with x11 etc part. How
to exclude part with x11, rte-x21 etc? Is any way?
Anybody can help?

BR
Tomek

--0000000000009ce2ce05a86fc121
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi<br>I have various ${MACHINE} called:<br>uruguay-x11<br>=
uruguay-x21<br>supa-rte-x11<br>supa-rte-x13<br>supa-rte-x21<br>velismate-x1=
1<br>velismate-x21<br><br>I created some bb recipe:<br><a href=3D"http://te=
mp.bb">temp.bb</a><br>where there are common things done for all machines.<=
br>Now I need to perform different things for =C2=A0uruguay, supa-rte and v=
elismate.<br>How to do this? Should I create <br>uruguay-%.inc supa-%.inc a=
nd velismate-%.inc?<br>and in <a href=3D"http://temp.bb">temp.bb</a> write:=
<br>include ${MACHINE}.inc<br>but this won&#39;t work as bitbake will expec=
t full name with x11 etc part. How to exclude=C2=A0part=C2=A0with x11, rte-=
x21 etc? Is any way?<br>Anybody can help?<br><div><br></div><div>BR</div><d=
iv>Tomek</div></div>

--0000000000009ce2ce05a86fc121--
