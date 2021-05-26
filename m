Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
 by mx.groups.io with SMTP id smtpd.web10.5584.1622024742674015132
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 May 2021 03:25:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=A69Uo805;
 spf=pass (domain: gmail.com, ip: 209.85.218.47, mailfrom: fntoth@gmail.com)
Received: by mail-ej1-f47.google.com with SMTP id jt22so1577626ejb.7
        for <yocto@lists.yoctoproject.org>; Wed, 26 May 2021 03:25:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=0BKTnzthJfCUoW2liWHRCxRDTVsI1WcIv+ew58BPNrw=;
        b=A69Uo805q/6YqBjmxIP5tXowcMQuW5NL1Df6e86a1ildKcy5uNWhn9aM7mDtSQj+Yr
         9XZzgSBCtfTho0n/oHwl1KsxLqlCXH2IbosiPQ7bVbLGPziGr9dJVG1o0/upbd4Mekg4
         bjq9Cx3rSnEBynHKiwE8vS6Wi1B/26oDyJttLWcuOJ6/Uk989AfsxDT6YQPEc8sqdRAe
         EUPDAkNF7t/v4KzuWMigmdz0SBknXTkRVjFmbGVMDbiJiK7MQjKjONyhbtmNV4Qh98ol
         euJHGgO7IWWuZ8+0LyItI+TBiM/kBXWWa15ngqsrHG/BtQk/bmHJAZtnqbgm0jwM4WbJ
         G4mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=0BKTnzthJfCUoW2liWHRCxRDTVsI1WcIv+ew58BPNrw=;
        b=BeEPQmiuJXzGDF4XAaUEBilhptriuyfj300VHFno8NtOKAEZA2biPpbYnWF4wBRVnh
         1HPsllBc99yYEjD0DxoQb8NDTPxTwjQOXiIZ3FJ/s6PAInTBE7nyVkYDPlEkIgOp6O2R
         yxznvcQ4G118y7xjKiuHb8W2F6KojCre7zZ/IzqHj6ATqkQ5A9YQc1bfWD1tMG+2F02e
         QWUhqAFtjaiWY50+7l126ZmLtPC058ms+dODmOyRIRCYQr2CIcQ6CXVwfnIW4zm9J6rR
         ByQyQmLvwzufgaoW2Dtku3fmpvkdbDxPpcefBctGjhE43vqQ3NTc2UVSyFiS4qvnAkW3
         /oew==
X-Gm-Message-State: AOAM530D7kDmVwph4ZeCzx95jTX4dS1O8148+4RcyEr1V1ZwI5uOfOQj
	xGcpIQjiYWGltl7llVRB3W8=
X-Google-Smtp-Source: ABdhPJxsbXHQ7zaK0AJ1lvuXcyVI8vdPY5lxzGG1fO5ySxqOpigZhE/04xevEloQq6cork2fsHOP9Q==
X-Received: by 2002:a17:907:1c20:: with SMTP id nc32mr32902774ejc.105.1622024741109;
        Wed, 26 May 2021 03:25:41 -0700 (PDT)
Return-Path: <fntoth@gmail.com>
Received: from ?IPv6:2001:981:6fec:1:acf5:2d0d:ebdf:dc02? ([2001:981:6fec:1:acf5:2d0d:ebdf:dc02])
        by smtp.gmail.com with ESMTPSA id s2sm12476595edu.89.2021.05.26.03.25.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 May 2021 03:25:40 -0700 (PDT)
Subject: Re: Gatesgarth-24.0.4 image-live fails
To: Guillaume Champagne <champagne.guillaume.c@gmail.com>
Cc: yocto@lists.yoctoproject.org,
 Richard Purdie <richard.purdie@linuxfoundation.org>
References: <2b1a204e-3c12-a955-6850-f5c2710ce529@gmail.com>
 <56b76313-e6b2-591f-5b1f-020acd40afa5@gmail.com>
 <6c648923-6b6c-af2c-8cb5-f40ebd9cd0db@gmail.com>
 <CAHSN6OfgL-aBYM-oB=WEJkohsV0xehaH+YJzv=mjv8PTw99Lkg@mail.gmail.com>
 <53a089e6-8c8e-4794-ca19-9d5103bb101a@gmail.com>
 <CAHSN6OeuxLdXds5w07sBG9-DKL+KxWOjrCpXGeztyvuK2qVDdQ@mail.gmail.com>
From: "Ferry Toth" <fntoth@gmail.com>
Message-ID: <73df6208-d784-8a8a-5246-8e3da969f3dc@gmail.com>
Date: Wed, 26 May 2021 12:25:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <CAHSN6OeuxLdXds5w07sBG9-DKL+KxWOjrCpXGeztyvuK2qVDdQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US


