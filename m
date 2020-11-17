Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.12879.1605639215551423048
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Nov 2020 10:53:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GtUhCcIy;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: marek.belisko@gmail.com)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 60F2F38C0481
	for <yocto@yoctoproject.org>; Tue, 17 Nov 2020 18:53:35 +0000 (UTC)
Received: by mail-ed1-f42.google.com with SMTP id q3so23571816edr.12
        for <yocto@yoctoproject.org>; Tue, 17 Nov 2020 10:53:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mFQBVijtO2HgIzUbrZV1UL0NSe6QckMFa72s5ZlzKNI=;
        b=GtUhCcIyv636x8esIfF2AonYBiI7YXPumMUSTuZjm/2lxUIlIVOxd/+0UISPbcU8Z+
         477EtTdBr9GaD7Rq/IKrE58/6kD67NJ0J8HLVGs/rhbvOoq2NFozGsx+9VnDdTxdMokx
         eIRbhABZd2JJP6fPGBS+RL5RRvTszANje6fW29kkbQy9AHDWSO8vnhaCQxd6VBRDJYrY
         NnHuJPD33GZ7CsmlsBdlzECVyZ8eJ/Adm+eTHwmCBza/7z7Y8nwstJ99KqoAtFh50mD0
         50Ccqc+MDOkEeRR4Kao/can4Ktai2s/OCEUd5AYMKkLjYsqHpcI6IUfagXgBx6o95eDd
         Qzsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mFQBVijtO2HgIzUbrZV1UL0NSe6QckMFa72s5ZlzKNI=;
        b=A1h15FkLlOB+QoHxfjpovFq/MIPJJFupEj43jkiJ7OkJ8wKPm0gwgSDqAz6DOzdjDu
         LDGdBoAb1wlmewQXTfcUzw/ZeshZbdLCdU3P/B6howGk2/Mb9UQ+vrtcoYEhM26YXIEW
         27c724D0JLFW+kA64IPTbSE52IF/vXkKeuvcKLcsVpOjvgY3n72Rjjfq53zvDjIVUwbI
         XsVRyMiaNOy92oPIYAlFi2tlb1/gxS3XOU5b7Lp6WMEiJ5Fw4L5glSkgKa52UAb2ipQZ
         B5G1AgBFr6s5n4rvRSSh41ELNw1a8t68WJYKzWAxWaOOLxgxGu6yKf+wdvx4kTnLJBO5
         9p+w==
X-Gm-Message-State: AOAM530EFb+Bft8h6NHU1H5TAXIJRCSznRuxA2NIw7kKAr6GquxfIdKZ
	nG0++JeZG6yqJaFFr6mHdVN9SBze+dl1vBeZWgg=
X-Google-Smtp-Source: ABdhPJyphV8JRdfGJF+KUFInlnPfn09QTl4pR/wtahQVHKX6fV1rBAn96soyR4PYCUDlUpFLoYiz8suIFFYy22NHP8k=
X-Received: by 2002:a50:8a9c:: with SMTP id j28mr21403277edj.254.1605639213532;
 Tue, 17 Nov 2020 10:53:33 -0800 (PST)
MIME-Version: 1.0
References: <CAAfyv37AKHE-wqqkLisZ_OpZhaPSpD2rd7LzEaYMVUvvpUrHEg@mail.gmail.com>
 <3274cdf6-ce13-15ca-9e9f-df1ffa751798@gmail.com> <CAAfyv37bu4gurw1nNF9Bi3X4vNsW7FwtEuU7S-2iHp1TQmfi=Q@mail.gmail.com>
 <CA+chaQdQgTp=CxNrj1BOB60ra4PakJoHNNC7euZzt4pH-J_=hA@mail.gmail.com> <feda2c563a65d246df52372b7b8777b694ec84f1.camel@delisys.ch>
