Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 707BAE00A28; Fri,  3 Mar 2017 06:14:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f171.google.com (mail-qk0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30560E00A18
	for <yocto@yoctoproject.org>; Fri,  3 Mar 2017 06:14:01 -0800 (PST)
Received: by mail-qk0-f171.google.com with SMTP id 1so58046800qkl.3
	for <yocto@yoctoproject.org>; Fri, 03 Mar 2017 06:14:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=/PKa18ZHHy05FBTq5X2JhN3jT6GSFLzI7CR4GML8H4w=;
	b=dAjS8rYIrNgXeqYkZUt2V/l10Trl3SgCQMK7MaGvE0w/3MZwMUeYKUCJovc8kWMwDA
	Mt5+0twQX/tNyTbFQGnwf1fMFOu3QhLRtGnsT14yur0Ownt8p5/HqQ2BY38n81pcvW3H
	DzpRI81PmugFDUdZWol2zmrO9I/nCLoX/h9lvghJ+rLu6S7t4HpM50EzVkz58dIgGdqh
	Gu4avOKcHX3K2o28j4oAdMbkZvEnrDHpTEJfaUJlrEk1sxcimUXtU3U7N7FnGWEqM7wW
	ZFf3d2gpbeIWibdV8H5XAkL0/bIueq5hKTXfIRENOa/rTgc6fQ1mvVA07Uw9fUp8UQ5y
	lcQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=/PKa18ZHHy05FBTq5X2JhN3jT6GSFLzI7CR4GML8H4w=;
	b=pVhbBvf3QE+DVMwi9pfz+QRFJHY+JjdTOXBoywTSVH7Xf1pgadNSPk1gSHon+mUwac
	iPHiFVk5hwemfXdxfSXvonTjj//D5UZL+an0NEdAcEuVkHgLEpNyOBIWhM6UnbkuQouL
	bDu6nxHjUl72ghNpF4HDtJgmFJ7PJ6DT90OYRuhpvh92CHI0iHLHDBzRM0F7BFKHUIV1
	OqJeM6u0x/K5bLbd7g/qxOc/bo76MdfiurQ3J33vr2ZriGRl9NzGlQ/tZAW0pp3YFelm
	rJaQGbL7zKeZ4vgsXWXLSV0GeDiIIbs4BwDDfBmhBgA5vNEQegedCF/Q27F+zlxbiqFK
	NsvQ==
X-Gm-Message-State: AMke39lBTV2/364bvFNEPIypzx8wrI/EgvPVv0Lf0Au2tjADO1i6BqKUQ4aUJijY9SDTXpccByqcMV8bUURiVQ==
X-Received: by 10.200.54.207 with SMTP id b15mr3168270qtc.9.1488550440559;
	Fri, 03 Mar 2017 06:14:00 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.132.68 with HTTP; Fri, 3 Mar 2017 06:14:00 -0800 (PST)
In-Reply-To: <alpine.LFD.2.20.1703030902230.11821@uk63952.mitel.com>
References: <alpine.LFD.2.20.1703030819430.10734@uk63952.mitel.com>
	<CAJTo0LaNo5inrbahsW9suovVtP3F2xD28h_Bnbw24sokqOSZ0w@mail.gmail.com>
	<00b801d29425$cfb126c0$6f137440$@sdcsystems.com>
	<alpine.LFD.2.20.1703030902230.11821@uk63952.mitel.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Fri, 3 Mar 2017 09:14:00 -0500
Message-ID: <CADkTA4OeN0nM+7MDo8AHff1Chzk0rFSmFsy_PSxyQRtTSaEASA@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: any rumblings about a newer YP powerpc reference board than mpc8315e-rdb?
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
X-List-Received-Date: Fri, 03 Mar 2017 14:14:05 -0000
Content-Type: multipart/alternative; boundary=001a1139782a3d70a20549d4284c

--001a1139782a3d70a20549d4284c
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 3, 2017 at 9:07 AM, Robert P. J. Day <rpjday@crashcourse.ca>
wrote:

> On Fri, 3 Mar 2017, Andy Pont wrote:
>
> > Ross Burton wrote...
> >
> > >> it seems of limited value for YP to have a powerpc reference board,
> > >> mpc8315e-rdb, that is essentially impossible to procure. is there any
> > >> effort being made to look around for a newer powerpc reference board
> > >> that people could actually buy?
> > >
> > >Do you have any suggestions?
> >
> > If we are being strictly pedantic then is isn't PowerPC (at least in
> > the world that is Freescale / NXP / Whoever they are this week).
> >
> > I would look at one of the P10xx series QorIQ boards.  Digi-Key list
> > the P1021RDB-PC-ND and P1024RDB-PA-ND as being active parts which
> > are either single or dual e500 cores.
>
>   i would start with the machine definition files in the meta-fsl-ppc
> layer:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-ppc/tree/conf/machine
>
> and see what looks promising. however, IIRC, one of the properties of
> a YP reference board is that it shouldn't be stupid, crazy expensive,
> no? so anything climbing above $500 (USD) might not be an option.
>

