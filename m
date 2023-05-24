Return-Path: <bill@plunkware.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B3DCC77B7C
	for <webhook@archiver.kernel.org>; Wed, 24 May 2023 20:22:24 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
 by mx.groups.io with SMTP id smtpd.web11.4704.1684959742635132330
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 May 2023 13:22:22 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@plunkware-com.20221208.gappssmtp.com header.s=20221208 header.b=3PeQiGlL;
 spf=pass (domain: plunkware.com, ip: 209.85.222.169, mailfrom: bill@plunkware.com)
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-75afa109e60so11345085a.2
        for <yocto@lists.yoctoproject.org>; Wed, 24 May 2023 13:22:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=plunkware-com.20221208.gappssmtp.com; s=20221208; t=1684959741; x=1687551741;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zSfh9WnF4RtDvG0ShUV5sSxww0e/sDOqzWpZPW7y8fE=;
        b=3PeQiGlLs9parb/3BdiwaR7K9p+7lZ7BTZqoakrc+yuQsHcPxuZ9KaCD0aQPuFe7BP
         /+s2YuobdSRPrwm4MdMrji6Kijf0M5jaXyPsDnj+yiB+7gAtFNj0Vef/tla/KQpJ0srs
         1rI1lpQiGyYMR3syvF9BhXeR6tfFj1p16Zmx2mOu7DjwojAiYgebizHhRf93S8vcwrGn
         lwWY3XXxxq4A8mKpDK6jkrKgdwkxTv8WCeiql9QkmII0BBLgF5euXgJbpTw1n0FgO0H4
         bFHrkjY6ZB0kpfWRtf6Q92SDSGgRhNxnkRB0nB8T7a0dZKgM2zRSr2gBXdqcDAPrQzca
         El+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684959741; x=1687551741;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zSfh9WnF4RtDvG0ShUV5sSxww0e/sDOqzWpZPW7y8fE=;
        b=YvMC40DPLactX1LJE2Lp+es+Y7vZNo8ORnXsHLbTxs3rzYzwmzi45iDWV6BPXDSRKZ
         XedeMT+KYes7Ge0msCBSXyEW/tpWqNDK/MU665GAnNVCVkq8XE+OQdQ/DIlodMYPR7y8
         lp5zL7N7trU/VYx8zHGrQAOekbr9aX2GQV4xwpcf+nfL6ZVVndq2Hqk1BtgmlFLZy3rN
         +TXSU+/qzpO0gcmTmfO+n04ZXl1wMOSiWNJogvjoE4EdXu0GnGKNHISSm4fflTLJkHsW
         loHRuGoYV2W1UI3BdKCQK/A4rrOAlhzcCDdFbuvhy9f9XFMXsGxvaXLyni4KGDL0qDMb
         J3jg==
X-Gm-Message-State: AC+VfDw9uQDlIQurXGCen3DBzuiImjBWdaTePcnJV5ajS2MXoXYlgA2l
	U2dy28XArGi0tBQ3QwIM+AYpA4Hsr0As6h5DvfCXwg==
X-Google-Smtp-Source: ACHHUZ7ywviEjaVwbRNIYEIl1NV9GflFGZALSx0JjollevFABFUlqj3lMHsla6iJGi24qay5qdCzTTkdocqi2CQMANQ=
X-Received: by 2002:ad4:5de3:0:b0:61b:7bac:aeb7 with SMTP id
 jn3-20020ad45de3000000b0061b7bacaeb7mr28947165qvb.40.1684959741595; Wed, 24
 May 2023 13:22:21 -0700 (PDT)
