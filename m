Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97F44E00B1E; Tue,  6 May 2014 11:49:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (diego.sueiro[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.52 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qa0-f52.google.com (mail-qa0-f52.google.com
	[209.85.216.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8481E00975
	for <yocto@yoctoproject.org>; Tue,  6 May 2014 11:49:04 -0700 (PDT)
Received: by mail-qa0-f52.google.com with SMTP id cm18so7800500qab.25
	for <yocto@yoctoproject.org>; Tue, 06 May 2014 11:49:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=xUIagl78a2UIKJD7XFwUR921SX4YrwayDk7NvTNYsd4=;
	b=Hc8TD+xsetb7tl8Aw5jA4xZrvRVVjvisEn3VUJLK8yIaAhRP1zTK5fRpLaRyBLwy7m
	x0ojNrmC+yLq9XyKDpO3XkrGb/UV5ULgh65/rMRYl2HujKZycRGReM35AFLMoqSyzxzn
	mTxm/qILmpwTDu2Yj5kbv6+9/VXLMmoO4tTRpGO3EGiROgojY1OhtZ9n/41Pth5h0EnC
	mJ3hD8wrtTr5mgDDxh1B3/n3TFixSxRMk3xIjmHMOc+RjYXLYZPpma/HHVj0SOxxSQjl
	DapoDpvfzlPb7esCIBxGKPO01tbIDeRf475wt/YRifSI0rj7IjYXphOGX4Pd7zx8L6ac
	OliQ==
X-Received: by 10.224.29.68 with SMTP id p4mr59246159qac.42.1399402143619;
	Tue, 06 May 2014 11:49:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.48.112 with HTTP; Tue, 6 May 2014 11:48:43 -0700 (PDT)
In-Reply-To: <CAMKF1sqfnZnMVufmitCS-C1QU6PCzOcqqJWmNrYE1J7JnBf5fg@mail.gmail.com>
References: <CAMCfZKH4u4oix7Ks_8CtyZJYPdyyPB_ECNMYJK=r3KzL0_FZ5Q@mail.gmail.com>
	<CAMKF1spVm46k7s+xm0BKCu6=sHR4npEbHLfAUVfQDOve9thc0A@mail.gmail.com>
	<CAMCfZKGF=dftUZ2AEwmUBCaGjBLOn5PAnrWuf4hDviu_3anNrw@mail.gmail.com>
	<CAMKF1sqfnZnMVufmitCS-C1QU6PCzOcqqJWmNrYE1J7JnBf5fg@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Tue, 6 May 2014 15:48:43 -0300
Message-ID: <CAMCfZKEZgu_o1fqK3jR8kTxmMKVVStuskM7AcmQJXzdkaP7Z-A@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RPM to Verify Installed Packages
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
X-List-Received-Date: Tue, 06 May 2014 18:49:05 -0000
Content-Type: multipart/alternative; boundary=047d7bf0ca64ab205104f8bfb35d

--047d7bf0ca64ab205104f8bfb35d
Content-Type: text/plain; charset=ISO-8859-1

On Tue, May 6, 2014 at 3:39 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On Tue, May 6, 2014 at 11:34 AM, Diego Sueiro <diego.sueiro@gmail.com>
> wrote:
> >
> > It's hard to say. But when I try to execute it I receive: "cannot execute
> > binary file".
> > And the output of "file" command is: "data".
> >
> > My bet is that the system was powered down during the update process.
>
> what happens if you reinstall it ?


It works.
But the problem is that --verify option is not working.
Even if I remove a file from the installed package it did not point for a
missing file.

Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/

--047d7bf0ca64ab205104f8bfb35d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Tue, May 6, 2014 at 3:39 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</spa=
n> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"">On Tue, May 6, 2014 at 11:34=
 AM, Diego Sueiro &lt;<a href=3D"mailto:diego.sueiro@gmail.com">diego.sueir=
o@gmail.com</a>&gt; wrote:<br>


&gt;<br>
&gt; It&#39;s hard to say. But when I try to execute it I receive: &quot;ca=
nnot execute<br>
&gt; binary file&quot;.<br>
&gt; And the output of &quot;file&quot; command is: &quot;data&quot;.<br>
&gt;<br>
&gt; My bet is that the system was powered down during the update process.<=
br>
<br>
</div>what happens if you reinstall it ?</blockquote></div><br>It works.</d=
iv><div class=3D"gmail_extra">But the problem is that --verify option is no=
t working.</div><div class=3D"gmail_extra">Even if I remove a file from the=
 installed package it did not point for a missing file.<br>

<br clear=3D"all"><div><div dir=3D"ltr"><div>Regards,</div><div><br></div>-=
-<br>*dS<br>Diego Sueiro<br><br>Administrador do Embarcados<br><a href=3D"h=
ttp://www.embarcados.com.br/?utm_source=3Dassinatura_diego&amp;utm_medium=
=3De-mail&amp;utm_campaign=3DAssinatura%20Email%20Diego" target=3D"_blank">=
www.embarcados.com.br</a><br>

<br>/*long live rock &#39;n roll*/<br></div></div>
</div></div>

--047d7bf0ca64ab205104f8bfb35d--
