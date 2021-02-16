Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
 by mx.groups.io with SMTP id smtpd.web12.11791.1613497701334620203
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Feb 2021 09:48:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=R1HPQr9n;
 spf=pass (domain: gmail.com, ip: 209.85.166.175, mailfrom: uppadaravi2511@gmail.com)
Received: by mail-il1-f175.google.com with SMTP id w1so8955830ilm.12
        for <yocto@lists.yoctoproject.org>; Tue, 16 Feb 2021 09:48:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lycpgJrVpJ/IYbjDVSGphKm4ITshP2qh7xXGgG7ZO7E=;
        b=R1HPQr9nzJt2+ta004HnLOODCmxT+UDjlyxmYZOFK0qC7si4PB8VcisxQfFBqJCnS5
         5ncFJ5RO0OEmcEa9cffeyvCfm1XkfI3sGEZObSQC6h/zf6I4RwGUzD7s/AojG/1Uxszu
         mAKLF8ejLfOygARX/j+JSLsKt2LQN9etYFCzoXvdj6wkptw2jH+ofiCk8oltBp0w6KqD
         1d5CWf+TVHTvC4QJJvdUNiCO8U/TWvysRJjk0fEbRCKHgXtWJ5f6Cnj71e+KIC9C3ka5
         L2Py+CmZLAZpjhZnWd8YiPPw8Cwh0NhbvnPy9dFIhiKiCnfdjeyrVEnP3rJLxr6d/10I
         cR5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lycpgJrVpJ/IYbjDVSGphKm4ITshP2qh7xXGgG7ZO7E=;
        b=NQ0BuNF7K+kFNlFok1ybTNrP5Q4o1GCKPuR8X80tNqgWFK8HhW+fmPGRf9MZCplKt6
         Is+4JihKZqmEEtGE50sZt0v6J4ACs47tVpCcgmm1jWEVAd0KVaU4GRnTW78ydezPbIYf
         6wKsXdSWAliodPiIDM9rD/gL2tiMkevkcilKmWZ/EAwkR67FqZvqvyraJ1rOv4vY64zV
         v3quTZvJqiDHqvsHi3dWeT0YWhqAJ9xYO/RKh+sF6VchtghwTP3r7xOgwR6qSRZ6mphw
         8J0GpG44U6BIVpUNUS5ny7SRjKPVr0L/VQmCA3cahXZoL8tWKPjWsBS9LInMdgzvUB/U
         7QCA==
X-Gm-Message-State: AOAM533JRyu8u/kJruw330XR4I63OIvjxmzn4eDhhfVTS2XXAsX0LcMV
	qeZkkUK+GXATuS24spjT+pt/nf2uedxd7oh7f6M=
X-Google-Smtp-Source: ABdhPJwvj5VsSoIAat3qWYwbuTXqHNYc2JiGiKs4cXR2XahvFg8y2I6Nym1q8PEvHxeiWJoC02sb7BceHxSVvLjvJLo=
X-Received: by 2002:a05:6e02:1d09:: with SMTP id i9mr17901990ila.207.1613497700585;
 Tue, 16 Feb 2021 09:48:20 -0800 (PST)
MIME-Version: 1.0
References: <166309ED54D39BDA.14473@lists.yoctoproject.org>
In-Reply-To: <166309ED54D39BDA.14473@lists.yoctoproject.org>
From: "U RAVI KUMAR" <uppadaravi2511@gmail.com>
Date: Tue, 16 Feb 2021 23:18:09 +0530
Message-ID: <CACX=-dXKrvx1R_VebcaGNd9W5Yp2XhNZp9rxG_0rS44uJ=qo8g@mail.gmail.com>
Subject: Re: [yocto] Regarding Mender integration
To: U RAVI KUMAR <uppadaravi2511@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000004a14f405bb77b518"

--0000000000004a14f405bb77b518
Content-Type: text/plain; charset="UTF-8"

hello everyone,

I have an issue while integrating the mender in yocto.
getting  error while adding  INHERIT +=" mender-full" in the local.conf
file .Can anyone pls help me out in solving this issue.

On Fri, Feb 12, 2021 at 9:03 PM U RAVI KUMAR via lists.yoctoproject.org
<uppadaravi2511=gmail.com@lists.yoctoproject.org> wrote:

