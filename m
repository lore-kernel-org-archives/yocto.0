Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
 by mx.groups.io with SMTP id smtpd.web10.5689.1606919980042608568
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Dec 2020 06:39:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=SC10J7mT;
 spf=pass (domain: gmail.com, ip: 209.85.222.182, mailfrom: thisisaash9698@gmail.com)
Received: by mail-qk1-f182.google.com with SMTP id z188so1339660qke.9
        for <yocto@lists.yoctoproject.org>; Wed, 02 Dec 2020 06:39:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=5TkJqmf4UGwLLdA54OrH5yzGPYc+WmMom2d73dy9vGw=;
        b=SC10J7mTOJoLaBiTITKnSKgGiC4i0+obpX6cG9uyvuYqMdQXsDeRLpfC3Bwer6hfFR
         o2SpET1+KavkRg6wI6JoDjKBVrLJ2agsZAaVPStKblE54BMA5BGE2UUOIktLEXANLRJg
         we6iEeNpr0VgdOl3inXJSKsF6uiDCjtT+SHhFlz+aYEM0mWxDY3pJGhsES2rZfmzpWoe
         EY3fudK/RIPeltnklOO6SewAN353Vdl/DJTit9MjU6FUFlbSLU1Oz5XCe9TMRKZvIFbk
         NXJHp/DWH3jnYoHc3LXS+Hn1ZSCC9OTJvj0xu8D91NG8k7zrYJvee7cWX5RXJa/zDZ9x
         RSuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=5TkJqmf4UGwLLdA54OrH5yzGPYc+WmMom2d73dy9vGw=;
        b=RYwks7/nYWa/jzvBxM65s5TX3iwO3iTFogu2KkarGC8jcBPdyWP392f/s2Cu9NcdMd
         MD0UkkdhGkfnya2DsEpAji2e1YSqbTZKiNixKeWCWq8HMOEieXBlOfK5kRX+f+e6mIfS
         WYo5oOI7EOEfGnQAdh1JynmZazkA20/rA1M4DL5LGaQu/KCtU+8YmeOpGQMtGSlDhk3K
         yaUTrrf07X0+21EQeaOi+5i6RSaTvA+du5M9sf+xdkc3qZs+kmh6qYPxUMd7SzXQqJo8
         34BCBLlDHNDpHC5nPPUAMGlOeVTNAjQlqEvoI8uZ5wZ/9wvwlizrfRCAxgeOKRrTlr3l
         pbTA==
X-Gm-Message-State: AOAM533n8qi+8LyA/+6o3Yjkut7tf/xD2h/ifSB3U7xZ9nqVWMPsvdyN
	bp5mJGjbKkbvAPuaH91Z4xBElAcis74UgHvXoVEC0ZxbB/K6jA==
X-Google-Smtp-Source: ABdhPJzrb+uqHZNcML1klr7iWx/Ir2bUQsM+VRhc8Lhx+6c70g70c8EJGLFZzjq4IeBK0o5VhCCMx5rQfgtZFckZ6qk=
X-Received: by 2002:a37:5ac3:: with SMTP id o186mr2915783qkb.389.1606919978904;
 Wed, 02 Dec 2020 06:39:38 -0800 (PST)
MIME-Version: 1.0
From: "Aashik Aswin" <thisisaash9698@gmail.com>
Date: Wed, 2 Dec 2020 20:09:28 +0530
Message-ID: <CANVQz1YX1dRe4-RN0xX+5O8vZd9nLdFZknCHqFZudn=8WRcHnw@mail.gmail.com>
Subject: Disable/Enable DHCLIENT in Yocto
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000008672d905b57c3688"

--0000000000008672d905b57c3688
Content-Type: text/plain; charset="UTF-8"

Hi Developers,

I am trying to add DHCLIENT package to my Yocto Zeus Build.  However If we
include "dhcp-client" package in yocto, the dhclient takes the priority
over existing Busy box udhcpc and starts during the init.

My box basically uses UDHCPC for getting the IPs and my intention is to
install dhclient only on a need-to-use basis.

is there a way where we can prevent DHCLIENT to run on init unless invoked
manually ?

Please let me know

Thanks in advance,
Aashik

--0000000000008672d905b57c3688
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Developers,<div><br></div><div>I am trying to add DHCLI=
ENT package to my Yocto Zeus Build.=C2=A0

<span style=3D"color:rgb(0,0,0);font-family:-apple-system,&quot;Segoe UI&qu=
ot;,&quot;Segoe UI Emoji&quot;,sans-serif,Meiryo;font-size:14px">However If=
 we include &quot;dhcp-client&quot; package in yocto, the dhclient takes th=
e priority=C2=A0 over existing Busy box udhcpc and starts during the init.<=
/span>=C2=A0</div><div><br></div><div>My box basically uses UDHCPC for gett=
ing the IPs and my intention is to install dhclient only on a need-to-use b=
asis.</div><div><br></div><div><span style=3D"color:rgb(36,39,41);font-fami=
ly:Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif;font-size:15px">is=
 there a way where we can prevent DHCLIENT to run on init unless invoked ma=
nually ?</span>=C2=A0<br><div><br></div><div>Please let me know=C2=A0</div>=
</div><div><br></div><div>Thanks in advance,</div><div>Aashik</div></div>

--0000000000008672d905b57c3688--
