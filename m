Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
 by mx.groups.io with SMTP id smtpd.web11.16619.1605822514928075563
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Nov 2020 13:48:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=aYIuNeva;
 spf=pass (domain: gmail.com, ip: 209.85.208.51, mailfrom: icegood1980@gmail.com)
Received: by mail-ed1-f51.google.com with SMTP id k4so7458417edl.0
        for <yocto@lists.yoctoproject.org>; Thu, 19 Nov 2020 13:48:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=P4omFU8uHthFj7prgyNTDzCCGk0IZCcWR/fSgzFzOlY=;
        b=aYIuNevaNwLAewTue7fd/jKZXhr4VOycCZR0+DiwRIM43PzIvmEKj8IWVLa9QgpS40
         DjWFoxvnAAi93KUYPe7qIly3IJk1k3DHhNvaK8dUuqYm5OLgszsRLZKohFwTXaS9JA5M
         LmK4EJF86FopV4J3Uzt6jenOBtWcO4hcpdeP53K1yzr0SrDlucmAADnacn2pEvZAQgG5
         x34D91hKUlVG/OVHJ+3BOeoif914kxUWT8ooYlcr1ofjJtJ2AoZ375aq/xIXwgv7BZbW
         19vLTEXGlqJ9tHVzTJ+pYcnS5gYAJxwQnzjoPSUTGxmzohC1NiLlo9L8+ExVuThAa63t
         C+cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=P4omFU8uHthFj7prgyNTDzCCGk0IZCcWR/fSgzFzOlY=;
        b=QfAHemi/i9ieXDYueg2JeBpeh7jZgBrUi4ZjwQ6UdkzSR8tZwd/W9OUGd9Bis3hofI
         3YcF7s1BzEpl6HTfJtNC1HNXVhydZWiwZFfeGHm/3EdLz5U61pKbOfob6fK6G7TYX5yR
         dEnT7UfRNy1oiH8My3y1oqgpABOc1QSpegtCrXChyl5+Cdka7r9K64zGQQu2tZ78Kk2y
         pZwQQwWrSbyYb/KpvW5cBKHBOsd+RnO2ZaDV2Sai0b+zSpTHJcdM8kzoHlTtZWq1jM02
         QPoHbS2YgQyn+Lkje89136pv48IemHGRDSuveZwc1KFytTPqBBhOUPbFf5UJL9mnV/EO
         faAQ==
X-Gm-Message-State: AOAM530rUFe7pa2QsjvnISHie96L+9xH0iHsQNOoYjCGv6F95BcNzhSZ
	kTrz/HXmYH+tPXEhOVEV19Ez35QRDTME0GfxbU0hYzPe2bO9zA==
X-Google-Smtp-Source: ABdhPJzOUj4BicyVO4H6K5a9Nghbf9Kckmpss0jVvXoV2jkNA7IPJHi+Rr6WiZutvbp2jZs2pBTXoI4vkEqMPHXggCk=
X-Received: by 2002:aa7:d615:: with SMTP id c21mr32867415edr.23.1605822512837;
 Thu, 19 Nov 2020 13:48:32 -0800 (PST)
MIME-Version: 1.0
From: "Sergey Ivanov" <icegood1980@gmail.com>
Date: Thu, 19 Nov 2020 23:48:21 +0200
Message-ID: <CAJCbrz7=qAmswe-sumk=4E0x_KyFPdRG9UouvgfxwJzyMte=sw@mail.gmail.com>
Subject: yocto recipt from host ide
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000073390a05b47cb00e"

--00000000000073390a05b47cb00e
Content-Type: text/plain; charset="UTF-8"

Hi there.
Could anyone share a good approach/documentation/etc on how to
properly configure and use sysroot and sdk for a specific cmake - based c++
receipt
to be able to build it from IDE (vscode, qtcreator) on linux host i.e.

1) ide's --sysroot will be taken from
yocto-root/build/tmp/work/aarch64-poky-linux/<my_recipe>1.0.0-r0/recipe-sysroot
2) compilers and cmake (i believe) will be taken from
yocto-root/build/tmp/work/aarch64-poky-linux/<my_recipe>1.0.0-r0/recipe-sysroot-native
3) no mix of includes from host will be taken into account during the
compilation

If none of ide above could do this stuff, then please recommend your one

For this moment i don't want run/debug the application right from ide, i
just want to have all symbols be correctly resolved from there.

-- 
Kind regards,
Sergey Ivanov

--00000000000073390a05b47cb00e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi there. <br></div><div>Could anyone share=
 a good approach/documentation/etc on how to <br></div><div>properly config=
ure and use sysroot and sdk for a specific cmake - based c++ receipt <br></=
div>to be able to build it from IDE (vscode, qtcreator) on linux host i.e.<=
br><br>1) ide&#39;s --sysroot will be taken from <br>yocto-root/build/tmp/w=
ork/aarch64-poky-linux/&lt;my_recipe&gt;1.0.0-r0/recipe-sysroot<br></div><d=
iv>2) compilers and cmake (i believe) will be taken from <br>yocto-root/bui=
ld/tmp/work/aarch64-poky-linux/&lt;my_recipe&gt;1.0.0-r0/recipe-sysroot-nat=
ive</div><div>3) no mix of includes from host will be taken into account du=
ring the compilation<br><br></div>If none of ide above could do this stuff,=
 then please recommend your one<br><br></div>For this moment i don&#39;t wa=
nt run/debug the application right from ide, i just want to have all symbol=
s be correctly resolved from there.<br><div><br><div><div><div>-- <br><div =
dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature">Ki=
nd regards,<br>Sergey Ivanov</div></div></div></div></div></div>

--00000000000073390a05b47cb00e--
