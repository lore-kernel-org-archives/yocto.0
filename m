Received: from mail-io1-f50.google.com (mail-io1-f50.google.com [209.85.166.50])
 by mx.groups.io with SMTP id smtpd.web12.5309.1613144006203862291
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Feb 2021 07:33:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=TlNEq1f/;
 spf=pass (domain: gmail.com, ip: 209.85.166.50, mailfrom: uppadaravi2511@gmail.com)
Received: by mail-io1-f50.google.com with SMTP id m17so9671717ioy.4
        for <yocto@lists.yoctoproject.org>; Fri, 12 Feb 2021 07:33:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=QlOqikdPXZu3vYurVq0t5Dzp53+eRLNqKfJh7jPLDu4=;
        b=TlNEq1f/rzbYwq4SsL0kRAPmaS87ga2r0/XbCN+bA5DV0nWivzjTNlJBVKplmISYsL
         xg/kcbnX/3ji8ZzT/hGk0blQVB5b6tEfSKfesvfzmbj1t+NxDqDe9eAdKkO+g1dl/wrH
         PQtkJkaa0UwwoPd9/TDkaQgNreDlcf6jnAzyQEkFLcXpRWQOPrIxZfv9SsVk0YnwhO/F
         Og76x72RnxRX6ljhEdRUhs+jAlSaN5N0VOIaHwjpueTLzW9sVAeOWsrHvrpVrnX0xp12
         7ZTaHph1Cqp43MTxyO9esX4Oa4p3nKdkaTZBOgoNTqty7Vh4Jc9kcSXxgYykdtb0fbHi
         /a3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=QlOqikdPXZu3vYurVq0t5Dzp53+eRLNqKfJh7jPLDu4=;
        b=BrdhEJy4JFxHU4hoiu8uOoZ5miI6GYSMS3TQmIOd/cgoqYM1OwmEEBmj3SWexkZCzX
         AkqeNoQIdkzJ51ZG+vr1u/zFDj/DFUAE6qu/ilMAZIBYlHQ71WWjUIQ/ecMtqfDzslyE
         Frkih+XmTQddJIFT9dW8G48GiOeczAkjSMbu39+JswibSKOfrRM8JNXXaGNcc82fYnAL
         LPkdtv/TuBFFng9Az7WT9bRWn1wvjSpj/ZQPdmODV+T05+9rqMXPz1Z8Kkgs/o+c5GUM
         S7s/620fRU2LWmQXVHRI0HNV6BcZIWoBzASHqNjjN3NZtkVr4C7I8gLzmULWOUO4bZnR
         PxNw==
X-Gm-Message-State: AOAM531j11j/rW0EZXTLVP2d6WM47RD1tcppNNzs73gfU3udJ/fP9qTS
	2MMWqKRztPrP705XJnJGR+m1RPMQlGXqsyybEi2kjbtabO7oTg==
X-Google-Smtp-Source: ABdhPJzSYjnKSWBa4IWlhsi8Ao29DMYlzZswHB8CAkInI4uwn4RiaG8ofo3DKJx5+mzFC2Wtbn1GzLUTNfWtPcQ4oIY=
X-Received: by 2002:a05:6638:138e:: with SMTP id w14mr3117843jad.98.1613144005002;
 Fri, 12 Feb 2021 07:33:25 -0800 (PST)
MIME-Version: 1.0
From: "U RAVI KUMAR" <uppadaravi2511@gmail.com>
Date: Fri, 12 Feb 2021 21:03:13 +0530
Message-ID: <CACX=-dW7ytWERrC9EmyB+ZFPeM+emirFDuNfZNvTcgZXBCn7iQ@mail.gmail.com>
Subject: Regarding Mender integration
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000063caa505bb255bac"

--00000000000063caa505bb255bac
Content-Type: text/plain; charset="UTF-8"

Hello folks,

I have some issues while integrating the mender on the yocto project.I have
included meta-mener-core,meta-mender-raspberrypi layers.And iam getting the
following error:

