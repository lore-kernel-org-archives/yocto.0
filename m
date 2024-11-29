Return-Path: <posinaaravind0205@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB544D6D244
	for <webhook@archiver.kernel.org>; Fri, 29 Nov 2024 06:32:12 +0000 (UTC)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web10.110339.1732861923061925404
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Nov 2024 22:32:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=UrkPrUwp;
 spf=pass (domain: gmail.com, ip: 209.85.216.47, mailfrom: posinaaravind0205@gmail.com)
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-2ede8c4fedeso1242485a91.3
        for <yocto@lists.yoctoproject.org>; Thu, 28 Nov 2024 22:32:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732861922; x=1733466722; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=y2OQrUAmqNEH9vD/IdRE+/Ryh3uqP0sCUPPpehDXI7c=;
        b=UrkPrUwpaRDmKcasXe3DKKRThP6qVCFIJC85fUjsa6PPsvvXTFDG+YgrNnT2dPEAKz
         sIID26WMr3U/wMz4F4R0/nehikz3q7LLGlB6zhnqQVPm4gipfT8eFCwKyHucUF9AvDs+
         DMBg6Ag6VQP50yO3rpx1EK8QBA5N/r2zs6feLpacT7/AxnRA3KDIt6oxZpkOIarFdB/9
         O1fpCzugoVRpiY/NGSKnDcRU3KIPhniTkrjDMLG/DOvCpTL6a6AM7KYYlqRHzW2orX67
         m+H0wA3zxk7hRHbLoNhXsfE9/Fs3eHk08s6j7NVu3d+UAXnUlCQOZMnqEMv94qQovOtV
         iSVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732861922; x=1733466722;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=y2OQrUAmqNEH9vD/IdRE+/Ryh3uqP0sCUPPpehDXI7c=;
        b=nXKBnj9jQTSNQed9ZeclngK7elQhYDVR6T0qbAtuw7OrY23h1VqENaCediEK/lqNDU
         PFO6Lo9me/iqMtRhwUMjWZmhS5r+BoSKjB7TDdyEjY06jQCJY2yOz5K9YsGmRVgO0rdH
         twB4b2vmXOExpWml0H1o06TEm0qx9Av9PiZ24Z9gOL4w7HRnNiePrL5eDwqhDVdjnWGp
         HtLmYdHgYab7iCatyExPP2IdLHMSR5zU8OD5Iv3XuIHrpcpFI51z8MNMcnQeEWEbEXwz
         FhOx2HlCa55DrGrTG9IaVuVXvz01MNvSaIbkk7lowp5OXXp2ap8SOxQ8gefADMqXaqps
         M2xA==
X-Gm-Message-State: AOJu0YzZkzlOaclDtGzT7PmvuSjFlkR1ouVQPHoWCkzovpVtnZKAOWYe
	PyHiQAIkbFep27jQoou/IqLaqTj6J+8udxMi4MB/r1ji8Nxpp0YeC1Hz1Xo2B4NjXUjQBwkKPoD
	3b2zCQIdcZ/kZmu/XJiUma/nT8VtVDN6x
X-Gm-Gg: ASbGncuRy/Mtmb2SHgVcXtkGvofmVS69WTnB/UKZBl3LHGLjSWF9Nv/o5rDmwv4SaN9
	LtOSf6gRz0e0U6Lcrf4kB2f0Ahhr3eA==
X-Google-Smtp-Source: AGHT+IGF24mCIBl3Upu4FFAwSRtVuYJO3rPstwndnmz7AHQTgbin0RB5RdKHp0oTFB/H+Dh6dcax2Mp/nPsb34F7WoE=
X-Received: by 2002:a17:90b:4c85:b0:2ea:bd3e:feda with SMTP id
 98e67ed59e1d1-2ee08e9c7b9mr12156449a91.6.1732861922016; Thu, 28 Nov 2024
 22:32:02 -0800 (PST)
MIME-Version: 1.0
From: aravind posina <posinaaravind0205@gmail.com>
Date: Fri, 29 Nov 2024 12:01:51 +0530
Message-ID: <CALvuYr=oud5yZHATSO0PSxGsvY6BhAUGiP9kq=oZE5o-c5MgUA@mail.gmail.com>
Subject: Backporting in Yocto
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000004e862e0628075bdb"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Nov 2024 06:32:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64376

--0000000000004e862e0628075bdb
Content-Type: text/plain; charset="UTF-8"

Hello All,

I'm working on yocto to develop a layer .In that customer wants some out
source wifi related module files . From yocto I'm tring to build the .ko
files into the rootfs . But whenever i try to compile my recipe i'm getting
some error. in this can can anyone help out for this one . does i get know
how to do backporting through yocto.below i'll mention the error cases.


