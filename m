Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B44C5E0097C; Sun,  6 Nov 2016 02:56:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E88CE00951
	for <yocto@yoctoproject.org>; Sun,  6 Nov 2016 02:56:22 -0800 (PST)
Received: by mail-wm0-f67.google.com with SMTP id c17so11321194wmc.3
	for <yocto@yoctoproject.org>; Sun, 06 Nov 2016 02:56:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=X0OAibZ2nCaLubrBRDYUf3Bs87MAjRqV6uM6Iq69xOc=;
	b=Zt4QQcCyaHa97u6UAgJDwE5cPcXfuEEw2qwyH5NnvTeM3JlISl7KHeoQnK+ush9BP2
	UyerKLUbQfzfI4sQYXqNfoMdZ2BlcqTmHHQCto/GSL8i61NW4OAWDv520+k6e12hE7i0
	pM0EFIOxqX4zqI4Pc1zM1s1r+9BUKZjz6QObOSBNTyjYW1gulYX/QZX6VusoPvv8GvSa
	qqj9OJZC2BYbkLhlI2mEch9Z+mGtrQP5RR9+zBnz7tdfITs/maaW9B5Y0/hvE3oPLBFq
	wv+sWoUM5lCl8RRGMxBd0ogz1U+g69qbgmejn/0uphs6cmfvc4jPISkMHxCmx22ip2uf
	g9rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=X0OAibZ2nCaLubrBRDYUf3Bs87MAjRqV6uM6Iq69xOc=;
	b=g11lz27+h2EEZcr7drvWNc6vknsRAdM1LUnv3o6ofInq+ZhfI4NyQd1xyMR8lm8GUg
	FnDBwdabEJn/5uPQQyded+ts465G9Fpmg/9rjJ5bOEadRIHFfjTqjP1CGgtD5DoFWiSC
	R8Pawedvfl7gQ7pqHFL38a4kEn1UkHZBmiridiLHFXqoABieyfazKryd3KumB2zY519E
	tmwR2M2rEjmnT4JhnN3OL66son/N6waAnrSX/uVy1EuoyUJH+Z92FN7wtspaKnIgkHee
	zKxohSzUdxTqK94o7qN5RMD8MEDC7TDo/xt++bagEohkKtzH23Fcs4R+vpRMsfG+AXD2
	UYsQ==
X-Gm-Message-State: ABUngvcXn9PxDbkH+prYYP5ursQazFfn2QGIdKcnK60Bf8NWfimZp5NHwBhTD6xoUOA0sm5kmSn4R28u6m+BZw==
X-Received: by 10.28.211.71 with SMTP id k68mr4429484wmg.21.1478429781694;
	Sun, 06 Nov 2016 02:56:21 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.210.203 with HTTP; Sun, 6 Nov 2016 02:56:20 -0800 (PST)
X-Originating-IP: [62.74.6.152]
Received: by 10.28.210.203 with HTTP; Sun, 6 Nov 2016 02:56:20 -0800 (PST)
In-Reply-To: <20161106101407.5239767e@nuc.betafive.co.uk>
References: <20161106072515.3505-1-raj.khem@gmail.com>
	<20161106101407.5239767e@nuc.betafive.co.uk>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sun, 6 Nov 2016 10:56:20 +0000
Message-ID: <CAK18fxGhJbhXi9SN4TGSyAd4XC-+n_oGfUfmtn79t+uUBF914w@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/2] firmware: Use release tarballs
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
X-List-Received-Date: Sun, 06 Nov 2016 10:56:26 -0000
Content-Type: multipart/alternative; boundary=001a11474d00f6af6905409fc1dd

--001a11474d00f6af6905409fc1dd
Content-Type: text/plain; charset=UTF-8

On 6 Nov 2016 12:53, "Paul Barker" <paul@paulbarker.me.uk> wrote:
>
> On Sun,  6 Nov 2016 00:25:14 -0700
> Khem Raj <raj.khem@gmail.com> wrote:
>
> > This is a binary repo and its quite large in size
> > we do not need the whole history of this repo since
> > most of stuff needed is binaries, therefore switch
> > to release tarballs
> >
> > Signed-off-by: Khem Raj <raj.khem@gmail.com>
> > ---
> >  recipes-bsp/common/firmware.inc | 12 +++++++-----
> >  1 file changed, 7 insertions(+), 5 deletions(-)
> >
> > diff --git a/recipes-bsp/common/firmware.inc
b/recipes-bsp/common/firmware.inc
> > index ed0782f..8862f58 100644
> > --- a/recipes-bsp/common/firmware.inc
> > +++ b/recipes-bsp/common/firmware.inc
> > @@ -1,8 +1,10 @@
> > -RPIFW_SRCREV ?= "413fc664838e81caeabdc4118dc51e138d5d6c71"
> > -RPIFW_DATE ?= "20161030"
> > -RPIFW_SRC_URI ?= "git://
github.com/raspberrypi/firmware.git;protocol=git;branch=master"
> > -RPIFW_S ?= "${WORKDIR}/git"
> > +RPIFW_DATE ?= "20161020"
> > +RPIFW_SRC_URI ?= "
https://github.com/raspberrypi/firmware/archive/1.${RPIFW_DATE}.tar.gz"
> > +RPIFW_S ?= "${WORKDIR}/firmware-1.${RPIFW_DATE}"
> >
> >  SRC_URI = "${RPIFW_SRC_URI}"
> > -SRCREV = "${RPIFW_SRCREV}"
> > +SRC_URI[md5sum] = "d3c388c114af4c672dd3ee0ed8e984d3"
> > +SRC_URI[sha256sum] =
"1c7c49d58800aab2dd1b5ff59a1e297934f9ea6f47ebdf0a3f90632561dc690b"
> > +
> >  PV = "${RPIFW_DATE}"
> > +
>
> Khem,
>
> This series doesn't apply to master for me. I'm a bit lost as to which
> patches I need to apply as some of your previous series has been merged
> to master but not all of it.
>
> Could you point me at which patches I need to apply or at a branch
> where this is staged if it's public?

