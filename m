Return-Path: <dimtass@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC8E6E00C1E; Tue, 26 Mar 2019 02:06:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dimtass[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.53 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com
	[209.85.210.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE9A7E00BC8
	for <yocto@yoctoproject.org>; Tue, 26 Mar 2019 02:06:55 -0700 (PDT)
Received: by mail-ot1-f53.google.com with SMTP id 103so10746614otd.9
	for <yocto@yoctoproject.org>; Tue, 26 Mar 2019 02:06:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=VeSfc3bbZ8z+nIDN2zqydffKAase5oxqJflAttEMZf0=;
	b=oOEJWMW9dEt5J8xk6qPt582mQEP5T7JKvPykZlHxg5ELCiQP4Ohxx9FhHx0+W3fAnZ
	OJ+Ho4aDu2BRDp4vpnMIXWokcl/fvlTuOiQUIxEu4Cd0KDDoSJZvwE36wLHPZ3s6MIKD
	/7W+5xlLrqymUySb950jT3uuKGCjXDpJdAvccmZ3J/1tp8GrQTKpmmh0R4MUT6TsUL/9
	Xk+TDkuHbKoPiZW7CGjjVEhi1vHS8FUuHT2ManDtF/oiWrzZgiyedTfm8Z2KvPk15lFT
	5jeNmbo6OEm4GiJwmbr3GJ7UhnnqkgHeOVFIyZBuVoKyJwgZ/k9MdsDMJqrOTX7q+RUv
	IFXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=VeSfc3bbZ8z+nIDN2zqydffKAase5oxqJflAttEMZf0=;
	b=Yd9DcIZLIIztsh4OrYounrlPrsSdFW5rgB6HZbKRkBrK9OzBgj36BR4fSsCLqNWpco
	JRV6VsFCuzdw7FY9lhXN7lyVCAGaw+OvQBwd7S04xzL1d+5djFDfWKD+OtvnKzexfoTO
	0lVIS6crdhG1y4IiMkpHAfKbRotMkP9Km00Gj00CuKbyY+KsJ8LH3bElTia6XaNUBBIV
	jMZp8T5odCFi5BeEotXxvDc9heespAFGT1p1u5x16Y7zq1QXj0b4oBMuHsi87+rEYywb
	fweaXfa1Yg7EXmsJWzcd7FI3PKOCy78DOpGysaCc1fw7dVuwKsU+0+iDOhEERDx1sZ4T
	Mf5A==
X-Gm-Message-State: APjAAAWIGlxORKxBaj0CVwW+cWNP9BHmsWENDtxC8cIYRgcKm+pbtLit
	izeszoj4Z7/fUkuMhXsF8quF5cngMMh62+KCHUU=
X-Google-Smtp-Source: APXvYqxVQjCFqaqildknrLgs37aytJ8NBoK6S0s5ymdQdvxvkBUZkj3PMO9gb3d+hKMSDs+JJk5CvcUNHm7NSi/elhk=
X-Received: by 2002:a9d:4a88:: with SMTP id i8mr21973576otf.91.1553591215085; 
	Tue, 26 Mar 2019 02:06:55 -0700 (PDT)
MIME-Version: 1.0
References: <accf0c0a-77f8-e86c-c0ed-3af8d5a48e3b@balister.org>
	<CAPA_H3c1cOG-2WVzjmRdOpwj_VfR6G4UM3uck4wckLVsqR8Yrw@mail.gmail.com>
	<CAPA_H3fp9Q4FOapNX=rYBQi4s0oyc7pVY4gFXYPxQWGKOGAVqQ@mail.gmail.com>
In-Reply-To: <CAPA_H3fp9Q4FOapNX=rYBQi4s0oyc7pVY4gFXYPxQWGKOGAVqQ@mail.gmail.com>
From: Dimitris Tassopoulos <dimtass@gmail.com>
Date: Tue, 26 Mar 2019 10:06:44 +0100
Message-ID: <CACKFPN24rSDPY0mE4DjEJXiMVdBOfM+zw-Ec8fnydEw7C3hSdg@mail.gmail.com>
To: Angus Lees <guslees@gmail.com>
Cc: "openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>,
	Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 26 Mar 2019 09:06:57 -0000
Content-Type: multipart/alternative; boundary="000000000000805c320584fba444"

--000000000000805c320584fba444
Content-Type: text/plain; charset="UTF-8"

Hi Gus, very interesting stuff you have there.
Thanks for the heads up.
Dimitris

On Mon, Mar 25, 2019 at 4:10 PM Angus Lees <guslees@gmail.com> wrote:

> Oh I lie, some of my Android-SDK stuff survives:
> https://github.com/anguslees/openembedded-android/wiki
>
> Here's a relevant scummvm forum post to put it in historical context:
> https://forums.scummvm.org/viewtopic.php?p=57260&sid=bcf54148cb83752212a19262b76551c8#p57260
> ... And my announce to the android-ndk list, that promptly resulted in the
> Android powers-that-be shutting it down with prejudice.  I believe the
> quote was "this threatens the future of Android" ;)
> https://groups.google.com/d/topic/android-ndk/Ps1RWb21zRw/discussion
>
>  - Gus
>
> On Thu, 21 Mar 2019 at 15:36, Angus Lees <guslees@gmail.com> wrote:
>
>> I use yocto to build an immutable disk image for several architectures of
>> Kubernetes servers (currently armv7, aarch64, x86-64).  It's basically a
>> CoreOS Container Linux clone, except smaller and more portable.  I like
>> yocto/OE's powerful cross-compilation, minimalism, read-only rootfs, A/B
>> image upgrades (I'm using rauc), etc.
>> https://gitlab.com/containos/containos
>>
>> Previously I've used yocto/openembedded to build:
>> - minimal x86-64 docker images, and pre-built package repository (
>> https://github.com/anguslees/boxfactory - no longer maintained now that
>> alpine is a thing).
>> - an early Android C/C++ sdk development environment (ie: nativesdk) -
>> before the official "Android NDK" became useful.  I added support for
>> `repo` tool, bionic, etc - I was even doing canadian-cross to build the SDK
>> on Linux/glibc, to run on win32/mingw, and compile for armv7/bionic :P
>> Unfortunately this got killed by politics and never saw the light of day,
>> but it was used to build the early releases of the "ScummVM" Android app
>> (possibly the first native app on the Android marketplace).
>>
>> Indeed, I don't think I've ever used it for an actual embedded platform :P
>>
>>  - Gus
>>
>> On Thu, 28 Feb 2019 at 07:01, Philip Balister <philip@balister.org>
>> wrote:
>>
>>> During the last OpenEmbedded developer meeting, it became clear that
>>> people are using the Yocto project/OpenEmbedded in spaces outside what
>>> we think of as traditional embedded. Lieu Ta is working on a
>>> presentation for the Linux Foundation Leadership Summit and we would
>>> like to collect as many "unusual" applications are possible from
>>> companies we can publicly acknowledge. Unusual is edge, containers,
>>> desktop, etc. Or even really interesting embedded applications :)
>>>
>>> Please drop me an email (off list is fine) with enough info for us to
>>> add you to a slide and acknowledge your work.
>>>
>>> Thanks,
>>>
>>> Philip
>>> --
>>> _______________________________________________
>>> Openembedded-core mailing list
>>> Openembedded-core@lists.openembedded.org
>>> http://lists.openembedded.org/mailman/listinfo/openembedded-core
>>>
>>
>>
>> --
>>  - Gus
>>
>
>
> --
>  - Gus
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000805c320584fba444
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Gus, very interesting stuff you have there.<div>Thanks =
for the heads up.<div>Dimitris</div></div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Mar 25, 2019 at 4:10 PM A=
ngus Lees &lt;<a href=3D"mailto:guslees@gmail.com">guslees@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"lt=
r">Oh I lie, some of my Android-SDK stuff survives:=C2=A0<a href=3D"https:/=
/github.com/anguslees/openembedded-android/wiki" target=3D"_blank">https://=
github.com/anguslees/openembedded-android/wiki</a></div><div dir=3D"ltr"><b=
r></div><div dir=3D"ltr">Here&#39;s a relevant scummvm forum post to put it=
 in historical context: <a href=3D"https://forums.scummvm.org/viewtopic.php=
?p=3D57260&amp;sid=3Dbcf54148cb83752212a19262b76551c8#p57260" target=3D"_bl=
ank">https://forums.scummvm.org/viewtopic.php?p=3D57260&amp;sid=3Dbcf54148c=
b83752212a19262b76551c8#p57260</a><br></div><div>... And my announce to the=
 android-ndk list, that promptly resulted in the Android powers-that-be shu=
tting it down with prejudice.=C2=A0 I believe the quote was &quot;this thre=
atens the future of Android&quot; ;)<br></div><div><a href=3D"https://group=
s.google.com/d/topic/android-ndk/Ps1RWb21zRw/discussion" target=3D"_blank">=
https://groups.google.com/d/topic/android-ndk/Ps1RWb21zRw/discussion</a></d=
iv><div><br></div><div>=C2=A0- Gus</div></div></div></div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 21 Mar 20=
19 at 15:36, Angus Lees &lt;<a href=3D"mailto:guslees@gmail.com" target=3D"=
_blank">guslees@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"=
>I use yocto to build an immutable disk image for several architectures of =
Kubernetes servers (currently armv7, aarch64, x86-64).=C2=A0 It&#39;s basic=
ally a CoreOS Container Linux clone, except smaller and more portable.=C2=
=A0 I like yocto/OE&#39;s powerful cross-compilation, minimalism, read-only=
 rootfs, A/B image upgrades (I&#39;m using rauc), etc.=C2=A0 =C2=A0<a href=
=3D"https://gitlab.com/containos/containos" target=3D"_blank">https://gitla=
b.com/containos/containos</a></div><div dir=3D"ltr"><div><br></div><div>Pre=
viously I&#39;ve used yocto/openembedded to build:</div><div>- minimal x86-=
64 docker images, and pre-built package repository (<a href=3D"https://gith=
ub.com/anguslees/boxfactory" target=3D"_blank">https://github.com/anguslees=
/boxfactory</a> - no longer maintained now that alpine is a thing).</div><d=
iv>- an early Android C/C++ sdk development environment (ie: nativesdk) - b=
efore the official &quot;Android NDK&quot; became useful.=C2=A0 I added sup=
port for `repo` tool, bionic, etc - I was even doing canadian-cross to buil=
d the SDK on Linux/glibc, to run on win32/mingw, and compile for armv7/bion=
ic :P=C2=A0 Unfortunately this got killed by politics and never saw the lig=
ht of day, but it was used to build the early releases of the &quot;ScummVM=
&quot; Android app (possibly the first native app on the Android marketplac=
e).</div><div><br></div><div>Indeed, I don&#39;t think I&#39;ve ever used i=
t for an actual embedded platform :P</div><div><br></div><div>=C2=A0- Gus</=
div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, 28 Feb 2019 at 07:01, Philip Balister &lt;<a href=
=3D"mailto:philip@balister.org" target=3D"_blank">philip@balister.org</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">During=
 the last OpenEmbedded developer meeting, it became clear that<br>
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
 class=3D"gmail-m_-4503011720150528227gmail-m_-50772305826326863gmail_signa=
ture">=C2=A0- Gus</div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail-m_-4503011720150528227gmail_signature">=C2=A0- Gus</div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000805c320584fba444--