ERROR: u-boot-1_2020.07-r0 do_patch: Command Error: 'quilt --quiltrc
/home/ravi_uppada/work/vm/sato/poky/build/tmp/work/raspberrypi4_64-poky-linux/u-boot/1_2020.07-r0/recipe-sysroot-native/etc/quiltrc
push' exited with 0  Output:
Applying patch 0001-configs-rpi-enable-mender-requirements.patch
patching file configs/rpi_0_w_defconfig
Hunk #1 FAILED at 19.
1 out of 2 hunks FAILED -- rejects in file configs/rpi_0_w_defconfig
patching file configs/rpi_2_defconfig
Hunk #1 FAILED at 19.
1 out of 2 hunks FAILED -- rejects in file configs/rpi_2_defconfig
patching file configs/rpi_3_32b_defconfig
Hunk #1 FAILED at 20.
1 out of 2 hunks FAILED -- rejects in file configs/rpi_3_32b_defconfig
patching file configs/rpi_3_b_plus_defconfig
Hunk #1 FAILED at 20.
1 out of 2 hunks FAILED -- rejects in file configs/rpi_3_b_plus_defconfig
patching file configs/rpi_3_defconfig
Hunk #1 FAILED at 20.
1 out of 2 hunks FAILED -- rejects in file configs/rpi_3_defconfig
patching file configs/rpi_4_32b_defconfig
Hunk #1 FAILED at 16.
Hunk #2 succeeded at 45 (offset 12 lines).
1 out of 2 hunks FAILED -- rejects in file configs/rpi_4_32b_defconfig
patching file configs/rpi_4_defconfig
Hunk #1 FAILED at 16.
Hunk #2 succeeded at 45 (offset 12 lines).
1 out of 2 hunks FAILED -- rejects in file configs/rpi_4_defconfig
patching file configs/rpi_arm64_defconfig
Hunk #1 FAILED at 17.
Hunk #2 succeeded at 43 (offset 1 line).
1 out of 2 hunks FAILED -- rejects in file configs/rpi_arm64_defconfig
patching file configs/rpi_defconfig
Hunk #1 FAILED at 19.
1 out of 2 hunks FAILED -- rejects in file configs/rpi_defconfig
patching file env/Kconfig
Hunk #1 succeeded at 55 (offset 6 lines).
patching file include/configs/rpi.h
Hunk #1 succeeded at 97 (offset 17 lines).
Patch 0001-configs-rpi-enable-mender-requirements.patch does not apply
(enforce with -f)
ERROR: Logfile of failure stored in:
/home/ravi_uppada/work/vm/sato/poky/build/tmp/work/raspberrypi4_64-poky-linux/u-boot/1_2020.07-r0/temp/log.do_patch.5091
ERROR: Task
(/home/ravi_uppada/work/vm/sato/poky/meta/recipes-bsp/u-boot/u-boot_2020.07.bb:do_patch)
failed with exit code '1'



I have followed this link to enable u-boot :
https://docs.mender.io/system-updates-yocto-project/board-integration/bootloader-support/u-boot
.
Have added in the path :
/DIRECTORY_BUILD/sato/poky/layers/meta-mender/meta-mender-core/recipes-bsp/u-boot
 Have added the lines in this file : u-boot_%.bbappend.

Please help me out this.I have been trying this from very long.Please
address this issue.

Thanks,
RAVI_UPPADA

