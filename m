Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49])
 by mx.groups.io with SMTP id smtpd.web11.6750.1581763320445561385
 for <yocto@lists.yoctoproject.org>;
 Sat, 15 Feb 2020 02:42:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=chw6sbws;
 spf=pass (domain: gmail.com, ip: 209.85.217.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f49.google.com with SMTP id 7so7508154vsr.10
        for <yocto@lists.yoctoproject.org>; Sat, 15 Feb 2020 02:42:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=wo1hPY/gZ0tcIeG+HPDbMJoGMxYRDgQWFCjGBrjK2Hc=;
        b=chw6sbwsKeKVOLqsBGnW8AyomU0j8ezMqy3C06X2Xbt+lbCd+iRluWM2MX6CXoZO+R
         eCkpBpqNVIH1TvkEKOizRTRibsRbkIMAQ+zOqGs1LXrDP/zZe2XbuPEeqiu/+NMI0Fh0
         eEs1EYk5dElP0sRaC7jf0ZP0PSRWrX/unavymmN88uAE8jYhlQG3Q7vpCGY80TSe7oib
         kceLZCR5m/1cHDyzWKilyDZ1GaPK+7iUe19W8kwMjm1LSVdSceduWrxzRg+6vYWBt2FY
         60WQVAaS58PIJPqnpMJh1wseCHM+GM2YhtbAkVJPM5TU3KLc6OjGItqN1fQyNX2aUk7M
         j27A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=wo1hPY/gZ0tcIeG+HPDbMJoGMxYRDgQWFCjGBrjK2Hc=;
        b=pCZURktCrfJpo6WpfhkZRarmmHNn4zs5Qv43SjA81Jv+qfbCL//yeIXVVp+Xid/8g9
         oRRo5/hgCkbORHYxyOQ+8ZWHp0eYcYk2G2Zp9n9IvEBVy0KKFLBmJbvdJyPs4IR7nd94
         dPbDDrM0CTzGlayE1cNJtzijpTtIUa/2tOKrtARgAJ4IrrRdH6GSDTENtDMYa/qcg1xn
         u4I0nicew+IRZT+PFpcJr5U0MIgSZ0xnoW2WFnVlqcdMIf51xw/C1SIz3xK6iZ4b+Iww
         NOmUCH+d7HHozxknoN02KgvpYhDq7VO6umTWp/mYTqW5BTvuYvysrl0Xj0hdrMZDF/e8
         9ndQ==
X-Gm-Message-State: APjAAAWG8A9o71PSqNW0qrnUixROIyCv98za8rQ/tjEnMHo9clAygDjV
	NECfNoOueCbfJSRiAaEXDPPVt4M6m2LGJwDUzx8D6mOh
X-Google-Smtp-Source: APXvYqysHTlSVRgu5avpYTFs2o2meYku0oV/BdfDgMBDk/jGYiBdnYXypLbx5sLv9yVqAZe58STp+T3O5GQbU+m5JXo=
X-Received: by 2002:a67:7987:: with SMTP id u129mr3775733vsc.83.1581763319495;
 Sat, 15 Feb 2020 02:41:59 -0800 (PST)
MIME-Version: 1.0
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Sat, 15 Feb 2020 11:41:48 +0100
Message-ID: <CANNYZj8ux3H3-17eb1MFGFhG_vQDThxV+_gn4BEFH-PRjWUdsA@mail.gmail.com>
Subject: master/master-next missing from poky repo?
To: yocto@lists.yoctoproject.org
Cc: Michael Halstead <mhalstead@linuxfoundation.org>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: multipart/alternative; boundary="000000000000c70096059e9af849"

--000000000000c70096059e9af849
Content-Type: text/plain; charset="UTF-8"

Something is wrong, as master and master-next are missing here?
http://git.yoctoproject.org/cgit/cgit.cgi/poky/

Alex

--000000000000c70096059e9af849
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><div>Something is wrong, as master and master-next are missing here?</div><div><a href="http://git.yoctoproject.org/cgit/cgit.cgi/poky/">http://git.yoctoproject.org/cgit/cgit.cgi/poky/</a></div><div><br></div><div>Alex<br></div></div>

--000000000000c70096059e9af849--
