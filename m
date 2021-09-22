Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
 by mx.groups.io with SMTP id smtpd.web10.3135.1632329507053013153
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Sep 2021 09:51:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=RbXOtO+4;
 spf=pass (domain: gmail.com, ip: 209.85.222.177, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f177.google.com with SMTP id b65so11538416qkc.13
        for <yocto@lists.yoctoproject.org>; Wed, 22 Sep 2021 09:51:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SaWdPrDOqAB8NLeXWJ9fnM9Em5ZFeg9Xzpofp5QtvUw=;
        b=RbXOtO+4j0YgrHzHlDWG/YdwhxgixzvsWVHz8EScLH7nZtTkzrEFe+7LcCydTB3wih
         x+ABDxieZvrr3oiR2DG6nEF8QXy519cizz8AGArHrcqqjh44EJ7G2KBhXA/aWfRq9e99
         8NLkYKAz63BelvwBHxVbQcnQcqG9l9KiQJPAAd09Y0OhYWepESFDo9p1eso7luH56y+h
         qlxFZqZMuSuv0cozIvl7T738CO0PYXwyGrddAFfuDEB8Ee/zKtQw4EC3qNS9GPGq28WG
         OEuhYOH5jFDg1+/QTETvmAno459paaivxJR5wBROHhb4+iE9x7OU1JBSuzkdu3QgSmTX
         GcYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SaWdPrDOqAB8NLeXWJ9fnM9Em5ZFeg9Xzpofp5QtvUw=;
        b=zI9YFW75cph6Y2SSKqEcVSH13cIGOs57h79ReajSkl6jhqi5e7wP/R0udCuuCgskSq
         gQfirol7X8xVY+ltZy6q9eAximiHcd+aIKrkuuiWQVhme++Y5IRKXO/NkCtXsoa4LZGq
         O9cAbo2ikVSAkxxym2MMRYYFKpomPbZiIjPt2sGJ5eoTXYSFnBiG1S+MOxXO1BfLTVhY
         ResAxteVxX9pbTenmWJd/tJMdYocVllMMrQKhazhVecaJYZPr4i/TBY3uIPuSKXJv+Sh
         JHq+OhfBD6+PDqub8SQuTmfH9KVv6qxDEdbko9+yYpq1NcGDUFf7UYjk22Zzicn50C90
         NUpA==
X-Gm-Message-State: AOAM533lz/bGaR88QCEwqwRmAXz+sNZb4trgyCjlo2lrmpfwDr7ZEbWs
	zCOuO+zvLvhU4mB/TmbCMcLmSJsINhBqfdgGCEY=
X-Google-Smtp-Source: ABdhPJxb0d4fE1esbqD1uzL2t775jkhcnG7jYCBVhi14Iwnvz4lj/R5ior0d7GKtseI+PUPil2N/Uttfx6gudewlSPY=
X-Received: by 2002:a37:618c:: with SMTP id v134mr173678qkb.231.1632329505968;
 Wed, 22 Sep 2021 09:51:45 -0700 (PDT)
MIME-Version: 1.0
References: <3heP.1632329277788400018.EkfO@lists.yoctoproject.org>
In-Reply-To: <3heP.1632329277788400018.EkfO@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 22 Sep 2021 09:51:20 -0700
Message-ID: <CAMKF1srakSaPuWdM5So3HkgOsp+rBtbkc+8+ArKS6o2Gvz_Z_g@mail.gmail.com>
Subject: Re: [yocto] Permission denied with NFS shared download and sstate-cache
To: Bel Hadj Salem Talel <bhstalel@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, Sep 22, 2021 at 9:47 AM Bel Hadj Salem Talel <bhstalel@gmail.com> wrote:
>
> Hi All,
>
> I have a server that's holding downloads and sstate-cache.
>
> I have a docker-compose file with nfs server that exposes the dowloads/sstate-cache volume.
>
> When I mount that in my PC and set the path into DL_DIR and SSTATE_DIR, I get this error :
>
> ---------------
> ERROR: grub-efi-native-2.04-r0 do_configure: Build of do_configure failed
> ERROR: grub-efi-native-2.04-r0 do_configure: Traceback (most recent call last):
>   File "/home/talel/Desktop/YoctoWork/sources/poky/bitbake/lib/bb/build.py", line 644, in exec_task
>     return _exec_task(fn, task, d, quieterr)
>   File "/home/talel/Desktop/YoctoWork/sources/poky/bitbake/lib/bb/build.py", line 618, in _exec_task
>     event.fire(TaskSucceeded(task, fn, logfn, localdata), localdata)
>   File "/home/talel/Desktop/YoctoWork/sources/poky/bitbake/lib/bb/event.py", line 215, in fire
>     fire_class_handlers(event, d)
>   File "/home/talel/Desktop/YoctoWork/sources/poky/bitbake/lib/bb/event.py", line 122, in fire_class_handlers
>     execute_handler(name, handler, event, d)
>   File "/home/talel/Desktop/YoctoWork/sources/poky/bitbake/lib/bb/event.py", line 94, in execute_handler
>     ret = handler(event)
>   File "/home/talel/Desktop/YoctoWork/sources/poky/meta/classes/sstate.bbclass", line 1094, in sstate_eventhandler
>     bb.siggen.dump_this_task(sstatepkg + '_' + taskname + ".tgz" ".siginfo", d)
>   File "/home/talel/Desktop/YoctoWork/sources/poky/bitbake/lib/bb/siggen.py", line 648, in dump_this_task
>     bb.parse.siggen.dump_sigtask(fn, task, outfile, "customfile:" + referencestamp)
>   File "/home/talel/Desktop/YoctoWork/sources/poky/meta/lib/oe/sstatesig.py", line 202, in dump_sigtask
>     super(bb.siggen.SignatureGeneratorBasicHash, self).dump_sigtask(fn, task, stampbase, runtime)
>   File "/home/talel/Desktop/YoctoWork/sources/poky/bitbake/lib/bb/siggen.py", line 362, in dump_sigtask
>     fd, tmpfile = tempfile.mkstemp(dir=os.path.dirname(sigfile), prefix="sigtask.")
>   File "/usr/lib/python3.8/tempfile.py", line 470, in mkstemp
>     return _mkstemp_inner(dir, prefix, suffix, flags, output_type)
>   File "/usr/lib/python3.8/tempfile.py", line 389, in _mkstemp_inner
>     fd = _os.open(file, flags, 0o600)

its trying to create the file with 0600 mask. I wonder whats your
global umask set to. and perhaps the user is not same when bitbake it
running ?

> PermissionError: [Errno 13] Permission denied: '/home/talel/Desktop/YoctoShare/tethys-cache/ubuntu-20.04/dd/sigtask.dgjx7ngq'
>
> ERROR: Task (virtual:native:/home/talel/Desktop/YoctoWork/sources/poky/meta/recipes-bsp/grub/grub-efi_2.04.bb:do_configure) failed with exit code '1'
> ---------------
>
> I can modify the mounted folder by creating a directory or a file, but it fails with yocto.
>
> How can I solve the issue?
>
> Thanks,
> Talel
> 
>
