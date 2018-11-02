Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C010E00A54; Fri,  2 Nov 2018 08:48:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.50 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com
	[209.85.208.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E64EE00718
	for <yocto@yoctoproject.org>; Fri,  2 Nov 2018 08:48:57 -0700 (PDT)
Received: by mail-ed1-f50.google.com with SMTP id w19-v6so2225444eds.1
	for <yocto@yoctoproject.org>; Fri, 02 Nov 2018 08:48:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=xm67yt+9mByMuAQIBF9aIyuhjxJ/tqqSb25OZB0MPFg=;
	b=BzBhJgtz1RnsnwAfPKP/5181USkQ+M0RIbg2E8GULSMGDOPfqccucI03FOcyrYoIaj
	yV70OjH37EkgUt9jnSh22KukzxQP3HQENUHmSFrU6TqhtjHzZeWNk45+USUIyq7vTZam
	CKL6EGHkuajQDczRxH+WLc1DiOFYcejqbufrbwkrEoon+DEuE95/twdt+MMfFKNrRVVI
	yhIeGD5EPuR65E2W/X7ircQD+NIl6m8Su2C1niQAPFyjLA3jxS8NtmDROOJUSTjT4M2T
	eiSzRzyg1zqpQkUU3Rf/HuRlasXV9VoOt5BKpfzPm7yfWiO0xqvS0PExy+4bVUJWITq4
	wg7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=xm67yt+9mByMuAQIBF9aIyuhjxJ/tqqSb25OZB0MPFg=;
	b=WCI71iiYqItfz8/TECza6g5WxXlFYMkCEpGONSE3b7MKc3laSxMw4KTtQy0U7lzfjn
	zs4Xle1Zjauk8Gm9uot1uPdb2oDBpDGLeDPMyeRi8UT2BWBPF1kluAgHFU4JpS9Uhjwl
	h9uZcE8LSElpbXhmh5+nBBGH7TNZ8Ldgnmi18KDo+oZjzdiDXBbx7aKF7MVFxto1TC+N
	vfx/8sQqFx8eGz4YuOF3dR3Sfrdia51jrfedhhI06eZrvisA4PK/7Uxyl4xlYkjnuDRG
	DAJQZQYu0xb1nwGznxWaHQbid4NLhkMXxhAmnga7/Owg7BJUe4rDkWb5oenlhCvwO+S4
	qg7A==
X-Gm-Message-State: AGRZ1gLZ26gGpZc3v61JjMzm7SR9J5nWa5GrS4+GKq4UlCQRx1ye7KMn
	cSwg8gAQ7a953q2fw7JIxmGlYRAzylkWow9ySqI=
X-Google-Smtp-Source: AJdET5fqioeY+4iay3Ve6zlH70KEuN97PIrv6KcZWdhgEKm6+1xZV/5YtHWY16h8xAzJcz+mKveQPmf02+6ELqFGm+Y=
X-Received: by 2002:a50:a2e7:: with SMTP id
	94-v6mr5808046edm.221.1541173736216; 
	Fri, 02 Nov 2018 08:48:56 -0700 (PDT)
MIME-Version: 1.0
References: <2829165.0Ht5z2aexs@localhost.localdomain>
	<CAFNP8OvFy2n7SMe5de66EcdM3URFm-b+dpcqS09hW0CMa9rNaA@mail.gmail.com>
	<59badcade81f4c09bc8d71210d2e7019@XBOX04.axis.com>
In-Reply-To: <59badcade81f4c09bc8d71210d2e7019@XBOX04.axis.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Fri, 2 Nov 2018 08:48:44 -0700
Message-ID: <CAFNP8OsyG+oNK-q_5GVpiCtUrwypTWOGH_2qOKtkPtDEVz2=JA@mail.gmail.com>
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	openembedded-core <openembedded-core@lists.openembedded.org>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [OE-core] 2.6 migration guide
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
X-List-Received-Date: Fri, 02 Nov 2018 15:48:58 -0000
Content-Type: multipart/alternative; boundary="000000000000159c940579b07956"

--000000000000159c940579b07956
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Peter,

Thanks
Scott

https://yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#migration-2.6-=
openssl-changes
https://yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#migration-2.6-=
security-changes

On Fri, Nov 2, 2018 at 8:10 AM Peter Kjellerstedt <
peter.kjellerstedt@axis.com> wrote:

> In =E2=80=9C4.14.2. OpenSSL Changes=E2=80=9D, change =E2=80=9Cboth versio=
ns their dependency
> chains=E2=80=9D to =E2=80=9Cboth versions in their dependency chains=E2=
=80=9D.
>
> In =E2=80=9C4.14.4. Security Changes=E2=80=9D, change =E2=80=9Cfiles=E2=
=80=9D to =E2=80=9Cflags=E2=80=9D (twice).
>
>
>
> //Peter
>
>
>
> *From:* openembedded-core-bounces@lists.openembedded.org <
> openembedded-core-bounces@lists.openembedded.org> *On Behalf Of *Scott
> Rifenbark
> *Sent:* den 30 oktober 2018 23:07
> *To:* Paul Eggleton <paul.eggleton@linux.intel.com>
> *Cc:* Yocto discussion list <yocto@yoctoproject.org>; openembedded-core <
> openembedded-core@lists.openembedded.org>
> *Subject:* Re: [OE-core] 2.6 migration guide
>
>
>
> Paul,
>
>
>
> Thanks for sending.
>
>
>
> Contributors....
>
>
>
> I have an initial section at
> https://yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#moving-to-th=
e-yocto-project-2.6-release,
> which is based on Richard's input.  I am sure there are more items.
>
>
>
> Thanks,
>
> Scott
>
>
>
> On Tue, Oct 23, 2018 at 2:14 PM Paul Eggleton <
> paul.eggleton@linux.intel.com> wrote:
>
> Hi folks
>
> When Scott prepares the migration guide for a release, he usually looks t=
o
> me
> to collate the notable changes for it (those requiring user intervention)=
.
> I
> haven't prepared anything yet though and the 2.6 release is fast
> approaching.
> Can anyone who has been involved in or is aware of such changes in master
> for
> upcoming 2.6 (thud) make a note of it on the wiki in raw form on this pag=
e:
>
>   https://wiki.yoctoproject.org/wiki/FutureMigrationGuide
>
> Scott and I will take care of cleaning it up, so things added there don't
> need
> to be perfect.
>
> I will also be doing my usual trawl through the commits in the release fo=
r
> the
> more general changelog, so most things will get picked up that way, but
> it's
> really helpful if people with first-hand knowledge of the implications of
> some
> of these changes are involved in how they get documented.
>
> Thanks,
> Paul
>
> --
> Paul Eggleton
> Intel Open Source Technology Centre
>
>

--000000000000159c940579b07956
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Peter, <br></div><d=
iv><br></div><div>Thanks</div><div>Scott</div><div><br></div><div><a href=
=3D"https://yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#migration-=
2.6-openssl-changes">https://yoctoproject.org/docs/2.6/ref-manual/ref-manua=
l.html#migration-2.6-openssl-changes</a></div><div><a href=3D"https://yocto=
project.org/docs/2.6/ref-manual/ref-manual.html#migration-2.6-security-chan=
ges">https://yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#migration=
-2.6-security-changes</a><br></div></div></div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr">On Fri, Nov 2, 2018 at 8:10 AM Peter Kjellerstedt=
 &lt;<a href=3D"mailto:peter.kjellerstedt@axis.com">peter.kjellerstedt@axis=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">





<div lang=3D"SV" link=3D"blue" vlink=3D"purple">
<div class=3D"m_6505188101295984849WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#943634">In =E2=
=80=9C4.14.2. OpenSSL Changes=E2=80=9D, change =E2=80=9Cboth versions their=
 dependency chains=E2=80=9D to =E2=80=9Cboth versions in their dependency c=
hains=E2=80=9D.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#943634">In =E2=
=80=9C4.14.4. Security Changes=E2=80=9D, change =E2=80=9Cfiles=E2=80=9D to =
=E2=80=9Cflags=E2=80=9D (twice).<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#943634"><u></u>=
=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#943634">//Peter=
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:#943634"><u></u>=
=C2=A0<u></u></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #e1e1e1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> <a href=3D"mailto:openembedded-core-bounces@lists.openembedded.=
org" target=3D"_blank">openembedded-core-bounces@lists.openembedded.org</a>=
 &lt;<a href=3D"mailto:openembedded-core-bounces@lists.openembedded.org" ta=
rget=3D"_blank">openembedded-core-bounces@lists.openembedded.org</a>&gt;
<b>On Behalf Of </b>Scott Rifenbark<br>
<b>Sent:</b> den 30 oktober 2018 23:07<br>
<b>To:</b> Paul Eggleton &lt;<a href=3D"mailto:paul.eggleton@linux.intel.co=
m" target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;<br>
<b>Cc:</b> Yocto discussion list &lt;<a href=3D"mailto:yocto@yoctoproject.o=
rg" target=3D"_blank">yocto@yoctoproject.org</a>&gt;; openembedded-core &lt=
;<a href=3D"mailto:openembedded-core@lists.openembedded.org" target=3D"_bla=
nk">openembedded-core@lists.openembedded.org</a>&gt;<br>
<b>Subject:</b> Re: [OE-core] 2.6 migration guide<u></u><u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<div>
<p class=3D"MsoNormal">Paul,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Thanks for sending.=C2=A0 <u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Contributors....<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I have an initial section at <a href=3D"https://yoct=
oproject.org/docs/2.6/ref-manual/ref-manual.html#moving-to-the-yocto-projec=
t-2.6-release" target=3D"_blank">
https://yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#moving-to-the-=
yocto-project-2.6-release</a>, which is based on Richard&#39;s input.=C2=A0=
 I am sure there are more items.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Thanks, <u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Scott<u></u><u></u></p>
</div>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Tue, Oct 23, 2018 at 2:14 PM Paul Eggleton &lt;<a=
 href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggle=
ton@linux.intel.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0c=
m 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Hi folks<br>
<br>
When Scott prepares the migration guide for a release, he usually looks to =
me <br>
to collate the notable changes for it (those requiring user intervention). =
I <br>
haven&#39;t prepared anything yet though and the 2.6 release is fast approa=
ching. <br>
Can anyone who has been involved in or is aware of such changes in master f=
or <br>
upcoming 2.6 (thud) make a note of it on the wiki in raw form on this page:=
<br>
<br>
=C2=A0 <a href=3D"https://wiki.yoctoproject.org/wiki/FutureMigrationGuide" =
target=3D"_blank">
https://wiki.yoctoproject.org/wiki/FutureMigrationGuide</a><br>
<br>
Scott and I will take care of cleaning it up, so things added there don&#39=
;t need <br>
to be perfect. <br>
<br>
I will also be doing my usual trawl through the commits in the release for =
the <br>
more general changelog, so most things will get picked up that way, but it&=
#39;s <br>
really helpful if people with first-hand knowledge of the implications of s=
ome <br>
of these changes are involved in how they get documented.<br>
<br>
Thanks,<br>
Paul<br>
<br>
-- <br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
<br>
<u></u><u></u></p>
</blockquote>
</div>
</div>
</div>
</div>

</blockquote></div>

--000000000000159c940579b07956--
