Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C8B3E00C82; Wed, 29 Jun 2016 02:05:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.54 listed in list.dnswl.org]
Received: from mail-it0-f54.google.com (mail-it0-f54.google.com
	[209.85.214.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4E70E009B8
	for <yocto@yoctoproject.org>; Wed, 29 Jun 2016 02:05:48 -0700 (PDT)
Received: by mail-it0-f54.google.com with SMTP id g127so112291553ith.0
	for <yocto@yoctoproject.org>; Wed, 29 Jun 2016 02:05:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=MiOFStoRTMD9X5NIv4Ldhi7DiwvgrIaZsVgKIQ6Z4YY=;
	b=LXZWFy8CJ4XwK79y5csDc7DmBfzE6gaOEEatxAnDR8pi7wMb27weU/GA8iDyW9njTK
	RWNu3qhYOIo4cxy/PwDLMdVeE6B/DCn1bQLK5TOlIY2KO3hGfcfSynlu1z2RsC/HyYLn
	uE8jO4RquhViHZDUnHJa3fm/r982vaMxw4emJtx0v+1dTmU22Uelhr/a+V3oNbpmUHtM
	5oY1oHZxS7ftf964NlJBDBOsQ0YKRN+z03W7293UPlvzInAI+tvDQ47pPNX+1j8wMEdl
	K/Bbv6rydXCXRuCiLaGYta5vLlFQWRDVyGFfP9xRI7bRN7EQG80bOX4vEJ+/iWW7Bqpw
	NH5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=MiOFStoRTMD9X5NIv4Ldhi7DiwvgrIaZsVgKIQ6Z4YY=;
	b=HDmmQMU65CWMYKMv4J1+EwnGeeoSXaUR6Hue8zNjlDST44p/rCxlivxtu5rTWdKQEG
	EYJPpYPxXJT6UUZmjMXyz2FtHD+6GleIOGkQjbaLRboAjC1S0x1/kJFWdDjtbicxer4L
	yFX8nC4YtAsG6i5Alj4ciUdxfLec4qC9Dy1e7gJgEsXL+A/G4u3zd2+AKgvMrpVeW0kO
	jzUy0PQNGV4gVgLS3Oh181D0e9VYRx6lPEs7kfQCdrrFaPmlIN+dxHhR+1RIipMdV/ys
	MxpAyiEGA1Nlt0VwfgTSLdAsiBAXnHWKmIKqh8xpm83IuQWy9WTuE0xxKqE96/QIp6hc
	mfPw==
X-Gm-Message-State: ALyK8tJpUNcEz1990wjM9YVP38S8+szucR6ZwVIxPFvjFLPQy05xlLJDh6Hckz0AcZNjZXjQMC7xTIKfuMO5SRvH
X-Received: by 10.36.20.212 with SMTP id 203mr12876848itg.83.1467191147878;
	Wed, 29 Jun 2016 02:05:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.142.151 with HTTP; Wed, 29 Jun 2016 02:05:28 -0700 (PDT)
In-Reply-To: <a0937a97eab24537b1c0f01bd44182c3@HIBDWSMB02.ad.harman.com>
References: <d023141f03804bacb323bdfb95daee19@HIBDWSMB02.ad.harman.com>
	<CAJTo0LYiA-mxZUuK8bOx64tFMvPmvRBBzExcQNfxsc5q6JvxMw@mail.gmail.com>
	<b57493dfacad490388b9bd3600179e65@HIBDWSMB02.ad.harman.com>
	<CAJTo0Lbu3O3Qqo2be_t4=pXr-B=q=J-diKNm-ZuJsbW0C=0wpQ@mail.gmail.com>
	<c3c0e392db09430d91496cf4def6c395@HIBDWSMB02.ad.harman.com>
	<CAJTo0LZCxCYNL-C0LU5oKVwSzeQfY5DCJXsiHR1N_PwdcBHHTw@mail.gmail.com>
	<0d34c7f6041540d28e0370d6d1d2a737@HIBDWSMB02.ad.harman.com>
	<a0937a97eab24537b1c0f01bd44182c3@HIBDWSMB02.ad.harman.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 29 Jun 2016 10:05:28 +0100
Message-ID: <CAJTo0LaTgG_mnQSbGZ=1thAjMhJXRbU7HF3VKYqB1zSLOTrWqA@mail.gmail.com>
To: "Kumar, Shrawan" <Shrawan.Kumar@harman.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: setcap using recipe
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
X-List-Received-Date: Wed, 29 Jun 2016 09:05:53 -0000
Content-Type: multipart/alternative; boundary=001a1143e1983012a60536670f54

--001a1143e1983012a60536670f54
Content-Type: text/plain; charset=UTF-8

On 29 June 2016 at 05:10, Kumar, Shrawan <Shrawan.Kumar@harman.com> wrote:

> Could  your update on my issues ?
>
>
The patch is probably against a newer version.  If you're unable to switch
to the latest version of pseudo to debug this then you can run setcap in a
postinst.

Ross

--001a1143e1983012a60536670f54
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 29 June 2016 at 05:10, Kumar, Shrawan <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:Shrawan.Kumar@harman.com" target=3D"_blank">Shrawan.Kumar@harman.com<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p class=3D"MsoNorm=
al"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;s=
ans-serif&quot;;color:#1f497d">Could=C2=A0 your update on my issues ?<u></u=
><u></u></span></p>
<p class=3D"MsoNormal"></p></blockquote></div><br>The patch is probably aga=
inst a newer version.=C2=A0 If you&#39;re unable to switch to the latest ve=
rsion of pseudo to debug this then you can run setcap in a postinst.</div><=
div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></=
div>

--001a1143e1983012a60536670f54--
