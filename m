Return-Path: <sateesh0457@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F47EC28B20
	for <webhook@archiver.kernel.org>; Wed,  2 Apr 2025 04:01:17 +0000 (UTC)
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
 by mx.groups.io with SMTP id smtpd.web10.268.1743566472386554425
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Apr 2025 21:01:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=RokTH2lS;
 spf=pass (domain: gmail.com, ip: 209.85.219.180, mailfrom: sateesh0457@gmail.com)
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-e643f0933afso409988276.1
        for <yocto@lists.yoctoproject.org>; Tue, 01 Apr 2025 21:01:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743566471; x=1744171271; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=UMbdV+WEu5BGV9Ag1h5BOfBx+wf9CubeHNUmnHzSKYg=;
        b=RokTH2lSfJ27pG1NM/BOnH+4ch1Vc77NbfK6tS7ww4CXlpzQRpKqx8Y0B85wGHL+AC
         02sZVxcopC/dCmZGZIJ9+THGLB2PWq8UisfN2tJRzuJ3YOQYQ/6WFrj7vKV3lQ2EUmcD
         5uO2JYGbDo0vbRWrUMRaXO7D+cgyBPsdEGjfS9YwXSvpcF01kIRRRyD7vBLZgMbmtJea
         euScfA9zPlaQSA7R2mvln5STAVkkLNJbz2vzE+EGsRVCl5rdX/vwyLWxasOdl26Qr5iv
         wCF66BkfV5IqibrRxoTNLAsNM4bJnnX0YPvq4nnuMz32z23F5I5Y9qZgACh1Wf7WsBQM
         C2Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743566471; x=1744171271;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UMbdV+WEu5BGV9Ag1h5BOfBx+wf9CubeHNUmnHzSKYg=;
        b=KywTTXmEzW3GPf+i8O6pwqo1MgeDLtdy3hEGboBDIp0VlC2Lbdb2Ju9qpUU5wBmoDs
         mpLfgDUZoVd+m5kMkTmy21BLBBlFFemi43w5gicLdYLkSwcCS/LRqPqvVw8K9dQcDkMd
         GBbul6GEcGi6G6lLr/V8LXxL9ok6rEmmUN+/RHq0Jocz2ti6HZkB3hTLK3POrsWYfVI5
         aaBZNKqKxkJPXk5d8OQJi4lstI0TQsWGZbX1sGBgNfYlG+SV7QyG0dMLjArKyQuOW6IO
         SSIAqfKUedQ4jOWZZ0PlGesGbatqpdm5WsMZEmaMt1FaKIWyX+LqIS9VjaswFmlWWtII
         cJwA==
X-Gm-Message-State: AOJu0YxQ1Ssv2+YdcT20+9fClA5vEvvR+8NIi1IQh9i2OmmIXjEMshTb
	8JM1SUiMfu1Kw4/1lWId/muWoY5G6fO7lhGdt9zxoggwHqDUXqm7YhGwhReyMXjp0vYf3THXGaY
	tc8OPLC5KDhImagYuoC7WPnZwPToXNyWP
X-Gm-Gg: ASbGncv7YW2vzrtK6U6lXFnTJwu4LEs2AYcDHb7n2+mCcLTGlkdgSsHQHlNUP9j0tH5
	LxZAO/4GiLnsWMjE+1I2KwMslqAV5Fo2pymzSj/y9yMg8pVba11pniWscTGcC6o7zHy3umA+xWL
	EAYhCmcxpakBAtLXSwIGpBNYEiR6NOXv/dWTOw2tNZTco=
X-Google-Smtp-Source: AGHT+IEbEbBzzwE27NIbwjNvReGSD+HirR4jTV0j/5DtxglaEW1WsQNiEs1Ap+DK1hyYNxtOQFob9HEmEKCdUOz4aLM=
X-Received: by 2002:a05:6902:2484:b0:e65:5698:e40 with SMTP id
 3f1490d57ef6-e6df7b34e09mr845117276.18.1743566470879; Tue, 01 Apr 2025
 21:01:10 -0700 (PDT)