Op 25-05-2021 om 22:13 schreef Guillaume Champagne:
> Le mar. 25 mai 2021 à 12:25, Ferry Toth <fntoth@gmail.com> a écrit :
>> Hi
>>
>> Op 25-05-2021 om 15:09 schreef Guillaume Champagne:
>>> Le mar. 25 mai 2021 à 08:19, Ferry Toth <fntoth@gmail.com> a écrit :
>>>> Adding Richard and Guillaume.
>>> Hi,
>>>
>>> it seems seems edison-image.bb sets ROOTFS as empty:
>>> http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel-edison/tree/meta-intel-edison-distro/recipes-core/images/edison-image.bb#n17
>>>
>>> so do_bootimg won't depend on ${PN}:do_image:${LIVE_ROOTFS_TYPE}. That
>>> dependency would, I think, create the folder you mentioned.
>>>
>>> Maybe the patch wrongly assumes that if ROOTFS is empty, we shouldn't
>>> add a dependency on "do_image.${LIVE_ROOTFS_TYPE}" at all since It
>>> looks like edison-image.bb still depends on
>>> ${PN}:do_image.${LIVE_ROOTFS_TYPE} even though ROOTFS is empty. I
>>> haven't looked too much into why edison-image works this way.
>> It may well be a bug in meta-intel-edison. Although you are looking at
>> the very, very old code.
>>
>> So what we have now is:
>> https://github.com/edison-fw/meta-intel-edison/blob/master/meta-intel-edison-distro/recipes-core/images/edison-image-minimal.bb
>>
>> this generates a dir edison-image-1.0/hddimg/ containing: bzImage
>> initrd  ldlinux.sys  libcom32.c32  libutil.c32  syslinux.cfg  vesamenu.c32
>>
>> and this should generate in dir deploy-edison-image-image-complete/ a
>> file called edison-image-edison.hddimg
>>
>> which it does without the patch. So would would I set rootfs to to make
>> it work?
> That's my bad. The initial patch is not right. I could reproduce your
> issue on my side. I think ROOTFS should be able to remain empty if
> your image does all its work in its initd/initramfs.
>
> I think IMGDEPLOYDIR isn't created in time because the patch removes
> the "depends" on "do_image -> do_rootfs" , which would create
> IMGDEPLOYDIR via do_rootfs[cleandirs] before do_bootimg runs:
> https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/image.bbclass?h=gatesgarth#n252
>
> One way I could think of to fix:
>
> diff --git a/meta/classes/image-live.bbclass b/meta/classes/image-live.bbclass
> index e9eba1fc4b..eb92573488 100644
> --- a/meta/classes/image-live.bbclass
> +++ b/meta/classes/image-live.bbclass
> @@ -260,5 +260,6 @@ python do_bootimg() {
>   }
>   do_bootimg[subimages] = "hddimg iso"
>   do_bootimg[imgsuffix] = "."
> +do_bootimg[dirs] = "${IMGDEPLOYDIR} ${TOPDIR}"
>
>
> _AND_ to add to my image recipe:
> BUILD_REPRODUCIBLE_BINARIES = "0" # otherwise image.bbclass looks for
> a the image's rootfs
> deltask rootfs
>
> I am not sure this is the right solution. There might be a way to
> avoid adding a "deltask" in my recipe. And image.bbclass could
> probably avoid its BUILD_REPRODUCIBLE_BINARIES check on the rootfs if
> ROOTFS is empty.
> Maybe someone else has a better solution?
Thanks. For some reason I don't see your message appearing on ML.
>> BTW It also generates a directory iso and associated iso image. Never
>> understood why, we also set NOISO = "1"
> NOISO is valid in Yocto releases before 2.6 (thud):
> https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#migration-2.6-miscellaneous-changes
> Setting IMAGE_FSTYPES = "hddimg" should be the new equivalent of what
> edison-image-minimal.bb does with NOISO="1" and NOHDD="0"
>
> I think setting INITRD_IMAGE_LIVE to core-image-minimal-initramfs
> could also replace the custom post process command "install_initrd".
I'll look into that.
>>>> Op 24-05-2021 om 14:39 schreef Ferry Toth:
>>>>> Wow, that got messed up, let me retry.
>>>>>
>>>>> Op 24-05-2021 om 14:19 schreef Ferry Toth:
>>>>>> Accidentally I refreshed poky and rebuilt. The image-live
>>>>>> (do_bootimg) fails when building hddimg with the following:
>>>>>>
>>>>> ERROR: edison-image-1.0-r0 do_bootimg: Error executing a python
>>>>> function in exec_python_func() autogenerated:
>>>>>
>>>>> The stack trace of python calls that resulted in this
>>>>> exception/failure was:
>>>>> File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
>>>>>        0001:
>>>>>    *** 0002:do_bootimg(d)
>>>>>        0003:
>>>>> File:
>>>>> '/home/ferry/tmp/edison-intel/my/edison-morty/out/linux64/poky/meta/classes/image-live.bbclass',
>>>>> lineno: 258, function: do_bootimg
>>>>>        0254:    if d.getVar("PCBIOS") == "1":
>>>>>        0255:        bb.build.exec_func('build_syslinux_cfg', d)
>>>>>        0256:    if d.getVar("EFI") == "1":
>>>>>        0257:        bb.build.exec_func('build_efi_cfg', d)
>>>>>    *** 0258:    bb.build.exec_func('build_hddimg', d)
>>>>>        0259:    bb.build.exec_func('build_iso', d)
>>>>>        0260:    bb.build.exec_func('create_symlinks', d)
>>>>>        0261:}
>>>>>        0262:do_bootimg[subimages] = "hddimg iso"
>>>>> File:
>>>>> '/home/ferry/tmp/edison-intel/my/edison-morty/out/linux64/poky/bitbake/lib/bb/build.py',
>>>>> lineno: 256, function: exec_func
>>>>>        0252:    with bb.utils.fileslocked(lockfiles):
>>>>>        0253:        if ispython:
>>>>>        0254:            exec_func_python(func, d, runfile, cwd=adir)
>>>>>        0255:        else:
>>>>>    *** 0256:            exec_func_shell(func, d, runfile, cwd=adir)
>>>>>        0257:
>>>>>        0258:    try:
>>>>>        0259:        curcwd = os.getcwd()
>>>>>        0260:    except:
>>>>> File:
>>>>> '/home/ferry/tmp/edison-intel/my/edison-morty/out/linux64/poky/bitbake/lib/bb/build.py',
>>>>> lineno: 503, function: exec_func_shell
>>>>>        0499:    with open(fifopath, 'r+b', buffering=0) as fifo:
>>>>>        0500:        try:
>>>>>        0501:            bb.debug(2, "Executing shell function %s" % func)
>>>>>        0502:            with open(os.devnull, 'r+') as stdin, logfile:
>>>>>    *** 0503:                bb.process.run(cmd, shell=False,
>>>>> stdin=stdin, log=logfile, extrafiles=[(fifo,readfifo)])
>>>>>        0504:        except bb.process.ExecutionError as exe:
>>>>>        0505:            # Find the backtrace that the shell trap generated
>>>>>        0506:            backtrace_marker_regex = re.compile(r"WARNING:
>>>>> Backtrace \(BB generated script\)")
>>>>>        0507:            stdout_lines = (exe.stdout or "").split("\n")
>>>>> File:
>>>>> '/home/ferry/tmp/edison-intel/my/edison-morty/out/linux64/poky/bitbake/lib/bb/process.py',
>>>>> lineno: 184, function: run
>>>>>        0180:        if not stderr is None:
>>>>>        0181:            stderr = stderr.decode("utf-8")
>>>>>        0182:
>>>>>        0183:    if pipe.returncode != 0:
>>>>>    *** 0184:        raise ExecutionError(cmd, pipe.returncode, stdout,
>>>>> stderr)
>>>>>        0185:    return stdout, stderr
>>>>> Exception: bb.process.ExecutionError: Execution of
>>>>> '/home/ferry/tmp/edison-intel/my/edison-morty/out/linux64/build/tmp/work/edison-poky-linux/edison-image/1.0-r0/temp/run.build_hddimg.256530'
>>>>> failed with exit code 1:
>>>>> mkdosfs: unable to create
>>>>> /home/ferry/tmp/edison-intel/my/edison-morty/out/linux64/build/tmp/work/edison-poky-linux/edison-image/1.0-r0/deploy-edison-image-image-complete/edison-image-edison-20210524113748.hddimg
>>>>> mkfs.fat 4.1 (2017-01-24)
>>>>> WARNING: exit code 1 from a shell command.
>>>>>
>>>>>> The reason is that the directory deploy-edison-image-image-complete
>>>>>> doesn't exist at the time mkdosfs want to write. However after
>>>>>> completing the remainder of image live the directory does exists.
>>>>>> Consequently, running bitbake a second time image-live succeeds.
>>>>>>
>>>>>> I've tried various thing including expressly creating the directory
>>>>>> before mkdosfs, but nothing worked. It seems I don't understand how
>>>>>> it is supposed to work in the first place.
>>>>>>
>>>>>> However, I managed to trace back the issue to this commit 91e4a1c1
>>>>>> "image-live.bbclass: optional depends when ROOTFS empty".
>>>>>>
>>>>>> Reverting this resolves the issue.
>>>>>>
>>>>>> Any idea what could be wrong?
>>>>>>
