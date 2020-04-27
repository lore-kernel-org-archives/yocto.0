Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
 by mx.groups.io with SMTP id smtpd.web10.1981.1587976196015171929
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Apr 2020 01:29:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rhwsbMbj;
 spf=pass (domain: gmail.com, ip: 209.85.222.180, mailfrom: lefevre.da@gmail.com)
Received: by mail-qk1-f180.google.com with SMTP id n143so17201634qkn.8
        for <yocto@lists.yoctoproject.org>; Mon, 27 Apr 2020 01:29:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=i5PUtlLEf3hgM2BSqPLV25P35oJsxGQMB8U2tS0j3Qo=;
        b=rhwsbMbjcmIu3aduVr6xQfUPaP6G9sJ5B8hPCCmjsNyyI7lLjjRis52mJH4BYZLfPv
         oAycZHli0+f5UOpCnupC5lCBRq1T8myIjahkX6x9L98Q03AwLwsJslVNluG1J927sy2C
         eXokPzQWyK8IDPp4Vq1NHEh8qJwfXuWv/78ORcscWnYs1FLcz3fWfjyGk6Kp4Rn3UGTb
         EIeQq3zxkjGe6By5V1BWE/OXzdJr3Kxy/tT53NHtKg5b5lQCkpUt7I+2Ds2nDmz8Ww7+
         WruD7x3XoxV4uojdjO3IiwTmbi2BMWFsZfarXY5qK9Dj15rdd51RYfB2oDuSsar7+dPA
         NOyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=i5PUtlLEf3hgM2BSqPLV25P35oJsxGQMB8U2tS0j3Qo=;
        b=rGewSYRAfn2/JtYs7tzkIaC4N4FPStfMo3cw5/+sFXaNf1iHZGjFePGFOch7PvAQao
         Jws4fAuS25m/j31RjEFlJp96jllFPYlHr9MfMOBVfZ9FEfX1cZ0HW/7R9PRb5nWDUq8L
         CYWFjmehfIwuUvS2YKGl6vaxosRVQ5LELk4pj+MIjfYR9Gs/ELCqwwY1HXk/nermjXSi
         faXNq/57oyTgSD4hy3GYXAWpAWT+arkIjCQ3hKWzRzR0rROy7004Y69808k9crTBtL5/
         YKWG9tqmM0XtgFl3MYFm3fcippUub6BMP/X5KOhApbroj6bDKNI+oRhKE81/201myCP1
         NOxw==
X-Gm-Message-State: AGi0PuYnx62y/YuzPdvzb4VE7pzhQ6rSldeRhoHSPGs+6ubYevg7+YN9
	IOOW9MUvasr6ccYIeh7x2cDcAdHJT4Xb8VEYl+JJMhBAKQ==
X-Google-Smtp-Source: APiQypKzyGCVp5UGnXyC72L0ZHEk8xOq+AlBNVqtxDPblDWQrXg4QCxMhwFpW+4O8J4W5B7c7Rt4w6pEYyaq3iHTZsg=
X-Received: by 2002:a37:6697:: with SMTP id a145mr20989469qkc.479.1587976194912;
 Mon, 27 Apr 2020 01:29:54 -0700 (PDT)
MIME-Version: 1.0
From: "Damien LEFEVRE" <lefevre.da@gmail.com>
Date: Mon, 27 Apr 2020 11:29:44 +0300
Message-ID: <CA+FhBv9vjwEC747tn777Fdeh+ygz3kdTTgFGD=txV0ovQJ=F-A@mail.gmail.com>
Subject: zeus KCFLAGS
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000028e0d05a4418557"

--000000000000028e0d05a4418557
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm trying to build the core-image-minimal on zeus branch, device Tegra
Xavier. The compiler has to be GCC 7.* due to some NVidia pre-built
binaries. So I back ported it from Thud if I recall.

The kernel compilation fails with this error:
| cc1: error: -Werror=address-of-packed-member: no option
-Waddress-of-packed-member
| cc1: error: -Werror=missing-attributes: no option -Wmissing-attributes

How to I make the compiler treat these error as warnings?

I've tried adding all these to the kernel recipe:
export KCFLAGS = " -Wno-error=address-of-packed-member
-Wno-error=missing-attributes "
export KCPPFLAGS = " -Wno-error=address-of-packed-member
-Wno-error=missing-attributes "

TARGET_CFLAGS += " -Wno-error=address-of-packed-member
-Wno-error=missing-attributes "
TARGET_CPPFLAGS += " -Wno-error=address-of-packed-member
-Wno-error=missing-attributes "

KBUILD_CFLAGS += " -Wno-error=address-of-packed-member
-Wno-error=missing-attributes "

None of them seems to be applied.

Anything special changed on Zeus? Note I didn't have any issue building the
kernel on Warrior.

Thanks
-Damien

--000000000000028e0d05a4418557
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m trying to build the core-im=
age-minimal on zeus branch, device Tegra Xavier. The compiler has to be GCC=
 7.* due to some NVidia pre-built binaries. So I back ported it from Thud i=
f I recall.</div><div><br></div><div>The kernel compilation fails with this=
 error:</div><div>| cc1: error: -Werror=3Daddress-of-packed-member: no opti=
on -Waddress-of-packed-member<br>| cc1: error: -Werror=3Dmissing-attributes=
: no option -Wmissing-attributes<br></div><div><br></div><div>How to I make=
 the compiler treat these error as warnings?</div><div><br></div><div>I&#39=
;ve tried adding all these to the kernel recipe:</div><div>export KCFLAGS =
=3D &quot; -Wno-error=3Daddress-of-packed-member -Wno-error=3Dmissing-attri=
butes &quot;<br></div><div>export KCPPFLAGS =3D &quot; -Wno-error=3Daddress=
-of-packed-member -Wno-error=3Dmissing-attributes &quot;<br><br>TARGET_CFLA=
GS +=3D &quot; -Wno-error=3Daddress-of-packed-member -Wno-error=3Dmissing-a=
ttributes &quot;<br>TARGET_CPPFLAGS +=3D &quot; -Wno-error=3Daddress-of-pac=
ked-member -Wno-error=3Dmissing-attributes &quot;<br><br>KBUILD_CFLAGS +=3D=
 &quot; -Wno-error=3Daddress-of-packed-member -Wno-error=3Dmissing-attribut=
es &quot;<br></div><div><br></div><div>None of them seems to be applied.</d=
iv><div><br></div><div>Anything special changed on Zeus? Note I didn&#39;t =
have any issue building the kernel on Warrior.</div><div><br></div><div>Tha=
nks</div><div>-Damien</div></div>

--000000000000028e0d05a4418557--
