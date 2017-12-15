Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F142E00D19; Fri, 15 Dec 2017 06:50:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f195.google.com (mail-qk0-f195.google.com
	[209.85.220.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58EF9E00DB5
	for <yocto@yoctoproject.org>; Fri, 15 Dec 2017 06:50:27 -0800 (PST)
Received: by mail-qk0-f195.google.com with SMTP id u184so10612747qkd.6
	for <yocto@yoctoproject.org>; Fri, 15 Dec 2017 06:50:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Y4Xr8cYe/0WOJmvMwOOCIekMEMe8yOx2lrt6ikG8JeY=;
	b=bU0gQ8UCIkfY0kM/5Mhl5mcAXzZIgj9YQRjo8FAusUmUCmc9SB30xHajKXNpMMYHSp
	Rid2dO8+J31DrrbCdZuZ9/7ioLoPqLylaeObyNXpGDdA1NgUHBKXZmOX2uoHOtK1R1Ro
	UGwa3IzrWwj2XKtY372FEkApEpn1ytyIQc1ojHp+50o7aqAR5ZODk1KdMLHffhGhuI59
	uAzDV4xK4FsB3vauL5jJmp3BF6mdETSXmGR/NZ6R7/a3MQpjX4TPW2LM4QdHbId1+gnU
	CvimoNfr4hdzzE8aTqh2Pz1FZrTWm5fHVtx5MUTk70GIrK2DPEleEHRdhfLaaGL0djry
	JlBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Y4Xr8cYe/0WOJmvMwOOCIekMEMe8yOx2lrt6ikG8JeY=;
	b=qTR2wLFanjJM0Vd9+wSUcZTYAiPyifv9LTp8NDnNXZqXGxpMw99ajFvJ5PIp0Qc9xi
	E4OBIO1gJsmKQAxKPlF+pUrsGUrhLYEximz8a+NSaqMsfB7T9Vn2o5ikjKRXh6r4z+eC
	wt2tGdLPrfYYUvVJUW3t2mirc2XoxJujyeW64/D73ONrXSzc7aqjd5do0V/nZJVRGwTy
	iJcnq80t65QKOh4ygcVW0cmgJ3/qYF7tVuQoFn+YSnEg8SczaFfa3gjoTqXUeUxY3zlx
	e3cmugaAAhUvAw8gr7iC0aol/ylB3R/lvpV2hwbj4f+UgtbvSh1VtOFiV45LV1QZaKq1
	kD8Q==
X-Gm-Message-State: AKGB3mJfZ/hNy878v7XyJLNwvktgr2GIinv1xBmfXA1vHLe0FZWSGGDJ
	x0CRZCn+3VXKbUoIjRri1ufmHU+g4u9j7zxseuI=
X-Google-Smtp-Source: ACJfBouc1Z6P+ksGu2cVDq91ElBXUjcadnXtASclsegemznitjZc1moMt6bn4AfeVT1G0zr2W2fvdN9AlHT/LznV7WU=
X-Received: by 10.55.22.195 with SMTP id 64mr3997112qkw.257.1513349427257;
	Fri, 15 Dec 2017 06:50:27 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.21.241 with HTTP; Fri, 15 Dec 2017 06:50:26 -0800 (PST)
In-Reply-To: <1513343351.15290.25.camel@genivi.org>
References: <CAF3SDA6zXJyGF-cBSXXr=D2kY59VCyj8c6TbgDkVK0NB7DmQZA@mail.gmail.com>
	<CAPyrkgxkcO+3UW4jqy9Uh0pVSRwFH9Pss5d2ihVBtRZ3Y+B08A@mail.gmail.com>
	<CAF3SDA7qCEUGNfmoJ0MXM4OAMSsC=rgnx3xPira7cZSch0ATMQ@mail.gmail.com>
	<CAF3SDA61uYo3jYxWBzhTUs0ywyXMtQGWpBAWb3VmJT5CFU9F=g@mail.gmail.com>
	<CAGAf8LzQcHY_rgue5oc_hurCE6yn6kMxB20tJ1=i8-eDrvUhWw@mail.gmail.com>
	<1513343351.15290.25.camel@genivi.org>
From: "Daniel." <danielhilst@gmail.com>
Date: Fri, 15 Dec 2017 12:50:26 -0200
Message-ID: <CAF3SDA7qxvPZvLh6-JRRZpEAncb7ywmw2-ULpskveYXFMZn+hw@mail.gmail.com>
To: Gunnar Andersson <gandersson@genivi.org>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: .kernel-meta/configs folder missing make linux-raspberrypi to fail
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
X-List-Received-Date: Fri, 15 Dec 2017 14:50:39 -0000
Content-Type: multipart/alternative; boundary="001a11496d660868ff0560621fce"

--001a11496d660868ff0560621fce
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

As I told before, by pass this is a simple matter of running devshell,
creating the folder and running running the build again,

Paul ask me for more information and so I did, I'll remove that duplicated
layer and fire `bitbake -fc cleanall linux-raspberry && bitbake
linux-rapsberry` again, if I hit this I may try some digging. I don't think
this has to do with Fedora version, anyway, sooner or latter this version
will be tested, so this same error may arise, and at that time we'll be
doing the same questions, so, why to wait?

Regards,

2017-12-15 11:09 GMT-02:00 Gunnar Andersson <gandersson@genivi.org>:

>
> On Thu, 2017-12-14 at 06:31 +0100, Zoran Stojsavljevic wrote:
> > > Also is worth noting that I'm running Fedora 27 which wasn't tested..=
.
> >
> > You should start from here your investigation, since you are on not
> tested
> > YOCTO host distribution. And Fedoras are
> > different from release to release, certainly!
> >
> > So either you should downgrade your fedora 27 to 26 (which I doubt it i=
s
> > possible), better to build brand new Fedora 26 using exactly the same
> > packages.
>
> Oh no, don't downgrade your distro. :-)
>
> Docker is your friend for a repeatable and tested Yocto build environment
> (In Fedora of course systemd-nspawn and other esoteric choices may exist)=
.
>
> We usually use & recommend easy-build project [1] (except for the CI syst=
em
> build agents that needed a little bit more, and when I set that up I was
> also more accustomed with using phusion/baseimage docker image over
> standard
> Ubuntu).
>
> If you find anything lacking, I'm sure it will accept pull requests - jus=
t
> fork & extend in the meantime.  Honestly, it's quite trivial for anyone t=
o
> reproduce such Docker files, but Gianpaolo set up a structure and a proje=
ct
> here.  IMHO, we just need ANY canonical source for a base distro with an
> official list of yocto/poky required packages ready to go, so why not use
> this one & support it with any needed update?
>
> HTH
> - Gunnar
>
> [1] https://github.com/gmacario/easy-build
>
> --
> Gunnar Andersson <gandersson@genivi.org>
> Development Lead
> GENIVI Alliance
>
>
> > Here is a bit of help: to port all the packages to fresh installed Fedo=
ra
> > 26, use the following command to retrieve
> > packages from Fedora 27: rpm -qa --qf "%{name}.%{arch}\n" > packages-
> > list.txt
> >
> > Zoran
> >
>
>
>
>


--=20
=E2=80=9CIf you're going to try, go all the way. Otherwise, don't even star=
t. ..."
  Charles Bukowski

--001a11496d660868ff0560621fce
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>As I told before, by pass this is a simple matte=
r of running devshell, creating the folder and running running the build ag=
ain,<br><br></div>Paul ask me for more information and so I did, I&#39;ll r=
emove that duplicated layer and fire `bitbake -fc cleanall linux-raspberry =
&amp;&amp; bitbake linux-rapsberry` again, if I hit this I may try some dig=
ging. I don&#39;t think this has to do with Fedora version, anyway, sooner =
or latter this version will be tested, so this same error may arise, and at=
 that time we&#39;ll be doing the same questions, so, why to wait? <br><br>=
</div><div></div>Regards,<br></div><div class=3D"gmail_extra"><br><div clas=
s=3D"gmail_quote">2017-12-15 11:09 GMT-02:00 Gunnar Andersson <span dir=3D"=
ltr">&lt;<a href=3D"mailto:gandersson@genivi.org" target=3D"_blank">ganders=
son@genivi.org</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span cl=
ass=3D""><br>
On Thu, 2017-12-14 at 06:31 +0100, Zoran Stojsavljevic wrote:<br>
&gt; &gt; Also is worth noting that I&#39;m running Fedora 27 which wasn&#3=
9;t tested...=C2=A0<br>
&gt;<br>
&gt; You should start from here your investigation, since you are on not te=
sted<br>
&gt; YOCTO host distribution. And Fedoras are<br>
&gt; different from release to release, certainly!<br>
&gt;<br>
&gt; So either you should downgrade your fedora 27 to 26 (which I doubt it =
is<br>
&gt; possible), better to build brand new Fedora 26 using=C2=A0exactly the =
same<br>
&gt; packages.<br>
<br>
</span>Oh no, don&#39;t downgrade your distro. :-)<br>
<br>
Docker is your friend for a repeatable and tested Yocto build environment<b=
r>
(In Fedora of course systemd-nspawn and other esoteric choices may exist).<=
br>
<br>
We usually use &amp; recommend easy-build project [1] (except for=C2=A0the =
CI system<br>
build agents that needed a little bit more, and when I set that up I was<br=
>
also more accustomed with using phusion/baseimage docker image over standar=
d<br>
Ubuntu).<br>
=C2=A0<br>
If you find anything lacking, I&#39;m sure it will accept pull requests - j=
ust<br>
fork &amp; extend in the meantime.=C2=A0 Honestly, it&#39;s quite trivial f=
or anyone to<br>
reproduce such Docker files, but Gianpaolo set up a structure and a=C2=A0pr=
oject<br>
here.=C2=A0=C2=A0IMHO, we just need ANY canonical source for a base distro =
with an<br>
official list of yocto/poky required packages ready to go, so why not use<b=
r>
this one &amp; support it with any needed update?<br>
<br>
HTH<br>
- Gunnar<br>
<br>
[1] <a href=3D"https://github.com/gmacario/easy-build" rel=3D"noreferrer" t=
arget=3D"_blank">https://github.com/gmacario/<wbr>easy-build</a><br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--=C2=A0<br>
Gunnar Andersson &lt;<a href=3D"mailto:gandersson@genivi.org">gandersson@ge=
nivi.org</a>&gt;<br>
Development Lead<br>
GENIVI Alliance<br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
&gt; Here is a bit of help: to port all the packages to fresh installed Fed=
ora<br>
&gt; 26, use the following command to retrieve<br>
&gt; packages=C2=A0from Fedora 27:=C2=A0rpm -qa --qf &quot;%{name}.%{arch}\=
n&quot; &gt; packages-<br>
&gt; list.txt<br>
&gt;<br>
&gt; Zoran<br>
&gt;<br>
<br>
<br>
<br>
</div></div></blockquote></div><br><br clear=3D"all"><br>-- <br><div class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature">=E2=80=9CIf you&#39=
;re going to try, go all the way. Otherwise, don&#39;t even start. ...&quot=
; <br>=C2=A0 Charles Bukowski</div>
</div>

--001a11496d660868ff0560621fce--
