Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
 by mx.groups.io with SMTP id smtpd.web09.14495.1612066403822945768
 for <yocto@lists.yoctoproject.org>;
 Sat, 30 Jan 2021 20:13:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=takX6BGB;
 spf=pass (domain: gmail.com, ip: 209.85.166.175, mailfrom: uppadaravi2511@gmail.com)
Received: by mail-il1-f175.google.com with SMTP id d6so12414118ilo.6
        for <yocto@lists.yoctoproject.org>; Sat, 30 Jan 2021 20:13:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=78ZyLtfab0wu6XsXAhP3NaDl6mqFHQ18003TDe4fObI=;
        b=takX6BGB0VaSt5WJ85nr/mPK4u35r5f1+m8DqWXvwKibGpyFWCNejqYYqnrV5wAZf3
         HDeuewQ6GVb242Ulpe8e78QPxpu+/sGJVw/JImZcsUknVG5FUxmxpuT6qqUvZV2rS24N
         WPhzsKoLUCC4SnONOZ/4nT6868xAWKZ+GOXq0z9MtcraTwQIYL+FDDtDnZ35E+8TNK29
         VgBcNs0k66tBKDgOVBBcxQdSdL/dpyC9TmkJX/3sB9K8w1XSc1foR2+JWLq2Iw9hm4yk
         eGIcwTgwQ2yD9ehtXrMP3Rtvxv5okT19eC0VBzjYI58fI+Pq5dWP+ofz3Dh8a8N3yHbb
         wb6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=78ZyLtfab0wu6XsXAhP3NaDl6mqFHQ18003TDe4fObI=;
        b=KgcuyFV6xjRcOWa628+isVLP1R7I7+g5Tv0US+MNulN86d2jrEQ3iiqhFvdRHnee/B
         wEqfZY2AjSNGfIPFIvaznhDWVs2uLYiHo/VlUfyAr8TeGHYmN/ADhEeAeg8I+itnoIdw
         Zy1RuxEcRqxBGuC6u2zYC2SHlE2bBbxgTti8w6IFqIumlE0Nb5bdl1vDPHQ56v/drbx+
         voHfdAA4ENJVWK4bAeeoo+ilDqNSRTcIYlR9INivyWfDBQEFKmiz+KlDa5jVlrR9KsLz
         Ll80+/WB6PfwJBOyCFdOwiz4oXaNdqmmRjf3wgy9GLOl26sK0Oi1Kv8YDgSF8xpTrnjU
         AVNw==
X-Gm-Message-State: AOAM532AfhiJT7v4TFDyMa4UqVTjQ/yAGTsfVefPXcvktZglFtxpW2ql
	+ier45wRTZfcJSnyAZS5G1qFgJNxC8sop6Li45ucacTk05I=
X-Google-Smtp-Source: ABdhPJzInLqPotBDCeqamGzsY2vQ7KX7Wc8D35XjL9o97FSqvJFFXQ34VamHIUBlZwFezH/SZh6FDThpqvvocO4SKeY=
X-Received: by 2002:a05:6e02:1845:: with SMTP id b5mr3841528ilv.11.1612066402807;
 Sat, 30 Jan 2021 20:13:22 -0800 (PST)
MIME-Version: 1.0
From: "U RAVI KUMAR" <uppadaravi2511@gmail.com>
Date: Sun, 31 Jan 2021 09:43:11 +0530
Message-ID: <CACX=-dV8QYoF1i7kq_scLejiQfEfpGBoNz5vNj4op1_dMSxoAw@mail.gmail.com>
Subject: Regarding YOCTO
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000004b370e05ba2a7540"

--0000000000004b370e05ba2a7540
Content-Type: text/plain; charset="UTF-8"

Hello folks,

 I want to build a qtweb browser using the QT creator, And embed the
browser in  the core-image-sato.Can anyone pls suggest to me is it possible
to do that. If yes pls guide me.

Thanks,
RAVI_UPPADA

--0000000000004b370e05ba2a7540
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello folks,</div><div><br></div><div>=C2=A0I want to=
 build a qtweb browser using the QT creator, And embed the browser in=C2=A0=
 the core-image-sato.Can anyone pls suggest to me is it possible to do that=
. If yes pls guide me.<br></div><div><br></div><div>Thanks,</div><div>RAVI_=
UPPADA<br></div></div>

--0000000000004b370e05ba2a7540--
