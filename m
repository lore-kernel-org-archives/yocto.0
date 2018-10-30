Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12BB7E00BBF; Tue, 30 Oct 2018 15:06:47 -0700 (PDT)
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
	*      [209.85.208.42 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com
	[209.85.208.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DDC2E0097C
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2018 15:06:44 -0700 (PDT)
Received: by mail-ed1-f42.google.com with SMTP id t10-v6so11904970eds.12
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2018 15:06:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=HDXNL5Lhwq187mgpu7T6l7EZcMIIn9bZG/ckSXIdxRE=;
	b=hRXF1maNDuRgABr2NizcFXzlsmUO+sAGBpaZPALs8jBvUqhj7xqdcXIs/4aNLcMz7z
	mxGLI90BvcfDfMzzsiGCj/DV33Xl4q3H/cp2uUxkaC+OH6V/bXdBsymEfBesn5XbdyCh
	8rdMXBn2KAlF0cUcec3lodlxNqN/kyRQeuOXF/ainMLrv6d1HUU9g6SSUWA6Q350BqIR
	//D45uGzjORQy6TtyIqlaME4LrAFP5BS9yJZB5U2W5Tu75NjTTcuThXIkptooYd4mGqP
	qD6yMIgM2CPRTvnMOQJNxUCT0DoCHZss0+pmzOeWK7t4npwz957CijfAwrddMR7FL5pr
	WCYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=HDXNL5Lhwq187mgpu7T6l7EZcMIIn9bZG/ckSXIdxRE=;
	b=UjjPMbb/hNSVRmEBEH1I8LK1FuOrvCZFlvxYv2zMG31wP5z0spm7KT/iKLqHJGOQV+
	9K13Lvtmd1QSwRqVTKSvIxzD3PCavwp5jtuSN6g0nnQx4jIUWpcNIzg5soEp44J9Mt8k
	qd6wnVXsNDfFUq1IYQeJETbAzGHVSqxAcxmcjssBC0LpyGajQBtlwUXq7ME+tXaq6KJJ
	2W3h4pGEckHNP3nZwd1cR3XLBsfQACi3WNMUybkmFLvWhVcjzGe5JO7Yy/qdnOR4FeTJ
	BEGz3begD7Nl0gQFUUZiDDVP/dUTgIut8DlHM9Sf+mnyG9fnq/A+C4YOG3jSFG9SdnVy
	npvA==
X-Gm-Message-State: AGRZ1gJiVyac78/kZfNCfuBy++y9Hl9GULwlKFwgaFqjckuoSzZluIug
	rIU2ujvmvIGBc2KQNbyXMgnfYb2Ss6IOXqeEkfc=
X-Google-Smtp-Source: AJdET5dy2hjObqNBRHaq67fwt1YAkGVzU4YSyYYS1cW0r4VQEQi8UCDGCJgj8dY2tXsvuB41iXT89HpI/4XA7KQt+nQ=
X-Received: by 2002:a50:8f23:: with SMTP id 32-v6mr246852edy.158.1540937203337;
	Tue, 30 Oct 2018 15:06:43 -0700 (PDT)
MIME-Version: 1.0
References: <2829165.0Ht5z2aexs@localhost.localdomain>
In-Reply-To: <2829165.0Ht5z2aexs@localhost.localdomain>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Tue, 30 Oct 2018 15:06:31 -0700
Message-ID: <CAFNP8OvFy2n7SMe5de66EcdM3URFm-b+dpcqS09hW0CMa9rNaA@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: 2.6 migration guide
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
X-List-Received-Date: Tue, 30 Oct 2018 22:06:47 -0000
Content-Type: multipart/alternative; boundary="000000000000a04d7c0579796635"

--000000000000a04d7c0579796635
Content-Type: text/plain; charset="UTF-8"

Paul,

Thanks for sending.

Contributors....

I have an initial section at
https://yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#moving-to-the-yocto-project-2.6-release,
which is based on Richard's input.  I am sure there are more items.

Thanks,
Scott

On Tue, Oct 23, 2018 at 2:14 PM Paul Eggleton <paul.eggleton@linux.intel.com>
wrote:

> Hi folks
>
> When Scott prepares the migration guide for a release, he usually looks to
> me
> to collate the notable changes for it (those requiring user intervention).
> I
> haven't prepared anything yet though and the 2.6 release is fast
> approaching.
> Can anyone who has been involved in or is aware of such changes in master
> for
> upcoming 2.6 (thud) make a note of it on the wiki in raw form on this page:
>
>   https://wiki.yoctoproject.org/wiki/FutureMigrationGuide
>
> Scott and I will take care of cleaning it up, so things added there don't
> need
> to be perfect.
>
> I will also be doing my usual trawl through the commits in the release for
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
>

--000000000000a04d7c0579796635
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Paul,<br></div><div><br></div><div>T=
hanks for sending.=C2=A0 <br></div><div><br></div><div>Contributors....</di=
v><div><br></div><div>I have an initial section at <a href=3D"https://yocto=
project.org/docs/2.6/ref-manual/ref-manual.html#moving-to-the-yocto-project=
-2.6-release">https://yoctoproject.org/docs/2.6/ref-manual/ref-manual.html#=
moving-to-the-yocto-project-2.6-release</a>, which is based on Richard&#39;=
s input.=C2=A0 I am sure there are more items.</div><div><br></div><div>Tha=
nks, <br></div><div>Scott<br></div></div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr">On Tue, Oct 23, 2018 at 2:14 PM Paul Eggleton &lt;<a hr=
ef=3D"mailto:paul.eggleton@linux.intel.com">paul.eggleton@linux.intel.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi folks<br>
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
rel=3D"noreferrer" target=3D"_blank">https://wiki.yoctoproject.org/wiki/Fut=
ureMigrationGuide</a><br>
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
<br>
</blockquote></div>

--000000000000a04d7c0579796635--
