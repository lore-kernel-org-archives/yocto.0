Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com [209.85.210.65])
 by mx.groups.io with SMTP id smtpd.web12.8383.1584703098317048076
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Mar 2020 04:18:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=J8nK41Xh;
 spf=pass (domain: konsulko.com, ip: 209.85.210.65, mailfrom: paul.barker@konsulko.com)
Received: by mail-ot1-f65.google.com with SMTP id r2so5578516otn.6
        for <yocto@lists.yoctoproject.org>; Fri, 20 Mar 2020 04:18:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=4/vJZhoEgmKhnBhBL5yRCCQpQWXeQT+efJZMETgleZU=;
        b=J8nK41Xh1U09IZLRsC9Srx/dLQDl4NhDPp+u+4iys546vjK9AROGfg6bGpwn7e4hEQ
         k+3fj1wnmobkt4imfWmLJEbfZNXeSnfd1/zCl6UX916H4TByYfUYEQR7rr31UHac01q1
         6NjMzUuOTtjBQkLXONcM/5/VTKr/oB8oSXhbY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=4/vJZhoEgmKhnBhBL5yRCCQpQWXeQT+efJZMETgleZU=;
        b=WFOtJNQp+/aT0+UPnKXIYRfPUolw0XOfN2Zh5P1+1L503/mmP4jgoG0MHukt+BruU+
         ouoijWonUa2VR2KfX7TPZc9fn0T6w749/1BpAqdvPq+0Wzx71DtUmFQ9gvGXvNO8kFwW
         yBisUbnLY9x3WqzqEcvZckYCas4uZwT+BcX4FHg914EMovFXgRRSAn7811gHkEmv9TZ7
         9hWIMMVJHeVGCgr30c7I5KUvy7vMk5dpmblAs5GwETrwV49itdNqypJPLSCuEpqQnAk5
         N0PJdhLeMOUTBNCjq3TGRCU4QVa6WBWw6suz2G96ZUxm2rPldABMbz6T23l0WHMKfDLb
         rufQ==
X-Gm-Message-State: ANhLgQ3HRqxvuS+anRyCr0K7/VJRn058c1KtI3/ACV2ZWrs+7hivr2JJ
	5bGpv2oL0gyMjyYbTCBGCx82AmKlN0O8Bh2j6vLuyw==
X-Google-Smtp-Source: ADFU+vvjWIo/CvgF0Zq2YiB/IQk6f087fPkfzt0bqzBNQUY2KY0JdQ/snynDOpmOJQOH8ECLhur+rY5U9Ual8KfXCUI=
X-Received: by 2002:a9d:74cf:: with SMTP id a15mr6449908otl.258.1584703097653;
 Fri, 20 Mar 2020 04:18:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAAV2bM0jA_0QbKaRPmWMXss+Kt5kv_KbLvLHaCRKpY9PeVxM4w@mail.gmail.com>
In-Reply-To: <CAAV2bM0jA_0QbKaRPmWMXss+Kt5kv_KbLvLHaCRKpY9PeVxM4w@mail.gmail.com>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Fri, 20 Mar 2020 11:18:06 +0000
Message-ID: <CAM9ZRVsQ=76WUDkWpU4ssSVTd-F4cR+G3hzzop3TXH9ScdQ8vA@mail.gmail.com>
Subject: Re: [yocto] Patching submodules
To: Emily <easmith5555@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 20 Mar 2020 at 04:10, Emily <easmith5555@gmail.com> wrote:
>
> Hi all -
>
> I have a recipe that I'd like to patch - the source is in a repo which ha=
s a submodule, and the patch occurs in the submodule. Is there a way I can =
apply this patch without getting an error? I do kind of understand why it's=
 a problem - the patch is changing the pointer of the submodule to a commit=
 which doesn't actually exist. Do I need to build the submodule as a separa=
te recipe and patch it separately maybe?
>
> I used devtool for the patch and if I don't run the devtool reset command=
, then everything builds, but I think this is just because the workspace cr=
eated by devtool was added as a layer, which probably isn't a good long ter=
m solution.
>
> The error I get (pasted below) says I can "enforce with -f" but I'm not s=
ure where that option goes exactly. Thanks for the help!
>
> Emily
>
> Error on build:
> ERROR: opc-ua-server-gfex-1.0+gitAUTOINC+921c563309-r0 do_patch: Command =
Error: 'quilt --quiltrc /local/d6/easmith5/rocko_bitbake/poky/build/tmp/wor=
k/aarch64-poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe=
-sysroot-native/etc/quiltrc push' exited with 0  Output:
> Applying patch 0001-Update-Poverty-to-point-to-boost-python3.patch
> File Poverty is not a regular file -- refusing to patch
> 1 out of 1 hunk ignored -- rejects in file
> Patch 0001-Update-Poverty-to-point-to-boost-python3.patch does not apply =
(enforce with -f)
> ERROR: opc-ua-server-gfex-1.0+gitAUTOINC+921c563309-r0 do_patch: Function=
 failed: patch_do_patch

The issue appears to be that patches are applied using quilt which
doesn't understand a patch like this. I don't know of a good solution
to this other than making a new commit in the top level repository and
updating SRCREV.

Perhaps it's better to carry the diff within the submodule as a patch
- so you leave the submodule commit pointer where it is and instead
include all the necessary changes to the submodule in the patch. Would
that work for you?
