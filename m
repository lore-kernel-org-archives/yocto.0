Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
 by mx.groups.io with SMTP id smtpd.web10.37373.1629196195581294379
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Aug 2021 03:29:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=u5a+rwFP;
 spf=pass (domain: gmail.com, ip: 209.85.219.173, mailfrom: jupiter.hce@gmail.com)
Received: by mail-yb1-f173.google.com with SMTP id w17so38458420ybl.11
        for <yocto@lists.yoctoproject.org>; Tue, 17 Aug 2021 03:29:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=kj14VUJLifu3rpIgD94sFMDC+W58tf2pMxclCaPR9Ek=;
        b=u5a+rwFPU/g1CJGH6/kM1r07bDaILloWBVuj/y/z0vDkimXqxdTeia8b0raZi+Vd36
         l6ILrMcnPBTeIk72VwUIlfDRVNmLm2107AvM5X6F+ecn4ylOhs+9+ECdXL/s0IFlf6gD
         0ARVoEs/h5eb9OrTsmx9XyApc0JsDAjRBrKANK3A6g+y+fV3b6siTuGdAONxnaW9AiMH
         N2WHrGuEc57KFcSHnVE0GVwVcfhZI634wFXo9FaoJQELqPJa6sQhIKktS2n9cvIZFjuy
         Uw6JUj7MN5MhmAmi/KDLDmeJ46dWGIc6ZT+W2CnsJq3OKhxnS61hbR+5YRAICnDBofUZ
         SKBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=kj14VUJLifu3rpIgD94sFMDC+W58tf2pMxclCaPR9Ek=;
        b=htUarBfTA6QpGoeM5BsA5GaSnl0NJZI8SfEBUCXzVXopumqV3cPld5Ff0Y1yhyFNbX
         78T6SseJ2bi7GGvTAA3fKtpS0rXCQ2XKxTNy8mH6YzXz6nIhxh3jUpgdC5m51zCJeaQL
         veNvqsRIiRIYbAOY0in3JmzP3qGWhAAha5C+3iJlF2kqXp5BubQkSNEDHd/DTtTXGClG
         sePIjMELs8xYSYwJt/Aw9mjSwdES/1DVG38e5LSOphsZVNUZtp6RPc32KBdAzB1I0/io
         QLmt+AmvG2muPqcmFRv0pzXEsQfhwmbquxINLe1UzS9nuqIwc5G/tKKZpQnsg0yQj391
         SKHQ==
X-Gm-Message-State: AOAM532IIJbsxVw9v4vH8Ae1WpHaMYPzKwDdz71ExA18B836tpWgnZNC
	B/Cop8HneNV0rZLbysBgAi36n8mKhmNmWuM5d5eM4BJh5G4=
X-Google-Smtp-Source: ABdhPJyrn1par2v2moUCtCA97WVorFSolUQ3BeSM4I+yeVNtsZZ0zL11CblsPv4OfcDmyBW90RROCJD7eYiHpe/f7EM=
X-Received: by 2002:a5b:f0c:: with SMTP id x12mr3537943ybr.340.1629196194629;
 Tue, 17 Aug 2021 03:29:54 -0700 (PDT)
MIME-Version: 1.0
From: "JH" <jupiter.hce@gmail.com>
Date: Tue, 17 Aug 2021 20:29:18 +1000
Message-ID: <CAA=hcWSHrmJRYYDEDz7sXRnsxXOAktQNuW12oZtJ-S1Es=X4WQ@mail.gmail.com>
Subject: How to disable installing python in Hardknott version?
To: yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hello,

I used dbus-send and installed the dbus package in Zeus, it did not
install python, but in Hardknott, the python3 and dbus-python
installed automatically, the python3 size is too large, how can I
disable installing python3?

Thank you.

Kind regards,

- jh
