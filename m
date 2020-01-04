Received: from mail-io1-f65.google.com (mail-io1-f65.google.com [209.85.166.65])
 by mx.groups.io with SMTP id smtpd.web10.7053.1578144997082603643
 for <Yocto@lists.yoctoproject.org>;
 Sat, 04 Jan 2020 05:36:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=l3qnSa+S;
 spf=pass (domain: gmail.com, ip: 209.85.166.65, mailfrom: rajraja123447@gmail.com)
Received: by mail-io1-f65.google.com with SMTP id t26so44097941ioi.13
        for <Yocto@lists.yoctoproject.org>; Sat, 04 Jan 2020 05:36:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=pZ+Ltfo7B90faXJfYiQUVbNkeGgicjdhRel7aexYM2w=;
        b=l3qnSa+SJsRAbbWN9a7HQwvYCJza6QOBg1q4MTaqtH09anLhd4FkpMK2kk93r7ekbI
         +ktQ06i2aS3A5czF3cJ/4vUa+OZsa0QjusyiUUk1Akfbl3QRuXr8zdVlmUrC4Pqx42Y+
         PtFwSRZHraEgPeDBB6DA/gFevM0qyeMbHsnatTu3qTKAHNvUR1NnR9c+7gyvAU2/b44S
         69aXvegMo4YLdBMcFRYqn4z+1/EtNCAof1FJeDpWqgoiwqCs4xfG/5ShuRl28VSMjx4g
         TCs05FxKq6TuQcRe9cQd/aTk92tVzQ6LqApzdMCAjU1Y8lKJzgKx3xUNl0Kk2wr1xLvb
         UZ/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=pZ+Ltfo7B90faXJfYiQUVbNkeGgicjdhRel7aexYM2w=;
        b=aGak2XaWZBcql/Y0N6jaxHi263hSnBNE+nhsdO/T2yB0GXTzlyId+dLc0mMWD36rDu
         8rCPpvHOTiBplLeJMt/oVznB1S5xqZ5vsQj6xaPx5b1Dw9Yvzmhz90uFIkVJGZ7ZOI2I
         Gp/sxBHOCfNJtmXeS80D2EQQ7yYZR3M6NvjclKl3fR5vzE+B547SQdjaw5oGipCCGO24
         mVnpn8weY/8EmZAqgey2t3c5ISNPVuBnFUMCqjNImXCpUx0rbJ5rTWhsUKs472Y+VDgW
         lwha0uF/YO7dJQoHkHPIkgqS5HuQJnZ86FVoCKWO1ToBk49rn5zRi1y0lRV5sw93RIVR
         v5fQ==
X-Gm-Message-State: APjAAAXO0cLSWiqM3JFDxjjzPDzyDX7RX+m+JkKkR2tobRbw0aZEfVVT
	z5XTMgzh5wN6GkY/AKjoPm6wVIdxKmecViBKixroZQ==
X-Google-Smtp-Source: APXvYqxpSa/yYvwvReedBhw7CeMuP05/KQBEx2stT1p7a1tqcGRU2yh0unlwEbv4V1SnUnKvj6gXVdJHbb87epNj0GU=
X-Received: by 2002:a5d:844d:: with SMTP id w13mr64147703ior.83.1578144996405;
 Sat, 04 Jan 2020 05:36:36 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a02:6d4b:0:0:0:0:0 with HTTP; Sat, 4 Jan 2020 05:36:36 -0800 (PST)
From: rajraja123447@gmail.com
Date: Sat, 4 Jan 2020 19:06:36 +0530
Message-ID: <CAJsjG0QfUxsPFFC_QuZEp67_mCpVTCN92U2V6eH++GX3x=mgsA@mail.gmail.com>
Subject: Question on How to add legacy Perl modules
To: Yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ea36ac059b508329"

--000000000000ea36ac059b508329
Content-Type: text/plain; charset="UTF-8"

Hi,

I want to add getopts.pl which is legacy library into my system .  in
Ubuntu 16 it comes from libperl4-corelibs-perl. How can I add the same into
my system? Is there any receipe already available? I couldn't find it in
open embedded ..

Thanks,
Raja

--000000000000ea36ac059b508329
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<span style=3D"color:rgb(34,34,34);font-size:14px">Hi,</span><div style=3D"=
color:rgb(34,34,34);font-size:14px"><br></div><div style=3D"color:rgb(34,34=
,34);font-size:14px">I want to add=C2=A0<a href=3D"http://getopts.pl/" targ=
et=3D"_blank">getopts.pl</a>=C2=A0which is legacy library into my system .=
=C2=A0 in Ubuntu 16 it comes from libperl4-corelibs-perl. How can I add the=
 same into my system? Is there any receipe already available? I couldn&#39;=
t find it in open embedded ..</div><div style=3D"color:rgb(34,34,34);font-s=
ize:14px"><br></div><div style=3D"color:rgb(34,34,34);font-size:14px">Thank=
s,</div><div style=3D"color:rgb(34,34,34);font-size:14px">Raja</div>

--000000000000ea36ac059b508329--
