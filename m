Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com [209.85.222.44])
 by mx.groups.io with SMTP id smtpd.web12.7525.1618831143800879533
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Apr 2021 04:19:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=mykEPe70;
 spf=pass (domain: gmail.com, ip: 209.85.222.44, mailfrom: murugesh.pappu@gmail.com)
Received: by mail-ua1-f44.google.com with SMTP id c19so1590590uap.5
        for <yocto@lists.yoctoproject.org>; Mon, 19 Apr 2021 04:19:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=Ms6SVzTSC63bydhXK7jeoEOmG3TPfzXmmzUC3CREpMM=;
        b=mykEPe70Vtz+TKHyUwWyhn6osok0j3KWyDCyREfMCrw65CX+BiFcacWVnwMeTtL9wa
         5KkHV43VUMH0ROxdoRRNQzX1Ut4VXDr8MKwnDPT1Nz+r/84VKlrYJbWPyLznSqDiDjNL
         ytAJKN8cSvvCc3lf+hP/xuiXjwpuLkmb7toxu10Gs6y016G8wNBEnnrg1R2PoHO2hb/B
         mK82PL3FUzMl2IrxWOqa51TrtxyvmhfEls13l/qTVJDvV/wJH/tqoNIfyyANz8O0PNSK
         34lw9nyYqZQiqJ/ueShrXKHoxwJpJRyu2ZcnAlSajb0Mk5CA6oBfEnH2RdzWgFl+hxQ3
         uBpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Ms6SVzTSC63bydhXK7jeoEOmG3TPfzXmmzUC3CREpMM=;
        b=Btjmyu1XBJI5oVh595T6XbOm1xG+YdOy59wKrvp9+YBVK6iwDwf6TmZLOtKsVsIHY3
         2QBnAjYOva+j0M0bCoJ+N0RDZeGV5ew+NPrXZjGgu4FHMu907Pkk7gNF9YqD3GdJ1bX+
         Mull0HZ/2V1Ylvp8cf7vkAhMPpV22eloKfjWsHRyi6j8aE6QSH1mltlCZ//gHiRhJ1m+
         AoiUya2j2sc0QWcAwqJAizYA4XdDCgPzV99bk14WfnSNeSwYiRD4qaqTbSYfpxr45nYC
         yXc2LSY1o5hZsO6eE2v+S5Re+eEfzDlrgChrwobxhxxir7XI0r0FYYkAVMXcP92lf80i
         EUkA==
X-Gm-Message-State: AOAM533ElTalu2OzR+erg2QWe9IyRR5umW40es4JRaAQJMGxPOnn1MuW
	ujP7nvnlYu/+IZbY+MfVeePpxm9n1hoIlc7AuWS+fYGn
X-Google-Smtp-Source: ABdhPJzMp27fuIniegghzoUY/LEtCxRKUizNMFHq3nRgNbpxBTSV7uciRd5pIpAxe1PTyocn5qUg6dlBidaND3WzKpw=
X-Received: by 2002:a4a:b997:: with SMTP id e23mr13041331oop.13.1618830811208;
 Mon, 19 Apr 2021 04:13:31 -0700 (PDT)
MIME-Version: 1.0
From: "Murugesh M" <murugesh.pappu@gmail.com>
Date: Mon, 19 Apr 2021 16:43:19 +0530
Message-ID: <CAOpumBkfLArN6SLspXxQBKXuC9B+7Sx5-QTERhrBSYk20Y0Bnw@mail.gmail.com>
Subject: Verifying Yocto image in beaglebone
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000741fcf05c0516b37"

--000000000000741fcf05c0516b37
Content-Type: text/plain; charset="UTF-8"

Hello

I have built the Yocto gatesgarth image for Beaglebone black. Then I loaded
the image in SD card and booted with beagle.

Is there any way to check whether the image is built and working with
beagle correctly?

Please suggest.

Note: I don't have UART to usb converter with me.

Thanks.

--000000000000741fcf05c0516b37
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello<div dir=3D"auto"><br><div dir=3D"auto">I have built=
 the Yocto gatesgarth image for Beaglebone black. Then I loaded the image i=
n SD card and booted with beagle.</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Is there any way to check whether the image is built and working =
with beagle correctly?</div><div dir=3D"auto"><br></div><div dir=3D"auto">P=
lease suggest.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Note: I d=
on&#39;t have UART to usb converter with me.</div><div dir=3D"auto"><br></d=
iv><div dir=3D"auto">Thanks.</div></div></div>

--000000000000741fcf05c0516b37--
