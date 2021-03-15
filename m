Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
 by mx.groups.io with SMTP id smtpd.web12.1592.1615852376371325303
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Mar 2021 16:52:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=cXfm0cLy;
 spf=pass (domain: gmail.com, ip: 209.85.160.173, mailfrom: jonas.vautherin@gmail.com)
Received: by mail-qt1-f173.google.com with SMTP id c6so10466505qtc.1
        for <yocto@lists.yoctoproject.org>; Mon, 15 Mar 2021 16:52:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=0f64MU/37Q41GOHbCZX11XY8XKGUubKvxEkRihPM7wQ=;
        b=cXfm0cLybeJhfcd2K6WQBeZCv6evVWexa5r48Xyhui/DfqbwskP8c11xLJKgVtqGrC
         DuF0f+hmiIgyH3kjbsiRPJSW6nQfEQd+yok+nuL5RdaV5GG0wgLIACHuHmyXonIAoRfb
         NmMwS0vEoF8NjEUoSxO5vZynm00XneZBWZkSutPpNqsIz+ljVMG1k73bv4dgHMEtwnpk
         8WkvN10n9HXHC/7ZDDaYNxDVbtK+0+hNZ0uq+yWtdbCzw+YeQFGMsK9vKd+8nqyRAB7X
         488lc4xQ4W0nGsuoBRKrw/EO5alUXYkGpJGctVMxAz8IcvpnMrXQi1ahp0tTtjiV2P3s
         uKnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=0f64MU/37Q41GOHbCZX11XY8XKGUubKvxEkRihPM7wQ=;
        b=LI0EayupW1zQHawTk9TDiaUUehNgVjkRm+YPEBW5bl8uUp6Ddy5k0+6HrKQtn2aErw
         0mq5aExOhgUjKB/cNIW4Aydy+2IJbNbtv/zsX/wIO8vK1PRTp88yeQrAqMbnsb330sYM
         3fcX/RYGD6QxQleOlriFhreWYx42VstplWjP9bmQQ1sfmQeJvlUI/SpE0uftNbbvjPza
         gFORzQ4dOku9P3NqAeLBq2V7EWUeM3J3yOF1oxOLJpGV+HAHRLQngHR+boLZ/CA4iwb6
         l6e6YrkFVKOfjIG6V3QfqTI/uuQdW0E4pKvHr/PPTq/uHtmFXEqfZJ6FGVc8x3EFziYb
         udoA==
X-Gm-Message-State: AOAM533MFKU6JaPHvB9xF5OL22GdtZ3TCLx9l7pCntpFV1YymWHDDaXa
	PyhimyKPwiqKNyy4DS91so2fBIRDGm8GovR025g5sV0DenMbHQ==
X-Google-Smtp-Source: ABdhPJyWcuhdPsEMffx3Ddt5VOeG5N30pOHeBozUoQFNQCTYwloVI+fx+VQOnEgjJHfazG896y0/0g7mo/CjLo5MT6g=
X-Received: by 2002:ac8:6044:: with SMTP id k4mr25095478qtm.4.1615852375159;
 Mon, 15 Mar 2021 16:52:55 -0700 (PDT)
MIME-Version: 1.0
From: "Jonas Vautherin" <jonas.vautherin@gmail.com>
Date: Tue, 16 Mar 2021 00:52:44 +0100
Message-ID: <CAEyb4nFbodTcim5A-cGTLJsa+t8od3W-JrJw6YHr+SDTQPTt3w@mail.gmail.com>
Subject: GPT instead of MBR in my WKS file
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000d4b74005bd9bf248"

--000000000000d4b74005bd9bf248
Content-Type: text/plain; charset="UTF-8"

Hello :-),

Learning Yocto with my Pocketbeagle, I have been looking at the WKS file
recently. Starting with the default beaglebone-yocto.wks, it is working
fine for an MBR partition table:

```
part /boot --source bootimg-partition --ondisk mmcblk0 --fstype=vfat
--label boot --active --align 4 --size 16 --sourceparams="loader=u-boot"
--use-uuid
part / --source rootfs --ondisk mmcblk --fstype=ext4 --label root --align 4
--use-uuid
bootloader --append="console=ttyS0,115200"
```

