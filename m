Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
 by mx.groups.io with SMTP id smtpd.web11.9348.1604915732385828512
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Nov 2020 01:55:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=aKQt/yzB;
 spf=pass (domain: konsulko.com, ip: 209.85.210.48, mailfrom: paul.barker@konsulko.com)
Received: by mail-ot1-f48.google.com with SMTP id i18so8370425ots.0
        for <yocto@lists.yoctoproject.org>; Mon, 09 Nov 2020 01:55:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=5TfxoUC6aphUcSxjNIO0zblDJafYza0Bl03g2OmenRA=;
        b=aKQt/yzBE93JVH5GYtOwk197vRs7zoERk5iWcsmiArYwbrF1z0o0Zf9976z8V3xuCL
         8W7c9yibLTDccHcsWd4zuaHfPpP76qmV1DjgIEFttLT9ftZuH+wSr9ut49e+x4PI+DUI
         o6N0frYvu13drpeE0OVwxR1t4U7zGAYsKLUsk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=5TfxoUC6aphUcSxjNIO0zblDJafYza0Bl03g2OmenRA=;
        b=PC64Cn4Rw5qcdo3rktLrVy7f+nQfYd0K+63qY4TYdzQ2tbNqDIY8HJMB/yqz1fZUyD
         p7qKC7CdLdP4VkADmNzxzHqCvqqr+vCuqb706VhvSuYeAYHP7FsTZXJn/t/fbM3OOZyc
         Ug+XeZ429WCgpVUW7+9sU8MVJyUEm+Qgczi7BlkKo/hhgk3rtRBdX2FdFQvYISYPXtlp
         noR0qLWpi9Owl3VVSdaLpbO/yHqngbzjX9tpuN15q7wbrnJEE+lnGYoZAOtkEnSJtjGM
         gs7Z6kgeppu/JC305/P/NCkIWY1cQxD6adzv0noRIFiq2v0yuPLgt+kerTelIgPCc3Kp
         2y0w==
X-Gm-Message-State: AOAM532fZZQIGv9z+bGn9dlfDwLsnE9eORvJqWe+mHBIWuYXT7Z1KHdL
	pKKHHvLzkGE09BNzHYSO7EFnWpFTCZcLawPsoDjuPA==
X-Google-Smtp-Source: ABdhPJxMK/+xkQL6WbvtX8wv9G7BtRM9KXcMroEnZLxoNzW3JZuA8DVm2baLSBpQ4TfUkiqRRyy7NgiVkvWoyiWThj4=
X-Received: by 2002:a05:6830:831:: with SMTP id t17mr10151093ots.92.1604915731672;
 Mon, 09 Nov 2020 01:55:31 -0800 (PST)
MIME-Version: 1.0
References: <CAJw=dJ9pQ+Xqs-UajoUcCHGNJANmaXagCW0ePx3YxBfq5SRyUw@mail.gmail.com>
 <CAM9ZRVuZSozpD8X4nOCkGeNEvOTmR170kU1cQMd+EhuWPN3+7g@mail.gmail.com> <CAJw=dJ9Gc75mA_AAxWsAYsTpvhkrxzdU0aw+G64Rwd=pdRXMLQ@mail.gmail.com>
In-Reply-To: <CAJw=dJ9Gc75mA_AAxWsAYsTpvhkrxzdU0aw+G64Rwd=pdRXMLQ@mail.gmail.com>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Mon, 9 Nov 2020 09:55:21 +0000
Message-ID: <CAM9ZRVtbZra=TcsCsirxsqFnt3qepa4SGpWVM_RFmcs-j8EaiQ@mail.gmail.com>
Subject: Re: [yocto] Dependencies error while compiling .
To: NIKHIL PATIL <nikhilvp29@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 9 Nov 2020 at 09:16, NIKHIL PATIL <nikhilvp29@gmail.com> wrote:
>
> Hi,
>      when i am compiling package using
>      ->  bitbake ostree-initrd

We're missing important output here which would show the layers,
versions and key config values.

>
>         ERROR: ostree-initrd-3-r0 do_install: Function failed: do_install=
 (log file is located at /data/nikhil/inti_dmsv/yocto_build/build/tmp/work/=
all-poky-linux/ostree-initrd/3-r0/temp/log.do_install.7163)
> ERROR: Logfile of failure stored in: /data/nikhil/inti_dmsv/yocto_build/b=
uild/tmp/work/all-poky-linux/ostree-initrd/3-r0/temp/log.do_install.7163
> Log data follows:
> | DEBUG: Executing python function extend_recipe_sysroot
> | NOTE: Direct dependencies are ['virtual:native:/data/nikhil/inti_dmsv/y=
octo_build/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate_sysroot',=
 '/data/nikhil/inti_dmsv/yocto_build/meta/recipes-devtools/quilt/quilt-nati=
ve_0.65.bb:do_populate_sysroot']
> | NOTE: Installed into sysroot: []
> | NOTE: Skipping as already exists in sysroot: ['pseudo-native', 'quilt-n=
ative']
> | DEBUG: Python function extend_recipe_sysroot finished
> | DEBUG: Executing shell function do_install
> | install: cannot stat '/data/nikhil/inti_dmsv/yocto_build/build/tmp/work=
/all-poky-linux/ostree-initrd/3-r0/init.sh': No such file or directory
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_install (log file is located at /data/nikhil=
/inti_dmsv/yocto_build/build/tmp/work/all-poky-linux/ostree-initrd/3-r0/tem=
p/log.do_install.7163)
> ERROR: Task (/data/nikhil/inti_dmsv/yocto_build/meta-updater/recipes-sota=
/ostree-initrd/ostree-initrd.bb:do_install) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 288 tasks of which 287 didn't need to be r=
erun and 1 failed.
>
> Summary: 1 task failed:
>   /data/nikhil/inti_dmsv/yocto_build/meta-updater/recipes-sota/ostree-ini=
trd/ostree-initrd.bb:do_install
> Summary: There were 3 WARNING messages shown.
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
> On Mon, Nov 9, 2020 at 2:39 PM Paul Barker <pbarker@konsulko.com> wrote:
>>
>> On Mon, 9 Nov 2020 at 05:12, NIKHIL PATIL <nikhilvp29@gmail.com> wrote:
>> >
>> > Hi team ,
>> >       while compiling a package i am getting following error :-
>> >
>> > Log data follows:
>> > | DEBUG: Executing python function extend_recipe_sysroot
>> > | NOTE: Direct dependencies are ['virtual:native:/data/nikhil/inti_dms=
v/yocto_build/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate_sysroo=
t', '/data/nikhil/inti_dmsv/yocto_build/meta/recipes-devtools/quilt/quilt-n=
ative_0.65.bb:do_populate_sysroot']
>> > | NOTE: Installed into sysroot: []
>> > | NOTE: Skipping as already exists in sysroot: ['pseudo-native', 'quil=
t-native']
>> > | DEBUG: Python function extend_recipe_sysroot finished
>> > | DEBUG: Executing shell function do_install
>> >
>> > if anyone knows , please help.
>>
>> None of that output looks like an error to me. Could you share some
>> more context? E.g. the bitbake command you ran, the initial output
>> showing the layers, versions and key config values, what expected
>> result did you not get?
>>
>> Thanks,
>>
>> --
>> Paul Barker
>> Konsulko Group



--=20
Paul Barker
Konsulko Group