MIME-Version: 1.0
References: <CcNo.1743565528100991148.iVuz@lists.yoctoproject.org> <CAMKF1srtvEKECf=AFum2KBtvhOn3aYijMPEoM8ZPQ6gkTVETHQ@mail.gmail.com>
In-Reply-To: <CAMKF1srtvEKECf=AFum2KBtvhOn3aYijMPEoM8ZPQ6gkTVETHQ@mail.gmail.com>
From: sateesh m <sateesh0457@gmail.com>
Date: Wed, 2 Apr 2025 09:30:57 +0530
X-Gm-Features: AQ5f1JrZaL8azJT1z2dUBNuebV2FSQAAh9jFC6iz4C2v8e-kw1KuvfMCUhZA6F4
Message-ID: <CACsETSvKme-w+i2GFdmx5i2E9+TzZcjvN4qkmnrV1rEc+UzZtg@mail.gmail.com>
Subject: Re: [yocto] GLIBCXX_3.4.30' not found
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000023a8ec0631c3b4bf"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Apr 2025 04:01:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65055

--00000000000023a8ec0631c3b4bf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes I building dunfell version.

On Wed, 2 Apr, 2025, 9:29=E2=80=AFam Khem Raj, <raj.khem@gmail.com> wrote:

> On Tue, Apr 1, 2025 at 8:45=E2=80=AFPM sateesh m via lists.yoctoproject.o=
rg
> <sateesh0457=3Dgmail.com@lists.yoctoproject.org> wrote:
> >
> > Hi Team,
> >
> > I am facing an issue with 'GLIBCXX_3.4.30' not found. I am using Ubuntu
> 18.04 with GCC and G++ version 7.5. Previously, my build included BusyBox
> version 1.31, but I now want to upgrade to version 1.35. I manually
> integrated the latest version using BitBake, and it compiled successfully=
.
> However, while building the entire image, I encountered the mentioned
> issue. Before upgrading BusyBox, my build was successful, but after
> upgrading, I see this issue during compilation. What could be the reason,
> and how can I fix this?
>
> looking at cmake version it seems you are building a dunfell release.
> Can you confirm ?
> try deleting '/home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/'
> and doing a rebuild.
>
> >
> >
> /hdd/c_Basic/subcore/build/tcc8030-sub/tmp/work/x86_64-linux/cmake-native=
/3.16.5-r0/cmake-3.16.5/Tests/CMakeLib
> /home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/work/x86_64-lin=
ux/cmake-native/3.16.5-r0/build
> /home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/work/x86_64-lin=
ux/cmake-native/3.16.5-r0/build/Tests/CMakeLib
> /home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/work/x86_64-lin=
ux/cmake-native/3.16.5-r0/build/Tests/CMakeLib/CMakeFiles/CMakeLibTests.dir=
/DependInfo.cmake
> --color=3D
> > | make[2]: Leaving directory
> '/home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/work/x86_64-li=
nux/cmake-native/3.16.5-r0/build'
> > | make -f Source/CMakeFiles/ctest.dir/build.make
> Source/CMakeFiles/ctest.dir/build
> > | make[2]: Leaving directory
> '/home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/work/x86_64-li=
nux/cmake-native/3.16.5-r0/build'
> > | make -f Tests/CMakeLib/CMakeFiles/CMakeLibTests.dir/build.make
> Tests/CMakeLib/CMakeFiles/CMakeLibTests.dir/build
> > | make[2]: Leaving directory
> '/home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/work/x86_64-li=
nux/cmake-native/3.16.5-r0/build'
> > | make -f Tests/RunCMake/CMakeFiles/ctresalloc.dir/build.make
> Tests/RunCMake/CMakeFiles/ctresalloc.dir/build
> > | make[2]: Entering directory
> '/home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/work/x86_64-li=
nux/cmake-native/3.16.5-r0/build'
> > | make[2]: Nothing to be done for 'Source/CMakeFiles/ctest.dir/build'.
> > | make[2]: Leaving directory
> '/home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/work/x86_64-li=
nux/cmake-native/3.16.5-r0/build'
> > | make[2]: Entering directory
> '/home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/work/x86_64-li=
nux/cmake-native/3.16.5-r0/build'
> > | make[2]: Nothing to be done for
> 'Tests/CMakeLib/CMakeFiles/CMakeLibTests.dir/build'.
> > | make[2]: Leaving directory
> '/home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/work/x86_64-li=
nux/cmake-native/3.16.5-r0/build'
> > | make[2]: Entering directory
> '/home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/work/x86_64-li=
nux/cmake-native/3.16.5-r0/build'
> > | make[2]: Nothing to be done for
> 'Tests/RunCMake/CMakeFiles/ctresalloc.dir/build'.
> > | make[2]: Leaving directory
> '/home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/work/x86_64-li=
nux/cmake-native/3.16.5-r0/build'
> > | [ 96%] Built target ctest
> > | [ 97%] Built target ctresalloc
> > | [100%] Built target CMakeLibTests
> > | make[1]: Leaving directory
> '/home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/work/x86_64-li=
nux/cmake-native/3.16.5-r0/build'
> > |
> /home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/work/x86_64-lin=
ux/cmake-native/3.16.5-r0/build/Bootstrap.cmk/cmake
> -E cmake_progress_start
> /home/p_6012115/hdd/ccNC_Basic/subcore/build/tcc8030-sub/tmp/work/x86_64-=
linux/cmake-native/3.16.5-r0/build/CMakeFiles
> 0
> > | make -f CMakeFiles/Makefile2 preinstall
> > | make[1]: Entering directory
> '/home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/work/x86_64-li=
nux/cmake-native/3.16.5-r0/build'
> > | make[1]: Nothing to be done for 'preinstall'.
> > | make[1]: Leaving directory
> '/home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/work/x86_64-li=
nux/cmake-native/3.16.5-r0/build'
> > | Install the project...
> > | bin/cmake -P cmake_install.cmake
> > | bin/cmake:
> /home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/sysroots-uninat=
ive/x86_64-linux/usr/lib/libstdc++.so.6:
> version `GLIBCXX_3.4.30' not found (required by bin/cmake)
> > | Makefile:142: recipe for target 'install' failed
> > | make: *** [install] Error 1
> > | WARNING:
> /home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/work/x86_64-lin=
ux/cmake-native/3.16.5-r0/temp/run.do_install.24788:1
> exit 1 from 'exit 1'
> > |
> > ERROR: Task
> (/home/p_6012115/hdd/c_Basic/subcore/poky/meta/recipes-devtools/cmake/cma=
ke-native_3.16.5.bb:do_install)
> failed with exit code '1'
> > NOTE: Tasks Summary: Attempted 1314 tasks of which 1309 didn't need to
> be rerun and 1 failed.
> > NOTE: Writing buildhistory
> > NOTE: Writing buildhistory took: 0 seconds
> > Summary: 1 task failed:
> >
>  /home/p_6012115/hdd/c_Basic/subcore/poky/meta/recipes-devtools/cmake/cma=
ke-native_3.16.5.bb:
> do_install
> >
> > Thanks in advance.
> >
> > Regards,
> > Sateesh
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#65052):
> https://lists.yoctoproject.org/g/yocto/message/65052
> > Mute This Topic: https://lists.yoctoproject.org/mt/112040880/1997914
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>

--00000000000023a8ec0631c3b4bf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Yes I building dunfell version. </p>
<br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, 2 Apr, 2025, 9:29=E2=80=AFam Khem Raj, &lt;<a href=
=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex">On Tue, Apr 1, 2025 at 8:45=E2=80=AFPM satees=
h m via <a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer norefer=
rer" target=3D"_blank">lists.yoctoproject.org</a><br>
&lt;sateesh0457=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" targe=
t=3D"_blank" rel=3D"noreferrer">gmail.com@lists.yoctoproject.org</a>&gt; wr=
ote:<br>
&gt;<br>
&gt; Hi Team,<br>
&gt;<br>
&gt; I am facing an issue with &#39;GLIBCXX_3.4.30&#39; not found. I am usi=
ng Ubuntu 18.04 with GCC and G++ version 7.5. Previously, my build included=
 BusyBox version 1.31, but I now want to upgrade to version 1.35. I manuall=
y integrated the latest version using BitBake, and it compiled successfully=
. However, while building the entire image, I encountered the mentioned iss=
ue. Before upgrading BusyBox, my build was successful, but after upgrading,=
 I see this issue during compilation. What could be the reason, and how can=
 I fix this?<br>
<br>
looking at cmake version it seems you are building a dunfell release.<br>
Can you confirm ?<br>
try deleting &#39;/home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp=
/&#39;<br>
and doing a rebuild.<br>
<br>
&gt;<br>
&gt; /hdd/c_Basic/subcore/build/tcc8030-sub/tmp/work/x86_64-linux/cmake-nat=
ive/3.16.5-r0/cmake-3.16.5/Tests/CMakeLib /home/p_6012115/hdd/c_Basic/subco=
re/build/tcc8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build /ho=
me/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/work/x86_64-linux/cm=
ake-native/3.16.5-r0/build/Tests/CMakeLib /home/p_6012115/hdd/c_Basic/subco=
re/build/tcc8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build/Tes=
ts/CMakeLib/CMakeFiles/CMakeLibTests.dir/DependInfo.cmake --color=3D<br>
&gt; | make[2]: Leaving directory &#39;/home/p_6012115/hdd/c_Basic/subcore/=
build/tcc8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build&#39;<b=
r>
&gt; | make -f Source/CMakeFiles/ctest.dir/build.make Source/CMakeFiles/cte=
st.dir/build<br>
&gt; | make[2]: Leaving directory &#39;/home/p_6012115/hdd/c_Basic/subcore/=
build/tcc8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build&#39;<b=
r>
&gt; | make -f Tests/CMakeLib/CMakeFiles/CMakeLibTests.dir/build.make Tests=
/CMakeLib/CMakeFiles/CMakeLibTests.dir/build<br>
&gt; | make[2]: Leaving directory &#39;/home/p_6012115/hdd/c_Basic/subcore/=
build/tcc8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build&#39;<b=
r>
&gt; | make -f Tests/RunCMake/CMakeFiles/ctresalloc.dir/build.make Tests/Ru=
nCMake/CMakeFiles/ctresalloc.dir/build<br>
&gt; | make[2]: Entering directory &#39;/home/p_6012115/hdd/c_Basic/subcore=
/build/tcc8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build&#39;<=
br>
&gt; | make[2]: Nothing to be done for &#39;Source/CMakeFiles/ctest.dir/bui=
ld&#39;.<br>
&gt; | make[2]: Leaving directory &#39;/home/p_6012115/hdd/c_Basic/subcore/=
build/tcc8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build&#39;<b=
r>
&gt; | make[2]: Entering directory &#39;/home/p_6012115/hdd/c_Basic/subcore=
/build/tcc8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build&#39;<=
br>
&gt; | make[2]: Nothing to be done for &#39;Tests/CMakeLib/CMakeFiles/CMake=
LibTests.dir/build&#39;.<br>
&gt; | make[2]: Leaving directory &#39;/home/p_6012115/hdd/c_Basic/subcore/=
build/tcc8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build&#39;<b=
r>
&gt; | make[2]: Entering directory &#39;/home/p_6012115/hdd/c_Basic/subcore=
/build/tcc8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build&#39;<=
br>
&gt; | make[2]: Nothing to be done for &#39;Tests/RunCMake/CMakeFiles/ctres=
alloc.dir/build&#39;.<br>
&gt; | make[2]: Leaving directory &#39;/home/p_6012115/hdd/c_Basic/subcore/=
build/tcc8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build&#39;<b=
r>
&gt; | [ 96%] Built target ctest<br>
&gt; | [ 97%] Built target ctresalloc<br>
&gt; | [100%] Built target CMakeLibTests<br>
&gt; | make[1]: Leaving directory &#39;/home/p_6012115/hdd/c_Basic/subcore/=
build/tcc8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build&#39;<b=
r>
&gt; | /home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/work/x86_6=
4-linux/cmake-native/3.16.5-r0/build/Bootstrap.cmk/cmake -E cmake_progress_=
start /home/p_6012115/hdd/ccNC_Basic/subcore/build/tcc8030-sub/tmp/work/x86=
_64-linux/cmake-native/3.16.5-r0/build/CMakeFiles 0<br>
&gt; | make -f CMakeFiles/Makefile2 preinstall<br>
&gt; | make[1]: Entering directory &#39;/home/p_6012115/hdd/c_Basic/subcore=
/build/tcc8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build&#39;<=
br>
&gt; | make[1]: Nothing to be done for &#39;preinstall&#39;.<br>
&gt; | make[1]: Leaving directory &#39;/home/p_6012115/hdd/c_Basic/subcore/=
build/tcc8030-sub/tmp/work/x86_64-linux/cmake-native/3.16.5-r0/build&#39;<b=
r>
&gt; | Install the project...<br>
&gt; | bin/cmake -P cmake_install.cmake<br>
&gt; | bin/cmake: /home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp=
/sysroots-uninative/x86_64-linux/usr/lib/libstdc++.so.6: version `GLIBCXX_3=
.4.30&#39; not found (required by bin/cmake)<br>
&gt; | Makefile:142: recipe for target &#39;install&#39; failed<br>
&gt; | make: *** [install] Error 1<br>
&gt; | WARNING: /home/p_6012115/hdd/c_Basic/subcore/build/tcc8030-sub/tmp/w=
ork/x86_64-linux/cmake-native/3.16.5-r0/temp/run.do_install.24788:1 exit 1 =
from &#39;exit 1&#39;<br>
&gt; |<br>
&gt; ERROR: Task (/home/p_6012115/hdd/c_Basic/subcore/poky/meta/recipes-dev=
tools/cmake/cmake-native_3.16.5.bb:do_install) failed with exit code &#39;1=
&#39;<br>
&gt; NOTE: Tasks Summary: Attempted 1314 tasks of which 1309 didn&#39;t nee=
d to be rerun and 1 failed.<br>
&gt; NOTE: Writing buildhistory<br>
&gt; NOTE: Writing buildhistory took: 0 seconds<br>
&gt; Summary: 1 task failed:<br>
&gt;=C2=A0 =C2=A0/home/p_6012115/hdd/c_Basic/subcore/poky/meta/recipes-devt=
ools/cmake/cmake-native_3.16.5.bb:do_install<br>
&gt;<br>
&gt; Thanks in advance.<br>
&gt;<br>
&gt; Regards,<br>
&gt; Sateesh<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; You automatically follow any topics you start or reply to.<br>
&gt; View/Reply Online (#65052): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/65052" rel=3D"noreferrer noreferrer" target=3D"_blank">http=
s://lists.yoctoproject.org/g/yocto/message/65052</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/11204088=
0/1997914" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yo=
ctoproject.org/mt/112040880/1997914</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><=
br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/g/yocto/unsub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_bla=
nk" rel=3D"noreferrer">raj.khem@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div>

--00000000000023a8ec0631c3b4bf--

