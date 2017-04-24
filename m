Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A207CE0074B; Sun, 23 Apr 2017 17:30:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.171 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.171 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f171.google.com (mail-qt0-f171.google.com
	[209.85.216.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80B8AE00349
	for <yocto@yoctoproject.org>; Sun, 23 Apr 2017 17:30:39 -0700 (PDT)
Received: by mail-qt0-f171.google.com with SMTP id g60so102453307qtd.3
	for <yocto@yoctoproject.org>; Sun, 23 Apr 2017 17:30:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=vHzFzJIQMTN7otudSoG5cWLJ9HIxCl6dXTXwF4LfwEE=;
	b=ud5W0Rw+1dawx6XvgNPLxGO3nv/2kfCUKmHtZx5RjrPl0IxNY/ku2RF5cOkRFe7kuq
	/5iF8ddr0sMxP9CcGUxFHx7xV5Qu+VLgUUzU22EjSYUqr5tS1TCCYcH3IuYQZIgFb6Gf
	DXEbsSq5MPoY/mdHBSdZ/KuKWUan11a/dYpsDkAYZ3HovdV/Xwsiwn+iqFFutwrNlSa6
	UDY0Uo3Yug7tlygCOT9qS75YdmTkVlKXbzysRIhczs+mE+EkZlg0F9HSw0znKdpX+fPk
	ex4PmYKX8osnGyftfSGOh8cD1bWOII+W5Q8JQFgAdCVAT2o6K7Oms7Aj90bjqH+Em90X
	7Q0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=vHzFzJIQMTN7otudSoG5cWLJ9HIxCl6dXTXwF4LfwEE=;
	b=fxNdnInnGn2154hxdPpz+TlzB5MP6B2XN+Xsa6Q7HdrCuErD9DOQr8VPx9T4RMdy2H
	QjPEfoIN1CO4xNh1V5zSxeZ+c/dZQwOrZ2GZOGPu7vLR0y+ITUudR9OIC6s+IlYrkutq
	Hm6p1eU+4qQZsgBBblfhMvwu+YNaZiW+eSiahk9S9ggQq6nH/oJWsPsK/vuZjp/TeiGa
	z27DR/UDVgq2ZaSUjdyRE9aEKsDKqDosC5oqIhAXwIKWyyAAeAPcf5JcbuvPApt1OUZC
	/SZZtwnQ0r8yeUnpmD6Ql8dWeeb58qSk/jyjOxaFctsTf3J8k2haSJ6g3ISY728Lyd72
	N6/g==
X-Gm-Message-State: AN3rC/78bLO9V8cICitRtQjwXZfmoDEebmMNcrHoC2FGpcyP3u0BXOO/
	UigENqoqCz7li9UPK+LtbwStjOZx4g==
X-Received: by 10.237.53.139 with SMTP id c11mr22897870qte.285.1492993839071; 
	Sun, 23 Apr 2017 17:30:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.145.143 with HTTP; Sun, 23 Apr 2017 17:30:38 -0700 (PDT)
In-Reply-To: <CAJTo0La0mtVGyLysCnqi9EQmT+4L1eYRxgE-TV=3Va45jnt=Xg@mail.gmail.com>
References: <CAMKF1spGM+kugUDOB4kF7NAgSCt9vCw8GFT0nLKFRd2tHei=pw@mail.gmail.com>
	<CAJTo0La0mtVGyLysCnqi9EQmT+4L1eYRxgE-TV=3Va45jnt=Xg@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Sun, 23 Apr 2017 20:30:38 -0400
Message-ID: <CADkTA4MjffrJ13GxaEAQusEU10jj0dUcUsyea36Y2gCy7HCVmA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>
Subject: Re: [oe] [OE-core] [RFT] gcc7 and glibc-2.26 recipes
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
X-List-Received-Date: Mon, 24 Apr 2017 00:30:43 -0000
Content-Type: multipart/alternative; boundary=001a11c008ba6e08fa054ddeb7c8

--001a11c008ba6e08fa054ddeb7c8
Content-Type: text/plain; charset=UTF-8

On Sun, Apr 23, 2017 at 6:04 PM, Burton, Ross <ross.burton@intel.com> wrote:

> On 16 April 2017 at 16:50, Khem Raj <raj.khem@gmail.com> wrote:
>
> > I have put together recipes for upcoming gcc-7 major release as well
> > as glibc 2.26 release, which we would target for next release ( 2.4 )
> >
>
> I threw these at the autobuilder and the errors are starting to appear:
>
> http://errors.yoctoproject.org/Errors/Latest/?filter=
> eddf6362e17899113f10cf53ed0db8a4b13ff3fc&type=commit
>
> Repeated diffutils and rpcbind failures, but linux-yocto and grub too (I
> have your grub fix already).
>

I wasn't able to bring up the linux-yocto one .. but the 4.10 linux Yocto
should be at a high enough stable
release to build with gcc7. So if there's a direct link to that error, I
can take a closer look.

Bruce


>
> Ross
> --
> _______________________________________________
> Openembedded-devel mailing list
> Openembedded-devel@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-devel
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--001a11c008ba6e08fa054ddeb7c8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Sun, Apr 23, 2017 at 6:04 PM, Burton, Ross <span dir=3D"ltr">&lt;<a =
href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.c=
om</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D""=
>On 16 April 2017 at 16:50, Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.c=
om">raj.khem@gmail.com</a>&gt; wrote:<br>
<br>
&gt; I have put together recipes for upcoming gcc-7 major release as well<b=
r>
&gt; as glibc 2.26 release, which we would target for next release ( 2.4 )<=
br>
&gt;<br>
<br>
</span>I threw these at the autobuilder and the errors are starting to appe=
ar:<br>
<br>
<a href=3D"http://errors.yoctoproject.org/Errors/Latest/?filter=3D" rel=3D"=
noreferrer" target=3D"_blank">http://errors.yoctoproject.<wbr>org/Errors/La=
test/?filter=3D</a><br>
eddf6362e17899113f10cf53ed0db8<wbr>a4b13ff3fc&amp;type=3Dcommit<br>
<br>
Repeated diffutils and rpcbind failures, but linux-yocto and grub too (I<br=
>
have your grub fix already).<br></blockquote><div><br></div><div>I wasn&#39=
;t able to bring up the linux-yocto one .. but the 4.10 linux Yocto should =
be at a high enough stable</div><div>release to build with gcc7. So if ther=
e&#39;s a direct link to that error, I can take a closer look.</div><div><b=
r></div><div>Bruce</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
--<br>
______________________________<wbr>_________________<br>
Openembedded-devel mailing list<br>
<a href=3D"mailto:Openembedded-devel@lists.openembedded.org">Openembedded-d=
evel@lists.<wbr>openembedded.org</a><br>
<a href=3D"http://lists.openembedded.org/mailman/listinfo/openembedded-deve=
l" rel=3D"noreferrer" target=3D"_blank">http://lists.openembedded.org/<wbr>=
mailman/listinfo/openembedded-<wbr>devel</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div class=3D"gmail_signature" data-smartmail=3D"gmail_signature">&quot;T=
hou shalt not follow the NULL pointer, for chaos and madness await thee at =
its end&quot;</div>
</div></div>

--001a11c008ba6e08fa054ddeb7c8--
