Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
 by mx.groups.io with SMTP id smtpd.web12.5249.1611737453095450634
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Jan 2021 00:50:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jp+S0Uun;
 spf=pass (domain: gmail.com, ip: 209.85.208.44, mailfrom: salerio@gmail.com)
Received: by mail-ed1-f44.google.com with SMTP id j13so1463262edp.2
        for <yocto@lists.yoctoproject.org>; Wed, 27 Jan 2021 00:50:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=iZ8brnfoo68PuMJrw2OLyJQ9ragBpoOwLF4f8DRhPeg=;
        b=jp+S0Uun6JZXSNuN6Se+RMaSUONhrYb6N5LiGTFv0TCJWp2Rm5FslhWwdLwmTieKnu
         wbzUOEuSwwHTUpnQR+xydnNa0gN35XCS8ByqWCjAg77JHnHc/phgjLW5gmUOSdddP1gz
         bve5dgViPe5rDBqLvD0+T1MARdg0s6yWE7Za2j6b1a9lCahIX1foarNw5fuKnzt9D3Fo
         7gwpiWuanVZKXHs+uM0VZ6hLixPqVC1lhM5PxgOtXWiu6H4wgpehpwmfPNPCxDcBrARy
         D9RMOs5P5wcZVbz4NK509r2oqo2fIOtYHstT/HayUCjjcalxfNWrBNdImKUHU3ZdB1F5
         R9YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=iZ8brnfoo68PuMJrw2OLyJQ9ragBpoOwLF4f8DRhPeg=;
        b=ZHnwK81fSRf2YPtjewkrtllScg22ZgFZYQm86JdR/3NN7C/uBDbIT1sk/yxNyogJVq
         YVeU/rrI0aFOOZgCP0Zh+AWOXpgjAWmYOv+5z3YkU6CBOuTRb0iug8elHVPZlCQiH5lu
         ASBpksp/KwzLJjP3UCEKCa4t7UOss5PPfNUJWJVX/JhSeZPS0X3f/0rU0GreB0NIdLXX
         ljjSPIZH8GIh7RbbmMxXb7ea1zyitwaws7eRUZcKjLGAHSQPqLRSigbH1081teWpgz8r
         ndV5OnvvhA/LIOF6rVV1RfwLO/CuBAzbfo2GSucMaMHZRTDrkQBf14sq4kTNcD6nsbaR
         M4VA==
X-Gm-Message-State: AOAM530kon+3ACBtbAz7UISoUeez07SHqRwyKP1Wtg+8zw0NAV5zfPdp
	wmPDRCvBq1xip/11QsiD3Zz82RfVsF/XPdwHfviUyPBJFe1e7Q==
X-Google-Smtp-Source: ABdhPJzWlnay9Rz2UI3QHj7bazUaUs8AftCAcJy6lsmthRnMPstUVpmRoXQprzh3qlmSByIKic+6uwW8+hnyns5HiC0=
X-Received: by 2002:a05:6402:b6f:: with SMTP id cb15mr7909921edb.277.1611737451382;
 Wed, 27 Jan 2021 00:50:51 -0800 (PST)
MIME-Version: 1.0
From: "Peter Smith" <salerio@gmail.com>
Date: Wed, 27 Jan 2021 08:56:04 +0000
Message-ID: <CAOx=Z6HG7nG4eC0mU=iDvkz=jtOp_OCeDmacAvF69=X_FqMZfg@mail.gmail.com>
Subject: [meta-zephyr] bitbake zephyr-helloworld configure failure
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000042cb8c05b9ddde20"

--00000000000042cb8c05b9ddde20
Content-Type: text/plain; charset="UTF-8"

Using master branch

MACHINE=96b_nitrogen bitbake zephyr-helloworld creates a configure error
due to a failure for native python to import ruamel.

I fixed this temporarily by creating a python3-ruamel-yaml_%.bbappend that
includes the required BBEXTEND and adding python3-ruamel-yaml-native
to zephyr-kernel-common.inc.

I don't know (not enough experience) if this is actually a problem in the
meta-openembedded recipe or meta-zephyr?

Best Regards
Peter

--00000000000042cb8c05b9ddde20
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif;font-size:small">Using master branch</div><div class=3D"gmail_de=
fault" style=3D"font-family:verdana,sans-serif;font-size:small"><br></div><=
div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif;font-si=
ze:small">MACHINE=3D96b_nitrogen bitbake=C2=A0zephyr-helloworld creates a c=
onfigure error due to a failure for native python to import ruamel.</div><d=
iv class=3D"gmail_default" style=3D"font-family:verdana,sans-serif;font-siz=
e:small"><br></div><div class=3D"gmail_default" style=3D"font-family:verdan=
a,sans-serif;font-size:small">I fixed this temporarily by creating a=C2=A0p=
ython3-ruamel-yaml_%.bbappend=C2=A0that includes the required BBEXTEND and =
adding=C2=A0python3-ruamel-yaml-native to=C2=A0zephyr-kernel-common.inc.</d=
iv><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif;fon=
t-size:small"><br></div><div class=3D"gmail_default" style=3D"font-family:v=
erdana,sans-serif;font-size:small">I don&#39;t know (not enough experience)=
 if this is actually a problem in the meta-openembedded recipe or meta-zeph=
yr?</div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-ser=
if;font-size:small"><br></div><div class=3D"gmail_default" style=3D"font-fa=
mily:verdana,sans-serif;font-size:small"><span style=3D"font-family:Arial,H=
elvetica,sans-serif">Best Regards</span></div><div><div dir=3D"ltr" class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><d=
iv>Peter</div></div></div></div></div>

--00000000000042cb8c05b9ddde20--
