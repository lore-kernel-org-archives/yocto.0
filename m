Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
 by mx.groups.io with SMTP id smtpd.web09.42774.1628890283317731572
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Aug 2021 14:31:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@plunkware-com.20150623.gappssmtp.com header.s=20150623 header.b=FnFpsu76;
 spf=pass (domain: plunkware.com, ip: 209.85.214.172, mailfrom: bill@plunkware.com)
Received: by mail-pl1-f172.google.com with SMTP id k2so13662088plk.13
        for <yocto@lists.yoctoproject.org>; Fri, 13 Aug 2021 14:31:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=plunkware-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=E7gHIzy8KyAXKg6o3vHDIkg0iWYRW6UcRQDG6FxW8oE=;
        b=FnFpsu76VGxQNyJ/2tsixQHC6WCF1KGYJpDBzMcd8+SYwM73ENRlDUch4nL+/g6klx
         P5uba8bpFM2fntp6dDmeBN+XOyppAZOwRiHba/V83NP37AzAwOEfNUUGS2T8aY/GeYQr
         Nbk7pmVbVYGJ4ucn8v0wwvia+b0C+cZPEbgSgQc8Z4c9skowGNtXPvifs5yo4ZI8T2ia
         vvG3DRmEoIHp0tIHLEWin2kQ4+9EeuUd97JBdUebmx7eoDs5z1+IqUhl8ql3yF6kkyUT
         joweZuh/V6uq38JSbCQwJB5FPcD6Sy0Z7fkGMEO+iKuWa2edM8o2lqTPNk2tCukPKC5x
         4b/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=E7gHIzy8KyAXKg6o3vHDIkg0iWYRW6UcRQDG6FxW8oE=;
        b=BiXzQvOhCE+qwjX4ip2HaAnPU2JVd+dFR9eF8hRFdCU9MhpQ0qkcg1oqbB5xQdV4S6
         OSQyrzfKMaGyUb21QI6YQZAIotwQ9UDyZJIAvWGmZkivA874S7+eRBt4sD5hCuA0wcJn
         x9FaX303N7iTlRrThf8y/JfTrPeO4LGIsgp0ymE4uz78aAScGhCIMqnw2gKLPcTpXCKV
         g5efXjdpyyBkzh9QUUBkNQigBqDt2x4CQ1mq/oFCx+3OS8A3PzKFUGrLJjisRc8bJujp
         +SepcH4hsWyn8kRHC1i1uH1LYAe+3jSoyjFkO8OKozNmnMvaAPy9NjSHrhgyLkhV0xyo
         XZyA==
X-Gm-Message-State: AOAM530ZYku3go7kv8UM8UDSyBbO0C71EthWsdu8O8DFueLhK2Zes6oe
	r53XmoKi2I8sn7uAlJKC0E8Qn1W8JFVbR/jUSOV5xsBZYek/5w==
X-Google-Smtp-Source: ABdhPJxQmb5OQlQt+vMP8gxR/qsuLuOJkz7u9rljeHr9Izppu06q9TmejOHTEdF1peMyLo+5zbz2I/pB4HZZu2KPvDo=
X-Received: by 2002:a05:6a00:15cf:b029:3c2:7a3c:1758 with SMTP id
 o15-20020a056a0015cfb02903c27a3c1758mr4323234pfu.41.1628890281885; Fri, 13
 Aug 2021 14:31:21 -0700 (PDT)
MIME-Version: 1.0
From: bill@plunkware.com
Date: Fri, 13 Aug 2021 15:31:11 -0600
Message-ID: <CALLsHzjuD4=k2bZsO-MRS5HXqc+=bES9bSXyxj76mZ2VBF7PrQ@mail.gmail.com>
Subject: best way to get feature of systemd v248 in yocto-hardknott (systemd v247)?
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a1604105c977927d"

--000000000000a1604105c977927d
Content-Type: text/plain; charset="UTF-8"

I'd like to use a systemd DHCP client feature that became available in v248
in my yocto-hardknott system.  Is there any hope of using the complete
v249.1 recipe from the oe master branch?

Bill

--000000000000a1604105c977927d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;d like to use a systemd DHCP client feature that bec=
ame available in v248 in my yocto-hardknott system.=C2=A0 Is there any hope=
 of using the complete v249.1 recipe from the oe master branch?<div><br></d=
iv><div>Bill</div></div>

--000000000000a1604105c977927d--