> Hello folks,
>
> I have some issues while integrating the mender on the yocto project.I
> have included meta-mener-core,meta-mender-raspberrypi layers.And iam
> getting the following error:
>
> ERROR: u-boot-1_2020.07-r0 do_patch: Command Error: 'quilt --quiltrc
> /home/ravi_uppada/work/vm/sato/poky/build/tmp/work/raspberrypi4_64-poky-linux/u-boot/1_2020.07-r0/recipe-sysroot-native/etc/quiltrc
> push' exited with 0  Output:
> Applying patch 0001-configs-rpi-enable-mender-requirements.patch
> patching file configs/rpi_0_w_defconfig
> Hunk #1 FAILED at 19.
> 1 out of 2 hunks FAILED -- rejects in file configs/rpi_0_w_defconfig
> patching file configs/rpi_2_defconfig
> Hunk #1 FAILED at 19.
> 1 out of 2 hunks FAILED -- rejects in file configs/rpi_2_defconfig
> patching file configs/rpi_3_32b_defconfig
> Hunk #1 FAILED at 20.
> 1 out of 2 hunks FAILED -- rejects in file configs/rpi_3_32b_defconfig
> patching file configs/rpi_3_b_plus_defconfig
> Hunk #1 FAILED at 20.
> 1 out of 2 hunks FAILED -- rejects in file configs/rpi_3_b_plus_defconfig
> patching file configs/rpi_3_defconfig
> Hunk #1 FAILED at 20.
> 1 out of 2 hunks FAILED -- rejects in file configs/rpi_3_defconfig
> patching file configs/rpi_4_32b_defconfig
> Hunk #1 FAILED at 16.
> Hunk #2 succeeded at 45 (offset 12 lines).
> 1 out of 2 hunks FAILED -- rejects in file configs/rpi_4_32b_defconfig
> patching file configs/rpi_4_defconfig
> Hunk #1 FAILED at 16.
> Hunk #2 succeeded at 45 (offset 12 lines).
> 1 out of 2 hunks FAILED -- rejects in file configs/rpi_4_defconfig
> patching file configs/rpi_arm64_defconfig
> Hunk #1 FAILED at 17.
> Hunk #2 succeeded at 43 (offset 1 line).
> 1 out of 2 hunks FAILED -- rejects in file configs/rpi_arm64_defconfig
> patching file configs/rpi_defconfig
> Hunk #1 FAILED at 19.
> 1 out of 2 hunks FAILED -- rejects in file configs/rpi_defconfig
> patching file env/Kconfig
> Hunk #1 succeeded at 55 (offset 6 lines).
> patching file include/configs/rpi.h
> Hunk #1 succeeded at 97 (offset 17 lines).
> Patch 0001-configs-rpi-enable-mender-requirements.patch does not apply
> (enforce with -f)
> ERROR: Logfile of failure stored in:
> /home/ravi_uppada/work/vm/sato/poky/build/tmp/work/raspberrypi4_64-poky-linux/u-boot/1_2020.07-r0/temp/log.do_patch.5091
> ERROR: Task
> (/home/ravi_uppada/work/vm/sato/poky/meta/recipes-bsp/u-boot/u-boot_2020.07.bb:do_patch)
> failed with exit code '1'
>
>
>
> I have followed this link to enable u-boot :
> https://docs.mender.io/system-updates-yocto-project/board-integration/bootloader-support/u-boot
> .
> Have added in the path :
> /DIRECTORY_BUILD/sato/poky/layers/meta-mender/meta-mender-core/recipes-bsp/u-boot
>  Have added the lines in this file : u-boot_%.bbappend.
>
> Please help me out this.I have been trying this from very long.Please
> address this issue.
>
> Thanks,
> RAVI_UPPADA
>
> 
>
>

