Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B609BE00C1E; Thu,  3 Jan 2019 10:42:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	MIME_QP_LONG_LINE, 
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.48 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com
	[209.85.208.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83E95E00C10
	for <yocto@yoctoproject.org>; Thu,  3 Jan 2019 10:42:23 -0800 (PST)
Received: by mail-ed1-f48.google.com with SMTP id o10so29785302edt.13
	for <yocto@yoctoproject.org>; Thu, 03 Jan 2019 10:42:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=8HyH+Yn3KTKEPnxtbp90QMtivRTZCz50baAI8JkwyUg=;
	b=fblsnE+AIDzo0lbeHLZxp5MyYbwiXoeLCQJH+bo4nDFdDMZD3QiQ8HBKkvtuPaH8q8
	7ZAJ6QwucQL4Hm09nCQRlWEqAxVM29Kt0KvK3VaNWl+vX54yeO5bZkuOQi/1YOpccGT1
	sI71IRwx3Rr0IxAh9CxNhbRc8zZbmAConDxzseeY8ZkBjiUlzoVssxy1JRzTUW9t335F
	h/vlHpAxbt5bjnEYVsb26i1zYZHEsK9vWf99ZNhu9WwJq82rdxS3GCE8zHi8/D+8i0R5
	Rj1gXq90QgqHt+TUjulFVrgjxTkq1pbdnnaUfp4U7zAyAOhzMrUhfOLG1A64AZrt2Q54
	wZCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=8HyH+Yn3KTKEPnxtbp90QMtivRTZCz50baAI8JkwyUg=;
	b=E5d5NxDCjxCYDdbH8mgGvww2P+l9NkSad4gs6wSMTZGHyTJKkd3DXoiEW0D+bI7hot
	inuxucuCO4MjS/PQjFYciG07vgNBCfn/02fKxIGG6uzUJEs3dHOYGcmPZGLOHGGdBfSr
	W8HgzD7op/HMOSzM1UskPqyXqH/d/QpQ5MDCvpH9cti9+juWpRNr9K9oqcKXNFqorX+l
	VM2m8o8pDR3R6KvYuD7fLHKSAPNIxj5Q7ciF0Ta/R27RltMYK01Wg6zDKKoxW3tHumvy
	MaDymBdYqyr+OevoF5j1UBXemGnGzLaKyeAbML0nM4QoKJzk/uAfbSluSq9C20jMG4jr
	lKig==
X-Gm-Message-State: AA+aEWZk3EzdnPCZ0txKKXHWoFiMXCVUg+jsl2atNQBlAOwXUMXVswvr
	ZCvSk96NtMhtbkLf6qUs9yc=
X-Google-Smtp-Source: AFSGD/WoKvWST4opc1DKjmvDQtUTamBBZmANyPAC5a6ufCWJRS6/WJrpObdNytJeu3LqynPRJTpdsw==
X-Received: by 2002:aa7:d394:: with SMTP id x20mr43154126edq.193.1546540942721;
	Thu, 03 Jan 2019 10:42:22 -0800 (PST)
Received: from ?IPv6:2a02:8109:b5c0:1a5d:80fb:5332:ad66:d0e9?
	([2a02:8109:b5c0:1a5d:80fb:5332:ad66:d0e9])
	by smtp.gmail.com with ESMTPSA id
	m14sm27043790edc.27.2019.01.03.10.42.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 03 Jan 2019 10:42:21 -0800 (PST)
Mime-Version: 1.0 (1.0)
From: Alexander Kanavin <alex.kanavin@gmail.com>
X-Mailer: iPhone Mail (16C101)
In-Reply-To: <CADmsHKcfz5Hgh-imV-kr4MYHUHkM4PR6-zL5hNhFe-EJeTTU8w@mail.gmail.com>
Date: Thu, 3 Jan 2019 19:42:21 +0100
Message-Id: <D2F2B4A7-B573-4C1C-A90D-14913CD45572@gmail.com>
References: <CADmsHKdd=SePN5Gd5Sb0zRc-dA62RO4tOp4A9E5uvYvDVDN-Xg@mail.gmail.com>
	<CANNYZj9Lk=nGg+xprdGcAJ+Q7jsSbt=ZjSeBNT0a62DFZYRH_w@mail.gmail.com>
	<CADmsHKcfz5Hgh-imV-kr4MYHUHkM4PR6-zL5hNhFe-EJeTTU8w@mail.gmail.com>
To: Derek Dresser <dresserd@alum.mit.edu>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Python upgrade path?
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
X-List-Received-Date: Thu, 03 Jan 2019 18:42:25 -0000
Content-Type: multipart/alternative;
	boundary=Apple-Mail-3746A3C8-8F56-4F8B-8415-19E3CB07A02D
Content-Transfer-Encoding: 7bit

--Apple-Mail-3746A3C8-8F56-4F8B-8415-19E3CB07A02D
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Yep, that=E2=80=99s all reasonable. Devtool won=E2=80=99t help you with reba=
sing patches to poky tree. It has a facility for upgrading recipes, but it=E2=
=80=99s likely to fail in non trivial ways for something as complex as pytho=
n. You=E2=80=99re better off taking existing patches and getting them to wor=
k I=E2=80=99d say.

Alex


> On 3 Jan 2019, at 15.50, Derek Dresser <dresserd@alum.mit.edu> wrote:
>=20
>> On Thu, Jan 3, 2019 at 5:36 AM Alexander Kanavin <alex.kanavin@gmail.com>=
 wrote:
>> On Thu, 3 Jan 2019 at 10:11, Derek Dresser <dresserd@alum.mit.edu> wrote:=

>> > I have an application that uses features introduced in Python 3.6, so I=
 am trying to add a new version of Python to my Yocto build.  I know that 3.=
5.6 is the latest version of Python that has been included in a Yocto releas=
e.  I found the patches here
>> > https://patchwork.openembedded.org/series/14778/
>> > and was able to build Python3.7.1 for the commit specified in the patch=
.  I looked briefly at rebasing the patches on the Thud branch, but I think t=
hat is beyond my current Python and Yocto capabilities.
>> >
>> > Are there any paths forward for me to get a newer version of Python usi=
ng Yocto?  Would it be possible for me to use a package created from that pa=
tched build and integrate it with my current thud build?  Are there any othe=
r workarounds I could use until a newer version of Python is supported?
>> >
>> > I'd be happy to spend some time on this if I could help move this forwa=
rd, but I don't think this is something I can do by myself at this point.  I=
'm quite new to Yocto.
>>=20
>> Sadly there is no good answer. There are patches, but they need
>> further work (see oe-core list for details). Worse yet, thud is likely
>> to stay with 3.5, as such drastic version upgrades are usually not
>> done in stable branches (you are still free to do it via a custom
>> layer with backported recipes though).
>>=20
>> If you can take solving the issues and getting py 3.7 merged into
>> master as an exercise, this would be greatly appreciated by everyone,
>> and would take you out of 'new to yocto' :)
>>=20
>>=20
>> Alex
>=20
> Thanks for the response.  I will take a look at getting 3.7 to build, but I=
'd benefit from some guidance on the process to do so.  I was able to get th=
e patches to build on the specified commit that they target (although I just=
 tried again and ran into some issues.  I'll have to figure out what I did t=
he first time.)  This is what I did.
>=20
> 1. download patches from https://patchwork.openembedded.org/series/14778/
> 2. checkout poky at specified commit "e349b239c8833bcdad9b1ff1a0702ace2db7=
1959"
> 3. apply patch
> 4. bitbake python3
>=20
> I then tried to rebase the patches on the master branch and ran into many m=
erge conflicts that I didn't really have the context to resolve.  I believe t=
hat is where I'll have to dig in to get things working.
>=20
> My questions are, is that a reasonable process?  Is there a better process=
 using devtool or something?  Any guidance is appreciated.
