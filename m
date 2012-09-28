Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55B54E0027F
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2012 11:44:32 -0700 (PDT)
Received: by qcon41 with SMTP id n41so3056324qco.35
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2012 11:44:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=1gjxFlSHZSZBPBs84DhRTac1ovanzZ+hGtrBggJuN/Q=;
	b=mdUrv1oztUlbCJW5pLX6Ie11VQji2sPjU/lqR0UOCDCwPGngW11Sr/6xJFANjLnXxM
	nC0pwuQXDJd/zZk5IzL+h5lP5beIR2n4R7bsV+lK0nD5tEgErKO4Qsg7rINAAesZaZvg
	jkepz9+CpU9v0ddkzXhNpc5skfahicLfoiwSGA0aPSU4VczZYb3kG6Di/YMH+BWB2Y2H
	yLMZmk8YNgUw3fuqNgi8fDl+yJxslpEoriaryfVxiFwcBaclp67qfZe+xf/RF3gXOuQC
	Cup2CeAL36lres/0ixym/Vr4hUOC4jxM/PYvP+6d7QoqdzettSm86+uBM0y4g8G45om9
	/cTA==
MIME-Version: 1.0
Received: by 10.229.180.99 with SMTP id bt35mr5151995qcb.147.1348857871601;
	Fri, 28 Sep 2012 11:44:31 -0700 (PDT)
Sender: rstreif@linuxfoundation.org
Received: by 10.49.54.197 with HTTP; Fri, 28 Sep 2012 11:44:31 -0700 (PDT)
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A73111@FMSMSX151.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A720D0@FMSMSX151.amr.corp.intel.com>
	<CA+gsK-pYtXKaVyERW7ys9j_3DEExXUKf2=wNTOOQ+r-Jvt9xrQ@mail.gmail.com>
	<31384487.oKEco2inpj@helios>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A73111@FMSMSX151.amr.corp.intel.com>
Date: Fri, 28 Sep 2012 11:44:31 -0700
X-Google-Sender-Auth: zBtAd_HD5h8LZjA8hgJlsvZ0_Y8
Message-ID: <CA+gsK-qgU=6MHF4T+U1uU1qjVOGBq6pVsbbrTvwZUnYcBeBy=g@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
X-Gm-Message-State: ALoCoQkCAPx4gbw1lYieimzOtUJDIavnPrLzMKizcXxgd19CasXyQsxIIy3nkG3tzWunjdrSOG8a
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: The term Package as used in the YP docs
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 28 Sep 2012 18:44:32 -0000
Content-Type: multipart/alternative; boundary=00504502b8c34a114f04cac77297

--00504502b8c34a114f04cac77297
Content-Type: text/plain; charset=ISO-8859-1

I am not advocating changing the variable names. I know that this is a huge
undertaking and prone to many problems. This probably one of the many
legacy things people will have to live with and understand. In most cases
recipe name and version exactly reflect the name and version of the package
it is intended to build which to some extend mitigates the issue.

As far as the Terms section in the manuals is concerned, I see that you
already changed the describing text for the variables. That's sufficient, I
think.

:rjs

On Fri, Sep 28, 2012 at 11:37 AM, Rifenbark, Scott M <
scott.m.rifenbark@intel.com> wrote:

> I have tried to weed out the ambiguous use of "package" for this upcoming
> version of the manual set.  I don't think I would want to suggest changing
> any of the "P*" type variable names in the code.  I agree with Paul here
> that the potential for really messing things up out-weighs any other
> benefit.  This is why I was trying to worm in a bit of history behind those
> names for the people that might struggle like me.
>
> Scott
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] On Behalf Of Paul Eggleton
> Sent: Friday, September 28, 2012 11:34 AM
> To: Rudolf Streif
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] The term Package as used in the YP docs
>
> On Friday 28 September 2012 11:27:37 Rudolf Streif wrote:
> > +1
> >
> > I agree with Scott's definition. In the general Linux context a Package
> is
> > a compilation of binaries, documentation, development files, etc. wrapped
> > up in a format that can be used by a package management system to install
> > it on a target system.
>
> No dispute there.
>
> > It is somewhat confusing that YP and OE use the term 'package'
> synonymously
> > with 'recipe'. In most cases a package is the output of a recipe.
>
> The thing is, we no longer do that - we've fixed a number of references in
> the
> documentation, help text and error messages for this release so that
> "recipe"
> is used when that's what we mean. If we've left any references that should
> be
> considered a bug.
>
> > Unfortunately, changing variables like P, PN, PV, PR etc.
> > may cause some pain. If a transition is what the broader community would
> > like to achieve then a period where old and new variables can be used
> > interchangeably (if possible) would be the way to go.
>
> I'm not sure there's a huge amount to be gained by doing this when weighed
> against the cost - it would certainly cause a massive amount of churn, with
> the potential for problems with layer interaction where one layer has done
> the
> big rename and another that bbappends recipes in the first hasn't.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--00504502b8c34a114f04cac77297
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I am not advocating changing the variable names. I know that this is a huge=
 undertaking and prone to many problems. This probably one of the many lega=
