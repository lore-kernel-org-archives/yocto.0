Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
 by mx.groups.io with SMTP id smtpd.web09.6567.1609336772184114719
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Dec 2020 05:59:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=lxpN4vW/;
 spf=pass (domain: gmail.com, ip: 209.85.210.51, mailfrom: chandumail05@gmail.com)
Received: by mail-ot1-f51.google.com with SMTP id j12so15397931ota.7
        for <yocto@lists.yoctoproject.org>; Wed, 30 Dec 2020 05:59:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=eEg5sWeBmd1q/71k+CKSzQbEoY9Y6CokPvXoS9sP4PM=;
        b=lxpN4vW/BkFuMpn56C/tFJqxuMMThpOBmRNAm0X8chO3PpdhNJC5VLzeAV2r7MSG5w
         cx/GOtVXfrvG7AQA1swA29s4Wc/prkRowlpVOMcSfEu22EVJ+ZutDUUZi8itiXZZZVU9
         lFQfKCZdREHJN4rRpYLBB/Sgjg76lqECyb9UuUnXjLPIezCUmJqFHiUcfQk1RHnTEQ6E
         P2ff11RabHr0tbQeoD5ztmE8+9EPsnacwS4o34SlXoyNaps4eL3PjQTie4tG+w0sZ1fj
         KWAaq4NguEOc9urs8iqE/zp0znZ0iHb1PAsp2iJYGZw/FMVRtwBQPogEYrfepvvFEFTR
         34tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=eEg5sWeBmd1q/71k+CKSzQbEoY9Y6CokPvXoS9sP4PM=;
        b=Zae2nrF93GBeuEjPRbmuGB9e0Pur7vujuyF5SLtaIs11rRFojSVKZjVryuPmL/XM7d
         HZUd/urTNrguNcovg690ywX7M9aBrG0joZOCE12fwO3T9p4o16ACurLP9SF+hfTRgO06
         nRQyFxE0BcjnPJwCTPxxzTC5XDj/DInGjwmbtzkEe5+wa83tOzvGLFSVra6vlUG/qH6n
         flV1UPMaVQ4UjHz6jBp79H+RyslgbicW1sKFC1n1L2qYw+ytbi1Li0f3UNdbqMTWzNSL
         kBUvTJvFwTLURbQUdms53o5Q6C+o5Uu38coL51kXXgYS1nL27OsL9Ilp3cPORtf8+bAp
         DDuw==
X-Gm-Message-State: AOAM531bQDonlyxY6D7OETs7KZo5wLVbUwbY76WLHIj0blSYPZtrXz5a
	51E6bV3QB11YoQ0a3umsi0tYI/HF23CQSJ4OiDc=
X-Google-Smtp-Source: ABdhPJyPu55CffuSBoE5fbEhEmO/NAJfIlvRgzWg282IBWNhCqBMbm3B/qZ3Qe9C7uO0U6/+bl31xcBalcljZ0zOT5U=
X-Received: by 2002:a9d:6f07:: with SMTP id n7mr3804918otq.22.1609336771411;
 Wed, 30 Dec 2020 05:59:31 -0800 (PST)
MIME-Version: 1.0
From: "chandra naik" <chandumail05@gmail.com>
Date: Wed, 30 Dec 2020 19:29:20 +0530
Message-ID: <CACXHg=0c=DaKhAKztkA+qvs4jGVyRuFAjOFodidGPSsn9OjA6A@mail.gmail.com>
Subject: Issue regarding with .wic image
To: yocto@yoctoproject.org, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009581c405b7aeea5a"

--0000000000009581c405b7aeea5a
Content-Type: text/plain; charset="UTF-8"

Hi ,
we are a .wic (production image) image for ostree , in these
core-image-sato.wic image everything is read only , Here when i am trying
to edit something it will show file is readonly. so how we can edit a file
or service in .wic image ?

--0000000000009581c405b7aeea5a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"color:rgb(32,33,36);white-space:pre-wrap;ba=
ckground-color:rgb(248,249,250)"><font face=3D"times new roman, serif" styl=
e=3D"">Hi ,</font></span><div><span style=3D"white-space:pre-wrap"><font fa=
ce=3D"times new roman, serif" style=3D""><font color=3D"#202124" style=3D"b=
ackground-color:rgb(248,249,250)">
 </font><font color=3D"#000000" style=3D""><span style=3D"background-color:=
rgb(248,249,250)">  </span><span style=3D"background-color:rgb(255,255,255)=
">we are a .wic (production image) image for ostree , in these core-image-s=
ato.wic image everything is read only ,=20
   Here when i am trying to edit something it will show file is readonly. s=
o how we can edit a file or service in .wic image ?</span></font></font></s=
pan><br></div></div>

--0000000000009581c405b7aeea5a--