--0000000000004a14f405bb77b518
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>hello everyone,</div><div><br></div><div>I have an is=
sue while integrating the mender in yocto.</div><div>getting=C2=A0 error wh=
ile adding=C2=A0 INHERIT +=3D&quot; mender-full&quot; in the local.conf fil=
e .Can anyone pls help me out in solving this issue.<br></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 1=
2, 2021 at 9:03 PM U RAVI KUMAR via <a href=3D"http://lists.yoctoproject.or=
g">lists.yoctoproject.org</a> &lt;uppadaravi2511=3D<a href=3D"mailto:gmail.=
com@lists.yoctoproject.org">gmail.com@lists.yoctoproject.org</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
"><div>Hello folks,</div><div><br></div><div>I have some issues while integ=
rating the mender on the yocto project.I have included meta-mener-core,meta=
-mender-raspberrypi layers.And iam getting the following error:</div><div><=
br></div><div>ERROR: u-boot-1_2020.07-r0 do_patch: Command Error: &#39;quil=
t --quiltrc /home/ravi_uppada/work/vm/sato/poky/build/tmp/work/raspberrypi4=
_64-poky-linux/u-boot/1_2020.07-r0/recipe-sysroot-native/etc/quiltrc push&#=
39; exited with 0 =C2=A0Output:<br>Applying patch 0001-configs-rpi-enable-m=
ender-requirements.patch<br>patching file configs/rpi_0_w_defconfig<br>Hunk=
 #1 FAILED at 19.<br>1 out of 2 hunks FAILED -- rejects in file configs/rpi=
_0_w_defconfig<br>patching file configs/rpi_2_defconfig<br>Hunk #1 FAILED a=
t 19.<br>1 out of 2 hunks FAILED -- rejects in file configs/rpi_2_defconfig=
<br>patching file configs/rpi_3_32b_defconfig<br>Hunk #1 FAILED at 20.<br>1=
 out of 2 hunks FAILED -- rejects in file configs/rpi_3_32b_defconfig<br>pa=
tching file configs/rpi_3_b_plus_defconfig<br>Hunk #1 FAILED at 20.<br>1 ou=
t of 2 hunks FAILED -- rejects in file configs/rpi_3_b_plus_defconfig<br>pa=
tching file configs/rpi_3_defconfig<br>Hunk #1 FAILED at 20.<br>1 out of 2 =
hunks FAILED -- rejects in file configs/rpi_3_defconfig<br>patching file co=
nfigs/rpi_4_32b_defconfig<br>Hunk #1 FAILED at 16.<br>Hunk #2 succeeded at =
45 (offset 12 lines).<br>1 out of 2 hunks FAILED -- rejects in file configs=
/rpi_4_32b_defconfig<br>patching file configs/rpi_4_defconfig<br>Hunk #1 FA=
ILED at 16.<br>Hunk #2 succeeded at 45 (offset 12 lines).<br>1 out of 2 hun=
ks FAILED -- rejects in file configs/rpi_4_defconfig<br>patching file confi=
gs/rpi_arm64_defconfig<br>Hunk #1 FAILED at 17.<br>Hunk #2 succeeded at 43 =
(offset 1 line).<br>1 out of 2 hunks FAILED -- rejects in file configs/rpi_=
arm64_defconfig<br>patching file configs/rpi_defconfig<br>Hunk #1 FAILED at=
 19.<br>1 out of 2 hunks FAILED -- rejects in file configs/rpi_defconfig<br=
>patching file env/Kconfig<br>Hunk #1 succeeded at 55 (offset 6 lines).<br>=
patching file include/configs/rpi.h<br>Hunk #1 succeeded at 97 (offset 17 l=
ines).<br>Patch 0001-configs-rpi-enable-mender-requirements.patch does not =
apply (enforce with -f)<br>ERROR: Logfile of failure stored in: /home/ravi_=
uppada/work/vm/sato/poky/build/tmp/work/raspberrypi4_64-poky-linux/u-boot/1=
_2020.07-r0/temp/log.do_patch.5091<br>ERROR: Task (/home/ravi_uppada/work/v=
m/sato/poky/meta/recipes-bsp/u-boot/u-boot_2020.07.bb:do_patch) failed with=
 exit code &#39;1&#39;</div><div><br></div><div><br></div><div><br></div><d=
iv>I have followed this link to enable u-boot : <a href=3D"https://docs.men=
der.io/system-updates-yocto-project/board-integration/bootloader-support/u-=
boot" target=3D"_blank">https://docs.mender.io/system-updates-yocto-project=
/board-integration/bootloader-support/u-boot</a>.</div><div>Have added in t=
he path : /DIRECTORY_BUILD/sato/poky/layers/meta-mender/meta-mender-core/re=
cipes-bsp/u-boot</div><div>=C2=A0Have added the lines in this file : u-boot=
_%.bbappend.</div><div><br></div><div>Please help me out this.I have been t=
rying this from very long.Please address this issue.</div><div><br></div><d=
iv>Thanks,</div><div>RAVI_UPPADA<br></div></div>
<br>
<br>
<br>
</blockquote></div>

--0000000000004a14f405bb77b518--
