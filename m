Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
 by mx.groups.io with SMTP id smtpd.web10.29186.1606099982672476749
 for <yocto@lists.yoctoproject.org>;
 Sun, 22 Nov 2020 18:53:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=XsTspkeB;
 spf=pass (domain: gmail.com, ip: 209.85.222.179, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f179.google.com with SMTP id u4so15681970qkk.10
        for <yocto@lists.yoctoproject.org>; Sun, 22 Nov 2020 18:53:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VnI4XAppDIyN7we5Ok02T/yR0qQEzzy7ZkK5co2eBbA=;
        b=XsTspkeBA3MTIYMFhgu3TsiOZDxnuHCvXFcJRW9Um8X46xDBk+XhK3u43oNWIhH9z0
         VRQxD+B2Gs/6ssHp0emh034AcnLpcf7Um6hD7n36NBwWqMqdouC4mJ4N5xGjFXPg9Mxa
         DLi+CAru8o/EjFL6yst5+rYVxMlBdpZ42BYWjqNmZNv6ePK34an7DohPHRRx0MNABkVT
         5vMmZN1MjIw/D7OcMejIz+nl2hckMrlBRKP91nqyWaEjOLsU+YvHiXjsbGyUDMCNpcFl
         0oaUSdDze+SWAoJKAICHv+h/BtGwtsI8ysi/P2OEMSlzVLtdegca5tKNpaG89mgQACe1
         aalQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VnI4XAppDIyN7we5Ok02T/yR0qQEzzy7ZkK5co2eBbA=;
        b=roFp4JUkI55EuzTBoWnPjWnP5L6eEU52yOTRYh7nXjj9Aqy3zO8HVS+tIpCRVICFvZ
         k/UMFXqdkZ94V1/VZGhi6+vHlEd5VLuuaq9K1l/9TUk6ONlQK5u55vCWlngKMhjV7R+3
         1nktcPbE8rFOvBU1OnV5uMIbY97+xI93MwyB3qzCSEZorPSX39eJFBckbIEAjSxw12kv
         CRugLh/ofBQFT3rDmz4mRge4ldEHkVcTRARkakYNGOLIKVmD2xK0daWyNZ35Nhxdn7bb
         fnRgGoYHZYIo4jrAS9pVueiKkwrxvpqa/Fq8rDJVLex5vra4vAUqJkgWHLeTjMjkE8nF
         Bfqw==
X-Gm-Message-State: AOAM530v3yRmkPrI4Pn0RqSJfR5Zp+FQYgopYWnzNZcdBCFS6oRUYAlA
	MyELG5aAW47Cl9pIoRx0Wb/GY1IdMm/rosu4zbQ=
X-Google-Smtp-Source: ABdhPJy7VTNjr74G4V+X6l07UT65MWDLoOCi8JwFIm9nL5S0fjk9nrDYq3cbgkA3RRUA+Ny0kCk4prBhPVs9uirRdxs=
X-Received: by 2002:a37:58c1:: with SMTP id m184mr14307009qkb.9.1606099981745;
 Sun, 22 Nov 2020 18:53:01 -0800 (PST)
MIME-Version: 1.0
References: <CADm5WxOUQO5za65bAvfN-2F1DnuOLg6unLUmD0k46W6Dj37c_A@mail.gmail.com>
In-Reply-To: <CADm5WxOUQO5za65bAvfN-2F1DnuOLg6unLUmD0k46W6Dj37c_A@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Sun, 22 Nov 2020 18:52:35 -0800
Message-ID: <CAMKF1sp_-3CR-Nc1x1DELdp22NKDkGV7t-tfqKYtoQEj7arHqA@mail.gmail.com>
Subject: Re: [yocto] Python function caching question
To: Michael Callahan <coder.callahan@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Sun, Nov 22, 2020 at 6:17 PM Michael Callahan
<coder.callahan@gmail.com> wrote:
>
> I am having trouble with sstate caching of my os-release.bbappend and
> am stuck.  The simple example file looks like something below, where I
> am setting a variable from a computed python function.  What's the magic
> to make the find_version(d) always run but do_compile to only run if
> VERSION changes?  I basically want something like
> `find_version[nostamp]="1"` but that seems to only work for tasks.
>
> def find_version(d):
>     import subprocess
>     cmd = "git describe --long"
>     return subprocess.check_output(cmd).rstrip().decode('utf-8')
>
> VERSION = "${@find_version(d)}"
> # do_compile uses $VERSION
>

perhaps mark the task which is using this variable as nostamp.

> 
>
