Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web10.37601.1600676894282619227
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Sep 2020 01:28:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sirius-es-it.20150623.gappssmtp.com header.s=20150623 header.b=h0ZKiMgj;
 spf=permerror, err=too many SPF records (domain: sirius-es.it, ip: 209.85.221.41, mailfrom: matteo.facchinetti@sirius-es.it)
Received: by mail-wr1-f41.google.com with SMTP id s12so11734157wrw.11
        for <yocto@lists.yoctoproject.org>; Mon, 21 Sep 2020 01:28:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sirius-es-it.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=8iLs+JVrHBFIK5IoIehEUaXuEb3Fpz4lq5sGnNlpNfg=;
        b=h0ZKiMgjVWWBGHZlNK+03Xw+48EcUtdy3GaDQk3Bbib5AlYIQ5G8qAnNeJ6Ku9O5Xg
         SsfUhwnDBKTFhUbnslcAvecGHSqfmB6NRUxqQfPjG/Z1V5nAO0L2+EstuNgR2zbjE+q9
         HkIQgFKpR8xEyTDt2baU4K0szFEG+T7ZMT+6/sD/qIrL+sS98Qc8Rf1ECv48M9gkP0YG
         dhpQg/zKniG+nF/Tw5fsceh0lNWTpg/IEnY91vHLzvvAWxWaMcHijmlo5nOvH6DyGZo+
         u9NDqoLuelyYvAGPE18wyDlpWdtLjIuHgDWEpPjdAqOWDUG6syddUxLXxsIklSyNF8KP
         vo2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=8iLs+JVrHBFIK5IoIehEUaXuEb3Fpz4lq5sGnNlpNfg=;
        b=ajPImEUy+0POy8UA3OhmsiHqkfNE5Mn48VfHqWK+cfXgslVI+sH3A7Vt1qW1OmuRMk
         dUjPrhPeJE0HQdN3AQUZdMruhFVRo+rpvWVnb/G7xf38gsalO7sI7z7MUDEW8WkZRA6B
         2zpYdAk4krvl/KtYkqWCmXJJZOrAC0+Pcj7JZ4GIq0Pe/6G4Q/tEz359XGiJR+xgxRly
         rUsUlyuWSGWW0ObLa+0KP5dIeu+XEr7qjoGNB4z44LC4AL10iwQ/1cIpWLicXuWySelu
         q3GoK/bDwiZIRMXSUs5ezajxx1yyUaDEOvYTWUPpLd3OcnrWQLHitMig5ny97Znpfvsq
         Csyw==
X-Gm-Message-State: AOAM531E4ppe+cqhThKsixyn8M2wpGuIGo/QP5KMKzXly5z1SrV4yubw
	gvANLMWs9evIPJ8+cOPCY/iR+mOcxqqNqBg7vL3wM0wiTkEV3A==
X-Google-Smtp-Source: ABdhPJz/9Er3cb7sav3/DEl3vCIrGgr8LY+ovTfGV6nHPIV+KbmhUrf9I0sZeO/sh0nzvlZAeF+HqbQG5Hnlei6wXPg=
X-Received: by 2002:adf:eece:: with SMTP id a14mr49360107wrp.330.1600676892508;
 Mon, 21 Sep 2020 01:28:12 -0700 (PDT)
MIME-Version: 1.0
From: "Matteo Facchinetti" <matteo.facchinetti@sirius-es.it>
Date: Mon, 21 Sep 2020 10:28:02 +0200
Message-ID: <CAAjAsizfFN2RFj-ve2Fx0NPTd9jLSHp1NtShjy_TnUVW7c8yvA@mail.gmail.com>
Subject: preistall package when use a package manager
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009413b505afcea1c2"

--0000000000009413b505afcea1c2
Content-Type: text/plain; charset="UTF-8"

Hi,

I need to preinstall a package in a specific directory in my target image.

In detail I use RPM package manager and I like to include RPM packages in
my target to provide a way to install services only when used.
This is useful when you don't have an internet connection.

Is there a way to do this?
Opinions are welcome.

Regards,
Matteo
Sirius Electronic Systems

--0000000000009413b505afcea1c2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I need to preinstall=C2=A0a package=
 in a specific directory in my target image.</div><div><br></div><div>In de=
tail I use RPM package manager and I like to include RPM packages=C2=A0in m=
y target to provide a way to install services only when used.</div><div>Thi=
s is useful=C2=A0when you don&#39;t have an internet connection.</div><div>=
<br></div><div>Is there a way to do this?</div><div>Opinions are welcome.=
=C2=A0</div><div><br></div><div>Regards,</div><div>Matteo</div><div>Sirius =
Electronic Systems</div></div>

--0000000000009413b505afcea1c2--
