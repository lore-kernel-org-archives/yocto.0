Return-Path: <guslees@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57EFEE00C8F; Wed, 20 Mar 2019 22:08:06 -0700 (PDT)
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
	*      [209.85.161.44 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yw1-f44.google.com (mail-yw1-f44.google.com
	[209.85.161.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF8FDE00C43
	for <yocto@yoctoproject.org>; Wed, 20 Mar 2019 22:08:05 -0700 (PDT)
Received: by mail-yw1-f44.google.com with SMTP id e76so3891859ywa.9
	for <yocto@yoctoproject.org>; Wed, 20 Mar 2019 22:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=8gLA9xFGeDnFa4ESI/ULQczsQBHLAAGQhktT1kcc6Iw=;
	b=X9kjJCeDxd1gNbUYZYjzYkm1ApMLAtR4iGcSKmtAZ/b1szGo0N1p5iN7axYNJsa6ta
	DN2E6NI4ij9dU9jJ2XmTxwzyigjK2V757z/ap5XqHgg8gM4WGU1eqKTSFs+vYXXxDEWp
	C7guiXL7BhHQ9OAk39nMIAmHJi2hYStI8S6ioffXEENElEi5nEnr6+L2Nv53qL+zvTvU
	4RdXAleseOywkwwyf7a2/qFFuiwKxEgCKScT4W/MGFEsaGXNvgey88Z4Jbn7tcC9h94u
	EM8+jLHinbBfd6pNQDwdzzxhi+YcXKXYnEQYshB5Br4CKtsACewhYGWATEO5bUZMPy/Y
	pQWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=8gLA9xFGeDnFa4ESI/ULQczsQBHLAAGQhktT1kcc6Iw=;
	b=iS87WffZAFhfjsjYgjw/NjNiDTGlGkZX//b8NuD0RRShRORPVVm7cYZyuERPsfg17M
	RNQ4wcN6ZixEqgF2zYD5v7ZgEAs3QeLqYw/kOH5Jm9ZWwWYSi5pcWw8L9MUoMUGGt+fK
	y6Gf2jwEFF/7k1lVFLkACzifRuFl25fh7BIQTKjrCmQhzj8ONaBbn0mNLJzAXE2eCFQN
	KuSgTk2t/ZNMUr1fXHv3SgN7IVPihGsF8gPIDsjFLgyY+j6/xHC/85E0o4q1+gMYoME4
	KPHxZpVBnMpIOTPMO3XiF2ZGrR688/KARBlIsTPMl4Wotz6/HL4HKkIHr3vvWY9M0qs3
	cR2Q==
X-Gm-Message-State: APjAAAUYyn7TH6WT+3CtR8gnMXa2C5ZPdiUYgm53knD6dIR9CgF5Bt1a
	3zDlJQtzmyNXYlq+NXYs/7WOzffOu20pUi5ci4E=
X-Google-Smtp-Source: APXvYqzZrv0TRAQRTlKlX7O2voDyvoAaRkmgLg8UYI9w7TK1x/Yo+QPYgwnMHzUbUuh0dTiapFDG/0ot17YJG+4b50Y=
X-Received: by 2002:a81:9b06:: with SMTP id s6mr1459020ywg.59.1553144884911;
	Wed, 20 Mar 2019 22:08:04 -0700 (PDT)
MIME-Version: 1.0
References: <accf0c0a-77f8-e86c-c0ed-3af8d5a48e3b@balister.org>
	<CAPA_H3c1cOG-2WVzjmRdOpwj_VfR6G4UM3uck4wckLVsqR8Yrw@mail.gmail.com>
In-Reply-To: <CAPA_H3c1cOG-2WVzjmRdOpwj_VfR6G4UM3uck4wckLVsqR8Yrw@mail.gmail.com>
From: Angus Lees <guslees@gmail.com>
Date: Thu, 21 Mar 2019 16:07:53 +1100
Message-ID: <CAPA_H3fp9Q4FOapNX=rYBQi4s0oyc7pVY4gFXYPxQWGKOGAVqQ@mail.gmail.com>
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
X-List-Received-Date: Thu, 21 Mar 2019 05:08:06 -0000
Content-Type: multipart/alternative; boundary="00000000000026645e058493b9b6"

--00000000000026645e058493b9b6
Content-Type: text/plain; charset="UTF-8"

Oh I lie, some of my Android-SDK stuff survives:
https://github.com/anguslees/openembedded-android/wiki

Here's a relevant scummvm forum post to put it in historical context:
https://forums.scummvm.org/viewtopic.php?p=57260&sid=bcf54148cb83752212a19262b76551c8#p57260
... And my announce to the android-ndk list, that promptly resulted in the
Android powers-that-be shutting it down with prejudice.  I believe the
quote was "this threatens the future of Android" ;)
https://groups.google.com/d/topic/android-ndk/Ps1RWb21zRw/discussion

 - Gus

On Thu, 21 Mar 2019 at 15:36, Angus Lees <guslees@gmail.com> wrote:

> I use yocto to build an immutable disk image for several architectures of
> Kubernetes servers (currently armv7, aarch64, x86-64).  It's basically a
> CoreOS Container Linux clone, except smaller and more portable.  I like
> yocto/OE's powerful cross-compilation, minimalism, read-only rootfs, A/B
> image upgrades (I'm using rauc), etc.
> https://gitlab.com/containos/containos
>
> Previously I've used yocto/openembedded to build:
> - minimal x86-64 docker images, and pre-built package repository (
> https://github.com/anguslees/boxfactory - no longer maintained now that
> alpine is a thing).
> - an early Android C/C++ sdk development environment (ie: nativesdk) -
> before the official "Android NDK" became useful.  I added support for
> `repo` tool, bionic, etc - I was even doing canadian-cross to build the SDK
> on Linux/glibc, to run on win32/mingw, and compile for armv7/bionic :P
> Unfortunately this got killed by politics and never saw the light of day,
> but it was used to build the early releases of the "ScummVM" Android app
> (possibly the first native app on the Android marketplace).
>
> Indeed, I don't think I've ever used it for an actual embedded platform :P
>
>  - Gus
>
> On Thu, 28 Feb 2019 at 07:01, Philip Balister <philip@balister.org> wrote:
>
>> During the last OpenEmbedded developer meeting, it became clear that
>> people are using the Yocto project/OpenEmbedded in spaces outside what
>> we think of as traditional embedded. Lieu Ta is working on a
>> presentation for the Linux Foundation Leadership Summit and we would
>> like to collect as many "unusual" applications are possible from
>> companies we can publicly acknowledge. Unusual is edge, containers,
>> desktop, etc. Or even really interesting embedded applications :)
>>
>> Please drop me an email (off list is fine) with enough info for us to
>> add you to a slide and acknowledge your work.
>>
>> Thanks,
>>
>> Philip
>> --
>> _______________________________________________
>> Openembedded-core mailing list
>> Openembedded-core@lists.openembedded.org
>> http://lists.openembedded.org/mailman/listinfo/openembedded-core
>>
>
>
> --
>  - Gus
>


-- 
 - Gus

--00000000000026645e058493b9b6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr">Oh I lie, some of my Android-SDK stuff survives:=C2=A0<a href=3D"=
https://github.com/anguslees/openembedded-android/wiki">https://github.com/=
anguslees/openembedded-android/wiki</a></div><div dir=3D"ltr"><br></div><di=
v dir=3D"ltr">Here&#39;s a relevant scummvm forum post to put it in histori=
cal context: <a href=3D"https://forums.scummvm.org/viewtopic.php?p=3D57260&=
amp;sid=3Dbcf54148cb83752212a19262b76551c8#p57260">https://forums.scummvm.o=
rg/viewtopic.php?p=3D57260&amp;sid=3Dbcf54148cb83752212a19262b76551c8#p5726=
0</a><br></div><div>... And my announce to the android-ndk list, that promp=
tly resulted in the Android powers-that-be shutting it down with prejudice.=
=C2=A0 I believe the quote was &quot;this threatens the future of Android&q=
uot; ;)<br></div><div><a href=3D"https://groups.google.com/d/topic/android-=
ndk/Ps1RWb21zRw/discussion">https://groups.google.com/d/topic/android-ndk/P=
s1RWb21zRw/discussion</a></div><div><br></div><div>=C2=A0- Gus</div></div><=
/div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Thu, 21 Mar 2019 at 15:36, Angus Lees &lt;<a href=3D"mailto:g=
uslees@gmail.com">guslees@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div d=
ir=3D"ltr">I use yocto to build an immutable disk image for several archite=
ctures of Kubernetes servers (currently armv7, aarch64, x86-64).=C2=A0 It&#=
39;s basically a CoreOS Container Linux clone, except smaller and more port=
able.=C2=A0 I like yocto/OE&#39;s powerful cross-compilation, minimalism, r=
ead-only rootfs, A/B image upgrades (I&#39;m using rauc), etc.=C2=A0 =C2=A0=
<a href=3D"https://gitlab.com/containos/containos" target=3D"_blank">https:=
//gitlab.com/containos/containos</a></div><div dir=3D"ltr"><div><br></div><=
div>Previously I&#39;ve used yocto/openembedded to build:</div><div>- minim=
al x86-64 docker images, and pre-built package repository (<a href=3D"https=
://github.com/anguslees/boxfactory" target=3D"_blank">https://github.com/an=
guslees/boxfactory</a> - no longer maintained now that alpine is a thing).<=
/div><div>- an early Android C/C++ sdk development environment (ie: natives=
dk) - before the official &quot;Android NDK&quot; became useful.=C2=A0 I ad=
ded support for `repo` tool, bionic, etc - I was even doing canadian-cross =
to build the SDK on Linux/glibc, to run on win32/mingw, and compile for arm=
v7/bionic :P=C2=A0 Unfortunately this got killed by politics and never saw =
the light of day, but it was used to build the early releases of the &quot;=
ScummVM&quot; Android app (possibly the first native app on the Android mar=
ketplace).</div><div><br></div><div>Indeed, I don&#39;t think I&#39;ve ever=
 used it for an actual embedded platform :P</div><div><br></div><div>=C2=A0=
- Gus</div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Thu, 28 Feb 2019 at 07:01, Philip Balister &lt;<a=
 href=3D"mailto:philip@balister.org" target=3D"_blank">philip@balister.org<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">D=
uring the last OpenEmbedded developer meeting, it became clear that<br>
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
 class=3D"gmail-m_-50772305826326863gmail_signature">=C2=A0- Gus</div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">=C2=A0- Gus</div>

--00000000000026645e058493b9b6--