>=20
> Thanks,
> Derek
>=20

--Apple-Mail-3746A3C8-8F56-4F8B-8415-19E3CB07A02D
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Yep, that=E2=80=99s all reasonable. Devtool=
 won=E2=80=99t help you with rebasing patches to poky tree. It has a facilit=
y for upgrading recipes, but it=E2=80=99s likely to fail in non trivial ways=
 for something as complex as python. You=E2=80=99re better off taking existi=
ng patches and getting them to work I=E2=80=99d say.<br><br>Alex<br><div dir=
=3D"ltr"><br></div><div dir=3D"ltr"><br>On 3 Jan 2019, at 15.50, Derek Dress=
er &lt;<a href=3D"mailto:dresserd@alum.mit.edu">dresserd@alum.mit.edu</a>&gt=
; wrote:<br><br></div><blockquote type=3D"cite"><div dir=3D"ltr"><div dir=3D=
"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr">On Thu, Jan 3, 2019 at 5:3=
6 AM Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com">alex.ka=
navin@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Thu=
, 3 Jan 2019 at 10:11, Derek Dresser &lt;<a href=3D"mailto:dresserd@alum.mit=
.edu" target=3D"_blank">dresserd@alum.mit.edu</a>&gt; wrote:<br>
&gt; I have an application that uses features introduced in Python 3.6, so I=
 am trying to add a new version of Python to my Yocto build.&nbsp; I know th=
