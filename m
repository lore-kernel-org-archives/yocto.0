Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web12.17940.1624077660857524393
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Jun 2021 21:41:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rNqNvG3B;
 spf=pass (domain: gmail.com, ip: 209.85.208.175, mailfrom: mikeframpo@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id 131so16850294ljj.3
        for <yocto@lists.yoctoproject.org>; Fri, 18 Jun 2021 21:41:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=qC7iCboHlJYr9aDmdnAOhbsc6A3SoBtuA5G0za98j6k=;
        b=rNqNvG3BtS//ACFtVEMPUK7h4kUG9LCMHqU0Z5I0xNLeshVfFCzJkwVh/4tsDXzN0C
         v8AUVOrXO+uyOOyKee/THUxIyf7dnZun4NgAkukApcATe0IddaRLYH9YannJ8TRrseic
         XPyaNZYnVGOqks6EMwLW/Un2xUY0toidXlCOk7y4qfYYx6/dYZu3YJtgviZqR6dO2yYT
         NlqFJXEinV8XUiuwr6/mxCBvXnmKJ7VVZyRLlxb5+QnoQtIhuX+C0YRRMeTOGb/pbQ18
         Skcm8+/fhFyTY++L0L6AN1jzLQkeznkfqSnaWtVfw84je3KMggiwj3wMlS5z4ELmTe8Z
         CT+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=qC7iCboHlJYr9aDmdnAOhbsc6A3SoBtuA5G0za98j6k=;
        b=BLQRIiZG8fiM90JifQ9tup0pDPwn8d5v6LZl7ATeYrYY58Fqkb8g7W2hbP0DrV4jQt
         KEC+a/05bbBHCoFmCv/6+llu9d26Vg+8YFscdEDvmGeuianVsP/yK6GPD22Dg8OT3unM
         qTXo4aFsZZZ9TR3cZDO9OrcRpx1IOsXSH6n9BR+wCvq30F779qYzSqobmp1gYSEmdZj6
         CM5LQrw71e24oxJxP5lhLJC0M7WwYHch8ibL6eni4DcaiiwYOC0mn9pCCvDpAMJ8SHh2
         TyPvXoUY5V+RIhV/3lB8mUE+wVengm3CzW15JyvTvGhUE7LLqxJhCC7TOCS6fXEqgef9
         jGdQ==
X-Gm-Message-State: AOAM531cX0j1heCjdD5/T+Q9l/TcIKAjKt9vW8MCQi3cl+Mgj/kuvipY
	4Qk6piRzCiwMkRJgKEwen48LScOBcEJ/9jMqMQ+RaDlxvZw=
X-Google-Smtp-Source: ABdhPJyrKafpjkUmAO5/vRhP3IJCb6Esbbfb65a6Qter53ECjq2PDkv6n8h1KZcH1FIV1B3ecF37jXrTpvA6R4nXspY=
X-Received: by 2002:a2e:9b0e:: with SMTP id u14mr12371142lji.123.1624077658757;
 Fri, 18 Jun 2021 21:40:58 -0700 (PDT)
MIME-Version: 1.0
From: "Mike Frampton" <mikeframpo@gmail.com>
Date: Sat, 19 Jun 2021 16:40:48 +1200
Message-ID: <CABqcFR=X0WQfkqvBz7+XLg2B=EQoUSTR7QERwJ+q1s7ny0uE1g@mail.gmail.com>
Subject: Appending an existing machine .conf file
To: yocto@lists.yoctoproject.org
Cc: ayoub.zaki@embexus.com
Content-Type: text/plain; charset="UTF-8"

Greetings Yocto,

I'm interested in assigning custom config settings for machine type qemuarm.

I tried a method suggested in this thread
https://lists.yoctoproject.org/g/yocto/message/38359 by Ayoub Zaki, he
suggested defining the following in local.conf

> include conf/machine/${MACHINE}-extra.conf

However, this doesn't work for me because quemuarm.conf in poky/meta
**assigns** its variables, e.g.,

> QB_OPT_APPEND = "-device VGA,edid=on"
> QB_OPT_APPEND += "-device qemu-xhci -device usb-tablet -device usb-kbd"

So that if I define a value for this, it will be overwritten.

Is there another method for achieving this? If not I could submit a
patch to change poky's definitions to "??" assignments.

Cheers,
--Mike
