Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.24437.1604278967177183873
 for <yocto@lists.yoctoproject.org>;
 Sun, 01 Nov 2020 17:02:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=J1p2vaFi;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: jupiter.hce@gmail.com)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 6F37838C087B
	for <yocto@yoctoproject.org>; Sun,  1 Nov 2020 17:02:46 -0800 (PST)
Received: by mail-yb1-f181.google.com with SMTP id s89so10307016ybi.12
        for <yocto@yoctoproject.org>; Sun, 01 Nov 2020 17:02:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=5YaHZ9JlMK9LbuIMTIg56f7ZSBuY2tM5VRHI57pJnFo=;
        b=J1p2vaFiOeTbJSi9abdPAMkEIQqVW0Tq+4xyKbBfe5veOS1i0YuJrI0wpJTt/44c4j
         FTSz9i5OQgpr4EnIAJ6gU1kgw9xWeRHkwad3oZDoVhCMtQhOuh6XmFNNr/AKUELgp6Ry
         DdfvmjdqdoRAUDY4C45Ei3CYJLtziQi0zcXXMFYZdZiQifdlTi8NptZlwFswYq5Il11q
         kb3kOVuWF+yse29X4tAZi0nDK3KTk2+XDcPRDV26XFKNb3Af4XEFZ6T/zatLW+l5fZRP
         9NUi+sAUlNA2AAZh41F7DHaVA0rI8l8F7oaY5TLBh1e7Wh+xnUhwaZpE/7FF1SIPUTHL
         kgiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=5YaHZ9JlMK9LbuIMTIg56f7ZSBuY2tM5VRHI57pJnFo=;
        b=riOulpMtdlU8Pc29aUSGPPfLDXFO5PuyBzRzoCxdgYOxPmAgIrZ4yMAJiloQhC1Et4
         QRgaVpUkNmnSMgSjD3AaSNCOUIulA/y4X00tKBhHeOg7j+LOzuJ7ANh59a2oPODOgv7A
         8UdHvRNH8aWCeoleFQ+oFpReitn3u0JY3yZlEb+49H8fxgZHIyPGTJwQCTxmEg80cJdk
         PbwwfXpLgaBrMnPwKbfR97xtX80jpnClBlzpMtmN0nMnTOhIW67Th2tGAEWWmK9Z7RwA
         16opfBfti8HDZbFhhYI7PrpOhW9l1lKnfa9x3cxnaNrwqA5P/wGpgfgJAcj2ryINUdf+
         82Jw==
X-Gm-Message-State: AOAM532mdOeq40C/d1xar605WsMwX8Yei1jw/bqJr8QDKzwX9sj6vopZ
	XMJOB5I0RQ6FK7uqvGhYL9vSmXBoVMIbL4jvPtwJCjUPFfM=
X-Google-Smtp-Source: ABdhPJyH5NVjH/m/CCLCTlAberOMyLOfrF3S16jJeMN7zZdBImHu9Z7aQBearyUUddDqmxdBkYzfnz6ldE2LFCtdVwk=
X-Received: by 2002:a25:5089:: with SMTP id e131mr19125973ybb.74.1604278965569;
 Sun, 01 Nov 2020 17:02:45 -0800 (PST)
MIME-Version: 1.0
From: "JH" <jupiter.hce@gmail.com>
Date: Mon, 2 Nov 2020 12:02:09 +1100
Message-ID: <CAA=hcWQnJ1yRTwPF+9kubSt6FQPxwCRYFwXcYR8RnVLs4LMb7A@mail.gmail.com>
Subject: Install Yocto image and backup
To: linux-mtd <linux-mtd@lists.infradead.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Apology if it is an off topic, I could not find proper mailing lists
to ask questions.

I built Yocto Linux kernel and installed Yocto image to MTD NAND
storage in an iMAX6 device, because we designed RO for the kernel and
root file system, RW for applications, we can update applications OTA
but we cannot update kernel and root file system OTA. My supervisor
asked if we need to have a dual NAND storage to backup the kernel and
root file image, if the NAND bad sector occurred in the primary image,
it can be booted from the secondary backup image. I understand where
the concerns come from, but I am not clear if it is necessary or if it
is a common practice to perform NAND backup storage, appreciate your
insight advice.

Thank you very much.

Kind regards,

- jupiter