ERROR: backports-cypress-5.15.58-r0 do_compile: oe_runmake failed
ERROR: backports-cypress-5.15.58-r0 do_compile:
ExecutionError('/home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/temp/run.do_compile.2980720',
1, None, None)
ERROR: Logfile of failure stored in:
/home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/temp/log.do_compile.2980720
Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: make -j 4
KERNEL_SRC=/home/phytec/sanava-kernel/yocto/build/tmp/work-shared/phyboard-segin-imx6ul-7/kernel-source
KLIB=/home/phytec/sanava-kernel/yocto/build/tmp/work-shared/phyboard-segin-imx6ul-7/kernel-source
KLIB_BUILD=/home/phytec/sanava-kernel/yocto/build/tmp/work-shared/phyboard-segin-imx6ul-7/kernel-build-artifacts
modules
| make[4]: 'conf' is up to date.
| #
| # configuration written to .config
| #
| Building backport-include/backport/autoconf.h ... done.
| make[3]: *** No rule to make target 'modules'.  Stop.
| make[2]: *** [Makefile.build:13: modules] Error 2
| make[1]: *** [Makefile.real:88: modules] Error 2
| make: *** [Makefile:43: modules] Error 2
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR:
ExecutionError('/home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/temp/run.do_compile.2980720',
1, None, None)
ERROR: Task
(/home/phytec/sanava-kernel/yocto/sources/meta-sanava/meta-bsp/recipes-kernel/backports/backports-cypress_5.15.58.bb:do_compile)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 670 tasks of which 652 didn't need to be
rerun and 1 failed.
NOTE: Writing buildhistory
NOTE: Writing buildhistory took: 2 seconds

Summary: 1 task failed:

/home/phytec/sanava-kernel/yocto/sources/meta-sanava/meta-bsp/recipes-kernel/backports/backports-cypress_5.15.58.bb:
do_compile
Summary: There was 1 WARNING message shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

Thank & regards
Aravind P

--0000000000004e862e0628075bdb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello All,<br><br>I&#39;m working on yocto to develop a la=
yer .In that customer wants some out source wifi related module files . Fro=
m yocto I&#39;m tring to build the .ko files into the rootfs . But whenever=
 i try to compile my recipe i&#39;m getting some error. in this can can any=
one help out for this one .=C2=A0does i get know how to do backporting thro=
ugh yocto.below i&#39;ll mention the error cases.<br><br><br>ERROR: backpor=
ts-cypress-5.15.58-r0 do_compile: oe_runmake failed<br>ERROR: backports-cyp=
ress-5.15.58-r0 do_compile: ExecutionError(&#39;/home/phytec/sanava-kernel/=
yocto/build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backports=
-cypress/5.15.58-r0/temp/run.do_compile.2980720&#39;, 1, None, None)<br>ERR=
OR: Logfile of failure stored in: /home/phytec/sanava-kernel/yocto/build/tm=
p/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.=
58-r0/temp/log.do_compile.2980720<br>Log data follows:<br>| DEBUG: Executin=
g shell function do_compile<br>| NOTE: make -j 4 KERNEL_SRC=3D/home/phytec/=
sanava-kernel/yocto/build/tmp/work-shared/phyboard-segin-imx6ul-7/kernel-so=
urce KLIB=3D/home/phytec/sanava-kernel/yocto/build/tmp/work-shared/phyboard=
-segin-imx6ul-7/kernel-source KLIB_BUILD=3D/home/phytec/sanava-kernel/yocto=
/build/tmp/work-shared/phyboard-segin-imx6ul-7/kernel-build-artifacts modul=
es<br>| make[4]: &#39;conf&#39; is up to date.<br>| #<br>| # configuration =
written to .config<br>| #<br>| Building backport-include/backport/autoconf.=
h ... done.<br>| make[3]: *** No rule to make target &#39;modules&#39;.=C2=
=A0 Stop.<br>| make[2]: *** [Makefile.build:13: modules] Error 2<br>| make[=
1]: *** [Makefile.real:88: modules] Error 2<br>| make: *** [Makefile:43: mo=
dules] Error 2<br>| ERROR: oe_runmake failed<br>| WARNING: exit code 1 from=
 a shell command.<br>| ERROR: ExecutionError(&#39;/home/phytec/sanava-kerne=
l/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backpor=
ts-cypress/5.15.58-r0/temp/run.do_compile.2980720&#39;, 1, None, None)<br>E=
RROR: Task (/home/phytec/sanava-kernel/yocto/sources/meta-sanava/meta-bsp/r=
ecipes-kernel/backports/backports-cypress_5.15.58.bb:do_compile) failed wit=
h exit code &#39;1&#39;<br>NOTE: Tasks Summary: Attempted 670 tasks of whic=
h 652 didn&#39;t need to be rerun and 1 failed.<br>NOTE: Writing buildhisto=
ry<br>NOTE: Writing buildhistory took: 2 seconds<br><br>Summary: 1 task fai=
led:<br>=C2=A0 /home/phytec/sanava-kernel/yocto/sources/meta-sanava/meta-bs=
p/recipes-kernel/backports/backports-cypress_5.15.58.bb:do_compile<br>Summa=
ry: There was 1 WARNING message shown.<br>Summary: There were 2 ERROR messa=
ges shown, returning a non-zero exit code.<br><br>Thank &amp; regards<br>Ar=
avind P<div><br></div></div>

--0000000000004e862e0628075bdb--