cy things people will have to live with and understand. In most cases recip=
e name and version exactly reflect the name and version of the package it i=
s intended to build which to some extend mitigates the issue.<div>
<br></div><div>As far as the Terms section in the manuals is concerned, I s=
ee that you already changed the describing text for the variables. That&#39=
;s sufficient, I think.</div><div><br></div><div>:rjs<br><br><div class=3D"=
gmail_quote">
On Fri, Sep 28, 2012 at 11:37 AM, Rifenbark, Scott M <span dir=3D"ltr">&lt;=
<a href=3D"mailto:scott.m.rifenbark@intel.com" target=3D"_blank">scott.m.ri=
fenbark@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
I have tried to weed out the ambiguous use of &quot;package&quot; for this =
upcoming version of the manual set. =A0I don&#39;t think I would want to su=
ggest changing any of the &quot;P*&quot; type variable names in the code. =
=A0I agree with Paul here that the potential for really messing things up o=
ut-weighs any other benefit. =A0This is why I was trying to worm in a bit o=
f history behind those names for the people that might struggle like me.<br=
>

<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Scott<br>
</font></span><div class=3D"im HOEnZb"><br>
-----Original Message-----<br>
From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yocto=
project.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.org">y=
octo-bounces@yoctoproject.org</a>] On Behalf Of Paul Eggleton<br>
Sent: Friday, September 28, 2012 11:34 AM<br>
To: Rudolf Streif<br>
Cc: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: Re: [yocto] The term Package as used in the YP docs<br>
<br>
</div><div class=3D"HOEnZb"><div class=3D"h5">On Friday 28 September 2012 1=
1:27:37 Rudolf Streif wrote:<br>
&gt; +1<br>
&gt;<br>
&gt; I agree with Scott&#39;s definition. In the general Linux context a Pa=
ckage is<br>
&gt; a compilation of binaries, documentation, development files, etc. wrap=
ped<br>
&gt; up in a format that can be used by a package management system to inst=
all<br>
&gt; it on a target system.<br>
<br>
No dispute there.<br>
<br>
&gt; It is somewhat confusing that YP and OE use the term &#39;package&#39;=
 synonymously<br>
&gt; with &#39;recipe&#39;. In most cases a package is the output of a reci=
pe.<br>
<br>
The thing is, we no longer do that - we&#39;ve fixed a number of references=
 in the<br>
documentation, help text and error messages for this release so that &quot;=
recipe&quot;<br>
is used when that&#39;s what we mean. If we&#39;ve left any references that=
 should be<br>
considered a bug.<br>
<br>
&gt; Unfortunately, changing variables like P, PN, PV, PR etc.<br>
&gt; may cause some pain. If a transition is what the broader community wou=
ld<br>
&gt; like to achieve then a period where old and new variables can be used<=
br>
&gt; interchangeably (if possible) would be the way to go.<br>
<br>
I&#39;m not sure there&#39;s a huge amount to be gained by doing this when =
weighed<br>
against the cost - it would certainly cause a massive amount of churn, with=
<br>
the potential for problems with layer interaction where one layer has done =
the<br>
big rename and another that bbappends recipes in the first hasn&#39;t.<br>
<br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div><div class=3D"HOEnZb"><div class=3D"h5">_______________________=
________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div>

--00504502b8c34a114f04cac77297--
