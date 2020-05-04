Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
 by mx.groups.io with SMTP id smtpd.web10.4545.1588593986869944197
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 May 2020 05:06:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=JJvnEr+Z;
 spf=pass (domain: gmail.com, ip: 209.85.160.178, mailfrom: lefevre.da@gmail.com)
Received: by mail-qt1-f178.google.com with SMTP id z90so13619490qtd.10
        for <yocto@lists.yoctoproject.org>; Mon, 04 May 2020 05:06:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=gBwaaaUa4Whh8SK6LgvAnYcRJr98nwv7CGGPfdVhsnI=;
        b=JJvnEr+ZcundbH4xJIPAvFXzfAUIMEatW/0lsPLzgvEIyTURPEiluW1D1aeaJ+PAbk
         btGgn+NfU8uiRhFTTjO15ushbWtGtke/Bt8y2TBLrNWuzz/3WXJoy6TD15dPXAen7TFe
         zpOsCew2SZ1jQ38/n9PhNYlg6cgVE4RnDDGiraY1Cu/d8d9MHny8JxPd0ygY7jlA8FKY
         pcWr5YMQFU78To/Tvgbr+LweOcuO+zjtVRn5fFYC9emLfz+KfjhPG4DZ6VwDP2XWWH9r
         oUqM1q2yyhRa/vFrn3pigcZu7WGFHVF9X8lwleLOaryGw/3nmxu9kj8u6fwTuTgu/HyY
         Yv9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=gBwaaaUa4Whh8SK6LgvAnYcRJr98nwv7CGGPfdVhsnI=;
        b=otOt1D6orWCqBiqd9cgIb53tHfdB5gSx+xlW4MAWFsNuSoaJUv7TCquwQuWmZiAvK8
         fv/3K5aDAoauRR/JyhP3qFGTrg4TFADlkFymj5F59a4jEAHOkkwwYKe5yQn8E0whuyqL
         GCD10Cr/kFvuZgeIBoxSyqdrJb/i+QNTas24nesBr0mSYeyWlEPDqZ9dzZYi2rPePKgw
         uaR1HVN+EX5g1swRvc+yIe1Xsve2xhT5lh69Om7jrDlFvYsf6VuO8QhH9IoQjG9hnbj9
         FfwZsf8bPJCBlqUNOZrFjg8Ny2ZbVHviek2XWx9QrJLxbPiyMJg7pIDsNBoZUYEet1+u
         jMjA==
X-Gm-Message-State: AGi0PuY3z3/wgO6MxyeF449G5i4Xpo1i2UIwbyPrjjjnctMYwtXxx7bw
	dSYcOL00zVsfzx4CRl69Og1IVnv9PHttSN9GPY+wt1GGcQ==
X-Google-Smtp-Source: APiQypJCSX7ECQbEbgJIQW8mglO/Y5P7c2thQPkKFFsuTQZeLAJO5UQSzP+ptN6c5Asfmvvo4I8VULmr9Kr03NRG50Y=
X-Received: by 2002:ac8:359d:: with SMTP id k29mr17167772qtb.106.1588593985730;
 Mon, 04 May 2020 05:06:25 -0700 (PDT)
MIME-Version: 1.0
From: "Damien LEFEVRE" <lefevre.da@gmail.com>
Date: Mon, 4 May 2020 15:06:14 +0300
Message-ID: <CA+FhBv_FADh4-qu3BN9tSMWaosqkv42PEXu7fVZfLUxPsuxnrA@mail.gmail.com>
Subject: Yocto img file deployment
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000363cd205a4d15c0a"

--000000000000363cd205a4d15c0a
Content-Type: text/plain; charset="UTF-8"

Hi,

I have a yocto image: image.img.

On my build PC I have
> file image.img
image.img: DOS/MBR boot sector; partition 1 : ID=0xee, start-CHS (0x0,0,1),
end-CHS (0x3ff,254,63), startsector 1, 802815 sectors, extended partition
table (last)

> fdisk -l image.img
Disk image.img: 392 MiB, 411041792 bytes, 802816 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: gpt
Disk identifier: 45C0DFD4-267E-4C4A-820F-B94F180165E7

