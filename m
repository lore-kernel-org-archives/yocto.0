Return-Path: <prashantpurohit025@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00D9CE00779; Wed, 11 Mar 2015 05:08:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (prashantpurohit025[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5F38E0076F
	for <yocto@yoctoproject.org>; Wed, 11 Mar 2015 05:08:35 -0700 (PDT)
Received: by pabli10 with SMTP id li10so11029648pab.2
	for <yocto@yoctoproject.org>; Wed, 11 Mar 2015 05:08:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=pxutqX6PnmGqAwXNhHdex+oP0SAWIX/lrTTVVm/V6Zk=;
	b=ZAV0I5B022D34ymm48EHKJg03TXK2czI8VjwvDyujvCttfMoxDiYOisY9+H96ev1Wu
	SIXWMF2oZtGk3znLEGwXbl4ubJy0QwbVpFs5wFvfFw6nkBw9N/+4geo/xZL53MxeAnaA
	EsPaQWY2BSQyfAwT0u8RHzB3xJQZtS1f0c4v6INzdfDV8ZkJdE6TCuy1bLHeDHbwHPc7
	PUlZqNNlTckbl2nfNnf2Aep4FRnlohPDioy75y+mgf4ONtRO+M9G52U1fuS9tznur5dZ
	fppV4DwY+BmzpZfNyQVkvjf5/OZu6wffAyqDwZIuf5oqVikOAQQPdTcRciwPqznC+wE3
	erew==
MIME-Version: 1.0
X-Received: by 10.66.141.231 with SMTP id rr7mr73002701pab.72.1426075715063;
	Wed, 11 Mar 2015 05:08:35 -0700 (PDT)
Received: by 10.70.85.36 with HTTP; Wed, 11 Mar 2015 05:08:35 -0700 (PDT)
In-Reply-To: <54FF3F94.7020701@balister.org>
References: <CACmjmcxNjHE0t+Qe23_z8y3kAa1gg4sgGd-g2qGLN+_6f9uuAg@mail.gmail.com>
	<54FF3F94.7020701@balister.org>
Date: Wed, 11 Mar 2015 17:38:35 +0530
Message-ID: <CACmjmczw2dQLN=4YveH92js8dnRpjxBf4P1HuPE5w160d1gJzw@mail.gmail.com>
From: Prashant Purohit <prashantpurohit025@gmail.com>
To: Philip Balister <philip@balister.org>
Cc: yocto@yoctoproject.org
Subject: Re: : Kernel panic issue for 'armv7athf-neon' target variant.
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
X-List-Received-Date: Wed, 11 Mar 2015 12:08:48 -0000
Content-Type: multipart/alternative; boundary=001a113312986b56dc05110220d3

--001a113312986b56dc05110220d3
Content-Type: text/plain; charset=UTF-8

Hi Philip,

After making the changes suggested by you, I am still getting the same
error.
I am using Yocto 1.8 M1 release.

Regards,
Prashant

On Wed, Mar 11, 2015 at 12:31 AM, Philip Balister <philip@balister.org>
wrote:

> On 03/10/2015 09:24 AM, Prashant Purohit wrote:
> > Hi,
> >
> > I am trying to boot kernel image for 'armv7athf-neon' using QEMU.
> >
> > To do the same, I have included the 'tune-arma7.inc'
> > (/meta/conf/machine/include/arm/arch-armv7a.inc) and configured
> DEFAULTTUNE
> > variable to 'armv7athf-neon'.
> > I am successful in building the kernel image and QEMU for this variant
> but
> > when I try to boot the image using runqemu, I am getting kernel panic
> error.
> >
> > The log for the same is attached with this mail.
> > Has anyone faced the same issue previously or has any inputs for it?
>
> I've seen similar issues building the kernel with thumb2, I went to
> armv7ahf-neon (dropped thunb2) and the issue cleared up.
>
> Philip
>
>
> >
> > Regards,
> > Prashant
> >
> >
> >
>

--001a113312986b56dc05110220d3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi Philip,<br><br></div>After making t=
he changes suggested by you, I am still getting the same error.<br></div>I =
am using Yocto 1.8 M1 release.<br><br></div>Regards,<br></div>Prashant<br><=
/div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Mar =
11, 2015 at 12:31 AM, Philip Balister <span dir=3D"ltr">&lt;<a href=3D"mail=
to:philip@balister.org" target=3D"_blank">philip@balister.org</a>&gt;</span=
> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=
=3D"h5">On 03/10/2015 09:24 AM, Prashant Purohit wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; I am trying to boot kernel image for &#39;armv7athf-neon&#39; using QE=
MU.<br>
&gt;<br>
&gt; To do the same, I have included the &#39;tune-arma7.inc&#39;<br>
&gt; (/meta/conf/machine/include/arm/arch-armv7a.inc) and configured DEFAUL=
TTUNE<br>
&gt; variable to &#39;armv7athf-neon&#39;.<br>
&gt; I am successful in building the kernel image and QEMU for this variant=
 but<br>
&gt; when I try to boot the image using runqemu, I am getting kernel panic =
error.<br>
&gt;<br>
&gt; The log for the same is attached with this mail.<br>
&gt; Has anyone faced the same issue previously or has any inputs for it?<b=
r>
<br>
</div></div>I&#39;ve seen similar issues building the kernel with thumb2, I=
 went to<br>
armv7ahf-neon (dropped thunb2) and the issue cleared up.<br>
<br>
Philip<br>
<br>
<br>
&gt;<br>
&gt; Regards,<br>
&gt; Prashant<br>
&gt;<br>
&gt;<br>
&gt;<br>
</blockquote></div><br></div>

--001a113312986b56dc05110220d3--
