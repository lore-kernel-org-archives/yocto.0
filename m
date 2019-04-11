Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18E7EE00CD5; Thu, 11 Apr 2019 09:29:24 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71771E00B5C
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2019 09:29:23 -0700 (PDT)
Received: by mail-ed1-f42.google.com with SMTP id x61so5752007edc.9
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2019 09:29:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=sgdAeX/dJmpbdTeigKIry8OZPihxpgyDrawpp/agPPM=;
	b=Rtt8EBjZlh6vDn1eq64YGq4dPZ4tcKBrtNdaYqWfUkh1DsoR+v5qHkj4uOULZfYaxI
	ltuzquZI6z4atvthQ3UVMGd8AyTk+DPemSj9ClfT6s/RvtSd8GVMlk/mGt2Fjk93ld4p
	bBp4GViIHYc6o4EH7oV8H9TDAq29Zla4EJNYdu4gCRGvGC2yHbKt7hU5voRD7ufDwmX4
	ngyHZirVDwbL1OPx2F1smn14LUaAhxwji9AauDzU06zJB0EiL7Wfam9Nj899xDNHDSpi
	AdiMo8+kcVynHQYU1Znt1xcexJDxUlthM7qYZ5kQFxgqhxVW6Y1o3h6Yqf7DLvIVPFdf
	gmxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=sgdAeX/dJmpbdTeigKIry8OZPihxpgyDrawpp/agPPM=;
	b=mC2ke1NdG7heiz4JZOTgH1gGz7Q3Yy2jhBR0f//KrCRUs1CaxCLCNvbl/IDvSCIE6J
	mZvsyoi087QkM60Aa1Y+3OvNP+W5WMUEyiR/HZgEwBgHF3edA/S8RmMZ+fcH4lSPYOIv
	F849/IFT+dDnfJOhJyHh5Oe7CdE79njLnpYllZ/9uWzyu0FNieldKd5mdZGnZMBSA8Je
	yToas/yvJcZSiICqK2fR142+JRc52wrRMIwj7XcaFL2Bl/KnAn0ppg0Ia7OPNz1DG82K
	ZGu+14vx3QwRfpkEToWb4sPdQA1FB9nM7/sZG2p209eFkRLdKIpEFGgboCSac1EEPSLP
	XzfQ==
X-Gm-Message-State: APjAAAVou+fsx9WEiFXP8UlLLLKNp3LT2rHk5zD79eaZiHoEK8IqR12R
	UTAey/sxIAV93R0dIfsUfzDxE2usu0dzyj0BedU=
X-Google-Smtp-Source: APXvYqzK10hJ8EUzPZP68Xpfr71gtYoPamhWLpp7FuAemWfjG7bo3ZWQJuOsKDw4KYcrEnSWYwNES5kBZOshdskZwx0=
X-Received: by 2002:a17:906:a945:: with SMTP id
	hh5mr28194242ejb.108.1555000162487; 
	Thu, 11 Apr 2019 09:29:22 -0700 (PDT)
MIME-Version: 1.0
References: <90d55754e9381759c8b70ebca0b880e6013f17f0.camel@linuxfoundation.org>
	<f8b3661d-a6cc-494e-de49-e462ba935535@gmail.com>
	<680dff761ebd04f8f240d12339b31569c70c48da.camel@linuxfoundation.org>
	<05dd3911-b195-1d1f-b218-e4b41d80ec72@gmail.com>
	<7c1d84b0957f2831a7add461f73e3d9108176e9b.camel@linuxfoundation.org>
In-Reply-To: <7c1d84b0957f2831a7add461f73e3d9108176e9b.camel@linuxfoundation.org>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Thu, 11 Apr 2019 09:29:11 -0700
Message-ID: <CAFNP8OstwvzhdYvyiaJ4JFZqNPGK3zypTPVEG-u437hE83js1A@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>, openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>,
	akuster808 <akuster808@gmail.com>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: [Openembedded-architecture] [OE-core] Eclipse support dropped with immediate effect
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
X-List-Received-Date: Thu, 11 Apr 2019 16:29:24 -0000
Content-Type: multipart/alternative; boundary="0000000000004f948a058643b0af"

--0000000000004f948a058643b0af
Content-Type: text/plain; charset="UTF-8"

Richard and Armin,

I am going to start pulling Eclipse from the docs today.  The changes won't
make the frozen rc build but the website docs will reflect reality.

Scott

On Thu, Apr 11, 2019 at 12:20 AM <richard.purdie@linuxfoundation.org> wrote:

> On Thu, 2019-04-11 at 08:42 +0530, akuster808 wrote:
> >
> > On 4/10/19 3:11 PM, richard.purdie@linuxfoundation.org wrote:
> > > On Wed, 2019-04-10 at 05:56 +0530, akuster808 wrote:
> > > > On 4/9/19 8:52 PM, Richard Purdie wrote:
> > > > > I'm sorry to have to say this but the project is terminating
> > > > > its
> > > > > official eclipse plugin support with immediate effect.
> > > > Does this affect the stable branches as well?
> > > Yes, I think we'll just be removing the target from the autobuilder
> > > entirely.
> >
> > Have we every removed a feature from a release? Do we need to doc
> > this ?
>
> Its not so much remove as not release. No, we haven't and yes, we do
> need to document it in the release notes.
>
> Cheers,
>
> Richard
>
> _______________________________________________
> Openembedded-architecture mailing list
> Openembedded-architecture@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-architecture
>

--0000000000004f948a058643b0af
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Richard and Armin, <br></div><div><br></div><div>I am=
 going to start pulling Eclipse from the docs today.=C2=A0 The changes won&=
#39;t make the frozen rc build but the website docs will reflect reality.</=
div><div><br></div><div>Scott<br></div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 11, 2019 at 12:20 AM &lt=
;<a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linux=
foundation.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">On Thu, 2019-04-11 at 08:42 +0530, akuster808 wrote:<br>
&gt; <br>
&gt; On 4/10/19 3:11 PM, <a href=3D"mailto:richard.purdie@linuxfoundation.o=
rg" target=3D"_blank">richard.purdie@linuxfoundation.org</a> wrote:<br>
&gt; &gt; On Wed, 2019-04-10 at 05:56 +0530, akuster808 wrote:<br>
&gt; &gt; &gt; On 4/9/19 8:52 PM, Richard Purdie wrote:<br>
&gt; &gt; &gt; &gt; I&#39;m sorry to have to say this but the project is te=
rminating<br>
&gt; &gt; &gt; &gt; its<br>
&gt; &gt; &gt; &gt; official eclipse plugin support with immediate effect.<=
br>
&gt; &gt; &gt; Does this affect the stable branches as well?<br>
&gt; &gt; Yes, I think we&#39;ll just be removing the target from the autob=
uilder<br>
&gt; &gt; entirely.<br>
&gt; <br>
&gt; Have we every removed a feature from a release? Do we need to doc<br>
&gt; this ?<br>
<br>
Its not so much remove as not release. No, we haven&#39;t and yes, we do<br=
>
need to document it in the release notes.<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
_______________________________________________<br>
Openembedded-architecture mailing list<br>
<a href=3D"mailto:Openembedded-architecture@lists.openembedded.org" target=
=3D"_blank">Openembedded-architecture@lists.openembedded.org</a><br>
<a href=3D"http://lists.openembedded.org/mailman/listinfo/openembedded-arch=
itecture" rel=3D"noreferrer" target=3D"_blank">http://lists.openembedded.or=
g/mailman/listinfo/openembedded-architecture</a><br>
</blockquote></div>

--0000000000004f948a058643b0af--
