Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D188AE00C9C; Wed, 30 Dec 2015 09:36:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kratsg[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6060E00AAA
	for <yocto@yoctoproject.org>; Wed, 30 Dec 2015 09:35:58 -0800 (PST)
Received: by mail-io0-f169.google.com with SMTP id q21so73786862iod.0
	for <yocto@yoctoproject.org>; Wed, 30 Dec 2015 09:35:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-type;
	bh=xJglVmENkg57JaPqQzBOdXIUybh9AJGdNKTqUzuFTSo=;
	b=DeN5wvPhYl2BUHcswZuCNNKR7OVRpKQyV8hDvsKUxtxXxS16BmWTQNeff26AtvZ1GX
	SNKCf38YqMRKzuYJXXWMU1SHR0toT6Q1xlHZXZdWjVtnygp16YJIiUwtTpU1xW+deqh8
	UG0O2JDAcVU4S/w2ISktPHIiuedjG5BQxxm8vc2yLNtOP0gO3bU5VkIXfXCiGlE4OfUd
	N195YfyPTcIv6ISZcpw87STRmmlE6VRWev6J67o7AnEkGcBULC5qucYFfGZNrDioWkot
	UxJK8c+yYimRKW3ZWzm4dRhdsnUfKmKoMrilCU6jhiRvnc2WtuukrnLGF2b6naVB6Mcf
	Ij9g==
X-Received: by 10.107.7.22 with SMTP id 22mr5750694ioh.17.1451496957737; Wed,
	30 Dec 2015 09:35:57 -0800 (PST)
MIME-Version: 1.0
References: <CAFzUWG=iGCKx=crQv_TvMFBXDUytgv2Aq0FTH+0ug5veV1PGKg@mail.gmail.com>
	<CAMKF1srrsm9YVJvaZi1Z38X0LQYvuwVFoHeJNrYwDs0mJN1PcA@mail.gmail.com>
In-Reply-To: <CAMKF1srrsm9YVJvaZi1Z38X0LQYvuwVFoHeJNrYwDs0mJN1PcA@mail.gmail.com>
From: Giordon Stark <kratsg@gmail.com>
Date: Wed, 30 Dec 2015 17:35:47 +0000
Message-ID: <CAFzUWGm2Np9EWeAMgyt+bR4bEkU0A8+3BiXHAosxOnAvPXpf6A@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Trying to add a recipe for ROOT
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
X-List-Received-Date: Wed, 30 Dec 2015 17:36:02 -0000
Content-Type: multipart/alternative; boundary=001a113f8f3a8f0179052820f85b

--001a113f8f3a8f0179052820f85b
Content-Type: text/plain; charset=UTF-8

https://gist.github.com/anonymous/adec2839deecce33702a

Giordon

On Wed, Dec 23, 2015 at 9:25 PM Khem Raj <raj.khem@gmail.com> wrote:

> can you post output of root/6.04.12-r0/build/CMakeFiles/CMakeError.log
>
> On Wed, Dec 9, 2015 at 12:00 PM, Giordon Stark <kratsg@gmail.com> wrote:
> > Hi all,
> >
> > I'm trying to add a recipe for ROOT (from CERN) but I'm running into
> various
> > issues with just trying to get compilers working.
> >
> > Current recipe:
> >
> https://github.com/kratsg/meta-l1calo/blob/master/recipes-core/root/root_6.04.12.bb
> >
> > Current log: https://gist.github.com/kratsg/cd3184a167676eb69067
> >
> > Note that the goal is to have the bare-minimum with PyROOT (enable python
> > support). So I'm following:
> > - https://root.cern.ch/building-root
> > - https://root.cern.ch/build-prerequisites
> >
> > Thanks,
> >
> > Giordon
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--001a113f8f3a8f0179052820f85b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><a href=3D"https://gist.github.com/anonymous/adec2839deecc=
e33702a">https://gist.github.com/anonymous/adec2839deecce33702a</a><br><div=
><br></div><div>Giordon</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr">On Wed, Dec 23, 2015 at 9:25 PM Khem Raj &lt;<a href=3D"mailto:raj=
.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">can you post output of root/6.04.12-r0/build/CMakeFiles/CMa=
keError.log<br>
<br>
On Wed, Dec 9, 2015 at 12:00 PM, Giordon Stark &lt;<a href=3D"mailto:kratsg=
@gmail.com" target=3D"_blank">kratsg@gmail.com</a>&gt; wrote:<br>
&gt; Hi all,<br>
&gt;<br>
&gt; I&#39;m trying to add a recipe for ROOT (from CERN) but I&#39;m runnin=
g into various<br>
&gt; issues with just trying to get compilers working.<br>
&gt;<br>
&gt; Current recipe:<br>
&gt; <a href=3D"https://github.com/kratsg/meta-l1calo/blob/master/recipes-c=
ore/root/root_6.04.12.bb" rel=3D"noreferrer" target=3D"_blank">https://gith=
ub.com/kratsg/meta-l1calo/blob/master/recipes-core/root/root_6.04.12.bb</a>=
<br>
&gt;<br>
&gt; Current log: <a href=3D"https://gist.github.com/kratsg/cd3184a167676eb=
69067" rel=3D"noreferrer" target=3D"_blank">https://gist.github.com/kratsg/=
cd3184a167676eb69067</a><br>
&gt;<br>
&gt; Note that the goal is to have the bare-minimum with PyROOT (enable pyt=
hon<br>
&gt; support). So I&#39;m following:<br>
&gt; - <a href=3D"https://root.cern.ch/building-root" rel=3D"noreferrer" ta=
rget=3D"_blank">https://root.cern.ch/building-root</a><br>
&gt; - <a href=3D"https://root.cern.ch/build-prerequisites" rel=3D"noreferr=
er" target=3D"_blank">https://root.cern.ch/build-prerequisites</a><br>
&gt;<br>
&gt; Thanks,<br>
&gt;<br>
&gt; Giordon<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
&gt;<br>
</blockquote></div>

--001a113f8f3a8f0179052820f85b--
