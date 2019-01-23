Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34C0DE00CE5; Wed, 23 Jan 2019 04:02:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.210.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mans.zigher[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
	[209.85.210.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21D57E00546
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2019 04:02:00 -0800 (PST)
Received: by mail-ot1-f66.google.com with SMTP id s5so1659822oth.7
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2019 04:02:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=jiX0Rta9lcWXsbtGhLyUwXL2ysj1KuZwb2xt6nneWpo=;
	b=abJ8G+EOkI60dkxi9Ng0UvJ2mFB0NSNig4SVzWPNXP1fXzL6XHLsFLQCJYQhrwf9in
	Z5K4LA8kpzcpm2z+iI3bHdF7Yp0LLHF1OtQGVax6X9WK+PH4+HZWiVOaoK9cmIHXjrgi
	hSUvvbY+8LY09taIUSSvGIew8NmmCdznyvdmT7z5wGTyyg+JflhXr5Zhyxq3fXLnuLMX
	8lnCKMIrhYKK4LdWQ8X3VBjp56mxI/i+keRMAVeq9at6z43d7P5w7jtBWgQAVXOIdDF2
	wMUN0PgbgR59XACLbpLWHhyNsrrWJ1VAjkxHfRlbvr2gQZAdF8EYtx4Bfp8+AEgAt0t8
	Be0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=jiX0Rta9lcWXsbtGhLyUwXL2ysj1KuZwb2xt6nneWpo=;
	b=mh2kTWDUuEuwSPAiOUiFHIwjsZPESxmSwwP+/DvvvO5sCyWWnoiLGllzFiM8Fnaxuj
	DnqMD7sWL5YVN14cCMtfg+Yby3lahcRf37nsWRg74lczsRF1gLSHddgwh+lVz4mSM9x9
	aE03KTp1Vy+LSQ2p6/HThZ+qfy3Zo2Jc308JExW34Halfq5uUwFwVWUySZBtBNZENB4y
	DGehsqzXTjTvpAb3/CqxZ4w3lKlp9uPiGrVdcbXNDPXDg0u1cHXH/2bdtBxxe1flothP
	zlO03+5kCvD/v224DuX6hxkKq9X9sX+3jOfKVufmJkmR/rh90FmlDlzqc7eFkGY2g7Dq
	ypxQ==
X-Gm-Message-State: AJcUukcPUWVXHaaEzZkslc21P5b6+fo0/S7/dYwTBs1pOC6yLuoUZJEW
	2njOMuUrcWXQPfXBmtF1DYm6ALwQEKejyxrc9W+hoJvm8Rk=
X-Google-Smtp-Source: ALg8bN57DHGhgXmH4nJ8Pl34SdjgE/Bv4oFWeXetaSrqCjS+Vy/SQd5dTuQKs+FvMCHrEHbvCPmQeAub3B/aGeVtiSY=
X-Received: by 2002:a9d:3a5:: with SMTP id f34mr1293249otf.208.1548244920533; 
	Wed, 23 Jan 2019 04:02:00 -0800 (PST)
MIME-Version: 1.0
References: <CAEhQi8mWzaLii_WpEwE+spDaKjeaXxY9f76htNkPbZJKZkNTxg@mail.gmail.com>
	<CAEhQi8=-KpHdq3kh+gWYYkQOQ347X25vYqFB7H3a4KKQweV0Sg@mail.gmail.com>
	<CAB6-VtLn85HFNZxY7jqbpJGJcLg4h1bCwKGFTxrcCzx5vJrDPw@mail.gmail.com>
In-Reply-To: <CAB6-VtLn85HFNZxY7jqbpJGJcLg4h1bCwKGFTxrcCzx5vJrDPw@mail.gmail.com>
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Wed, 23 Jan 2019 13:01:49 +0100
Message-ID: <CAEhQi8ma4YNf-JzoQPRc6xBYPdtaXnjN1SbJhfq9oeZhF2YZEA@mail.gmail.com>
To: Einar Vading <yocto-ml@vading.se>
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
X-List-Received-Date: Wed, 23 Jan 2019 12:02:02 -0000
Content-Type: multipart/alternative; boundary="0000000000008389c305801edc28"

--0000000000008389c305801edc28
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Yes I noticed it so I tried that out but without any success but I will
investigate that also to see if change it can in another result.

BR
M=C3=A5ns Zigher

Den ons 23 jan. 2019 kl 12:33 skrev Einar Vading <yocto-ml@vading.se>:

> This is a longshot but I am currently investigating an issue we have
> with a packagegroup.
>
> I get a similar error but I can fix it by moving the package in my
> RDEPENDS in the packagegroup.
>
> If you move your libx_media up or down in the packagegroup, does it help?
>
> For me i got:
>     Error:
>       Problem: conflicting requests
>       - nothing provides libserved-utilsoversion needed by
> packagegroup-base-1.0-r0.0.noarch
>
> When I had:
>     RDEPENDS_${PN} =3D "\
>         libdomain-somelib \
>         libsomeotherlib \
>         served-util \
>     "
>
> But changing to:
>     RDEPENDS_${PN} =3D "\
>         libdomain-somelib \
>         served-util \
>         libsomeotherlib \
>     "
> Made it work.
>
> If you're down to trying anything you might as well try this =3D)
>
> // Einar
>
> On Wed, Jan 23, 2019 at 12:03 PM M=C3=A5ns Zigher <mans.zigher@gmail.com>
> wrote:
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

--0000000000008389c305801edc28
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Yes I noticed it so I tried that ou=
t but without any success but I will investigate that also to see if change=
 it can in another result.</div><div><br></div><div>BR</div><div>M=C3=A5ns =
Zigher</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">Den ons 23 jan. 2019 kl 12:33 skrev Einar Vading &lt;<a href=3D=
"mailto:yocto-ml@vading.se">yocto-ml@vading.se</a>&gt;:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">This is a longshot but I am current=
ly investigating an issue we have<br>
with a packagegroup.<br>
<br>
I get a similar error but I can fix it by moving the package in my<br>
RDEPENDS in the packagegroup.<br>
<br>
If you move your libx_media up or down in the packagegroup, does it help?<b=
r>
<br>
For me i got:<br>
=C2=A0 =C2=A0 Error:<br>
=C2=A0 =C2=A0 =C2=A0 Problem: conflicting requests<br>
=C2=A0 =C2=A0 =C2=A0 - nothing provides libserved-utilsoversion needed by<b=
r>
packagegroup-base-1.0-r0.0.noarch<br>
<br>
When I had:<br>
=C2=A0 =C2=A0 RDEPENDS_${PN} =3D &quot;\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 libdomain-somelib \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 libsomeotherlib \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 served-util \<br>
=C2=A0 =C2=A0 &quot;<br>
<br>
But changing to:<br>
=C2=A0 =C2=A0 RDEPENDS_${PN} =3D &quot;\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 libdomain-somelib \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 served-util \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 libsomeotherlib \<br>
=C2=A0 =C2=A0 &quot;<br>
Made it work.<br>
<br>
If you&#39;re down to trying anything you might as well try this =3D)<br>
<br>
// Einar<br>
<br>
On Wed, Jan 23, 2019 at 12:03 PM M=C3=A5ns Zigher &lt;<a href=3D"mailto:man=
s.zigher@gmail.com" target=3D"_blank">mans.zigher@gmail.com</a>&gt; wrote:<=
br>
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

--0000000000008389c305801edc28--