MIME-Version: 1.0
References: <FdMa.1684929870726192226.1anj@lists.yoctoproject.org> <78d1f724267411f2456fe3108638bdcc841c6b5e.camel@linuxfoundation.org>
In-Reply-To: <78d1f724267411f2456fe3108638bdcc841c6b5e.camel@linuxfoundation.org>
From: Bill Plunkett <bill@plunkware.com>
Date: Wed, 24 May 2023 14:22:10 -0600
Message-ID: <CALLsHzgOLWtoMtPYO+U_5yT8XEv_xpt1wYVxALSz5RokGP=0sA@mail.gmail.com>
Subject: Re: [yocto] libstdc++.so.6: version `GLIBCXX_3.4.30' not found
 (required by bin/cmake) #hardknott
To: Mahendra Sondagar <mahendrasondagar08@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000dbe34d05fc764217"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 May 2023 20:22:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60117

--000000000000dbe34d05fc764217
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I've had success building yocto hardknott images using the
crops/poky:ubuntu-20.04 docker image.



On Wed, May 24, 2023 at 2:12=E2=80=AFPM Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Wed, 2023-05-24 at 05:04 -0700, Mahendra Sondagar wrote:
> > Hi.. community
> > Hope all are doing well
> >
> > I'm dealing with the Yocto hardknott with my Ubuntu host
> > The Ubuntu version is Ubuntu 22.04.2 LTS
> >
> > During the building of the custom image, everything goes well until
> > the build process hits the below error message
> >
> > | make  -f CMakeFiles/Makefile2 preinstall
> > | make[1]: Entering directory '/home/aio/AIO_Systems_Yocto/var-fslc-
> > yocto/build_aio/tmp/work/x86_64-linux/cmake-native/3.19.5-r0/build'
> > | make[1]: Nothing to be done for 'preinstall'.
> > | make[1]: Leaving directory '/home/aio/AIO_Systems_Yocto/var-fslc-
> > yocto/build_aio/tmp/work/x86_64-linux/cmake-native/3.19.5-r0/build'
> > | ERROR: oe_runmake failed
> > | Install the project...
> > | bin/cmake -P cmake_install.cmake
> > | WARNING: exit code 1 from a shell command.
> > | bin/cmake: /home/aio/AIO_Systems_Yocto/var-fslc-
> > yocto/build_aio/tmp/sysroots-uninative/x86_64-
> > linux/usr/lib/libstdc++.so.6: version `GLIBCXX_3.4.30' not found
> > (required by bin/cmake)
> > | make: *** [Makefile:162: install] Error 1
> > | ERROR: ExecutionError('/home/aio/AIO_Systems_Yocto/var-fslc-
> > yocto/build_aio/tmp/work/x86_64-linux/cmake-native/3.19.5-
> > r0/temp/run.do_install.194605', 1, None, None)
> >
> > for instance, I have also verified the installed version of the GLIBC
> > via the below command
> > strings /usr/lib/x86_64-linux-gnu/libstdc++.so.6 | grep GLIBCXX
> >
> > From where I got to know that, it's already installed!
> >
> > Can anyone help me here to resolve the issue?
> > All comments and suggestions welcome
>
> Upgrading uninative to a version from master will probably help fix
> that. As Khem mentions, hardknott is know longer supported through.
>
> Cheers,
>
> Richard
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60116):
> https://lists.yoctoproject.org/g/yocto/message/60116
> Mute This Topic: https://lists.yoctoproject.org/mt/99106807/5407716
> Mute #hardknott:
> https://lists.yoctoproject.org/g/yocto/mutehashtag/hardknott
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe:
> https://lists.yoctoproject.org/g/yocto/leave/9395733/5407716/611402581/xy=
zzy
> [bill@plunkware.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000dbe34d05fc764217
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;ve had success building yocto hardknott images using=
 the crops/poky:ubuntu-20.04 docker image.<div><br></div><div><br></div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Wed, May 24, 2023 at 2:12=E2=80=AFPM Richard Purdie &lt;<a href=3D"mailto:r=
ichard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Wed=
, 2023-05-24 at 05:04 -0700, Mahendra Sondagar wrote:<br>
&gt; Hi.. community=C2=A0<br>
&gt; Hope all are doing well=C2=A0<br>
&gt; =C2=A0<br>
&gt; I&#39;m dealing with the Yocto hardknott with my Ubuntu host=C2=A0<br>
&gt; The Ubuntu version is=C2=A0Ubuntu 22.04.2 LTS<br>
&gt; =C2=A0<br>
&gt; During the building of the custom image, everything goes well until<br=
>
&gt; the build process hits the below error message=C2=A0<br>
&gt; =C2=A0<br>
&gt; | make=C2=A0 -f CMakeFiles/Makefile2 preinstall<br>
&gt; | make[1]: Entering directory &#39;/home/aio/AIO_Systems_Yocto/var-fsl=
c-<br>
&gt; yocto/build_aio/tmp/work/x86_64-linux/cmake-native/3.19.5-r0/build&#39=
;<br>
&gt; | make[1]: Nothing to be done for &#39;preinstall&#39;.<br>
&gt; | make[1]: Leaving directory &#39;/home/aio/AIO_Systems_Yocto/var-fslc=
-<br>
&gt; yocto/build_aio/tmp/work/x86_64-linux/cmake-native/3.19.5-r0/build&#39=
;<br>
&gt; | ERROR: oe_runmake failed<br>
&gt; | Install the project...<br>
&gt; | bin/cmake -P cmake_install.cmake<br>
&gt; | WARNING: exit code 1 from a shell command.<br>
&gt; | bin/cmake: /home/aio/AIO_Systems_Yocto/var-fslc-<br>
&gt; yocto/build_aio/tmp/sysroots-uninative/x86_64-<br>
&gt; linux/usr/lib/libstdc++.so.6: version `GLIBCXX_3.4.30&#39; not found<b=
r>
&gt; (required by bin/cmake)<br>
&gt; | make: *** [Makefile:162: install] Error 1<br>
&gt; | ERROR: ExecutionError(&#39;/home/aio/AIO_Systems_Yocto/var-fslc-<br>
&gt; yocto/build_aio/tmp/work/x86_64-linux/cmake-native/3.19.5-<br>
&gt; r0/temp/run.do_install.194605&#39;, 1, None, None)<br>
&gt; =C2=A0<br>
&gt; for instance, I have also verified the installed version of the GLIBC<=
br>
&gt; via the below command=C2=A0<br>
&gt; strings /usr/lib/x86_64-linux-gnu/libstdc++.so.6 | grep GLIBCXX<br>
&gt; =C2=A0<br>
&gt; From where I got to know that, it&#39;s already installed!<br>
&gt; =C2=A0<br>
&gt; Can anyone help me here to resolve the issue?<br>
&gt; All comments and suggestions welcome=C2=A0=C2=A0<br>
<br>
Upgrading uninative to a version from master will probably help fix<br>
that. As Khem mentions, hardknott is know longer supported through.<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#60116): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/60116" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/60116</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/99106807/5407=
716" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/99106807/5407716</a><br>
Mute #hardknott:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehasht=
ag/hardknott" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproje=
ct.org/g/yocto/mutehashtag/hardknott</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/leave/939573=
3/5407716/611402581/xyzzy" rel=3D"noreferrer" target=3D"_blank">https://lis=
ts.yoctoproject.org/g/yocto/leave/9395733/5407716/611402581/xyzzy</a> [<a h=
ref=3D"mailto:bill@plunkware.com" target=3D"_blank">bill@plunkware.com</a>]=
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000dbe34d05fc764217--

