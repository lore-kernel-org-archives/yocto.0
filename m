Return-Path: <guslees@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C35ABE00C45; Wed, 20 Mar 2019 21:37:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (guslees[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.161.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yw1-f43.google.com (mail-yw1-f43.google.com
	[209.85.161.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5ED60E00C1E
	for <yocto@yoctoproject.org>; Wed, 20 Mar 2019 21:37:06 -0700 (PDT)
Received: by mail-yw1-f43.google.com with SMTP id q128so3855483ywg.8
	for <yocto@yoctoproject.org>; Wed, 20 Mar 2019 21:37:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=IpkTgPaeW9LUgXqhF75icfwTARLvvkmaJjRZG3VnQ4o=;
	b=As+ZNCZkJFTihyxbfuYWVejl5lSrq8ro5DMeGb0ukPTG6t5SEzl6n2b2nuabh6uUsl
	oIMw48oWPMmJugffrfg2slYwkeQwvUXeLjAazB8HoZuP41ObNHyLKxEs8u+YsZ30IRjD
	samNWoLlPDKXLX99cx+EtTFU39md0enk8ndKMQwElqVfDuITOD5sy6hzdU4TJIlI6+r5
	YRdAm2EGQAk2jFZeZIueRoNIC0ePPhBCDIEu/MJiVHQ/SxEr+P0p4I0B52d8wykdkArM
	70aAuDntDs+2dRuFzw85aXouchnnmCUNRIz21MNFiIRXmVylvd0MLh/XcJVGAyPpqhu7
	vYeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=IpkTgPaeW9LUgXqhF75icfwTARLvvkmaJjRZG3VnQ4o=;
	b=cbfP0WjAZSqvjDFIMVYAtaxGCluf1Yds9sunhLo/iYjFOqVNsKmAzee3rQm5Gn1aAF
	ipbBOmjMS0atIFXc4bwWjF0/C/O3wVFaKq54UaCR0NRVdJovIyPP+61RLJdDF/x9tYDA
	Zs9I+WJTEcT6YX4TZWMhhODYYrvAYjtN9HD/LqmAqIX8F56KVRk8RzDKqgv3K4EXc1ZU
	d7UaqhgVVmQlMK8JZuvBOQptnPTkn+CRcJZa92OkatsjnmUuf8ieZUHYMGB/xwrg4BGe
	yC5Qmnb08c43xMbsimESO8WSggN8enbYA2BJg9ij2LG9KG/0kSXyTeROjsGx3GeiY3YX
	DK7w==
X-Gm-Message-State: APjAAAVuHgPgS20yPX7UZ8gh7rCy8Gb8wRJOriDaPLnxpeet7JUuUACi
	T6Us2IUt+1aamNzMockft4aMKfyHQfNAJhQ7AGL4pEtxsIs=
X-Google-Smtp-Source: APXvYqziVHG5iCzmr2UIpUyVd3jaBRzuu5xuVIrbOu3VHdCkdrn2EOVJdzOlhBCIq70zcw5e12apPFGxpHhUn7l1DRw=
X-Received: by 2002:a25:38d4:: with SMTP id f203mr1246194yba.448.1553143025383;
	Wed, 20 Mar 2019 21:37:05 -0700 (PDT)
MIME-Version: 1.0
References: <accf0c0a-77f8-e86c-c0ed-3af8d5a48e3b@balister.org>
In-Reply-To: <accf0c0a-77f8-e86c-c0ed-3af8d5a48e3b@balister.org>
From: Angus Lees <guslees@gmail.com>
Date: Thu, 21 Mar 2019 15:36:53 +1100
Message-ID: <CAPA_H3c1cOG-2WVzjmRdOpwj_VfR6G4UM3uck4wckLVsqR8Yrw@mail.gmail.com>
To: Philip Balister <philip@balister.org>
X-Mailman-Approved-At: Mon, 25 Mar 2019 08:08:41 -0700
Cc: Yocto Project <yocto@yoctoproject.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>
Subject: Re: [OE-core] Information about non-traditional uses of the Yocto Project and OpenEmbedded
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
X-List-Received-Date: Thu, 21 Mar 2019 04:37:07 -0000
Content-Type: multipart/alternative; boundary="000000000000503f420584934ada"

--000000000000503f420584934ada
Content-Type: text/plain; charset="UTF-8"

I use yocto to build an immutable disk image for several architectures of
Kubernetes servers (currently armv7, aarch64, x86-64).  It's basically a
CoreOS Container Linux clone, except smaller and more portable.  I like
yocto/OE's powerful cross-compilation, minimalism, read-only rootfs, A/B
image upgrades (I'm using rauc), etc.
https://gitlab.com/containos/containos

Previously I've used yocto/openembedded to build:
- minimal x86-64 docker images, and pre-built package repository (
https://github.com/anguslees/boxfactory - no longer maintained now that
alpine is a thing).
- an early Android C/C++ sdk development environment (ie: nativesdk) -
before the official "Android NDK" became useful.  I added support for
`repo` tool, bionic, etc - I was even doing canadian-cross to build the SDK
on Linux/glibc, to run on win32/mingw, and compile for armv7/bionic :P
Unfortunately this got killed by politics and never saw the light of day,
but it was used to build the early releases of the "ScummVM" Android app
(possibly the first native app on the Android marketplace).

Indeed, I don't think I've ever used it for an actual embedded platform :P

 - Gus

On Thu, 28 Feb 2019 at 07:01, Philip Balister <philip@balister.org> wrote:

> During the last OpenEmbedded developer meeting, it became clear that
> people are using the Yocto project/OpenEmbedded in spaces outside what
> we think of as traditional embedded. Lieu Ta is working on a
> presentation for the Linux Foundation Leadership Summit and we would
> like to collect as many "unusual" applications are possible from
> companies we can publicly acknowledge. Unusual is edge, containers,
> desktop, etc. Or even really interesting embedded applications :)
>
> Please drop me an email (off list is fine) with enough info for us to
> add you to a slide and acknowledge your work.
>
> Thanks,
>
> Philip
> --
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core
>


-- 
 - Gus

--000000000000503f420584934ada
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">I use yocto to build an =
immutable disk image for several architectures of Kubernetes servers (curre=
ntly armv7, aarch64, x86-64).=C2=A0 It&#39;s basically a CoreOS Container L=
inux clone, except smaller and more portable.=C2=A0 I like yocto/OE&#39;s p=
owerful cross-compilation, minimalism, read-only rootfs, A/B image upgrades=
 (I&#39;m using rauc), etc.=C2=A0 =C2=A0<a href=3D"https://gitlab.com/conta=
inos/containos">https://gitlab.com/containos/containos</a></div><div dir=3D=
"ltr"><div><br></div><div>Previously I&#39;ve used yocto/openembedded to bu=
ild:</div><div>- minimal x86-64 docker images, and pre-built package reposi=
tory (<a href=3D"https://github.com/anguslees/boxfactory">https://github.co=
m/anguslees/boxfactory</a> - no longer maintained now that alpine is a thin=
g).</div><div>- an early Android C/C++ sdk development environment (ie: nat=
ivesdk) - before the official &quot;Android NDK&quot; became useful.=C2=A0 =
I added support for `repo` tool, bionic, etc - I was even doing canadian-cr=
oss to build the SDK on Linux/glibc, to run on win32/mingw, and compile for=
 armv7/bionic :P=C2=A0 Unfortunately this got killed by politics and never =
saw the light of day, but it was used to build the early releases of the &q=
uot;ScummVM&quot; Android app (possibly the first native app on the Android=
 marketplace).</div><div><br></div><div>Indeed, I don&#39;t think I&#39;ve =
ever used it for an actual embedded platform :P</div><div><br></div><div>=
=C2=A0- Gus</div></div></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, 28 Feb 2019 at 07:01, Philip Balister=
 &lt;<a href=3D"mailto:philip@balister.org">philip@balister.org</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">During the l=
ast OpenEmbedded developer meeting, it became clear that<br>
people are using the Yocto project/OpenEmbedded in spaces outside what<br>
we think of as traditional embedded. Lieu Ta is working on a<br>
presentation for the Linux Foundation Leadership Summit and we would<br>
like to collect as many &quot;unusual&quot; applications are possible from<=
br>
companies we can publicly acknowledge. Unusual is edge, containers,<br>
desktop, etc. Or even really interesting embedded applications :)<br>
<br>
Please drop me an email (off list is fine) with enough info for us to<br>
add you to a slide and acknowledge your work.<br>
<br>
Thanks,<br>
<br>
Philip<br>
-- <br>
_______________________________________________<br>
Openembedded-core mailing list<br>
<a href=3D"mailto:Openembedded-core@lists.openembedded.org" target=3D"_blan=
k">Openembedded-core@lists.openembedded.org</a><br>
<a href=3D"http://lists.openembedded.org/mailman/listinfo/openembedded-core=
" rel=3D"noreferrer" target=3D"_blank">http://lists.openembedded.org/mailma=
n/listinfo/openembedded-core</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">=C2=A0- Gus</div>

--000000000000503f420584934ada--