--00000000000063caa505bb255bac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello folks,</div><div><br></div><div>I have some iss=
ues while integrating the mender on the yocto project.I have included meta-=
mener-core,meta-mender-raspberrypi layers.And iam getting the following err=
or:</div><div><br></div><div>ERROR: u-boot-1_2020.07-r0 do_patch: Command E=
rror: &#39;quilt --quiltrc /home/ravi_uppada/work/vm/sato/poky/build/tmp/wo=
rk/raspberrypi4_64-poky-linux/u-boot/1_2020.07-r0/recipe-sysroot-native/etc=
/quiltrc push&#39; exited with 0 =C2=A0Output:<br>Applying patch 0001-confi=
gs-rpi-enable-mender-requirements.patch<br>patching file configs/rpi_0_w_de=
fconfig<br>Hunk #1 FAILED at 19.<br>1 out of 2 hunks FAILED -- rejects in f=
ile configs/rpi_0_w_defconfig<br>patching file configs/rpi_2_defconfig<br>H=
unk #1 FAILED at 19.<br>1 out of 2 hunks FAILED -- rejects in file configs/=
rpi_2_defconfig<br>patching file configs/rpi_3_32b_defconfig<br>Hunk #1 FAI=
LED at 20.<br>1 out of 2 hunks FAILED -- rejects in file configs/rpi_3_32b_=
defconfig<br>patching file configs/rpi_3_b_plus_defconfig<br>Hunk #1 FAILED=
 at 20.<br>1 out of 2 hunks FAILED -- rejects in file configs/rpi_3_b_plus_=
defconfig<br>patching file configs/rpi_3_defconfig<br>Hunk #1 FAILED at 20.=
<br>1 out of 2 hunks FAILED -- rejects in file configs/rpi_3_defconfig<br>p=
atching file configs/rpi_4_32b_defconfig<br>Hunk #1 FAILED at 16.<br>Hunk #=
2 succeeded at 45 (offset 12 lines).<br>1 out of 2 hunks FAILED -- rejects =
in file configs/rpi_4_32b_defconfig<br>patching file configs/rpi_4_defconfi=
g<br>Hunk #1 FAILED at 16.<br>Hunk #2 succeeded at 45 (offset 12 lines).<br=
>1 out of 2 hunks FAILED -- rejects in file configs/rpi_4_defconfig<br>patc=
hing file configs/rpi_arm64_defconfig<br>Hunk #1 FAILED at 17.<br>Hunk #2 s=
ucceeded at 43 (offset 1 line).<br>1 out of 2 hunks FAILED -- rejects in fi=
le configs/rpi_arm64_defconfig<br>patching file configs/rpi_defconfig<br>Hu=
nk #1 FAILED at 19.<br>1 out of 2 hunks FAILED -- rejects in file configs/r=
pi_defconfig<br>patching file env/Kconfig<br>Hunk #1 succeeded at 55 (offse=
t 6 lines).<br>patching file include/configs/rpi.h<br>Hunk #1 succeeded at =
97 (offset 17 lines).<br>Patch 0001-configs-rpi-enable-mender-requirements.=
patch does not apply (enforce with -f)<br>ERROR: Logfile of failure stored =
in: /home/ravi_uppada/work/vm/sato/poky/build/tmp/work/raspberrypi4_64-poky=
-linux/u-boot/1_2020.07-r0/temp/log.do_patch.5091<br>ERROR: Task (/home/rav=
i_uppada/work/vm/sato/poky/meta/recipes-bsp/u-boot/u-boot_2020.07.bb:do_pat=
ch) failed with exit code &#39;1&#39;</div><div><br></div><div><br></div><d=
iv><br></div><div>I have followed this link to enable u-boot : <a href=3D"h=
ttps://docs.mender.io/system-updates-yocto-project/board-integration/bootlo=
ader-support/u-boot">https://docs.mender.io/system-updates-yocto-project/bo=
ard-integration/bootloader-support/u-boot</a>.</div><div>Have added in the =
path : /DIRECTORY_BUILD/sato/poky/layers/meta-mender/meta-mender-core/recip=
es-bsp/u-boot</div><div>=C2=A0Have added the lines in this file : u-boot_%.=
bbappend.</div><div><br></div><div>Please help me out this.I have been tryi=
ng this from very long.Please address this issue.</div><div><br></div><div>=
Thanks,</div><div>RAVI_UPPADA<br></div></div>

--00000000000063caa505bb255bac--