In-Reply-To: <feda2c563a65d246df52372b7b8777b694ec84f1.camel@delisys.ch>
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Tue, 17 Nov 2020 19:53:23 +0100
Message-ID: <CAAfyv35nbx046+Ukv+gwYq2tuxMnqjWVHrEMKSc8eRWfaih4RQ@mail.gmail.com>
Subject: Re: [yocto] KeyError: 'getpwuid(): uid not found: 1000' in do_package phase
To: Nicolas Jeker <n.jeker@delisys.ch>
Cc: Martin Jansa <Martin.Jansa@gmail.com>, yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, Nov 17, 2020 at 2:19 PM Nicolas Jeker <n.jeker@delisys.ch> wrote:
>
> On Mon, 2020-11-16 at 23:27 +0100, Martin Jansa wrote:
> > https://github.com/webOS-ports/meta-webos-ports/commit/9fd17a67cdbed92df13a14b002a189b4c6c2d442
> >
> > is an example where it triggers this error, but doesn't trigger the
> > more common host-user-contaminated QA error (unless you happened to
> > use UID 1001 on host for the user running bitbake).
> >
> > Similarly when the files are "installed" with e.g. "cp -a" for which
> > layers usually use "cp -R --no-dereference --preserve=mode,links -v".
>
> On a related note, the do_install reference in the manual gives some
> advice on how to use cp and tar without contaminating the build.
>
> The relevant part:
Thanks all for valuable inputs. Issue solved +1
>
> Safe methods for installing files include the following:
>  * The install utility. This utility is the preferred method.
>  * The cp command with the "--no-preserve=ownership" option.
>  * The tar command with the "--no-same-owner" option. See the
>    bin_package.bbclass file in the meta/classes directory of the
>    Source Directory for an example.
>
> https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#ref-tasks-install
>
> > On Mon, Nov 16, 2020 at 10:10 PM Marek Belisko <
> > marek.belisko@gmail.com> wrote:
> > > On Mon, Nov 16, 2020 at 9:52 PM Joshua Watt <jpewhacker@gmail.com>
> > > wrote:
> > > >
> > > >
> > > > On 11/16/20 2:38 PM, Marek Belisko wrote:
> > > >
> > > > Hi,
> > > >
> > > > I'm bumping my project based on zeus to dunfell. I've update all
> > > > layers and in one of my recipes I'm seeing following issue (not
> > > see on
> > > > zeus at all):
> > > > WARNING: cv-my-test-1.0-r0 do_package: KeyError in
> > > ./package/srv/10%.png
> > > > ERROR: cv-my-test-1.0-r0 do_package: Error executing a python
> > > function
> > > > in exec_python_func() autogenerated:
> > > >
> > > > The stack trace of python calls that resulted in this
> > > exception/failure was:
> > > > File: 'exec_python_func() autogenerated', lineno: 2, function:
> > > <module>
> > > >       0001:
> > > >   *** 0002:sstate_report_unihash(d)
> > > >       0003:
> > > > File: '/home/ubuntu/projects/my-test-
> > > /poky/meta/classes/sstate.bbclass',
> > > > lineno: 840, function: sstate_report_unihash
> > > >       0836:    report_unihash = getattr(bb.parse.siggen,
> > > 'report_unihash', None)
> > > >       0837:
> > > >       0838:    if report_unihash:
> > > >       0839:        ss = sstate_state_fromvars(d)
> > > >   *** 0840:        report_unihash(os.getcwd(), ss['task'], d)
> > > >       0841:}
> > > >       0842:
> > > >       0843:#
> > > >       0844:# Shell function to decompress and prepare a package
> > > for installation
> > > > File: '/home/ubuntu/projects/my-test-
> > > /poky/bitbake/lib/bb/siggen.py',
> > > > lineno: 555, function: report_unihash
> > > >       0551:
> > > >       0552:            if "." in self.method:
> > > >       0553:                (module, method) =
> > > self.method.rsplit('.', 1)
> > > >       0554:                locs['method'] =
> > > > getattr(importlib.import_module(module), method)
> > > >   *** 0555:                outhash =
> > > bb.utils.better_eval('method(path,
> > > > sigfile, task, d)', locs)
> > > >       0556:            else:
> > > >       0557:                outhash =
> > > bb.utils.better_eval(self.method +
> > > > '(path, sigfile, task, d)', locs)
> > > >       0558:
> > > >       0559:            try:
> > > > File: '/home/ubuntu/projects/my-test-
> > > /poky/bitbake/lib/bb/utils.py',
> > > > lineno: 420, function: better_eval
> > > >       0416:    if extraglobals:
> > > >       0417:        ctx = copy.copy(ctx)
> > > >       0418:        for g in extraglobals:
> > > >       0419:            ctx[g] = extraglobals[g]
> > > >   *** 0420:    return eval(source, ctx, locals)
> > > >       0421:
> > > >       0422:@contextmanager
> > > >       0423:def fileslocked(files):
> > > >       0424:    """Context manager for locking and unlocking file
> > > locks."""
> > > > File: '<string>', lineno: 1, function: <module>
> > > >    File "<string>", line 1, in <module>
> > > >
> > > > File: '/home/ubuntu/projects/my-test-
> > > /poky/meta/lib/oe/sstatesig.py',
> > > > lineno: 595, function: OEOuthashBasic
> > > >       0591:            process(root)
> > > >       0592:            for f in files:
> > > >       0593:                if f == 'fixmepath':
> > > >       0594:                    continue
> > > >   *** 0595:                process(os.path.join(root, f))
> > > >       0596:    finally:
> > > >       0597:        os.chdir(prev_dir)
> > > >       0598:
> > > >       0599:    return h.hexdigest()
> > > > File: '/home/ubuntu/projects/my-test-
> > > /poky/meta/lib/oe/sstatesig.py',
> > > > lineno: 551, function: process
> > > >       0547:                    add_perm(stat.S_IXOTH, 'x')
> > > >       0548:
> > > >       0549:                if include_owners:
> > > >       0550:                    try:
> > > >   *** 0551:                        update_hash(" %10s" %
> > > > pwd.getpwuid(s.st_uid).pw_name)
> > > >       0552:                        update_hash(" %10s" %
> > > > grp.getgrgid(s.st_gid).gr_name)
> > > >       0553:                    except KeyError:
> > > >       0554:                        bb.warn("KeyError in %s" %
> > > path)
> > > >       0555:                        raise
> > > > Exception: KeyError: 'getpwuid(): uid not found: 1000'
> > > >
> > > > ERROR: Logfile of failure stored in:
> > > > /home/ubuntu/projects/my-test-/build/tmp/work/aarch64-poky-
> > > linux/cv-my-test/1.0-r0/temp/log.do_package.27454
> > > >
> > > > Is this known issue or something related to my host setup?
> > > >
> > > > This means the recipe is having host contamination (where the UID
> > > of the user doing the build is leaking into the file system).
> > > Some ideas what can be the source of that. This recipe is basically
> > > just copying files from archive to final rootfs without any special
> > > processing or so.
> > > >
> > > > Thanks and BR,
> > > >
> > > > marek
> > > >
> > > >
> > > >
> > > >
> > >
> > > BR,
> > >
> > > marek
> > >
> > >
> > >
> >
>
>
>
> 
>
