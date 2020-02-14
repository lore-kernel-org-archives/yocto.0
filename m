Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
 by mx.groups.io with SMTP id smtpd.web09.4615.1581676050590724897
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Feb 2020 02:27:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=T4aDluqg;
 spf=pass (domain: gmail.com, ip: 209.85.222.172, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-qk1-f172.google.com with SMTP id c188so8684619qkg.4
        for <yocto@lists.yoctoproject.org>; Fri, 14 Feb 2020 02:27:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=a0xf9XIX4QWY8vXPq63KHsWeicgDV+9gUpl+YsEJhcs=;
        b=T4aDluqgufHGBc93KPwLRU2n60S8T2yZ+mL534L878C0Aty/bp8mJvu7qA9JncbYzE
         q3Iw43YQawaE8cbLGpjv5tM7V5xoICBtkUj/Dg61xdhoO4mULlmRDg9YaVU69veZy8OY
         Md67rgtp3cIzshFnyaWzaeHgDuC+vor4DJKDWJFoHtltn1DDlSv1piDsZLReMsAv95DG
         SkaYusJ9mWfhso4sYT1WHwXob9r+AlO/UCKcc/VAu6DF8HoiYM41zlp/jh5wg/cBNQ2w
         2SKM+EPPXuiKPNYpr5kGT4+hprGVvufPXxN/RXbbtv+equWp4Ukuowhq2nAD95PdPjer
         hZ/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=a0xf9XIX4QWY8vXPq63KHsWeicgDV+9gUpl+YsEJhcs=;
        b=ZhV75IFqo6gE5q3IxMn1d0GuumAnNqSlvh0a/ToUoF0qdh5w9XWDUdOKJ/PnfzJth2
         QGfkkJCgFQknS69BcCG1mqttlpYCGbrOvjkbUHLjf8O7+fp+S2IuKnQqugKLbzghS73/
         zFROsvsik+iH1364DyjXcCl/UOmB/y7sctsSW+Oc9+XIQ7SCbol6ns7ifVf/n4QR1RKL
         hsk0FcWF1H7geIYjaQ4hJIAQ2LeSNb9a4ohT/7Nhn5MijvGYyFhcRi5tz7F9dOIrDMJY
         1vFZaI+hdXTNZPMdA7UgFDEMr7eq/xvHWXjsTfgYMCCEwWYck4PBBvB494cKmLx9H/NF
         KNFA==
X-Gm-Message-State: APjAAAXYB1lQT8wZLZarZw5gUEHgZrDuEW7lgbA8iMld8+4H4OLPFFln
	e5jhxtcHbpGw57H1IsOpK9+Cnt0uKw6k78hwphJKvYxjs50=
X-Google-Smtp-Source: APXvYqzjiZWv8bUfDOxBnnIqjT3FBuIG5e9tF/WWfF1kB3mcv7Gml+e0Z/Yd93v2DxEHcU+4MiprUht1+YdB1/xb8MI=
X-Received: by 2002:a05:620a:12bc:: with SMTP id x28mr1699485qki.118.1581676049206;
 Fri, 14 Feb 2020 02:27:29 -0800 (PST)
MIME-Version: 1.0
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Fri, 14 Feb 2020 11:27:17 +0100
Message-ID: <CAGAf8LxrzqhEorp=xSRVKCMNsqfo+bwNsyHfnhMjmpf42rtY5w@mail.gmail.com>
Subject: Modified GENIVI Cannelloni recipe with strange side effects
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000100fa0059e86a77d"

--000000000000100fa0059e86a77d
Content-Type: text/plain; charset="UTF-8"

Hello List,

I am trying to solve very interesting ERROR I am getting with slightly
modified GENIVI Canneloni recipe:
https://github.com/ZoranStojsavljevic/meta-socketcan/blob/master/recipes-can/cannelloni/cannelloni.bb

If I take the recipe as is, everything works fine, with:
## SRCREV = "${AUTOREV}"
SRCREV = "0fb6880b719b8acf2b4210b264b7140135e4be8a"

Everything works fine, but if I swap the static hash with auto latest hash
(SRCREV = "${AUTOREV}":
SRCREV = "${AUTOREV}"
## SRCREV = "0fb6880b719b8acf2b4210b264b7140135e4be8a"

I am getting these ERRORS, which seems to me very strange?!
_______

Sstate summary: Wanted 11 Found 6 Missed 5 Current 1398 (54% match, 99%
complete)
NOTE: Executing Tasks
NOTE: Setscene tasks completed
ERROR: cannelloni-1.0-r0 do_package_qa: QA Issue: package cannelloni
contains bad RPATH
/home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/build:
in file
/home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/packages-split/cannelloni/usr/bin/cannelloni
[rpaths]
ERROR: cannelloni-1.0-r0 do_package_qa: QA Issue: /usr/bin/cannelloni
contained in package cannelloni requires libcannelloni-common.so.0, but no
providers found in RDEPENDS_cannelloni? [file-rdeps]
ERROR: cannelloni-1.0-r0 do_package_qa: QA run found fatal errors. Please
consider fixing them.
ERROR: Logfile of failure stored in:
/home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/temp/log.do_package_qa.255490
ERROR: Task
(/home/user/projects2/beaglebone-black/bbb-yocto/meta-socketcan/recipes-can/cannelloni/cannelloni.bb:do_package_qa)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 3791 tasks of which 3788 didn't need to be
rerun and 1 failed.
_______

Any advise how to make GENIVI Cannelloni recipe to work with: SRCREV =
"${AUTOREV}" ???

Thank you,
Zoran

--000000000000100fa0059e86a77d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello List,<br><br>I am trying to solve very interesting E=
RROR I am getting with slightly modified GENIVI Canneloni recipe:<br><a hre=
f=3D"https://github.com/ZoranStojsavljevic/meta-socketcan/blob/master/recip=
es-can/cannelloni/cannelloni.bb">https://github.com/ZoranStojsavljevic/meta=
-socketcan/blob/master/recipes-can/cannelloni/cannelloni.bb</a><br><br>If I=
 take the recipe as is, everything works fine, with:<br>## SRCREV =3D &quot=
;${AUTOREV}&quot;<br>SRCREV =3D &quot;0fb6880b719b8acf2b4210b264b7140135e4b=
e8a&quot;<br><br>Everything works fine, but if I swap the static hash with =
auto latest hash (SRCREV =3D &quot;${AUTOREV}&quot;:<br>SRCREV =3D &quot;${=
AUTOREV}&quot;<br>## SRCREV =3D &quot;0fb6880b719b8acf2b4210b264b7140135e4b=
e8a&quot;<br><br>I am getting these ERRORS, which seems to me very strange?=
!<br>_______<br><br>Sstate summary: Wanted 11 Found 6 Missed 5 Current 1398=
 (54% match, 99% complete)<br>NOTE: Executing Tasks<br>NOTE: Setscene tasks=
 completed<br>ERROR: cannelloni-1.0-r0 do_package_qa: QA Issue: package can=
nelloni contains bad RPATH /home/user/projects2/beaglebone-black/bbb-yocto/=
build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/build: =
in file /home/user/projects2/beaglebone-black/bbb-yocto/build/tmp/work/cort=
exa8hf-neon-poky-linux-gnueabi/cannelloni/1.0-r0/packages-split/cannelloni/=
usr/bin/cannelloni [rpaths]<br>ERROR: cannelloni-1.0-r0 do_package_qa: QA I=
ssue: /usr/bin/cannelloni contained in package cannelloni requires libcanne=
lloni-common.so.0, but no providers found in RDEPENDS_cannelloni? [file-rde=
ps]<br>ERROR: cannelloni-1.0-r0 do_package_qa: QA run found fatal errors. P=
lease consider fixing them.<br>ERROR: Logfile of failure stored in: /home/u=
ser/projects2/beaglebone-black/bbb-yocto/build/tmp/work/cortexa8hf-neon-pok=
y-linux-gnueabi/cannelloni/1.0-r0/temp/log.do_package_qa.255490<br>ERROR: T=
ask (/home/user/projects2/beaglebone-black/bbb-yocto/meta-socketcan/recipes=
-can/cannelloni/cannelloni.bb:do_package_qa) failed with exit code &#39;1&#=
39;<br>NOTE: Tasks Summary: Attempted 3791 tasks of which 3788 didn&#39;t n=
eed to be rerun and 1 failed.<br>_______<br><br><div>Any advise how to make=
 GENIVI Cannelloni recipe to work with: SRCREV =3D &quot;${AUTOREV}&quot; ?=
??</div><div><br></div><div>Thank you,</div><div>Zoran</div><div><br></div>=
</div>

--000000000000100fa0059e86a77d--