Device     Start    End Sectors  Size Type
image.img1  2048 800767  798720  390M Linux filesystem



And I can calculate the offset (512 * 2048 = 1048576) to mount image.img1
to let say /tmp/update
mount -t ext4 -o loop,offset=1048576 image.img /tmp/update



Now on the target device (Tegra), I'd like to write the content of
image.img1 to /dev/mmcblk0p38. But the output of busybox's fdisk is
different

> fdisk -l image.img
Disk image.img: 392 MB, 411041792 bytes, 802816 sectors
49 cylinders, 255 heads, 63 sectors/track
Units: sectors of 1 * 512 = 512 bytes

Device   Boot StartCHS    EndCHS        StartLBA     EndLBA    Sectors
 Size Id Type
image.img1    0,0,1       1023,254,63          1     802815     802815
 391M ee EFI GPT
Partition 1 has different physical/logical start (non-Linux?):
     phys=(0,0,1) logical=(0,0,2)
Partition 1 has different physical/logical end:
     phys=(1023,254,63) logical=(49,248,7)

How can I deduce the offset from this output?

Better even, is there a way to dd image.img1 directly to /dev/mmcblk0p38?

Thanks,

--000000000000363cd205a4d15c0a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>I have a yocto image: image.img.<br><br>On my b=
uild PC I have<br>&gt; file image.img<br>image.img: DOS/MBR boot sector; pa=
rtition 1 : ID=3D0xee, start-CHS (0x0,0,1), end-CHS (0x3ff,254,63), startse=
ctor 1, 802815 sectors, extended partition table (last)<br><br>&gt; fdisk -=
l image.img <br>Disk image.img: 392 MiB, 411041792 bytes, 802816 sectors<br=
>Units: sectors of 1 * 512 =3D 512 bytes<br>Sector size (logical/physical):=
 512 bytes / 512 bytes<br>I/O size (minimum/optimal): 512 bytes / 512 bytes=
<br>Disklabel type: gpt<br>Disk identifier: 45C0DFD4-267E-4C4A-820F-B94F180=
165E7<br><br>Device =C2=A0 =C2=A0 Start =C2=A0 =C2=A0End Sectors =C2=A0Size=
 Type<br>image.img1 =C2=A02048 800767 =C2=A0798720 =C2=A0390M Linux filesys=
tem<br><br><br><br>And I can calculate the offset (512 * 2048 =3D 1048576) =
to mount image.img1 to let say /tmp/update<br>mount -t ext4 -o loop,offset=
=3D1048576 image.img /tmp/update<br><br><br><br>Now on the target device (T=
egra), I&#39;d like to write the content of image.img1 to /dev/mmcblk0p38. =
But the output of busybox&#39;s fdisk is different<br><br>&gt; fdisk -l ima=
ge.img <br>Disk image.img: 392 MB, 411041792 bytes, 802816 sectors<br>49 cy=
linders, 255 heads, 63 sectors/track<br>Units: sectors of 1 * 512 =3D 512 b=
ytes<br><br>Device =C2=A0 Boot StartCHS =C2=A0 =C2=A0EndCHS =C2=A0 =C2=A0 =
=C2=A0 =C2=A0StartLBA =C2=A0 =C2=A0 EndLBA =C2=A0 =C2=A0Sectors =C2=A0Size =
Id Type<br>image.img1 =C2=A0 =C2=A00,0,1 =C2=A0 =C2=A0 =C2=A0 1023,254,63 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A01 =C2=A0 =C2=A0 802815 =C2=A0 =C2=A0 8028=
15 =C2=A0391M ee EFI GPT<br>Partition 1 has different physical/logical star=
t (non-Linux?):<br>=C2=A0 =C2=A0 =C2=A0phys=3D(0,0,1) logical=3D(0,0,2)<br>=
Partition 1 has different physical/logical end:<br>=C2=A0 =C2=A0 =C2=A0phys=
=3D(1023,254,63) logical=3D(49,248,7)<br><br>How can I deduce the offset fr=
om this output?<br><br>Better even, is there a way to dd image.img1 directl=
y to /dev/mmcblk0p38?<br><br>Thanks,<br></div>

--000000000000363cd205a4d15c0a--
