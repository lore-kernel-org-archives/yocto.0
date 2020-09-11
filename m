Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web11.3655.1599812251881805678
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Sep 2020 01:17:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZOS6Zoza;
 spf=pass (domain: gmail.com, ip: 209.85.128.44, mailfrom: vincent.prince.fr@gmail.com)
Received: by mail-wm1-f44.google.com with SMTP id e11so3552449wme.0
        for <yocto@lists.yoctoproject.org>; Fri, 11 Sep 2020 01:17:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=AQ03ttqDcpb9zRGwA56xEmNxg2CsPeo0ZOKIXV5jiOQ=;
        b=ZOS6Zoza5P8vDcO2JqHpLRVRojtP/SDh5iNnpw/dNGClX1oqthi0eGKJSgE+v0tBM3
         A9Ua8DwcLFsYzdgFw2XqrW6oR/P9XbwlFeB0LB4Cv+Hd22kL7/FXdav3eP+xI7crqUWY
         QXe5/i60KPg9XXiccXIvJR5gfiKmEKP9OWzxgeEB84TBACppAxnDaFyioSYU++ZELHkC
         PdW0/0riNvn68eQ/y28SFByPsUAJNmlTMN46ijOTTN7+Him90K1i2zVNZaOWVTg+KRE3
         qKamG/MnwwSqXZ34zEXzi/4V2UeX2mBDMHhAKiJ2j/05YohZkeDLYwTNCgx9KTK/Fe1R
         NjjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=AQ03ttqDcpb9zRGwA56xEmNxg2CsPeo0ZOKIXV5jiOQ=;
        b=rRRVEQ0iu4GDFN6VeOMpC1+UOzpijgrfMN9QzRZXJxaYDLtPytjwzO+0Z54SUOdd9D
         Nq+3j7lifQHi+CSihvD118DdR5Oj65yGsjukzdUo2eJ3hBYjCohyQxuouzFqaBArJcN9
         5c59ZkE0rubs1E9tuzuaB3enbxqhc01sqhzl2afUzqTUFpdFg5Wfs6hkRnylqQ7MsCJO
         R+mBTW98Eq3/bBTbMoCoDrN6n44CK3EZGFHM+FOi27L8X9Ke4EPfHABEc/lnHH34evO8
         d0b2bRd+9ftzuXmvDl3ZTQRGEmsWOnxrlq+hSW8yurmJB7ZjBuKmcQcBxzQynx1ROrzv
         VhxA==
X-Gm-Message-State: AOAM533H6OF609unQp1LwaIqcRFb7qzB+DloqxSxjItuXR5U3gP9NFqD
	R0RLVp3H+kfwVfS/+3c0gzkE1EMkAsbtlaf9Emau6LVADLU=
X-Google-Smtp-Source: ABdhPJygcXrt67SRXHlDvj6bBm6186fC4e8uNdd9hS5Na5fZvhwAgQImIZebUDY+ut1z4PhqRXuI9dDw8zL+goetliA=
X-Received: by 2002:a1c:f608:: with SMTP id w8mr1033837wmc.161.1599812250186;
 Fri, 11 Sep 2020 01:17:30 -0700 (PDT)
MIME-Version: 1.0
References: <4MZH.1594831374892060912.PgYp@lists.yoctoproject.org>
In-Reply-To: <4MZH.1594831374892060912.PgYp@lists.yoctoproject.org>
From: "nefethael" <vincent.prince.fr@gmail.com>
Date: Fri, 11 Sep 2020 10:17:18 +0200
Message-ID: <CAB2nKc-Yzdkfi50JCw_LUmXDh3ZET+2bpEY1BRjFP30qGLPstQ@mail.gmail.com>
Subject: Re: [yocto] #yocto - mongodb files missing
To: srijan.nandi@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Here's an example of mongodb_%.bbappend file:

--------------------------------------------------------------------------=
---
FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"

SRC_URI +=3D "file://mongod.conf file://mongod.service"

inherit systemd

do_install_append() {
    # config
    install -d ${D}${sysconfdir}
    install -m 0644 ${WORKDIR}/mongod.conf ${D}${sysconfdir}/

    # systemd
    install -d ${D}${systemd_unitdir}/system/
    install -m 0644 ${WORKDIR}/mongod.service ${D}${systemd_unitdir}/syste=
m/
}

SYSTEMD_SERVICE_${PN} =3D "mongod.service"
--------------------------------------------------------------------------=
---

And create a folder meta-x/recipes-dbs/mongodb/files with
mongod.service and mongod.conf in it.

Best Regards,
Vincent

Le mar. 21 juil. 2020 =C3=A0 12:11, <srijan.nandi@gmail.com> a =C3=A9crit =
:
>
> Hello Everyone,
>
> I have built mongodb on zeus. It seems the mongod.service and mongod.con=
f files are missing. Can anyone show me the procedure to build a .bbappend =
file to add those.
>
> Thanks and Regards,
> -=3DSrijan Nandi=20
