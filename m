Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
 by mx.groups.io with SMTP id smtpd.web08.8987.1609224516718889133
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Dec 2020 22:48:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=a0zxTXcm;
 spf=pass (domain: gmail.com, ip: 209.85.210.52, mailfrom: chandumail05@gmail.com)
Received: by mail-ot1-f52.google.com with SMTP id d20so11157270otl.3
        for <yocto@lists.yoctoproject.org>; Mon, 28 Dec 2020 22:48:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=z8wxC+juZowRh9vcwsEfVpYDNl5nvylQAPpMmwGYt6o=;
        b=a0zxTXcmTtb+b2ZrO/6w7dtqbf5OYZc4iLGP3UGPpVq99iqOzNikDM/Us46Fci2zTr
         j+lQFkxRKXPaAQaGn/lygizKt70rZegZW7gDr4J3y//Ha2SZKVau2LG1BUpCgqvWPKAD
         1G5LBZ6Jy7y2rS/czP72aZxlH1J0OH91cLPicZYDRnvSiugFj39QiPsqtdXYfjzWSXZK
         cpBeieRXhI0fxiKB7Ptdh54Ervczjo6qRU8JQl+oYxEZIqGZr/BhjrHyX+264hczrnM8
         HaZTYBXtv4h7vvN8bbwCO2Rc3ErDRreDDflaBZpwKWxZdHZvAQycr3Fj3+v+2VPAX1t1
         RVzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=z8wxC+juZowRh9vcwsEfVpYDNl5nvylQAPpMmwGYt6o=;
        b=UR6jcWJtE5okO/fc8fC3Lf+J7XN0pKsIdHYFi6lOtYbnBlqUtTzm+WSU9MV5HZN7BN
         p/Xy9wVfq/L77zk836emB6nleFSWgLQYJ15VCX34GetmWdDBd5JuqBSZsxQk/ueDlufY
         2CdDOyGUv7xdQgMmtcWBz5l7oE+wlJ+8TUhJJoNbKwfjna/DFPXo2scGylM5WQTmhRi+
         t45cWH45KxZwNYxKYnrKBG+qY6lANCUEDMFfzInRJpZiBMQwI2LkuduQFEoxwmOHTAWz
         7CK+IuAqcVjxXEHs6Z8zpgFvP7BGEePDB+A/MSTfxlmftnXW2XmZaKBjPFJ4etxKZ1Pr
         FCFw==
X-Gm-Message-State: AOAM532jEpPB+nSWtq9wFLfSU+MVxK6RG8cIYjBfspGhgF2bH6NVGCus
	7snVa+ZQQPt8Tx5oahO2pduPzLa+oX63XH7HOWY=
X-Google-Smtp-Source: ABdhPJyqZHO/L3gHyCmo9NBYcT1oawdU/VAGUVGwPe60S6vNP0tsTtoqA6J9HgW4EEoW9VJZ54iddfxvGnIb4ATp8CQ=
X-Received: by 2002:a9d:6f07:: with SMTP id n7mr100204otq.22.1609224515939;
 Mon, 28 Dec 2020 22:48:35 -0800 (PST)
MIME-Version: 1.0
From: chandumail05@gmail.com
Date: Tue, 29 Dec 2020 12:18:24 +0530
Message-ID: <CACXHg=38c=RS-KAe-EqHbWZzLH_xDcqUBM2-gzM5+hx97qwsHg@mail.gmail.com>
Subject: Help regarding yocto receipe (bluez5)
To: yocto@yoctoproject.org, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a2f2d405b794c749"

--000000000000a2f2d405b794c749
Content-Type: text/plain; charset="UTF-8"

Hi

After board boot up , we are editing vi
/etc/systemd/system/dbus-org.bluez.service these file as
ExecStart=/usr/lib/bluetooth/bluetoothd -C (here we are adding -C means
bluetooth running in compact mode).

but these is not good practice , so how we can change these service at
compiling time itself , any idea ? main agenda is Run bluetoothd daemon in
compatibility mode while building yocto image.

--000000000000a2f2d405b794c749
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi=C2=A0</div><div><br></div><div><font face=3D"times=
 new roman, serif">After board boot up , we are editing vi /etc/systemd/sys=
tem/dbus-org.bluez.service these file as ExecStart=3D/usr/lib/bluetooth/blu=
etoothd -C (here we are adding -C means bluetooth running in compact mode).=
</font></div><div><font face=3D"times new roman, serif"><br></font></div><d=
iv><font face=3D"times new roman, serif">but these is not good practice , s=
o how we can change these service at compiling time itself , any idea ? mai=
n agenda is Run bluetoothd daemon in compatibility mode while building yoct=
o image.</font></div></div>

--000000000000a2f2d405b794c749--