Correct. Being around 100 bucks USD was always our bar in the past, since
even if you can buy one .. not being able to afford it doesn't help.

Not that we expect a lot of people are out buying these reference boards,
but even companies were balking at buying expensive options ... so forget
individuals ever getting one.

Bruce


> people used to spending $60 for a beaglebone black might have a
> seizure to suddenly realize they need $500 for a powerpc reference
> board.
>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--001a1139782a3d70a20549d4284c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Fri, Mar 3, 2017 at 9:07 AM, Robert P. J. Day <span dir=3D"ltr">&lt;=
<a href=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcour=
se.ca</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Fri, 3 Mar=
 2017, Andy Pont wrote:<br>
<br>
&gt; Ross Burton wrote...<br>
<span class=3D"">&gt;<br>
&gt; &gt;&gt; it seems of limited value for YP to have a powerpc reference =
board,<br>
&gt; &gt;&gt; mpc8315e-rdb, that is essentially impossible to procure. is t=
here any<br>
&gt; &gt;&gt; effort being made to look around for a newer powerpc referenc=
e board<br>
&gt; &gt;&gt; that people could actually buy?<br>
&gt; &gt;<br>
&gt; &gt;Do you have any suggestions?<br>
&gt;<br>
</span>&gt; If we are being strictly pedantic then is isn&#39;t PowerPC (at=
 least in<br>
&gt; the world that is Freescale / NXP / Whoever they are this week).<br>
&gt;<br>
&gt; I would look at one of the P10xx series QorIQ boards.=C2=A0 Digi-Key l=
ist<br>
&gt; the P1021RDB-PC-ND and P1024RDB-PA-ND as being active parts which<br>
&gt; are either single or dual e500 cores.<br>
<br>
=C2=A0 i would start with the machine definition files in the meta-fsl-ppc<=
br>
layer:<br>
<br>
<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-ppc/tree/conf=
/machine" rel=3D"noreferrer" target=3D"_blank">http://git.yoctoproject.org/=
<wbr>cgit/cgit.cgi/meta-fsl-ppc/<wbr>tree/conf/machine</a><br>
<br>
and see what looks promising. however, IIRC, one of the properties of<br>
a YP reference board is that it shouldn&#39;t be stupid, crazy expensive,<b=
r>
no? so anything climbing above $500 (USD) might not be an option.<br></bloc=
kquote><div><br></div><div>Correct. Being around 100 bucks USD was always o=
ur bar in the past, since</div><div>even if you can buy one .. not being ab=
le to afford it doesn&#39;t help.=C2=A0</div><div><br></div><div>Not that w=
e expect a lot of people are out buying these reference boards,</div><div>b=
ut even companies were balking at buying expensive options ... so forget</d=
iv><div>individuals ever getting one.</div><div><br></div><div>Bruce</div><=
div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex">
people used to spending $60 for a beaglebone black might have a<br>
seizure to suddenly realize they need $500 for a powerpc reference<br>
board.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
rday<br>
<br>
--<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<br>
Robert P. J. Day=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Ottawa, Ontario,=
 CANADA<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 <a href=3D"http://crashcourse.ca" rel=3D"noreferrer" target=3D"_=
blank">http://crashcourse.ca</a><br>
<br>
Twitter:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a=
 href=3D"http://twitter.com/rpjday" rel=3D"noreferrer" target=3D"_blank">ht=
tp://twitter.com/rpjday</a><br>
LinkedIn:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://ca.linkedin.=
com/in/rpjday" rel=3D"noreferrer" target=3D"_blank">http://ca.linkedin.com/=
in/<wbr>rpjday</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<div class=3D"gmail_signature" data-smartmail=3D"gmail_signature">&quot;Tho=
u shalt not follow the NULL pointer, for chaos and madness await thee at it=
s end&quot;</div>
</div></div>

--001a1139782a3d70a20549d4284c--