It probably fails because of version updates. Here you go:
https://github.com/kraj/meta-raspberrypi

>
> Thanks,
> Paul Barker
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--001a11474d00f6af6905409fc1dd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"></p>
<p dir=3D"ltr">On 6 Nov 2016 12:53, &quot;Paul Barker&quot; &lt;<a href=3D"=
mailto:paul@paulbarker.me.uk">paul@paulbarker.me.uk</a>&gt; wrote:<br>
&gt;<br>
&gt; On Sun,=C2=A0 6 Nov 2016 00:25:14 -0700<br>
&gt; Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com<=
/a>&gt; wrote:<br>
&gt;<br>
&gt; &gt; This is a binary repo and its quite large in size<br>
&gt; &gt; we do not need the whole history of this repo since<br>
&gt; &gt; most of stuff needed is binaries, therefore switch<br>
&gt; &gt; to release tarballs<br>
&gt; &gt;<br>
&gt; &gt; Signed-off-by: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com"=
>raj.khem@gmail.com</a>&gt;<br>
&gt; &gt; ---<br>
&gt; &gt;=C2=A0 recipes-bsp/common/firmware.inc | 12 +++++++-----<br>
&gt; &gt;=C2=A0 1 file changed, 7 insertions(+), 5 deletions(-)<br>
&gt; &gt;<br>
&gt; &gt; diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common=
/firmware.inc<br>
&gt; &gt; index ed0782f..8862f58 100644<br>
&gt; &gt; --- a/recipes-bsp/common/firmware.inc<br>
&gt; &gt; +++ b/recipes-bsp/common/firmware.inc<br>
&gt; &gt; @@ -1,8 +1,10 @@<br>
&gt; &gt; -RPIFW_SRCREV ?=3D &quot;413fc664838e81caeabdc4118dc51e138d5d6c71=
&quot;<br>
&gt; &gt; -RPIFW_DATE ?=3D &quot;20161030&quot;<br>
&gt; &gt; -RPIFW_SRC_URI ?=3D &quot;git://<a href=3D"http://github.com/rasp=
berrypi/firmware.git;protocol=3Dgit;branch=3Dmaster">github.com/raspberrypi=
/firmware.git;protocol=3Dgit;branch=3Dmaster</a>&quot;<br>
&gt; &gt; -RPIFW_S ?=3D &quot;${WORKDIR}/git&quot;<br>
&gt; &gt; +RPIFW_DATE ?=3D &quot;20161020&quot;<br>
&gt; &gt; +RPIFW_SRC_URI ?=3D &quot;<a href=3D"https://github.com/raspberry=
pi/firmware/archive/1.${RPIFW_DATE}.tar.gz">https://github.com/raspberrypi/=
firmware/archive/1.${RPIFW_DATE}.tar.gz</a>&quot;<br>
&gt; &gt; +RPIFW_S ?=3D &quot;${WORKDIR}/firmware-1.${RPIFW_DATE}&quot;<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 SRC_URI =3D &quot;${RPIFW_SRC_URI}&quot;<br>
&gt; &gt; -SRCREV =3D &quot;${RPIFW_SRCREV}&quot;<br>
&gt; &gt; +SRC_URI[md5sum] =3D &quot;d3c388c114af4c672dd3ee0ed8e984d3&quot;=
<br>
&gt; &gt; +SRC_URI[sha256sum] =3D &quot;1c7c49d58800aab2dd1b5ff59a1e297934f=
9ea6f47ebdf0a3f90632561dc690b&quot;<br>
&gt; &gt; +<br>
&gt; &gt;=C2=A0 PV =3D &quot;${RPIFW_DATE}&quot;<br>
&gt; &gt; +<br>
&gt;<br>
&gt; Khem,<br>
&gt;<br>
&gt; This series doesn&#39;t apply to master for me. I&#39;m a bit lost as =
to which<br>
&gt; patches I need to apply as some of your previous series has been merge=
d<br>
&gt; to master but not all of it.<br>
&gt;<br>
&gt; Could you point me at which patches I need to apply or at a branch<br>
&gt; where this is staged if it&#39;s public?</p>
<p dir=3D"ltr">It probably fails because of version updates. Here you go: <=
a href=3D"https://github.com/kraj/meta-raspberrypi">https://github.com/kraj=
/meta-raspberrypi</a></p>
<p dir=3D"ltr">&gt;<br>
&gt; Thanks,<br>
&gt; Paul Barker<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br></p>

--001a11474d00f6af6905409fc1dd--