at 3.5.6 is the latest version of Python that has been included in a Yocto r=
elease.&nbsp; I found the patches here<br>
&gt; <a href=3D"https://patchwork.openembedded.org/series/14778/" rel=3D"nor=
eferrer" target=3D"_blank">https://patchwork.openembedded.org/series/14778/<=
/a><br>
&gt; and was able to build Python3.7.1 for the commit specified in the patch=
.&nbsp; I looked briefly at rebasing the patches on the Thud branch, but I t=
hink that is beyond my current Python and Yocto capabilities.<br>
&gt;<br>
&gt; Are there any paths forward for me to get a newer version of Python usi=
ng Yocto?&nbsp; Would it be possible for me to use a package created from th=
at patched build and integrate it with my current thud build?&nbsp; Are ther=
e any other workarounds I could use until a newer version of Python is suppo=
rted?<br>
&gt;<br>
&gt; I'd be happy to spend some time on this if I could help move this forwa=
rd, but I don't think this is something I can do by myself at this point.&nb=
sp; I'm quite new to Yocto.<br>
<br>
Sadly there is no good answer. There are patches, but they need<br>
further work (see oe-core list for details). Worse yet, thud is likely<br>
to stay with 3.5, as such drastic version upgrades are usually not<br>
done in stable branches (you are still free to do it via a custom<br>
layer with backported recipes though).<br>
<br>
If you can take solving the issues and getting py 3.7 merged into<br>
master as an exercise, this would be greatly appreciated by everyone,<br>
and would take you out of 'new to yocto' :)<br>
<br>
<br>
Alex<br></blockquote><div><br></div><div>Thanks for the response.&nbsp; I wi=
ll take a look at getting 3.7 to build, but I'd benefit from some guidance o=
n the process to do so.&nbsp; I was able to get the patches to build on the s=
pecified commit that they target (although I just tried again and ran into s=
ome issues.&nbsp; I'll have to figure out what I did the first time.)&nbsp; T=
his is what I did.</div><div><br></div><div>1. download patches from <a href=
=3D"https://patchwork.openembedded.org/series/14778/">https://patchwork.open=
embedded.org/series/14778/</a></div><div>2. checkout poky at specified commi=
t "e349b239c8833bcdad9b1ff1a0702ace2db71959"</div><div>3. apply patch</div><=
div>4. bitbake python3</div><div><br></div><div>I then tried to rebase the p=
atches on the master branch and ran into many merge conflicts that I didn't r=
eally have the context to resolve.&nbsp; I believe that is where I'll have t=
o dig in to get things working.</div><div><br></div><div>My questions are, i=
s that a reasonable process?&nbsp; Is there a better process using devtool o=
r something?&nbsp; Any guidance is appreciated.</div><div><br></div><div>Tha=
nks,</div><div>Derek<br></div><div><br></div></div></div>
</div></blockquote></body></html>=

--Apple-Mail-3746A3C8-8F56-4F8B-8415-19E3CB07A02D--
