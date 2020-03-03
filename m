Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45])
 by mx.groups.io with SMTP id smtpd.web12.449.1583269190545393479
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Mar 2020 12:59:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GmhFUXrI;
 spf=pass (domain: gmail.com, ip: 209.85.217.45, mailfrom: kent.dorfman766@gmail.com)
Received: by mail-vs1-f45.google.com with SMTP id 7so3364699vsr.10
        for <yocto@lists.yoctoproject.org>; Tue, 03 Mar 2020 12:59:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=eKtx5Ki0RUq4tcbm9o7fbliqamSkmFIq5u+wlYJCNhk=;
        b=GmhFUXrIaQ9fdrNj3TTXYbQOyJmfoXWopaAXEGR14Qf6PRWYigmo0etM7Mi36EVpYB
         Ih/ohiWXvQDWBmhdTHcl7I0DXC85JH+BB3gXFHjnxA76EYmaiUaZpYBdHg1dPrBiO27d
         Zanwg+qrS4+MRackSd+786tT8xSD/NStu08NoMjtWVguMIJRKzlA7X5tFXwHp7PKmjGC
         Z1i/tGDnyT0O7rFxrQO4CMhG9vDAXA5zhCuQ894V5DWzLdMMhuopwh0fQoH/pzQ5s/Om
         yRNBUgJtOUf2NqfE/qIW8AS1FY4rEMjpDHJIEQeCuh1NTXr0fdj5VdsMO4g+/vbbAYS+
         cxIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=eKtx5Ki0RUq4tcbm9o7fbliqamSkmFIq5u+wlYJCNhk=;
        b=j5d2VPserCed0qq3ndqi+Lo0DQY5/DltIHDCYDLiGz2DeQ/9Engaun9FkE+4AGlg09
         RKo2U++x6/SXjb2jmOa3/4peGFF4QQjHihcD/wVqfhD0/ICSUYxU92sCWqa9KBVcJbVu
         wJjy7Mr8KLbEtkYdNlFb4yzmP/bphOxlkEXnnWkMP38GmUJeQCFdZs68AZuEmEnDnTR8
         9/HcBBbXd8a9PGEQtMY1qrb/Nh5ENlo4164aSyyMy82tfzR+uxqBZm4shbKogYFPA9bU
         qm9mIzep5fLt/nEULBJZTu9eMoUNIFMpdjZ+v4e970gyQm4iNbEzybmMXCTno3V7pof4
         rNUg==
X-Gm-Message-State: ANhLgQ0UgI1VLmHekJc3f6zvuhNwqxN3GoAY444AjiogTtcJURJ5hyeA
	7nxgYS5EUfZvkWYd9qkZRelkf1mC3LRIkjlQ/BHkIS/+
X-Google-Smtp-Source: ADFU+vsKHP/o93L6WPGJ9gcOCat9h1hK8EAWA2fJ1FC2F6O2rj64WT8l4cjCrNVwljNvvCv1/yNT6/IFGoticLjrm4I=
X-Received: by 2002:a67:ef96:: with SMTP id r22mr3587768vsp.69.1583269189396;
 Tue, 03 Mar 2020 12:59:49 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ab0:7455:0:0:0:0:0 with HTTP; Tue, 3 Mar 2020 12:59:49 -0800 (PST)
From: "Kent Dorfman" <kent.dorfman766@gmail.com>
Date: Tue, 3 Mar 2020 15:59:49 -0500
Message-ID: <CAK4PFCU2vdL52FmU3pG3gARHGA0tLhdgGRr=7uH+FbP3_T9kyA@mail.gmail.com>
Subject: way to make do_devshell changes permanent?
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

I am dealing with a vendor supplied yocto release where they have
setup the repos as local gitshallow or tar.xz files.  I asked them to
do this in accordance with our strict air-gapped build policies.

They provide a driver and supplement utilities as a gitshallow copy of
their own repo and I can do_devshell on the recipe to extract the code
and play with it.

What is the "yocto way" of making my changes permanent so that they
survive a do_fetch in the future and are integrated into the target
image?  I've noted that changes made during a devshell session do not
make it into the target image at all at this point, but that
do_devshell is simply a subshell sandbox to play with expanded repo.
