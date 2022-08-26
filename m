Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A732ECAAD6
	for <webhook@archiver.kernel.org>; Fri, 26 Aug 2022 21:03:58 +0000 (UTC)
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com
 [209.85.128.174])
 by mx.groups.io with SMTP id smtpd.web11.42303.1661547833341162568
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Aug 2022 14:03:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=qpmxYzF2;
 spf=pass (domain: gmail.com, ip: 209.85.128.174,
 mailfrom: raj.khem@gmail.com)
Received: by mail-yw1-f174.google.com with SMTP id
 00721157ae682-32a09b909f6so66608637b3.0
        for <yocto@lists.yoctoproject.org>;
 Fri, 26 Aug 2022 14:03:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=b1kGg4Bn0zg3C9atUK1YE3JTLy4Tf92ANTHmlm6S8e4=;
        b=qpmxYzF2fzBpT71/HYGMvWW9oOZSqzABmEn9NoLvqXgUpyk4f57CdyMWjZ1yXgDz7z
         VtRfPvbNsaqFXiphJtppSrlWho5KKtzbg047RD9eD47d5Y1CDpU8Ytwk1NRyYFtJB3LL
         EJDrPbmJnJ1jlcbj+TlovZJtKKGMv+bP34Ohjo/GMTORDIY38XFCpNdXvzFd9sbSeVKQ
         e/vtus/+PQbQF5Kt4TvQIfaVQUh2u1NFzc3xhRF4vUfcxfIUHbPMG30SG6EWvOj0zb8m
         X/2ZqOfctMfRtfwa7a0504qlxKIEk471F4EG/tfleCvwSAQH94rIhRMyVPCl9NfkB8Gd
         c2gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=b1kGg4Bn0zg3C9atUK1YE3JTLy4Tf92ANTHmlm6S8e4=;
        b=MRXwrhAfyl5Fa2rOdQj2ZfeljpNEDFNaiFIdmaUE/wAnsTbR3beaXRE1MTbEs9klg4
         k9TJ3BU0STtB+S3n5mNwOyf0pjCrJX2h3lQNH1FBp5NliTzm4GZFanDOfxH+pX+a1iTC
         5TYLvPwVrYU9rvzCqm+gIJFExUn8mk6nBNCJ/7BJkX8rfcDMDRYbU66gPJX3pm85qPSe
         amPFmdZG4eKbsrQhDxgSaNjkRiYnWKSBPo9d1R82CgDkG4k8NrCEM/iNqQt+13bUrCem
         C7DoiTAH2UgJf3QF8KRA/NNf0qwrGmiaeoG8D7o3+d7pTF5yhb9wJahXtOCAgO02a665
         m+UQ==
X-Gm-Message-State: ACgBeo0z/wqzreOwwlaQdchzMxRVj6GMPXKOKJCfkc5n7BPhvbqNkeZ+
	IeJK5BRX7/TFrhhraCHTFA1pfi5UIKWw86ed38k=
X-Google-Smtp-Source: 
 AA6agR7geuddsqiO3+VnBmsofswuSqDwlIfrb5gkdfvdQpweQmmUdreewSDJmraJQUZYT2BufL8UjljqXIRm9GhZdnM=
X-Received: by 2002:a5b:107:0:b0:67c:4077:17f0 with SMTP id
 7-20020a5b0107000000b0067c407717f0mr1342454ybx.363.1661547832351; Fri, 26 Aug
 2022 14:03:52 -0700 (PDT)
MIME-Version: 1.0
References: <0c8260c2-0da1-7566-3f9a-e90d4995b45b@ibeeto.com>
 <CAMKF1spJvxxuPOK+KFEX19MjOwumSZ+tGT_u1icvH5z1U8qiAA@mail.gmail.com>
 <6c426aab-6dff-bcfe-1b95-157da402ba44@ibeeto.com>
 <CAMKF1sop4ait=pE5CSzbs3Uu7P=6pACdKd=0py_wpbD-4aXCKQ@mail.gmail.com>
 <50c0d314-faa0-dc7f-903e-614bfb899730@ibeeto.com>
 <CAMKF1sqPy-7+W3a3-vmffTPAvNg_=bBM0uJPYc5-QiJNbefCEg@mail.gmail.com>
 <78d6022d-a708-fd0d-3b37-91717420f485@ibeeto.com>
