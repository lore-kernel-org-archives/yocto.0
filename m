Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com [209.85.222.50])
 by mx.groups.io with SMTP id smtpd.web10.4907.1596892156314445672
 for <yocto@lists.yoctoproject.org>;
 Sat, 08 Aug 2020 06:09:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=u15QMwZ3;
 spf=pass (domain: gmail.com, ip: 209.85.222.50, mailfrom: nikhilvp29@gmail.com)
Received: by mail-ua1-f50.google.com with SMTP id x17so1193583uao.5
        for <yocto@lists.yoctoproject.org>; Sat, 08 Aug 2020 06:09:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=PWBY4dmgYfqlw6tYqZ6ekpcUhLCGVrlsyl8WIvEvZeg=;
        b=u15QMwZ3qLjdjABXVdlp4DxYnXiWcpV+tAKjWfvV8YcaNwEGrcbSf/0tt+MvbOLOUM
         zEpLhGcw2T3XxuALRonEu6bxJIxfJrksmnjgcJ2SVPIRm9Zun1rm/wB7Uw1pSOprA9k4
         31Se4GoIfdNKe5xJCw5Z3RKfiLmkNTeWmxhJ7/tVKbl4boxAB1yRH6KZnA2afuET+lE1
         pSDuzzVd7B539EIUBn7xjBd+XMdx80amIaA7MBg8ojrTJy6ZsaGvSX+RGlJ1RvPWCxss
         f8TZn0oqwIoPKLfqkl/vXuybWkCUMJ9etSFVHZv2qNI4FIVH64vC+uV7qBYhOeYufIH/
         WT/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=PWBY4dmgYfqlw6tYqZ6ekpcUhLCGVrlsyl8WIvEvZeg=;
        b=R81h/phMILnX6TBYj0luoEok9XSkhbdbRXTUrHflj2HB2ZTUpoqJqTP48cMsnfyGv/
         Ya6UlAdD2Cx9Da2TaxK8+UCO3eyOw6GuLQo0ch7EfKDLK0i6da0piqwM+MymeC3rKiHI
         d5WeZfY5wd7tZb0GfI9ZiKhv5bLHttMku4La8xvoHrsUezu8ZgJbOCRrl/YK42hX5f3r
         6kqf5koBBRJZBz6CjjTqPYQVFsM3Z69Fs3Xz71mAy7iOQYVbzXMQhIW913MAM2BA6HgZ
         lJxJxur4XbfwsUoH/HHFMWzvYbo3qIeW0uh7W3EShAaXSf7hbo08sgPpOToH06uf8vR6
         1nJA==
X-Gm-Message-State: AOAM530W0UUVJPolHTdZIonwiJIUisJ/tThRLqNhNmN6JJ/n2qzRTYmg
	lc1HLmDXMBYO4rhC0aaghHqChr4qhVn2hqSZK77A/r5hUYs=
X-Google-Smtp-Source: ABdhPJywPrf+4sZaooHVjE06opkKlw5xDiPWzjWHM0bvKqkpryyyB3aMM0xy7q/QBlMerXjVzB2NGtjP+telLNLL9o4=
X-Received: by 2002:ab0:559b:: with SMTP id v27mr618783uaa.106.1596892155120;
 Sat, 08 Aug 2020 06:09:15 -0700 (PDT)
MIME-Version: 1.0
From: "NIKHIL PATIL" <nikhilvp29@gmail.com>
Date: Sat, 8 Aug 2020 18:39:04 +0530
Message-ID: <CAJw=dJ8O4eyUMZwntoc-c6mga-uze6CwXObtu_kwxRY88-d22w@mail.gmail.com>
Subject: adding obextool anfd obexpush in yocto
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a6954605ac5d6d10"

--000000000000a6954605ac5d6d10
Content-Type: text/plain; charset="UTF-8"

Hi team ,
      We have to use Obextool and obexpush package for bluetooth file
transfer.

     Here the issue is we are able to send file to mobile using bluetooth
device (redpine module ).  but receive is not happening , it is telling *obex
server closed .*
 at time receiving.
      if any one know please help.

--000000000000a6954605ac5d6d10
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi team ,<div>=C2=A0 =C2=A0 =C2=A0 We have to use Obextool=
 and obexpush package for bluetooth file transfer.</div><div><br></div><div=
>=C2=A0 =C2=A0 =C2=A0Here the issue is we are able to send file to mobile u=
sing bluetooth device (redpine module ).=C2=A0 but receive is not happening=
 , it is telling <b>obex server closed .</b></div><div>=C2=A0at time receiv=
ing.</div><div>=C2=A0 =C2=A0 =C2=A0 if any one know please help.</div></div=
>

--000000000000a6954605ac5d6d10--
