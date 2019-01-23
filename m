Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4EC2E00CE5; Wed, 23 Jan 2019 04:00:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mans.zigher[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com
	[209.85.210.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC00AE00C1E
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2019 04:00:20 -0800 (PST)
Received: by mail-ot1-f43.google.com with SMTP id 32so1625057ota.12
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2019 04:00:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=40faOgG6mqeRMpZeRoMUDB9hyS8Svnaeok4jfSnb4as=;
	b=Gwgi05mjKSZ3PtjknGpkXzG/ufDClxXvJG2iHFSiS8H5VehMYF50YSrwtNny7F0dHK
	sco7H2Janl3/GqUrsXvGrV8o6Uol+eaeXbNNIbdbOEzUV3eBmDE5ZTNGLN8aQQDcbg9z
	D4hekW+wUYfcsoE0hOGF4Vlvd6DABMyqgh3UQ/B6G9/IAtKPpQzaRdngDyZhLcx/XRvT
	kTJLCi0UNYfMnMG/xeh+Or0QWlpM66HMZ0LtyszzA12qBy3kU2sPXraVduyo9FP+fwe/
	1yFBsTpwzSUrij/xfnuhDUdjF1jstDyZRdIBXLtO5CWfRAmAxzJGTojtEtEfZrPdavnZ
	TB8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=40faOgG6mqeRMpZeRoMUDB9hyS8Svnaeok4jfSnb4as=;
	b=FIec7cQ321VYzBppl55zSZ2G+LadtUNvtihU1wml07F9DBij2dIY2XtG4d15FBOump
	Leqfgde9POXz7deH4u8+CldJlPQ4ZH0Br2uKEdNXkwTulSdY0QjCDxTYtEtN3Qgm2Sb3
	k/snAnVXqx8eiasZBQmHBSvLOZ9j++VhMjKe08wVxmelDiyFSmoTR38/nHN1WyMoMOpR
	wVcUi/Bk7D9KdC5jDOoNP4y0kwtDr6SsoJaJEihmWuUBfjGNohLC88vgRvQh9b+M0u0g
	rRHsIJ9LX5ruCXlbZ+baoA8stSTWF680RFn704T4Rg0mElJTPyiGJTVvQAJP80piIoLc
	mFdg==
X-Gm-Message-State: AJcUukdOfMpvN0qlLOS4eyf94+jyn38m7Mn+TNGqmFp1GwdWLPSbcdgW
	VDe3/SkOl6TBNPXaIDqi/cDOR2eSc7NfJ6LuiDY=
X-Google-Smtp-Source: ALg8bN5cqDZrYlUPTPn1VduCxI2+yzOpPIFkC2Zq2/c2PsLnYNzK9hbg3VAhTkAtVJO5HlytiKEvKcjBJygYdI1sdlk=
X-Received: by 2002:a9d:a2e:: with SMTP id 43mr1160529otg.8.1548244820121;
	Wed, 23 Jan 2019 04:00:20 -0800 (PST)
MIME-Version: 1.0
References: <CAEhQi8mWzaLii_WpEwE+spDaKjeaXxY9f76htNkPbZJKZkNTxg@mail.gmail.com>
	<CAEhQi8=-KpHdq3kh+gWYYkQOQ347X25vYqFB7H3a4KKQweV0Sg@mail.gmail.com>
	<CANNYZj-JTWMkew=EJbPf6H8edeLBG9AFt4HXLqAtaWLDmtEQhw@mail.gmail.com>
In-Reply-To: <CANNYZj-JTWMkew=EJbPf6H8edeLBG9AFt4HXLqAtaWLDmtEQhw@mail.gmail.com>
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Wed, 23 Jan 2019 13:00:09 +0100
Message-ID: <CAEhQi8=VbU6_20Ai10vNFFNxNEXNW7Om1MjZ+NAGG9U7WvDajg@mail.gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: dnf fail in do_rootfs cannot find shared library
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 23 Jan 2019 12:00:22 -0000
Content-Type: multipart/alternative; boundary="000000000000875c5705801ed66f"

--000000000000875c5705801ed66f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I am sorry but I cannot locate the .spec file. I tried searching for .spec
in the tmp/work but I could not find any .spec file. Do I have to build
with a flag to get this .spec file?

BR
M=C3=A5ns Zigher

Den ons 23 jan. 2019 kl 12:07 skrev Alexander Kanavin <
alex.kanavin@gmail.com>:

> One more thing: can you provide the .spec file that is generated
> during build and used to create .rpm packages? You will find it under
> tmp/work/<target_arch>/x_media/
>
> Please try not to edit anything out of it.
>
> Alex
>
> On Wed, 23 Jan 2019 at 12:02, M=C3=A5ns Zigher <mans.zigher@gmail.com> wr=
ote:
> >
> > I have toke the rpm file that was produced. I found the file under the
> build directory under
> tmp/work/imx8mq-strix-linux/x_media/1.0-r44/deploy-rpms/imx8mq/temp/x_med=
ia-1.0-r44.imx8mq.rpm.
> I used the following commands
> > 7z x x_media-1.0-r44.imx8mq.rpm
> > 7z x x_media-1.0-r44.imx8mq.cpio
> >
> > The result from this gave me the file tree where I then could run
> > file usr/lib/libx_media_1.0.so
> > usr/lib/libx_media_1.0.so: ELF 64-bit LSB shared object, ARM aarch64,
> version 1 (SYSV), dynamically linked, stripped
> >
> > So I believe that I have concluded that the rpm include the file that
> dnf is complaining about. I don't understand why dnf thinks that this
> dependency is not meet when it clearly is part of the package. I have add=
ed
> verbose flags to the dnf call but dose not give any more information.
> > I am not sure how I can proceed to find out what I have done wrong. The
> recipe is a bit of a freak of nature because the binaries that I am
> packaging is actually built using another toolchain but it is for the sam=
e
> arch can dnf detect that?
> >
> > BR
> > M=C3=A5ns Zigher
> >
> > Den tis 22 jan. 2019 kl 17:59 skrev M=C3=A5ns Zigher <mans.zigher@gmail=
.com>:
> >>
> >> Hi,
> >>
> >> I am struggling with a recipe which more or less just downloads
> binaries and creating a package. We have previously been using ipkg but n=
ow
> we have switched to rpm in our builds. One of the binaries in the package=
s
> is a library let's call it libx_media_1.0.so. This library is part of the
> package that the recipe is producing. The library is placed under
> /usr/lib/. When building the image I am getting the following error
> >>
> >> ERROR: base-image-1.0-r0 do_rootfs: Could not invoke dnf. Command
> >> .....
> >> ...
> >> Error:
> >>  Problem: package packagegroup-x-media-1.0-r11.noarch requires x_media=
,
> but none of the providers can be installed
> >>   - conflicting requests
> >>   - nothing provides libx_media_1.0.so()(64bit) needed by
> x_media-1.0-r44.imx8mq
> >>
> >> ERROR: base-image-1.0-r0 do_rootfs: Function failed: do_rootfs
> >>
> >> Here is the output from running the command file on the library
> >>
> >> usr/lib/libx_media_1.0.so: ELF 64-bit LSB shared object, ARM aarch64,
> version 1 (SYSV), dynamically linked, stripped
> >>
> >> I have also verified that the library is part of the produced rpm so
> that is not the issue.
> >>
> >> Dose anyone have any suggestion on how to debug this problem? Because =
I
> am out of ideas
> >>
> >> BR
> >> M=C3=A5ns Zigher
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000875c5705801ed66f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I am sorry but I cannot locate the =
.spec file. I tried searching for .spec in the tmp/work but I could not fin=
d any .spec file. Do I have to build with a flag to get this .spec file?</d=
iv><div><br></div><div>BR</div><div>M=C3=A5ns Zigher</div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Den ons 23 jan. 2=
019 kl 12:07 skrev Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gma=
il.com">alex.kanavin@gmail.com</a>&gt;:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">One more thing: can you provide the .spec file that=
 is generated<br>
during build and used to create .rpm packages? You will find it under<br>
tmp/work/&lt;target_arch&gt;/x_media/<br>
<br>
Please try not to edit anything out of it.<br>
<br>
Alex<br>
<br>
On Wed, 23 Jan 2019 at 12:02, M=C3=A5ns Zigher &lt;<a href=3D"mailto:mans.z=
igher@gmail.com" target=3D"_blank">mans.zigher@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; I have toke the rpm file that was produced. I found the file under the=
 build directory under tmp/work/imx8mq-strix-linux/x_media/1.0-r44/deploy-r=
pms/imx8mq/temp/x_media-1.0-r44.imx8mq.rpm. I used the following commands<b=
r>
&gt; 7z x x_media-1.0-r44.imx8mq.rpm<br>
&gt; 7z x x_media-1.0-r44.imx8mq.cpio<br>
&gt;<br>
&gt; The result from this gave me the file tree where I then could run<br>
&gt; file usr/lib/<a href=3D"http://libx_media_1.0.so" rel=3D"noreferrer" t=
arget=3D"_blank">libx_media_1.0.so</a><br>
&gt; usr/lib/<a href=3D"http://libx_media_1.0.so" rel=3D"noreferrer" target=
=3D"_blank">libx_media_1.0.so</a>: ELF 64-bit LSB shared object, ARM aarch6=
4, version 1 (SYSV), dynamically linked, stripped<br>
&gt;<br>
&gt; So I believe that I have concluded that the rpm include the file that =
dnf is complaining about. I don&#39;t understand why dnf thinks that this d=
ependency is not meet when it clearly is part of the package. I have added =
verbose flags to the dnf call but dose not give any more information.<br>
&gt; I am not sure how I can proceed to find out what I have done wrong. Th=
e recipe is a bit of a freak of nature because the binaries that I am packa=
ging is actually built using another toolchain but it is for the same arch =
can dnf detect that?<br>
&gt;<br>
&gt; BR<br>
&gt; M=C3=A5ns Zigher<br>
&gt;<br>
&gt; Den tis 22 jan. 2019 kl 17:59 skrev M=C3=A5ns Zigher &lt;<a href=3D"ma=
ilto:mans.zigher@gmail.com" target=3D"_blank">mans.zigher@gmail.com</a>&gt;=
:<br>
&gt;&gt;<br>
&gt;&gt; Hi,<br>
&gt;&gt;<br>
&gt;&gt; I am struggling with a recipe which more or less just downloads bi=
naries and creating a package. We have previously been using ipkg but now w=
e have switched to rpm in our builds. One of the binaries in the packages i=
s a library let&#39;s call it <a href=3D"http://libx_media_1.0.so" rel=3D"n=
oreferrer" target=3D"_blank">libx_media_1.0.so</a>. This library is part of=
 the package that the recipe is producing. The library is placed under /usr=
/lib/. When building the image I am getting the following error<br>
&gt;&gt;<br>
&gt;&gt; ERROR: base-image-1.0-r0 do_rootfs: Could not invoke dnf. Command<=
br>
&gt;&gt; .....<br>
&gt;&gt; ...<br>
&gt;&gt; Error:<br>
&gt;&gt;=C2=A0 Problem: package packagegroup-x-media-1.0-r11.noarch require=
s x_media, but none of the providers can be installed<br>
&gt;&gt;=C2=A0 =C2=A0- conflicting requests<br>
&gt;&gt;=C2=A0 =C2=A0- nothing provides <a href=3D"http://libx_media_1.0.so=
" rel=3D"noreferrer" target=3D"_blank">libx_media_1.0.so</a>()(64bit) neede=
d by x_media-1.0-r44.imx8mq<br>
&gt;&gt;<br>
&gt;&gt; ERROR: base-image-1.0-r0 do_rootfs: Function failed: do_rootfs<br>
&gt;&gt;<br>
&gt;&gt; Here is the output from running the command file on the library<br=
>
&gt;&gt;<br>
&gt;&gt; usr/lib/<a href=3D"http://libx_media_1.0.so" rel=3D"noreferrer" ta=
rget=3D"_blank">libx_media_1.0.so</a>: ELF 64-bit LSB shared object, ARM aa=
rch64, version 1 (SYSV), dynamically linked, stripped<br>
&gt;&gt;<br>
&gt;&gt; I have also verified that the library is part of the produced rpm =
so that is not the issue.<br>
&gt;&gt;<br>
&gt;&gt; Dose anyone have any suggestion on how to debug this problem? Beca=
use I am out of ideas<br>
&gt;&gt;<br>
&gt;&gt; BR<br>
&gt;&gt; M=C3=A5ns Zigher<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div>

--000000000000875c5705801ed66f--
