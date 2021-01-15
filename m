Received: from mail-io1-f45.google.com (mail-io1-f45.google.com [209.85.166.45])
 by mx.groups.io with SMTP id smtpd.web12.2395.1610722075585690209
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Jan 2021 06:47:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=upBR0dBM;
 spf=pass (domain: gmail.com, ip: 209.85.166.45, mailfrom: lefevre.da@gmail.com)
Received: by mail-io1-f45.google.com with SMTP id z5so18498633iob.11
        for <yocto@lists.yoctoproject.org>; Fri, 15 Jan 2021 06:47:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=iDZbPvJZH3JKSNEGaxRrlAI8ILjklZ0xAZ9diJ1q/rw=;
        b=upBR0dBMSwGSHPccHjdWWIXUMvcOYJqMOip9ZgNm9ounJ8pb6UZNYiWMBaeKN+Zhvc
         0FV7PvQLfyF/rG52dK7eHDoZjQ1OOB82ZOSu6yDTLCT270V2JhjYsXLQI41xnccm/V8H
         58MHwe4+pX7RzNu9NnPMZiARVs4CB6ZgtSSIK6THdSBiltHjHav4NHDPhPJut1MsNi4o
         uAqzQzm5wnIz4nbf0RCIbRy3ieBKOiZXCXwCogbJ47QLX6Q9FzklA7dUB+PojKT+HnPE
         FUbAmFPRshrBXcYE2MoFi4YWr3tfILGkXSPy/9cmDKuUJPjFXF5d4ylgk9WehFagmeQB
         JCdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=iDZbPvJZH3JKSNEGaxRrlAI8ILjklZ0xAZ9diJ1q/rw=;
        b=E/dcmU7bpF0UaFjOd+Pnl8q9Hs25IoYVoPT7wUQD8lY8r18LlDM1FSzR6QODNMNGTv
         nj6Ryq/DfEOyoPwqFjKnZxkI8JkUsvHEYYA0VL7GZxiNwQ+ObbzRFOa5e6BRueVcpknM
         +3Wc4RFp1IqqlFO9hQBNpn00wr/XfZxbM7y8qcm1n55nEHCL97YMl5NbLaQOzLni1dQn
         +47HmacvyT51Ad6VF11CZo9Ajcg3GXB4TFEwsRNKYoGhtQa4jjz70+yzOyg9Q/Kbg4Qk
         G8bvRKgQztP6JA04NytPmmWN+e2jbnyIee7LzsgzNmf6KJzr6Yonfsj3GkHS3EQ74LZA
         gYcg==
X-Gm-Message-State: AOAM532UHDmin9dVLHN5ZuVY0TadYANg4i+zV2iqBfsHpq29SorvJknU
	uI4lrk4sqCKvFQLTT/OAPHZiU/d9LqQGDDNg+KnzMkxskg==
X-Google-Smtp-Source: ABdhPJyW7HKMKvq8CR748soiXJLixrJPe0raX1cs1G8xD9KCeFqfYCbQ8/FwXiGdHz5hMxcjVgCBzCxlb5GK47yeT/M=
X-Received: by 2002:a6b:dd13:: with SMTP id f19mr8943449ioc.74.1610722074698;
 Fri, 15 Jan 2021 06:47:54 -0800 (PST)
MIME-Version: 1.0
From: "Damien LEFEVRE" <lefevre.da@gmail.com>
Date: Fri, 15 Jan 2021 16:47:43 +0200
Message-ID: <CA+FhBv-OVqNQ=SoPVGABBxyOHxuXxoJAkJ=bccg+Su6FQOasLw@mail.gmail.com>
Subject: cpio issues
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000018292e05b8f175b4"

--00000000000018292e05b8f175b4
Content-Type: text/plain; charset="UTF-8"

Hi,

I am working with Tegra Xavier and meta-tegra.

During the build process, 2 images get generated:
 - initramfs (cpio archive)
 - the actual roofs image

initramfs is archived with cpio and since the cpio image type is enabled,
bitbake tries to cpio the rootfs. The roofts is more than 2GB (not
difficult with CUDA libraries) and cpio fails due to some 2GB size
limitation.

How can I keep the initramfs with cpio, but disable cpio archiving for the
rootfs which I don't need or use for anything?

Thanks,
-Damien

--00000000000018292e05b8f175b4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>I am working with Tegra Xavier and meta-tegra.<=
br><br>During the build process, 2 images get generated:<br>=C2=A0- initram=
fs (cpio archive)<br>=C2=A0- the actual roofs image<br><br>initramfs is arc=
hived with cpio and since the cpio image type is enabled, bitbake tries to =
cpio the rootfs. The roofts is more than 2GB (not difficult with CUDA libra=
ries) and cpio fails due to some 2GB size limitation.<br><br>How can I keep=
 the initramfs with cpio, but disable cpio archiving for the rootfs which I=
 don&#39;t need or use for anything?<br><br>Thanks,<br>-Damien<br></div>

--00000000000018292e05b8f175b4--
