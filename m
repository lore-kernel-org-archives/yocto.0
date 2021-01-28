Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.713.1611856446041654816
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jan 2021 09:54:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@googlemail.com header.s=20161025 header.b=ETmyDQvs;
 spf=softfail (domain: googlemail.com, ip: 198.145.29.25, mailfrom: ayoub.zaki@googlemail.com)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 6B64F38C0409
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2021 17:54:05 +0000 (UTC)
Received: by mail-qk1-f175.google.com with SMTP id x81so6121170qkb.0
        for <yocto@yoctoproject.org>; Thu, 28 Jan 2021 09:54:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=a0HVjbIeZATHctEJOkbuwLyP23VXy6+b6DO6W8s0JAM=;
        b=ETmyDQvsQBlPL/tVD/9eLsFRAxOtOXhpHRDau0iFrIV/4a2eDvEG6/1xdvKAMohAkX
         3lvBKgLNsrgQSDI2iuStYUfchrNsbJtToYYg3JOD0FksHBKzkllm/CiiMaRwr56ioJPx
         9SMOP4Da7PFpm90dvMyL31dOxCoAvFoeLnALFy0Cafh9YakxDTJcOJm2GrF0dhvxivUe
         ort0Vz3rIQyR05z1WijWDeXaxRm1NnjxNa4AmzdSKscxYjpG5J7kkRpj6OtBBoKiYQuV
         hEOpBG+dx1l3ysshN6w9/RuXXBaDF3kW5IYImOoHJtZ/hXXd2zo6Ywrt+oM9QYNYqnmH
         HaJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=a0HVjbIeZATHctEJOkbuwLyP23VXy6+b6DO6W8s0JAM=;
        b=OFEcIvf8MZFQNIdIXscquLDufbIP/NU8bXE2HhwIyInyHiph5JbFi04LW91paR3Jck
         DRorzgeApjT9LoYT8VtelcoUOngkyEHw+HJWcMoayaTdvIUHIbfO9LKwccluOmWxskpX
         fyzkJMXSlRPfx+PKaVqtqfHr1pVMXLCQ0bO+4vHu3oG1cerSwysBnpHtXDwqEPX090K7
         SaTZlrw3Scle2qcwAMqgl5gXVlbAH2HVWu5uJJj6ri8RMi6en5OygsUxZDNgdc7rxx2R
         OF9tM/2JCBcs8m/YVoh9UqJpkl/jIXJBRuehxE+kucKJF9kib08ZwCoyyFQMYMFWxj8G
         jsag==
X-Gm-Message-State: AOAM531NAOkUhltfDI2k1hUdnM3X7Ej500a6MJA9LMbc1lNuAy3TKb1m
	nVOxiWOb92D85cevwRNKIZ7hClcvX4YZP5sWEJScshVbQK758A==
X-Google-Smtp-Source: ABdhPJyHn90DInAJAF5CgHZeuWpGKSHdbwJrY7kdILqqNltWNzCBht7mWcAslfQNYAQdmo7Thg+ffTukLSTMyFY8ai8=
X-Received: by 2002:a37:ad4:: with SMTP id 203mr331139qkk.125.1611856444265;
 Thu, 28 Jan 2021 09:54:04 -0800 (PST)
MIME-Version: 1.0
From: "Ayoub Zaki" <ayoub.zaki@googlemail.com>
Date: Thu, 28 Jan 2021 18:53:53 +0100
Message-ID: <CA+-BmJYV8Oh3+pDh3RW=sYrcjX7q4peNV6aH9y6fyZY-ba2nVQ@mail.gmail.com>
Subject: Task only for target recipe
To: Yocto Project <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ca16e805b9f99246"

--000000000000ca16e805b9f99246
Content-Type: text/plain; charset="UTF-8"

Hello I created a new task that I want to run for every recipe of my image
but only for target recipes and skip all native, sdk,...

mytask.bbclass:

addtask do_mytask after do_install

do_mytask() {
    :
}

do_mytask_class-target() {

    bbwarn "mytask"
    :
}

I added to local.conf :

INHERIT += "mytask"

I don't see it running! what is the proper way to achieve this?

cheers

--000000000000ca16e805b9f99246
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello I created a new task that I want to run for every re=
cipe of my image but only for target recipes and skip all native, sdk,...<d=
iv><br></div><div>mytask.bbclass:</div><div><br></div><div>addtask do_mytas=
k after do_install<br><br>do_mytask() {<br>=C2=A0 =C2=A0 :<br>}<br><br>do_m=
ytask_class-target() {</div><div><br>=C2=A0 =C2=A0 bbwarn &quot;mytask&quot=
;<br>=C2=A0 =C2=A0 :<br>}<br></div><div><br></div><div>I added to local.con=
f :</div><div><br></div><div>INHERIT=C2=A0+=3D &quot;mytask&quot;</div><div=
><br></div><div>I don&#39;t see it running! what is the proper way to achie=
ve this?</div><div><br></div><div>cheers</div></div>

--000000000000ca16e805b9f99246--
