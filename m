Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
 by mx.groups.io with SMTP id smtpd.web12.5529.1602813428485120847
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Oct 2020 18:57:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=bv0Q7Yex;
 spf=pass (domain: gmail.com, ip: 209.85.219.170, mailfrom: jupiter.hce@gmail.com)
Received: by mail-yb1-f170.google.com with SMTP id l15so643874ybp.2
        for <yocto@lists.yoctoproject.org>; Thu, 15 Oct 2020 18:57:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=HFqeLBcwaTdbb+1o5DFMFUhYV1JJqct0RTsoUymfCUM=;
        b=bv0Q7Yexf5VPU5Nm7Qw+fbMWldfz+IzmO/8hSMGiM6mo/P+tGh8ctsJ/uVWsfTS8d1
         VI6FDHx5W/XEhKGGCsU3KkZF5Ebag89VOXOkyMsHXh1XRAsQmyO7uebzWFe73KM6iyC+
         V8h6EnjAgp+uCo9jKNwW01a0xgDaR0FnmnmRuBYyNxU0av2xOT6XPGgU70eXqvdXry7a
         rtRg2GNp86azav7WdN3Hzr5PDvt+TlDEGfr/7h2pdawA+csUXtzw1bhgwzXdMinhftaL
         +W8rX7MYDE2SOLfjlMEm0CbptWCjU1Oc2EPVqHyxRjpvTnr4TtgoRWyzTxT2iU4NpBDV
         aduA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=HFqeLBcwaTdbb+1o5DFMFUhYV1JJqct0RTsoUymfCUM=;
        b=o9JWfyYRcRTwC4a1zodHmCUNQ68yK0Rqc+Y0J+Rp7rtzwx5fD1NHYii1mA+nx2421d
         ReZGDW7JcAE6a34/vBazDRyinJeFh/j+WS8tpVithyzZWwdqh9XBUU/RuxybXtpzc8FC
         YcxpT/eIs92TdEiiXrE4hal2Y3cEyaGVisK6Y+PQImYQzV8yroELXUe1YBzuSzFjROqU
         ZdlGNFQREg0MxoS6aJqWwzgVZy5u0ScFoOv0VdMGWyzGStx0K0VzEiXHnj11EjgPV6Ok
         CiKdSR5+m8dcfaNM6DeAnGIbN7D4bIMNldjK4VD4TqGH2QZcM/2AGq9Q7+rcoIYtsDRJ
         f/vQ==
X-Gm-Message-State: AOAM531LsdQbZ2DbFKUHM+ErCKAq/nelG9irtQv12YrpYhNsEvKt/60q
	fCO1VBAN5fnj5JDoBZe0nijFUZHPqJlRnUQZLRsdNEQGJ0I=
X-Google-Smtp-Source: ABdhPJy6fV7NFhOhq7f9EELnYoZG0YUnnwTLS6fWbXYNESlBvXiQCkNgNARf+xX/Ehm4OdrnFbXNMTHGbN4WRqySZZI=
X-Received: by 2002:a25:d0cc:: with SMTP id h195mr1972518ybg.74.1602813427465;
 Thu, 15 Oct 2020 18:57:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a25:1882:0:0:0:0:0 with HTTP; Thu, 15 Oct 2020 18:57:07
 -0700 (PDT)
From: "JH" <jupiter.hce@gmail.com>
Date: Fri, 16 Oct 2020 12:57:07 +1100
Message-ID: <CAA=hcWTRwahU7+m+mU3gAtdsVV49kziQnO5eFJARN9yJzfr8iw@mail.gmail.com>
Subject: Where to download znus 0011-linux-user-remove-host-stime-syscall.patch?
To: yocto <yocto@lists.yoctoproject.org>
Cc: Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"

My apology if I posted duplicated message, I could not find messages
in Send Mail folder, very wired.

I failed to run zeus on Ubuntu 20.04:

-- x86_64-linux/qemu-native/4.1.0-r0/qemu-4.1.0/linux-user/syscall.c:7657:
undefined reference to `stime'

Googling to find that the patch is needed as I am not in the position
to update Yocto to a new version.

Thank you.

Kind regards,

jupiter