Looking at the documentation and some examples online, I wanted to try
moving that to a GPT partition table. But whatever I do, I always end up
with an image that just does not boot at all (and my FTDI connection does
not give me any serial output at all, not even an error). For instance I
tried something like this:

```
part /boot --source bootimg-efi --ondisk mmcblk0 --fstype=vfat --label boot
--part-name boot --active --align 1024 --sourceparams="loader=grub-efi"
--use-uuid
part / --source rootfs --ondisk mmcblk --fstype=ext4 --label root
--part-name system --align 1024 --use-uuid
bootloader --ptable gpt --append="console=ttyS0,115200"
```

So I obviously started with `--ptable gpt`, and then gradually tried to
change other things (like `bootimg-efi` instead of `bootimg-partition`,
changing the `--align` value, etc. Honestly I don't really know what I am
doing, but I have not found references that helped me online (probably
because I'm a beginner and I do not know what to search for).

I would love to get some insights about this. Like how could I verify if my
pocketbeagle can run from GPT at all (I have read that some ROMs do not
support it because it is too big)? And does GPT require EFI and/or grub at
all, or is that independent?

After all, I would just like to have a GPT partition table that looks very
similar to my MBR table, except that with GPT I could benefit from the
`--part-name` for fastboot. I don't think I want grub at all, for instance.

Best Regards,
Jonas

--000000000000d4b74005bd9bf248
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello :-),<div><br></div><div>Learning Yocto with my Pocke=
tbeagle, I have been looking at the WKS file recently. Starting with the de=
fault beaglebone-yocto.wks, it is working fine for an MBR partition table:<=
/div><div><br></div><div>```</div><div>part /boot --source bootimg-partitio=
n --ondisk mmcblk0 --fstype=3Dvfat --label boot --active --align 4 --size 1=
6 --sourceparams=3D&quot;loader=3Du-boot&quot; --use-uuid<br>part / --sourc=
e rootfs --ondisk mmcblk --fstype=3Dext4 --label root --align 4 --use-uuid<=
br>bootloader --append=3D&quot;console=3DttyS0,115200&quot;<br></div><div>`=
``</div><div><br></div><div>Looking at the documentation and some examples =
online, I wanted to try moving that to a GPT partition table. But whatever =
I do, I always end up with an image that just does not boot at all (and my =
FTDI connection does not give me any serial output at all, not even an erro=
r). For instance I tried something like this:</div><div><br></div><div>```<=
/div><div>part /boot --source bootimg-efi --ondisk mmcblk0 --fstype=3Dvfat =
--label boot --part-name boot --active --align 1024 --sourceparams=3D&quot;=
loader=3Dgrub-efi&quot; --use-uuid<br>part / --source rootfs --ondisk mmcbl=
k --fstype=3Dext4 --label root --part-name system --align 1024 --use-uuid<b=
r>bootloader --ptable gpt --append=3D&quot;console=3DttyS0,115200&quot;<br>=
</div><div>```</div><div><br></div><div>So I obviously started with `--ptab=
le gpt`, and then gradually tried to change other things (like `bootimg-efi=
` instead of `bootimg-partition`, changing the `--align` value, etc. Honest=
ly I don&#39;t really know what I am doing, but I have not found references=
 that helped me online (probably because I&#39;m a beginner and I do not kn=
ow what to search for).</div><div><br></div><div>I would love to get some i=
nsights about this. Like how could I verify if my pocketbeagle can run from=
 GPT at all (I have read that some ROMs do not support it because it is too=
 big)? And does GPT require EFI and/or grub at all, or is that independent?=
</div><div><br></div><div>After all, I would just like to have a GPT partit=
ion table that looks very similar to my MBR table, except that with GPT I c=
ould benefit from the `--part-name` for fastboot. I don&#39;t think I want =
grub at all, for instance.</div><div><br></div><div>Best Regards,</div><div=
>Jonas</div></div>

--000000000000d4b74005bd9bf248--
