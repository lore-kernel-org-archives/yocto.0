Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web10.4304.1584060189367249011
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Mar 2020 17:43:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=W+hWoEcU;
 spf=pass (domain: gmail.com, ip: 209.85.221.52, mailfrom: andjjimenez@gmail.com)
Received: by mail-wr1-f52.google.com with SMTP id s14so9983433wrt.8
        for <yocto@lists.yoctoproject.org>; Thu, 12 Mar 2020 17:43:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=MJgnhgjljnlZ7gQhs1129PRfP0xMgJzSWNQauap4XBs=;
        b=W+hWoEcUXpNndAyizFb9fkUG0cdLj1nNW6UNUVHt2P1D7NNIT81QdYVIv674/EXS+K
         PvxNuUbTsedZb216yXks7x024Eee513nSLwgVLFuOy1heqYu9tO3+oQS1q9BQLTuNf9v
         kek6DmJppr0/XWuwo2dQZAi99/nEUqJpTk23Bb2XUjeDnHgZnd+09mqBBIAKR9FUScX2
         nc55Or202iXytFe/4EbsW5AXUNeHGkwSSORbDt1nhfFXNBMq0cJV3qNiLNOWu03oRRUU
         Y+uCuO9SKvzWUgr1m7CiWeVUxhOAlgnSDLHtK72quLshGd76moogJK9NcK2Cj507eKyJ
         SzhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=MJgnhgjljnlZ7gQhs1129PRfP0xMgJzSWNQauap4XBs=;
        b=kK9scsa+Yg6ApujJSvnyLVsr8C2u0TKQ0LPxFfFMyKOTLtfjU1hbBC5cwBqAljkCR+
         Kb+FXinCPjeQqaoAHr+a7y3ybek6/5oFIkXNkt+AgpUPeAFh8t4xfeawIZZQ8Jv2Tqgm
         LTSQj2FFait9Nne8GbJZpRAL90I4k1qp5IvQi0o7AKWi57urlQCBL3MDRA92VoKNZmGa
         LD+5meqSESk7RV7h2gKpYM14oKLYfwJqSzALjNXEONXKa0tNyZUht4vBaUnUWdOnx74N
         8lZ5jtEvZwr4Q2TgObRQPmrIRmwcA/4J/CucEb5P5iR8zzsocBYqUTpOz5YUSO76p6Od
         SZ9A==
X-Gm-Message-State: ANhLgQ2HE7jZEN9pNkLb04Bb3tW4FfcbA1X5fI2SxiL4N2Lrvj+Ypgxi
	4yoPTPzssFihW+vGnjbbLshqm+e5gjj9rHsx0uGcu/l+wUw=
X-Google-Smtp-Source: ADFU+vsAhUQOnkI/JJngvKCYO74cUZrkB3d2IpYrYn4ESxz+d9GosH0NiQP8QA9w8lAIUA6sbwVifQ3bKHP/nhCAKTM=
X-Received: by 2002:adf:9f48:: with SMTP id f8mr13750001wrg.199.1584060187455;
 Thu, 12 Mar 2020 17:43:07 -0700 (PDT)
MIME-Version: 1.0
From: andjjimenez@gmail.com
Date: Thu, 12 Mar 2020 18:42:57 -0600
Message-ID: <CAE2XSwwoG75USM=vtCPp5WRbo9dyfLZAxVHrvThdFvFWorYnrA@mail.gmail.com>
Subject: Webcam Streaming
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000c6b5ad05a0b1c016"

--000000000000c6b5ad05a0b1c016
Content-Type: text/plain; charset="UTF-8"

Hello,

I need to create an image that allows me to stream from a webcam connected
to a raspberry3b to an external device (like a computer) via Wi-Fi, I can
connect the computer and the raspberry via wifi but the directories added
to the image for streaming and controlling the webcam were unsuccessful, I
have tried with gstream. Is there any recipe for this case? Also I am using
the pocky warrior version
Thanks

--000000000000c6b5ad05a0b1c016
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello,<div dir=3D"auto"><br></div><div dir=3D"auto">I nee=
d to create an image that allows me to stream from a webcam connected to a =
raspberry3b to an external device (like a computer) via Wi-Fi, I can connec=
t the computer and the raspberry via wifi but the directories added to the =
image for streaming and controlling the webcam were unsuccessful, I have tr=
ied with gstream. Is there any recipe for this case? Also I am using the po=
cky warrior version</div><div dir=3D"auto">Thanks</div></div>

--000000000000c6b5ad05a0b1c016--