In-Reply-To: <78d6022d-a708-fd0d-3b37-91717420f485@ibeeto.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 26 Aug 2022 14:03:41 -0700
Message-ID: 
 <CAMKF1srpQYGiN3L=5z4jkjmFkbVhrYSn7ocmt5wrdu_DRLcnzg@mail.gmail.com>
Subject: Re: [yocto] Dependency for binary package
To: Rudolf J Streif <rudolf.streif@ibeeto.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000005323c405e72b4033"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 26 Aug 2022 21:03:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57914

--0000000000005323c405e72b4033
Content-Type: text/plain; charset="UTF-8"

On Fri, Aug 26, 2022 at 10:38 AM Rudolf J Streif <rudolf.streif@ibeeto.com>
wrote:

>
> On 8/25/22 5:44 PM, Khem Raj wrote:
> > On Thu, Aug 25, 2022 at 4:56 PM Rudolf J Streif
> > <rudolf.streif@ibeeto.com> wrote:
> >>
> >> On 8/25/22 4:49 PM, Khem Raj wrote:
> >>> On Thu, Aug 25, 2022 at 4:44 PM Rudolf J Streif
> >>> <rudolf.streif@ibeeto.com> wrote:
> >>>> Thanks, Khem.
> >>>>
> >>>> On 8/25/22 4:27 PM, Khem Raj wrote:
> >>>>> On Thu, Aug 25, 2022 at 7:30 AM Rudolf J Streif
> >>>>> <rudolf.streif@ibeeto.com> wrote:
> >>>>>> I am packaging a binary package that has been built with the SDK
> created
> >>>>>> with the exact same configuration.
> >>>>>>
> >>>>>> During do_package I am getting an error that a dependency on
> >>>>>> libGLESv2.so()(64bit) cannot be met. Adding mesa to RDEPENDS does
> not
> >>>>>> resolve the issue. I can bypass it in the recipe by adding
> file-rdeps to
> >>>>>> INSANE_SKIP. However, then when the rootfs is created libdnf
> complains
> >>>>>> that the dependency on libGLES is not met and aborts.
> >>>>>>
> >>>>>> The application works just fine on the target if I copy it manually
> to
> >>>>>> the rootfs but that's not the best thing to do. It should be
> packaged
> >>>>>> and installed.
> >>>>>>
> >>>>>> Unfortunately I don't understand well enough how these checks work
> and
> >>>>>> why they are complaining about it. Maybe somebody can shed some
> light on it.
> >>>>> some libraries do not set SONAME in them, which can trip the shlibs
> >>>>> code. Can you
> >>>>> check if libgles in question has SONAME encoded in its ELF header
> >>>>>
> >>>>>     readelf -d <lib> | grep SONAME
> >>>>>
> >>>>> might be what you can use to deduce it.
> >>>> libGLESv2 in question on the target was built with YP:
> >>>>
> >>>>     0x000000000000000e (SONAME)             Library soname:
> [libGLESv2.so.2]
> >>>>
> >>>> The SDK that builds the application was built with the same YP setup.
> >>>> That's why I am scratching my head.
> >>> interesting, are you adding RDEPENDS on libgles2-mesa ?
> >> Yes, but that does not satisfy the dependency:
> >>
> >> ERROR: virtuoso-0.1-r0 do_package_qa: QA Issue: /opt/virtuoso/virtuoso
> >> contained in package virtuoso requires libGLESv2.so()(64bit), but no
> >> providers found in RDEPENDS:virtuoso? [file-rdeps]
> > I see a potential problem here, the soname is libGLESv2.so.2 but the
> > dependency its
> > complaining about is libGLESv2.so()(64bit), ( you see the missing
> > version number ?)
> >
> > Can you run
> >
> > readelf -d <binary name>  | grep NEEDED
> >
> > and see what libs are encoded in the ELF
>
> Yes, I have. These are the libs:
>
>   0x0000000000000001 (NEEDED) Shared library: [libQt5Quick.so.5]
>   0x0000000000000001 (NEEDED)             Shared library: [libQt5Gui.so.5]
>   0x0000000000000001 (NEEDED)             Shared library: [libQt5Qml.so.5]
>   0x0000000000000001 (NEEDED)             Shared library:
> [libQt5Network.so.5]
>   0x0000000000000001 (NEEDED)             Shared library:
> [libQt5SerialPort.so.5]
>   0x0000000000000001 (NEEDED)             Shared library: [libQt5Core.so.5]
>   0x0000000000000001 (NEEDED)             Shared library: [librt.so.1]
>   0x0000000000000001 (NEEDED)             Shared library: [libdl.so.2]
>   0x0000000000000001 (NEEDED)             Shared library: [libatomic.so.1]
>   0x0000000000000001 (NEEDED)             Shared library: [libGLESv2.so]


