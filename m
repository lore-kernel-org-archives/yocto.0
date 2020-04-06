Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
 by mx.groups.io with SMTP id smtpd.web10.8404.1586171516134819221
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Apr 2020 04:11:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=NIcjINz7;
 spf=pass (domain: gmail.com, ip: 209.85.222.181, mailfrom: lefevre.da@gmail.com)
Received: by mail-qk1-f181.google.com with SMTP id h14so15654176qke.5
        for <yocto@lists.yoctoproject.org>; Mon, 06 Apr 2020 04:11:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=3bmu2l4bd7z1vnmT3T+OPmaV43ECNwlDoKAT54KMiNI=;
        b=NIcjINz7LkdAIQ5d5dW4nnt1VuIDL7Lg3XbPrbfCIbSfvVHZkdUqeE/djwmQ5zDtnc
         5abtDK8XX7K5ir7Nqlcmt3Uo9aoOnI1O6kUYyTAwu3nS6nbF5G15Qc3xzdMtLieEcbgU
         1j1OI3fFsriG8xYCmEXEQlO/EhIRxd+GpUFpFurwYbSzjUAgS54N/mZKF3omWN3g5rR6
         ROM7ZJLAzqkJPktfEITsb2AxDCd5k3QBvrZpFEnrJzvwyZTeqdoMXbVNxWVi9cjLNY0X
         YABNtbcWuAVggY32mdlzSv7r+R7rWO3sMYLdoZBp+nATbhCYzyPXFuT4y5N4YNiqEDVZ
         S+ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=3bmu2l4bd7z1vnmT3T+OPmaV43ECNwlDoKAT54KMiNI=;
        b=MntQYpOOnM+ZY6b4rLZ7hpd2h2/w6GM3KI+G1Ay2gTsw7awE+eBAwaW6uPgVSXQGDm
         igqx/XCGptbfSifOhtAfvpGfx3jX2j5j1MRSsu91AuRvX/gwwvH+p3zi41Kzj04Ydcde
         8lYoo3432BOZzPnVAkSyPsaGnqYBvReqimxWBV5CZ3liVgPaAwo/S0uOWxOxbDVdr584
         /Gl8Nl22ynAiop+Qqf9G1rlKFSm4Ed9r6KRKsx5NdUangvPa3BKgm220pKyJ8BaI1dOn
         VpsmjJUS8qbRcbjDXTEcra0ujuO445Ua9IBDdUP+Wihfr1CPgWF1+DetQ+w8l+n44LpT
         IMiQ==
X-Gm-Message-State: AGi0PuYUwbZP5+DNtlCRX5amGga1/ZXiHF+s9XRTuafJJrR6Vux6o9zs
	SfgWY159WjWxQ/Goz2Cw+xDuHX71u+sfy/FEK1OGAen2OA==
X-Google-Smtp-Source: APiQypJK4OpqPsQ2NYsGzOIBow7vxPPjVx2FQFfpvK7hPkwNLqrMwiacy+fyMBj0QGPAf4Aj1ZxNX71j/rgtPE8unZs=
X-Received: by 2002:a37:68d2:: with SMTP id d201mr16581491qkc.468.1586171515088;
 Mon, 06 Apr 2020 04:11:55 -0700 (PDT)
MIME-Version: 1.0
From: "Damien LEFEVRE" <lefevre.da@gmail.com>
Date: Mon, 6 Apr 2020 14:11:44 +0300
Message-ID: <CA+FhBv8UfdzwGOE=HqGPGdmWzfPEM2QcO2ERCCOh_ed30fU4QA@mail.gmail.com>
Subject: u-boot factory reset
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b5b4e205a29d5528"

--000000000000b5b4e205a29d5528
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

First time customizing u-boot, forgive my basic question.

To implement a factory reset, my initramfs expects a =E2=80=98factoryreset=
=E2=80=99 kernel
parameter to format an overlay FS partition before mounting it.

The target machine is a Tegra TX2.

I=E2=80=99m able to use the Volume Up button for factory reset, which is gp=
io-313 .
When starting the board if I press the button say 5s, I=E2=80=99d like to a=
dd the
=E2=80=98factoryreset=E2=80=99 parameter to the boot parameters

I think I could use this syntax @uboot_var('factoryreset') in the
KERNEL_ROOTSPEC variable and have the variable set either to '' or
'factoryreset'

Maybe, I should append distro_bootcmd to add the gpio pin reading to
set factoryreset variable before proceeding with the boot sequence.

But how can I add the variable and have it set if the if the gpio pin is at
a certain state?

Thanks,

-Damien

--000000000000b5b4e205a29d5528
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">
=09
=09


<p style=3D"margin-bottom:0in;line-height:100%">Hi,</p>
<p style=3D"margin-bottom:0in;line-height:100%">First time
customizing u-boot, forgive my basic question.<br></p>
<p style=3D"margin-bottom:0in;line-height:100%">To implement a
factory reset, my initramfs expects a =E2=80=98factoryreset=E2=80=99 kernel
parameter to format an overlay FS partition before mounting it.<br></p>
<p style=3D"margin-bottom:0in;line-height:100%">The target machine
is a Tegra TX2.<br></p>
<p style=3D"margin-bottom:0in;line-height:100%">I=E2=80=99m able to use
the Volume Up button for factory reset, which is gpio-313 . When
starting the board if I press the button say 5s, I=E2=80=99d like to add
the =E2=80=98factoryreset=E2=80=99 parameter to the boot parameters<br></p>
<p style=3D"margin-bottom:0in;line-height:100%">I think I could use
this syntax @uboot_var(&#39;factoryreset&#39;) in the KERNEL_ROOTSPEC
variable and have the variable set either to &#39;&#39; or &#39;factoryrese=
t&#39;<br></p><p style=3D"margin-bottom:0in;line-height:100%">Maybe, I shou=
ld append=C2=A0distro_bootcmd to add the gpio pin reading to set=C2=A0facto=
ryreset=C2=A0variable before proceeding with the boot sequence.</p>
<p style=3D"margin-bottom:0in;line-height:100%">But how can I add
the variable and have it set if the if the gpio pin is at a certain
state?<br></p>
<p style=3D"margin-bottom:0in;line-height:100%">Thanks,<br></p>
<p style=3D"margin-bottom:0in;line-height:100%">-Damien</p></div>

--000000000000b5b4e205a29d5528--
