Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 030A3C433F5
	for <webhook@archiver.kernel.org>; Thu,  9 Dec 2021 19:55:43 +0000 (UTC)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
 [209.85.160.180])
 by mx.groups.io with SMTP id smtpd.web12.16517.1639079742323455539
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Dec 2021 11:55:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=pSOfvb/l;
 spf=pass (domain: gmail.com, ip: 209.85.160.180,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f180.google.com with SMTP id p19so6355517qtw.12
        for <yocto@lists.yoctoproject.org>;
 Thu, 09 Dec 2021 11:55:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=+cCmEIkXuG0fXpCrZBQo84hcP46UVVRvYRfLoBShotQ=;
        b=pSOfvb/leTMKvpbkWYlVJ2MhYAxK5Rwfu9UNmEUsJa63NbwDAMYxBR1KqIhC2ljXVa
         ubfE7iGFeTHuP0Cw9PSCrJ94a+6keaBmpeRxafOphQ/hdcVaoFmcccNnFjlkLwY4ZNJy
         +tnDTV/Bt/FbdRb4bvxV3ntzvECmwdqyolXMjUebP/J+EPYZSUBedxEuPMd6IbNoaGko
         bMTSzXkQEjCQUv2GoSP4fxUEe2NUujIEY1Ky0umDCODpI9ARATZpGkyxqrbtzWXE/r7n
         anCZ7OfSvTEPj5pl85SvVzv+bh3kgDjeVVNTToYTJQR3ZFwoXxUD2tCQ4jn70KoCX6hC
         x/zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=+cCmEIkXuG0fXpCrZBQo84hcP46UVVRvYRfLoBShotQ=;
        b=ew2oy9MiRNH8hP+h8iTaVd1PuFdAoKaZb4walNr8KBveWVueNAGDfDqF37r7f7ZC19
         sLykLC8h4DBk4u0dzyw7au9OVGfjmM3t24hAw15lrjY1vGL1uOCp5/dY7gf7XqNjkeEN
         nZHsmFKgaVijjuH6hyLRWTk8riBxvbPwa62M1nvGXkWyZnoMg0vIFXEAan1lGIsqmt+P
         muRtKkuZNRyuMr0ntoSf4QFv0mzhM/cfNUxmbSXWx2lzJG3zexAbvlJ7VjLZCILc1kJV
         3ZhZ/oNUcpKspdtLel8d6RLWFORH2jH4muzEr8i70HAlB2H5W5HNxyyaS2ZhJFmP+4Lz
         pBMw==
X-Gm-Message-State: AOAM533BttafdsmVb/vr3tbwf8vP67SncO3l69+bqOeJ9Oz5sK1Os4b4
	BYCRdjQE6nBUDoBmTdWyPLALkeyXvZ3Onn/nyvch/Dx9J3B48g==
X-Google-Smtp-Source: 
 ABdhPJzgl6d5LmRqp0c5K4HwWRi7nYyAQ58eLuigTxkBNwucC///CWdAux6yZd5SzxT5fTU0zu0EKiQZlVMKTkKZNKU=
X-Received: by 2002:aed:30a3:: with SMTP id 32mr20370912qtf.660.1639079741135;
 Thu, 09 Dec 2021 11:55:41 -0800 (PST)
MIME-Version: 1.0
References: <MADEUP.16BF2C8399B72BDC.14509@lists.yoctoproject.org>
In-Reply-To: <MADEUP.16BF2C8399B72BDC.14509@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 9 Dec 2021 11:55:14 -0800
Message-ID: 
 <CAMKF1sp5LvVFTBcymLy+a4TQdDEyaiBaiHfmdku8b8w_F01Ltw@mail.gmail.com>
Subject: Re: [yocto] standard SDK build with clang compiler built into kernel
 image
To: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Dec 2021 19:55:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55541

This is a known issue look at

https://github.com/kraj/meta-clang/issues/119

You can workaround it by

https://github.com/kraj/meta-clang/issues/119#issuecomment-518317888

On Thu, Dec 9, 2021 at 11:22 AM Monsees, Steven C (US) via
lists.yoctoproject.org
<steven.monsees=3Dbaesystems.com@lists.yoctoproject.org> wrote:
>
>
>
> I am building clang compiler support into my kernel, to support igc (inte=
l graphics compiler)=E2=80=A6
>
>
>
> When I build the standard SDK it list a series of specific clang/llvm iss=
ues but successfully completes the SDK setup/install.
>
> The SDK looks to have everything in place, and basic functionality is wor=
king=E2=80=A6
>
>
>
> I do not see these messages when I remove the clang component.
>
>
>
> Can someone explain what is happening here ?, is it a known issue  ?, is =
there patch available ?
>
>
>
> I am building a =E2=80=9Czeus=E2=80=9D 3.0.4 based kernel, for centos=E2=
=80=A6
>
>
>
> -bash-4.2$ cd sdk
>
> -bash-4.2$ ls
>
> limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-3.0.4.host.manifest
>
> limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-3.0.4.sh
>
> limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-3.0.4.target.manifest
>
> limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-3.0.4.testdata.json
>
> -bash-4.2$  sudo ./limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-3.0=
.4.sh
>
> [sudo] password for smonsees:
>
> LIMWS (BAE LIMWS base distro) SDK installer version 3.0.4
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
>
> Enter target directory for SDK (default: /opt/limws/3.0.4): /disk0/scratc=
h/smonsees/yocto/sdk_3.0.4
>
> You are about to install the SDK to "/disk0/scratch/smonsees/yocto/sdk_3.=
0.4". Proceed [Y/n]? Y
>
> Extracting SDK...........................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
...........................................................................=
......................................done
>
> Setting it up...ERROR: could not relocate /disk0/scratch/smonsees/yocto/s=
dk_3.0.4/sysroots/x86_64-pokysdk-linux/usr/bin/clang-tidy, interp size =3D =
72 and 95 is needed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-cxxdump, interp size =3D 72 and 95 is n=
eeded.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-ar, interp size =3D 72 and 95 is needed=
.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-symbolizer, interp size =3D 72 and 95 i=
s needed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/clang-9, interp size =3D 72 and 95 is needed=
.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-as, interp size =3D 72 and 95 is needed=
.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/clang-extdef-mapping, interp size =3D 72 and=
 95 is needed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/clang-reorder-fields, interp size =3D 72 and=
 95 is needed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-mca, interp size =3D 72 and 95 is neede=
d.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/clang-apply-replacements, interp size =3D 72=
 and 95 is needed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-dwarfdump, interp size =3D 72 and 95 is=
 needed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-elfabi, interp size =3D 72 and 95 is ne=
eded.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/lldb-instr, interp size =3D 72 and 95 is nee=
ded.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/c-index-test, interp size =3D 72 and 95 is n=
eeded.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/clang-doc, interp size =3D 72 and 95 is need=
ed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/lldb-tblgen, interp size =3D 72 and 95 is ne=
eded.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-undname, interp size =3D 72 and 95 is n=
eeded.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-mt, interp size =3D 72 and 95 is needed=
.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/lldb, interp size =3D 72 and 95 is needed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-extract, interp size =3D 72 and 95 is n=
eeded.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-jitlink, interp size =3D 72 and 95 is n=
eeded.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/modularize, interp size =3D 72 and 95 is nee=
ded.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-opt-report, interp size =3D 72 and 95 i=
s needed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/bugpoint, interp size =3D 72 and 95 is neede=
d.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/lld, interp size =3D 72 and 95 is needed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/dsymutil, interp size =3D 72 and 95 is neede=
d.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-dwp, interp size =3D 72 and 95 is neede=
d.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-cat, interp size =3D 72 and 95 is neede=
d.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-dis, interp size =3D 72 and 95 is neede=
d.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-c-test, interp size =3D 72 and 95 is ne=
eded.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/clang-refactor, interp size =3D 72 and 95 is=
 needed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/sanstats, interp size =3D 72 and 95 is neede=
d.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-size, interp size =3D 72 and 95 is need=
ed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/yaml2obj, interp size =3D 72 and 95 is neede=
d.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-split, interp size =3D 72 and 95 is nee=
ded.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/clang-rename, interp size =3D 72 and 95 is n=
eeded.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/lldb-vscode, interp size =3D 72 and 95 is ne=
eded.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-readobj, interp size =3D 72 and 95 is n=
eeded.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-tblgen, interp size =3D 72 and 95 is ne=
eded.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/lldb-argdumper, interp size =3D 72 and 95 is=
 needed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/clang-check, interp size =3D 72 and 95 is ne=
eded.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-xray, interp size =3D 72 and 95 is need=
ed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/clangd, interp size =3D 72 and 95 is needed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/clang-scan-deps, interp size =3D 72 and 95 i=
s needed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-rc, interp size =3D 72 and 95 is needed=
.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-lto, interp size =3D 72 and 95 is neede=
d.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/lldb-mi, interp size =3D 72 and 95 is needed=
.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-modextract, interp size =3D 72 and 95 i=
s needed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-rtdyld, interp size =3D 72 and 95 is ne=
eded.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-diff, interp size =3D 72 and 95 is need=
ed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/clang-change-namespace, interp size =3D 72 a=
nd 95 is needed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-cfi-verify, interp size =3D 72 and 95 i=
s needed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/clang-query, interp size =3D 72 and 95 is ne=
eded.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-link, interp size =3D 72 and 95 is need=
ed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/clang-offload-bundler, interp size =3D 72 an=
d 95 is needed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/clang-import-test, interp size =3D 72 and 95=
 is needed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/clang-format, interp size =3D 72 and 95 is n=
eeded.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/clang-include-fixer, interp size =3D 72 and =
95 is needed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/diagtool, interp size =3D 72 and 95 is neede=
d.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/sancov, interp size =3D 72 and 95 is needed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-objcopy, interp size =3D 72 and 95 is n=
eeded.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-cxxmap, interp size =3D 72 and 95 is ne=
eded.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-strings, interp size =3D 72 and 95 is n=
eeded.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-lto2, interp size =3D 72 and 95 is need=
ed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llc, interp size =3D 72 and 95 is needed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/opt, interp size =3D 72 and 95 is needed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-exegesis, interp size =3D 72 and 95 is =
needed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-spirv, interp size =3D 72 and 95 is nee=
ded.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-cvtres, interp size =3D 72 and 95 is ne=
eded.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-cov, interp size =3D 72 and 95 is neede=
d.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-lipo, interp size =3D 72 and 95 is need=
ed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/find-all-symbols, interp size =3D 72 and 95 =
is needed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/obj2yaml, interp size =3D 72 and 95 is neede=
d.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/verify-uselistorder, interp size =3D 72 and =
95 is needed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-objdump, interp size =3D 72 and 95 is n=
eeded.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-mc, interp size =3D 72 and 95 is needed=
.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/lli, interp size =3D 72 and 95 is needed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-config, interp size =3D 72 and 95 is ne=
eded.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-stress, interp size =3D 72 and 95 is ne=
eded.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/lldb-server, interp size =3D 72 and 95 is ne=
eded.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-cxxfilt, interp size =3D 72 and 95 is n=
eeded.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-profdata, interp size =3D 72 and 95 is =
needed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-pdbutil, interp size =3D 72 and 95 is n=
eeded.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-bcanalyzer, interp size =3D 72 and 95 i=
s needed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/clang-tblgen, interp size =3D 72 and 95 is n=
eeded.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/bin/llvm-nm, interp size =3D 72 and 95 is needed=
.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/lib/liblldbIntelFeatures.so.9, interp size =3D 7=
2 and 95 is needed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/lib/libRemarks.so.9, interp size =3D 72 and 95 i=
s needed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/lib/libclang.so.9, interp size =3D 72 and 95 is =
needed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/lib/liblldb.so.9.0.1, interp size =3D 72 and 95 =
is needed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/lib/libclang-cpp.so.9, interp size =3D 72 and 95=
 is needed.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/lib/LLVMgold.so, interp size =3D 72 and 95 is ne=
eded.
>
> ERROR: could not relocate /disk0/scratch/smonsees/yocto/sdk_3.0.4/sysroot=
s/x86_64-pokysdk-linux/usr/lib/libLTO.so.9, interp size =3D 72 and 95 is ne=
eded.
>
> done
>
> SDK has been successfully set up and is ready to be used.
>
> Each time you wish to use the SDK in a new shell session, you need to sou=
rce the environment setup script e.g.
>
> $ . /disk0/scratch/smonsees/yocto/sdk_3.0.4/environment-setup-corei7-64-p=
oky-linux
>
> -bash-4.2$
>
>
>
> Thanks,
>
> Steve
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#55539): https://lists.yoctoproject.org/g/yocto/messag=
e/55539
> Mute This Topic: https://lists.yoctoproject.org/mt/87619350/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

