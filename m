Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28050C28B20
	for <webhook@archiver.kernel.org>; Wed,  2 Apr 2025 03:59:17 +0000 (UTC)
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com [209.85.161.51])
 by mx.groups.io with SMTP id smtpd.web11.196.1743566347028369356
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Apr 2025 20:59:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=gTawVwpI;
 spf=pass (domain: gmail.com, ip: 209.85.161.51, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f51.google.com with SMTP id 006d021491bc7-60288fd4169so1881098eaf.3
        for <yocto@lists.yoctoproject.org>; Tue, 01 Apr 2025 20:59:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743566346; x=1744171146; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KzmtRi3YD3X03j7U00f4eCIwFjR8VAfm4pqlCu5bajA=;
        b=gTawVwpI4wuOxGhWJhXnw7o543Hz5gMDF56avS3FsIxol5Xjoi94rT3mw05TMpC+7J
         VNstBVbhb0gN/TvfvaE8rXixIg2d57C67NYOk3vJdHzdHeep52gZDlg8gfyHrSbXmNJ2
         R88Y+y1q9flW9PjnahLlMTPw3AUZgMhX3ux7m8IYMossLA4TDo3a/61c7HW6gLB1fUfD
         gY0Y+bE4ru9jmynuFf929t+BqDnu1XPnF+O4adLrhPLtrVS+LxrNXj/TkGBhb/OkBywB
         Sy9mRxGgPH7vA08pyGJIYh81KDUQZfJz8KKTmeCl8p7BPf+yklA2daONUgWO7cDiXr5K
         ezyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743566346; x=1744171146;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KzmtRi3YD3X03j7U00f4eCIwFjR8VAfm4pqlCu5bajA=;
        b=FyS3B0aSI4QYOSsRkJdFWUTF+m10qhEWTgGk1myT0oXm1CiD4swEzBsTl1ELtSk3Cq
         RjKYDJpcoyR8mlsfZTAoxWhOTUvXLo1gXEgaCr/tNzPSoifWeedvIFU2bj+zBKY8LgCi
         fx8ftyuFBxY68z8MaaTTuoJxnudyktD1ZYkXkXBaUfkcWaXy3J6fwSp45YrOHnuEVw2F
         SxpvO90I2cbsqBCI4ldsKjzhy0bZh9S4xXGOuhjLrru6/h/GLizJ7X5RNM+Nhl5APo92
         o6Zosf/cHWTHF2G0/GxtcM9wBmcQWQ/FtIUbaCIKN8jPf3XSG82KyIqxZf8JmoGlntYZ
         /cvA==
X-Gm-Message-State: AOJu0YwOySGTWH4OHg9RvRwqYIvsv6AWseThHV45r2HxRQfqf6TbyMet
	oZROoYYJdt3wWW+pmP8hOnqLCuVR9UZ+qAv8pc5arrijcLtxrFqrUm2291qQBBtxRc94qNfrr6h
	jMZFgCNG6mwZX49k83m3rFGIXF2b59LSWo8Q=
X-Gm-Gg: ASbGncu/m/jBroad3vzJt3XA8Uxq1xy3NGctAvtHODNIYO1sZumxo6DSK27qXvqK4VR
	r6nOCi313iz/R8NRyzfp0jSg+o6qMApqvwt4zrnXXfuOWQ39DE0ZGrc8u4GEFb/6rv3sLm7wzF/
	9gSCEryt0WlxqQ0SwOPByQ/Oq9Ig/Nf+OYJ0XxZeZu
X-Google-Smtp-Source: AGHT+IGFH84uOj3VM5GMbRGI9epP9B7OsC/uQPVHIHGsOQBXQ88SIiTy5A1ykbrDzdQ49MaAuJs3eUpCZBwD+0ADTSg=
X-Received: by 2002:a05:6820:551:b0:5fc:e026:f073 with SMTP id
 006d021491bc7-603f3a1371cmr2917928eaf.8.1743566345940; Tue, 01 Apr 2025
 20:59:05 -0700 (PDT)
MIME-Version: 1.0
References: <CcNo.1743565528100991148.iVuz@lists.yoctoproject.org>
In-Reply-To: <CcNo.1743565528100991148.iVuz@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 1 Apr 2025 20:58:40 -0700
X-Gm-Features: AQ5f1JondEIbJKPgCQx-YYXOG0xq2Z9Ug-XmCHIOr-0Y9D2hoawcvGSTcaGw310
Message-ID: <CAMKF1srtvEKECf=AFum2KBtvhOn3aYijMPEoM8ZPQ6gkTVETHQ@mail.gmail.com>
Subject: Re: [yocto] GLIBCXX_3.4.30' not found
To: yocto@lists.yoctoproject.org, sateesh0457@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Apr 2025 03:59:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65054

On Tue, Apr 1, 2025 at 8:45=E2=80=AFPM sateesh m via lists.yoctoproject.org
<sateesh0457=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Hi Team,
>
> I am facing an issue with 'GLIBCXX_3.4.30' not found. I am using Ubuntu 1=
8.04 with GCC and G++ version 7.5. Previously, my build included BusyBox ve=
rsion 1.31, but I now want to upgrade to version 1.35. I manually integrate=
d the latest version using BitBake, and it compiled successfully. However, =
while building the entire image, I encountered the mentioned issue. Before =
upgrading BusyBox, my build was successful, but after upgrading, I see this=
 issue during compilation. What could be the reason, and how can I fix this=
?

looking at cmake version it seems you are building a dunfell release.
Can you confirm ?
try deleting '/home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/'
and doing a rebuild.

>
> /hdd/c_Basic/subcore/build/tcc8030-sub/tmp/work/x86_64-linux/cmake-native=
/3.16.5-r0/cmake-3.16.5/Tests/CMakeLib /home/p_6012115/hdd/c_Basic/subcore/=
build/tcc8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build /home/=
p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/work/x86_64-linux/cmake=
-native/3.16.5-r0/build/Tests/CMakeLib /home/p_6012115/hdd/c_Basic/subcore/=
build/tcc8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build/Tests/=
CMakeLib/CMakeFiles/CMakeLibTests.dir/DependInfo.cmake --color=3D
> | make[2]: Leaving directory '/home/p_6012115/hdd/c_Basic/subcore/build/t=
cc8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build'
> | make -f Source/CMakeFiles/ctest.dir/build.make Source/CMakeFiles/ctest.=
dir/build
> | make[2]: Leaving directory '/home/p_6012115/hdd/c_Basic/subcore/build/t=
cc8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build'
> | make -f Tests/CMakeLib/CMakeFiles/CMakeLibTests.dir/build.make Tests/CM=
akeLib/CMakeFiles/CMakeLibTests.dir/build
> | make[2]: Leaving directory '/home/p_6012115/hdd/c_Basic/subcore/build/t=
cc8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build'
> | make -f Tests/RunCMake/CMakeFiles/ctresalloc.dir/build.make Tests/RunCM=
ake/CMakeFiles/ctresalloc.dir/build
> | make[2]: Entering directory '/home/p_6012115/hdd/c_Basic/subcore/build/=
tcc8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build'
> | make[2]: Nothing to be done for 'Source/CMakeFiles/ctest.dir/build'.
> | make[2]: Leaving directory '/home/p_6012115/hdd/c_Basic/subcore/build/t=
cc8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build'
> | make[2]: Entering directory '/home/p_6012115/hdd/c_Basic/subcore/build/=
tcc8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build'
> | make[2]: Nothing to be done for 'Tests/CMakeLib/CMakeFiles/CMakeLibTest=
s.dir/build'.
> | make[2]: Leaving directory '/home/p_6012115/hdd/c_Basic/subcore/build/t=
cc8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build'
> | make[2]: Entering directory '/home/p_6012115/hdd/c_Basic/subcore/build/=
tcc8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build'
> | make[2]: Nothing to be done for 'Tests/RunCMake/CMakeFiles/ctresalloc.d=
ir/build'.
> | make[2]: Leaving directory '/home/p_6012115/hdd/c_Basic/subcore/build/t=
cc8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build'
> | [ 96%] Built target ctest
> | [ 97%] Built target ctresalloc
> | [100%] Built target CMakeLibTests
> | make[1]: Leaving directory '/home/p_6012115/hdd/c_Basic/subcore/build/t=
cc8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build'
> | /home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/work/x86_64-l=
inux/cmake-native/3.16.5-r0/build/Bootstrap.cmk/cmake -E cmake_progress_sta=
rt /home/p_6012115/hdd/ccNC_Basic/subcore/build/tcc8030-sub/tmp/work/x86_64=
-linux/cmake-native/3.16.5-r0/build/CMakeFiles 0
> | make -f CMakeFiles/Makefile2 preinstall
> | make[1]: Entering directory '/home/p_6012115/hdd/c_Basic/subcore/build/=
tcc8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build'
> | make[1]: Nothing to be done for 'preinstall'.
> | make[1]: Leaving directory '/home/p_6012115/hdd/c_Basic/subcore/build/t=
cc8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build'
> | Install the project...
> | bin/cmake -P cmake_install.cmake
> | bin/cmake: /home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/sy=
sroots-uninative/x86_64-linux/usr/lib/libstdc++.so.6: version `GLIBCXX_3.4.=
30' not found (required by bin/cmake)
> | Makefile:142: recipe for target 'install' failed
> | make: *** [install] Error 1
> | WARNING: /home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/work=
/x86_64-linux/cmake-native/3.16.5-r0/temp/run.do_install.24788:1 exit 1 fro=
m 'exit 1'
> |
> ERROR: Task (/home/p_6012115/hdd/c_Basic/subcore/poky/meta/recipes-devtoo=
ls/cmake/cmake-native_3.16.5.bb:do_install) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 1314 tasks of which 1309 didn't need to be=
 rerun and 1 failed.
> NOTE: Writing buildhistory
> NOTE: Writing buildhistory took: 0 seconds
> Summary: 1 task failed:
>   /home/p_6012115/hdd/c_Basic/subcore/poky/meta/recipes-devtools/cmake/cm=
ake-native_3.16.5.bb:do_install
>
> Thanks in advance.
>
> Regards,
> Sateesh
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#65052): https://lists.yoctoproject.org/g/yocto/messag=
e/65052
> Mute This Topic: https://lists.yoctoproject.org/mt/112040880/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