This is the problem link. So either the sdk has provided them faulty
install or they have replaced some stuff knowiingly or unknowingly or they
have environment issues where their make system is finding this library
elsewhere during their app build

You can ask them for content of Usr/lib of their sdk instAll If you do then
it would be interesting to see if the library and its corresponding links
are intact


>   0x0000000000000001 (NEEDED)             Shared library: [libpthread.so.0]
>   0x0000000000000001 (NEEDED)             Shared library: [libstdc++.so.6]
>   0x0000000000000001 (NEEDED)             Shared library: [libm.so.6]
>   0x0000000000000001 (NEEDED)             Shared library: [libgcc_s.so.1]
>   0x0000000000000001 (NEEDED)             Shared library: [libc.so.6]
>
> It's asking for libGLESv2.so. It's no problem on the target since it's
> correctly resolved by ldd:
>
> root@tgt-lcd7:/usr/lib# ldconfig -p |grep libGLES
>      libGLESv2.so.2 (libc6,x86-64) => /lib64/libGLESv2.so.2
>      libGLESv2.so.2 (libc6) => /lib/libGLESv2.so.2
>      libGLESv2.so (libc6,x86-64) => /lib64/libGLESv2.so
>      libGLESv1_CM.so.1 (libc6,x86-64) => /lib64/libGLESv1_CM.so.1
>      libGLESv1_CM.so.1 (libc6) => /lib/libGLESv1_CM.so.1
>      libGLESv1_CM.so (libc6,x86-64) => /lib64/libGLESv1_CM.so
>
> However, I cannot wrap my head around why this would happen with a
> binary that has been compiled and linked with the YP SDK that exactly
> matches the rootfs of the target:
>
> Target:
>
> root@tgt-lcd7:/usr/lib# ls -l libGLES*
> lrwxrwxrwx 1 root root    14 Mar  9  2018 libGLESv2.so -> libGLESv2.so.2
> lrwxrwxrwx 1 root root    18 Mar  9  2018 libGLESv2.so.2 ->
> libGLESv2.so.2.0.0
> -rwxr-xr-x 1 root root 46792 Mar  9  2018 libGLESv2.so.2.0.0
>
> SDK:
>
> [rstreif@threaddy lib]$ ls -l libGLES*
> lrwxrwxrwx. 1 rstreif rstreif    14 Aug 25 11:35 libGLESv2.so ->
> libGLESv2.so.2
> lrwxrwxrwx. 1 rstreif rstreif    18 Aug 25 11:36 libGLESv2.so.2 ->
> libGLESv2.so.2.0.0
> -rwxr-xr-x. 1 rstreif rstreif 46792 Aug 25 11:36 libGLESv2.so.2.0.0
>
> Unfortunately I don't have the sources of the application otherwise I
> would have YP build it. But the customer claims they are building it
> with the SDK. I am trying to get to the bottom of their end too.
>
>
> >
> >> I can SKIP_INSANE file-rdeps but then I am getting the same issue when
> >> creating the rootfs with dnf.
> >>
> >> But in all fairness, I don't have control over the entire process. The
> >> customer builds the executable with the SDK I gave them. They give me
> >> the executable to put in the rootfs.
> >>
> >>>>>> Thanks,
> >>>>>> Rudi
> >>>>>>
> >>>>>>
> >>>>>> -=-=-=-=-=-=-=-=-=-=-=-
> >>>>>> Links: You receive all messages sent to this group.
> >>>>>> You automatically follow any topics you start or reply to.
> >>>>>> View/Reply Online (#57898):
> https://lists.yoctoproject.org/g/yocto/message/57898
> >>>>>> Mute This Topic: https://lists.yoctoproject.org/mt/93249287/1997914
> >>>>>> Group Owner: yocto+owner@lists.yoctoproject.org
> >>>>>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> >>>>>> -=-=-=-=-=-=-=-=-=-=-=-
> >>>>>>
> >>>> --
> >>>> Rudolf J Streif
> >>>> CEO/CTO ibeeto
> >>>> +1.855.442.3386 x700
> >>>>
> >> --
> >> Rudolf J Streif
> >> CEO/CTO ibeeto
> >> +1.855.442.3386 x700
> >>
> --
> Rudolf J Streif
> CEO/CTO ibeeto
> +1.855.442.3386 x700
>
>

--0000000000005323c405e72b4033
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Aug 26, 2022 at 10:38 AM Rudolf J Streif &lt;<a hre=
f=3D"mailto:rudolf.streif@ibeeto.com">rudolf.streif@ibeeto.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><br>
On 8/25/22 5:44 PM, Khem Raj wrote:<br>
&gt; On Thu, Aug 25, 2022 at 4:56 PM Rudolf J Streif<br>
&gt; &lt;<a href=3D"mailto:rudolf.streif@ibeeto.com" target=3D"_blank">rudo=
lf.streif@ibeeto.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On 8/25/22 4:49 PM, Khem Raj wrote:<br>
&gt;&gt;&gt; On Thu, Aug 25, 2022 at 4:44 PM Rudolf J Streif<br>
&gt;&gt;&gt; &lt;<a href=3D"mailto:rudolf.streif@ibeeto.com" target=3D"_bla=
nk">rudolf.streif@ibeeto.com</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt; Thanks, Khem.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; On 8/25/22 4:27 PM, Khem Raj wrote:<br>
&gt;&gt;&gt;&gt;&gt; On Thu, Aug 25, 2022 at 7:30 AM Rudolf J Streif<br>
&gt;&gt;&gt;&gt;&gt; &lt;<a href=3D"mailto:rudolf.streif@ibeeto.com" target=
=3D"_blank">rudolf.streif@ibeeto.com</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt; I am packaging a binary package that has been buil=
t with the SDK created<br>
&gt;&gt;&gt;&gt;&gt;&gt; with the exact same configuration.<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; During do_package I am getting an error that a dep=
endency on<br>
&gt;&gt;&gt;&gt;&gt;&gt; libGLESv2.so()(64bit) cannot be met. Adding mesa t=
o RDEPENDS does not<br>
&gt;&gt;&gt;&gt;&gt;&gt; resolve the issue. I can bypass it in the recipe b=
y adding file-rdeps to<br>
&gt;&gt;&gt;&gt;&gt;&gt; INSANE_SKIP. However, then when the rootfs is crea=
ted libdnf complains<br>
&gt;&gt;&gt;&gt;&gt;&gt; that the dependency on libGLES is not met and abor=
ts.<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; The application works just fine on the target if I=
 copy it manually to<br>
&gt;&gt;&gt;&gt;&gt;&gt; the rootfs but that&#39;s not the best thing to do=
. It should be packaged<br>
&gt;&gt;&gt;&gt;&gt;&gt; and installed.<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; Unfortunately I don&#39;t understand well enough h=
ow these checks work and<br>
&gt;&gt;&gt;&gt;&gt;&gt; why they are complaining about it. Maybe somebody =
can shed some light on it.<br>
&gt;&gt;&gt;&gt;&gt; some libraries do not set SONAME in them, which can tr=
ip the shlibs<br>
&gt;&gt;&gt;&gt;&gt; code. Can you<br>
&gt;&gt;&gt;&gt;&gt; check if libgles in question has SONAME encoded in its=
 ELF header<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0readelf -d &lt;lib&gt; | grep SONAM=
E<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; might be what you can use to deduce it.<br>
&gt;&gt;&gt;&gt; libGLESv2 in question on the target was built with YP:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A00x000000000000000e (SONAME)=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Library soname: [libGLESv2.so.2]<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; The SDK that builds the application was built with the sam=
e YP setup.<br>
&gt;&gt;&gt;&gt; That&#39;s why I am scratching my head.<br>
&gt;&gt;&gt; interesting, are you adding RDEPENDS on libgles2-mesa ?<br>
&gt;&gt; Yes, but that does not satisfy the dependency:<br>
&gt;&gt;<br>
&gt;&gt; ERROR: virtuoso-0.1-r0 do_package_qa: QA Issue: /opt/virtuoso/virt=
uoso<br>
&gt;&gt; contained in package virtuoso requires libGLESv2.so()(64bit), but =
no<br>
&gt;&gt; providers found in RDEPENDS:virtuoso? [file-rdeps]<br>
&gt; I see a potential problem here, the soname is libGLESv2.so.2 but the<b=
r>
&gt; dependency its<br>
&gt; complaining about is libGLESv2.so()(64bit), ( you see the missing<br>
&gt; version number ?)<br>
&gt;<br>
&gt; Can you run<br>
&gt;<br>
&gt; readelf -d &lt;binary name&gt;=C2=A0 | grep NEEDED<br>
&gt;<br>
&gt; and see what libs are encoded in the ELF<br>
<br>
Yes, I have. These are the libs:<br>
<br>
=C2=A0=C2=A00x0000000000000001 (NEEDED) Shared library: [libQt5Quick.so.5]<=
br>
=C2=A0=C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library: [libQt5Gui.so.5]<br>
=C2=A0=C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library: [libQt5Qml.so.5]<br>
=C2=A0=C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library: <br>
[libQt5Network.so.5]<br>
=C2=A0=C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library: <br>
[libQt5SerialPort.so.5]<br>
=C2=A0=C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library: [libQt5Core.so.5]<br>
=C2=A0=C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library: [librt.so.1]<br>
=C2=A0=C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library: [libdl.so.2]<br>
=C2=A0=C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library: [libatomic.so.1]<br>
=C2=A0=C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library: [libGLESv2.so]</blockq=
uote><div dir=3D"auto"><br></div><div dir=3D"auto">This is the problem link=
. So either the sdk has provided them faulty install or they have replaced =
some stuff knowiingly or unknowingly or they have environment issues where =
their make system is finding this library elsewhere during their app build=
=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">You can ask them =
for content of Usr/lib of their sdk instAll If you do then it would be inte=
resting to see if the library and its corresponding links are intact=C2=A0<=
br></div><div dir=3D"auto"><br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex" dir=3D"=
auto"><br>
=C2=A0=C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library: [libpthread.so.0]<br>
=C2=A0=C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library: [libstdc++.so.6]<br>
=C2=A0=C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library: [libm.so.6]<br>
=C2=A0=C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library: [libgcc_s.so.1]<br>
=C2=A0=C2=A00x0000000000000001 (NEEDED)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Shared library: [libc.so.6]<br>
<br>
It&#39;s asking for libGLESv2.so. It&#39;s no problem on the target since i=
t&#39;s <br>
correctly resolved by ldd:<br>
<br>
root@tgt-lcd7:/usr/lib# ldconfig -p |grep libGLES<br>
=C2=A0=C2=A0=C2=A0=C2=A0 libGLESv2.so.2 (libc6,x86-64) =3D&gt; /lib64/libGL=
ESv2.so.2<br>
=C2=A0=C2=A0=C2=A0=C2=A0 libGLESv2.so.2 (libc6) =3D&gt; /lib/libGLESv2.so.2=
<br>
=C2=A0=C2=A0=C2=A0=C2=A0 libGLESv2.so (libc6,x86-64) =3D&gt; /lib64/libGLES=
v2.so<br>
=C2=A0=C2=A0=C2=A0=C2=A0 libGLESv1_CM.so.1 (libc6,x86-64) =3D&gt; /lib64/li=
bGLESv1_CM.so.1<br>
=C2=A0=C2=A0=C2=A0=C2=A0 libGLESv1_CM.so.1 (libc6) =3D&gt; /lib/libGLESv1_C=
M.so.1<br>
=C2=A0=C2=A0=C2=A0=C2=A0 libGLESv1_CM.so (libc6,x86-64) =3D&gt; /lib64/libG=
LESv1_CM.so<br>
<br>
However, I cannot wrap my head around why this would happen with a <br>
binary that has been compiled and linked with the YP SDK that exactly <br>
matches the rootfs of the target:<br>
<br>
Target:<br>
<br>
root@tgt-lcd7:/usr/lib# ls -l libGLES*<br>
lrwxrwxrwx 1 root root=C2=A0=C2=A0=C2=A0 14 Mar=C2=A0 9=C2=A0 2018 libGLESv=
2.so -&gt; libGLESv2.so.2<br>
lrwxrwxrwx 1 root root=C2=A0=C2=A0=C2=A0 18 Mar=C2=A0 9=C2=A0 2018 libGLESv=
2.so.2 -&gt; <br>
libGLESv2.so.2.0.0<br>
-rwxr-xr-x 1 root root 46792 Mar=C2=A0 9=C2=A0 2018 libGLESv2.so.2.0.0<br>
<br>
SDK:<br>
<br>
[rstreif@threaddy lib]$ ls -l libGLES*<br>
lrwxrwxrwx. 1 rstreif rstreif=C2=A0=C2=A0=C2=A0 14 Aug 25 11:35 libGLESv2.s=
o -&gt; <br>
libGLESv2.so.2<br>
lrwxrwxrwx. 1 rstreif rstreif=C2=A0=C2=A0=C2=A0 18 Aug 25 11:36 libGLESv2.s=
o.2 -&gt; <br>
libGLESv2.so.2.0.0<br>
-rwxr-xr-x. 1 rstreif rstreif 46792 Aug 25 11:36 libGLESv2.so.2.0.0<br>
<br>
Unfortunately I don&#39;t have the sources of the application otherwise I <=
br>
would have YP build it. But the customer claims they are building it <br>
with the SDK. I am trying to get to the bottom of their end too.<br>
<br>
<br>
&gt;<br>
&gt;&gt; I can SKIP_INSANE file-rdeps but then I am getting the same issue =
when<br>
&gt;&gt; creating the rootfs with dnf.<br>
&gt;&gt;<br>
&gt;&gt; But in all fairness, I don&#39;t have control over the entire proc=
ess. The<br>
&gt;&gt; customer builds the executable with the SDK I gave them. They give=
 me<br>
&gt;&gt; the executable to put in the rootfs.<br>
&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; Thanks,<br>
&gt;&gt;&gt;&gt;&gt;&gt; Rudi<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;&gt;&gt;&gt;&gt;&gt; Links: You receive all messages sent to this group=
.<br>
&gt;&gt;&gt;&gt;&gt;&gt; You automatically follow any topics you start or r=
eply to.<br>
&gt;&gt;&gt;&gt;&gt;&gt; View/Reply Online (#57898): <a href=3D"https://lis=
ts.yoctoproject.org/g/yocto/message/57898" rel=3D"noreferrer" target=3D"_bl=
ank">https://lists.yoctoproject.org/g/yocto/message/57898</a><br>
&gt;&gt;&gt;&gt;&gt;&gt; Mute This Topic: <a href=3D"https://lists.yoctopro=
ject.org/mt/93249287/1997914" rel=3D"noreferrer" target=3D"_blank">https://=
lists.yoctoproject.org/mt/93249287/1997914</a><br>
&gt;&gt;&gt;&gt;&gt;&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists=
.yoctoproject.org" target=3D"_blank">yocto+owner@lists.yoctoproject.org</a>=
<br>
&gt;&gt;&gt;&gt;&gt;&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject=
.org/g/yocto/unsub" rel=3D"noreferrer" target=3D"_blank">https://lists.yoct=
oproject.org/g/yocto/unsub</a> [<a href=3D"mailto:raj.khem@gmail.com" targe=
t=3D"_blank">raj.khem@gmail.com</a>]<br>
&gt;&gt;&gt;&gt;&gt;&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; --<br>
&gt;&gt;&gt;&gt; Rudolf J Streif<br>
&gt;&gt;&gt;&gt; CEO/CTO ibeeto<br>
&gt;&gt;&gt;&gt; +1.855.442.3386 x700<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; Rudolf J Streif<br>
&gt;&gt; CEO/CTO ibeeto<br>
&gt;&gt; +1.855.442.3386 x700<br>
&gt;&gt;<br>
-- <br>
Rudolf J Streif<br>
CEO/CTO ibeeto<br>
+1.855.442.3386 x700<br>
<br>
</blockquote></div></div>

--0000000000005323c405e72b4033--

