Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B274E00D69; Wed,  6 Dec 2017 21:45:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sherifomran2000[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f41.google.com (mail-pg0-f41.google.com [74.125.83.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6732FE00D61
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 21:45:40 -0800 (PST)
Received: by mail-pg0-f41.google.com with SMTP id w7so3738698pgv.6
	for <yocto@yoctoproject.org>; Wed, 06 Dec 2017 21:45:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=BDr+aoSTMLPSBIAKcRPGN9DwtZJydcx6w4Imr1OY5Po=;
	b=oXeG5a2CWhRDfn9nZCYJl7MJ++YIHWskx5IHmTUrbUMJZY9jguJvZuMNpGXvEGNDpB
	O8lMy+6BhGHevMqg8gYqh/gV/kr9prOqlf0Mp65hlVTTb13MJZaFbfkPaZUVSQAs8N92
	g9qT8d8T+97BxpGafp7uusGlNae1KoLSkdL+6BCxMGB8fvFqtmDDJO8zamNcv1dMga36
	edb1w1MvGY6kqgzg4S59vjE6rUFvdVh8lySW6xgTLW6YJCeXSMDm9wmrrtPsnWZ2XmOG
	Z0F/viNcs3wM2I7gB+vxUdaG+VlR1IPPFO9lxwvaKyNLrdcekLWezPDBdTnNCKfhjCUE
	S6MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=BDr+aoSTMLPSBIAKcRPGN9DwtZJydcx6w4Imr1OY5Po=;
	b=PkVonAedblTrWEQovtklMZnoREYulF/hVMg4lOdBzTXFoOX5TpZSFQBWgwCgLjSEiw
	hFAvcK6EZSF+4wm87gYCvtOSh6FZzbt6GfOMYhs2wf+/gCthPaNEW9I0NUb8uoQHLKXp
	1Fnum8zgVjoe/+zft3+3srhUrnDLPzBhovvYWi05pVPPpP7M1SWj2/GuaqGtHmxNldUX
	5RjG6IJht86cg6q2eAJER1QbA6EwKMsnBGZEc0YGHHglbPjKi7+/WuBapTAFX3E9enjS
	/WewopYBMZrkFJ3Ypdvd3tvct96loEdC+/wq6GCfxjxll3qgiKcbvgJwFOH0zadf9dqs
	CgOg==
X-Gm-Message-State: AJaThX7kf3xHPrTGhAM7tAbw8/i+apY5cYVgYQiB/MZwz/jSDP5mTjIt
	L0kUROi2jUXIvjm/mXwDAU6hJ8ErP6EwxhtsuZc=
X-Google-Smtp-Source: AGs4zMbN/o5iKapqsRlcfmQqiSJDeELYbvqA8b6DtzktCRUw0PhsmD8b6gUI0FLdoUesQr2bLDyEOqerQwx+UTO+Bo0=
X-Received: by 10.99.124.23 with SMTP id x23mr23750021pgc.189.1512625540332;
	Wed, 06 Dec 2017 21:45:40 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.138.69 with HTTP; Wed, 6 Dec 2017 21:45:39 -0800 (PST)
In-Reply-To: <CAMKF1sp8VxrjQTPmWCTH9Z5oc7Fnkvoip7z7rr6cTrznCJ=Wsw@mail.gmail.com>
References: <CAPb0b+PxnaZk5YugbYmf4xT0iFxRYAFzS0Lp_hTd7VtRRpHG6g@mail.gmail.com>
	<CALXw4G7YnNn=2ZmCAbUUNrvrvcii0_7tqB4-DAix+meh_SxFyQ@mail.gmail.com>
	<CAMKF1srRXBQOPNxOUqSF=HjgRj6wO8i5pNKecFNqSyEXEtU4Aw@mail.gmail.com>
	<CAPb0b+O6i=icrjgZ1XXLDUskpUx_qXukMaux2N7yWSaW5BufZw@mail.gmail.com>
	<CAPb0b+NOuo+mcV-nsHQ78TMCbNp+gGCYtwrDbF+N3jMD7_zM0g@mail.gmail.com>
	<CAMKF1sp8VxrjQTPmWCTH9Z5oc7Fnkvoip7z7rr6cTrznCJ=Wsw@mail.gmail.com>
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Thu, 7 Dec 2017 06:45:39 +0100
Message-ID: <CAPb0b+PWXU4UAt_JGMxLJeBupmc-mcPHN35J9H0KoxyqrZ5OEA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: tiny-linux distribution with raspberrypi error
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
X-List-Received-Date: Thu, 07 Dec 2017 05:45:43 -0000
Content-Type: multipart/alternative; boundary="94eb2c1b50a2028278055fb99454"

--94eb2c1b50a2028278055fb99454
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I trid the rpi-sdimg as mentioned but i get IMAGE_CMD defined for
IMAGE_FSTYOE entry 'rpi-sdimg' possibly invalid type name or missing
support class.
any idea how to create the rpi image.

On Sun, Nov 19, 2017 at 2:59 AM, Khem Raj <raj.khem@gmail.com> wrote:

> I think you can generate a SD card image which can be dd=E2=80=99ed into =
a sd card
> =E2=80=8Bpoky tiny by default generates an initramfs image only. =E2=80=
=8B
> =E2=80=8B
> =E2=80=8Byou can add
>
> IMAGE_FSTYPES_append =3D " rpi-sdimg=E2=80=8B"
>
> =E2=80=8Bin local.conf and see if you get a rpi-sdimag=E2=80=8B
>
>
>
> On Sat, Nov 18, 2017 at 10:47 AM Sherif Omran <sherifomran2000@gmail.com>
> wrote:
>
>> I have it now being compiled and created a file called
>> rpi-basic-image-raspberrypi0-wifi-20171118102213.rootfs.cpio.gz
>> but how can i burn it? it is not an img file.
>> Any clue is appreciated.
>>
>> On Sat, Nov 18, 2017 at 12:21 PM, Sherif Omran <sherifomran2000@gmail.co=
m
>> > wrote:
>>
>>> it worked well with
>>>
>>> PREFERRED_PROVIDER_virtual/kernel =3D "linux-yocto-tini"
>>>
>>> in local.conf. However i don't know if it will work with real time
>>> kernel .. to be tested later
>>>
>>>  thank you
>>>
>>> On Sat, Nov 18, 2017 at 10:19 AM, Khem Raj <raj.khem@gmail.com> wrote:
>>>
>>>> On Fri, Nov 17, 2017 at 5:34 PM, Michael Gloff <mgloff@emacinc.com>
>>>> wrote:
>>>> > This looks to be because poky-tiny.conf does not allow overriding of
>>>> the
>>>> > kernel provider. You could try the below patch to use a different
>>>> kernel.
>>>> >
>>>> > Michael Gloff
>>>> >
>>>> > diff --git a/meta-poky/conf/distro/poky-tiny.conf
>>>> > b/meta-poky/conf/distro/poky-tiny.conf
>>>> > index 2032bfde32..acafd9fef4 100644
>>>> > --- a/meta-poky/conf/distro/poky-tiny.conf
>>>> > +++ b/meta-poky/conf/distro/poky-tiny.conf
>>>> > @@ -37,7 +37,7 @@ TCLIBC =3D "musl"
>>>> >
>>>> >  # Distro config is evaluated after the machine config, so we have t=
o
>>>> > explicitly
>>>> >  # set the kernel provider to override a machine config.
>>>> > -PREFERRED_PROVIDER_virtual/kernel =3D "linux-yocto-tiny"
>>>> > +PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto-tiny"
>>>> >  PREFERRED_VERSION_linux-yocto-tiny ?=3D "4.12%"
>>>> >
>>>>
>>>> please submit this patch with sign off and git format, its good for
>>>> inclusion upstream
>>>>
>>>> >  # We can use packagegroup-core-boot, but in the future we may need =
a
>>>> new
>>>> > packagegroup-core-tiny
>>>> >
>>>> >
>>>> > On Thu, Nov 16, 2017 at 7:05 PM, Sherif Omran <
>>>> sherifomran2000@gmail.com>
>>>> > wrote:
>>>> >>
>>>> >> hi
>>>> >>
>>>> >> i am trying to compile the yocto-tiny for raspberry pi by adding th=
e
>>>> >> distro to my local.conf
>>>> >>
>>>> >> DISTRO =3D "poky-tiny"  and i  get the following
>>>> >>
>>>> >>
>>>> >> ERROR: nothing provides 'virtual/kernel'
>>>> >> ERROR: linux-yocto-tiny Provides virtual/kernel but was skipped:
>>>> >> incompatible with machine raspberrypi0-wifi (not in
>>>> compatible_machine)
>>>> >> ERROR: linux-yocto-rt Provides virtual/kernel but was skipped:
>>>> >> incompatible with machine raspberrypi0-wifi (not in
>>>> compatible_machine)
>>>> >> ERROR: linux-yocto Provides virtual/kernel but was skipped:
>>>> incompatible
>>>> >> with machine raspberrypi0-wifi (not in compatible_machine)
>>>> >> ERROR: linux-yocto-dev Provides virtual/kernel but was skipped:
>>>> >> incompatible with machine raspberrypi0-wifi (not in
>>>> compatible_machine)
>>>> >> ERROR: required build target 'rpi-basic-image' has no buildable
>>>> providers.
>>>> >> Missing or unbuildable depency chain was: 'rpi-basic-image',
>>>> >> 'virtual/kernel'
>>>> >>
>>>> >>
>>>> >> any body has a clue to solve it?
>>>> >>
>>>> >> thanks
>>>> >>
>>>> >> --
>>>> >> _______________________________________________
>>>> >> yocto mailing list
>>>> >> yocto@yoctoproject.org
>>>> >> https://lists.yoctoproject.org/listinfo/yocto
>>>> >>
>>>> >
>>>> >
>>>> > --
>>>> > _______________________________________________
>>>> > yocto mailing list
>>>> > yocto@yoctoproject.org
>>>> > https://lists.yoctoproject.org/listinfo/yocto
>>>> >
>>>>
>>>
>>>
>>
>>

--94eb2c1b50a2028278055fb99454
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I trid the rpi-sdimg as mentioned but i get IMAGE_CMD=
 defined for IMAGE_FSTYOE entry &#39;rpi-sdimg&#39; possibly invalid type n=
ame or missing support class.<br></div>any idea how to create the rpi image=
.<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Sun=
, Nov 19, 2017 at 2:59 AM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto=
:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div dir=3D"auto">I=
 think you can generate a SD card image which can be dd=E2=80=99ed into a s=
d card</div><div dir=3D"auto"><span style=3D"font-family:monospace,monospac=
e"><div class=3D"gmail_default" style=3D"font-family:monospace,monospace;di=
splay:inline">=E2=80=8Bpoky tiny by default generates an initramfs image on=
ly. =E2=80=8B</div>=E2=80=8B</span><br></div><div dir=3D"auto"><div class=
=3D"gmail_default" style=3D"font-family:monospace,monospace">=E2=80=8Byou c=
an add</div><div class=3D"gmail_default" style=3D"font-family:monospace,mon=
ospace"><br></div><div class=3D"gmail_default" style=3D"font-family:monospa=
ce,monospace">IMAGE_FSTYPES_append =3D &quot; rpi-sdimg=E2=80=8B&quot;</div=
><br></div><div dir=3D"auto"><div class=3D"gmail_default" style=3D"font-fam=
ily:monospace,monospace">=E2=80=8Bin local.conf and see if you get a rpi-sd=
imag=E2=80=8B</div><br></div><div><div class=3D"h5"><div dir=3D"auto"><br><=
/div><br><div class=3D"gmail_quote"><div>On Sat, Nov 18, 2017 at 10:47 AM S=
herif Omran &lt;<a href=3D"mailto:sherifomran2000@gmail.com" target=3D"_bla=
nk">sherifomran2000@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex"><div><div><div>I have it now being compiled an=
d created a file called rpi-basic-image-raspberrypi0-w<wbr>ifi-201711181022=
13.rootfs.cpio<wbr>.gz<br></div>but how can i burn it? it is not an img fil=
e.<br></div>Any clue is appreciated. <br></div><div class=3D"gmail_extra"><=
br><div class=3D"gmail_quote">On Sat, Nov 18, 2017 at 12:21 PM, Sherif Omra=
n <span>&lt;<a href=3D"mailto:sherifomran2000@gmail.com" target=3D"_blank">=
sherifomran2000@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div><span><div>it worked well with<br><br>PREFER=
RED_PROVIDER_virtual/ker<wbr>nel =3D &quot;linux-yocto-tini&quot;<br><br></=
div></span>in local.conf. However i don&#39;t know if it will work with rea=
l time kernel .. to be tested later<br><br>=C2=A0thank you</div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote"><span>On Sat, Nov 18, 2017 =
at 10:19 AM, Khem Raj <span>&lt;<a href=3D"mailto:raj.khem@gmail.com" targe=
t=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br></span><div><div c=
lass=3D"m_-3080092133078545076gmail-m_5577605016296185275m_3319031554831047=
341m_-3521953229864195975h5"><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><span>On Fri, Nov 17, 2017 at 5:34 PM, Michael Gloff &lt;<a href=3D"mai=
lto:mgloff@emacinc.com" target=3D"_blank">mgloff@emacinc.com</a>&gt; wrote:=
<br>
&gt; This looks to be because poky-tiny.conf does not allow overriding of t=
he<br>
&gt; kernel provider. You could try the below patch to use a different kern=
el.<br>
&gt;<br>
&gt; Michael Gloff<br>
&gt;<br>
&gt; diff --git a/meta-poky/conf/distro/poky-t<wbr>iny.conf<br>
&gt; b/meta-poky/conf/distro/poky-t<wbr>iny.conf<br>
&gt; index 2032bfde32..acafd9fef4 100644<br>
&gt; --- a/meta-poky/conf/distro/poky-t<wbr>iny.conf<br>
&gt; +++ b/meta-poky/conf/distro/poky-t<wbr>iny.conf<br>
&gt; @@ -37,7 +37,7 @@ TCLIBC =3D &quot;musl&quot;<br>
&gt;<br>
&gt;=C2=A0 # Distro config is evaluated after the machine config, so we hav=
e to<br>
&gt; explicitly<br>
&gt;=C2=A0 # set the kernel provider to override a machine config.<br>
&gt; -PREFERRED_PROVIDER_virtual/ke<wbr>rnel =3D &quot;linux-yocto-tiny&quo=
t;<br>
&gt; +PREFERRED_PROVIDER_virtual/ke<wbr>rnel ?=3D &quot;linux-yocto-tiny&qu=
ot;<br>
&gt;=C2=A0 PREFERRED_VERSION_linux-yocto-<wbr>tiny ?=3D &quot;4.12%&quot;<b=
r>
&gt;<br>
<br>
</span>please submit this patch with sign off and git format, its good for<=
br>
inclusion upstream<br>
<div class=3D"m_-3080092133078545076gmail-m_5577605016296185275m_3319031554=
831047341m_-3521953229864195975m_-8125658621375618980HOEnZb"><div class=3D"=
m_-3080092133078545076gmail-m_5577605016296185275m_3319031554831047341m_-35=
21953229864195975m_-8125658621375618980h5"><br>
&gt;=C2=A0 # We can use packagegroup-core-boot, but in the future we may ne=
ed a new<br>
&gt; packagegroup-core-tiny<br>
&gt;<br>
&gt;<br>
&gt; On Thu, Nov 16, 2017 at 7:05 PM, Sherif Omran &lt;<a href=3D"mailto:sh=
erifomran2000@gmail.com" target=3D"_blank">sherifomran2000@gmail.com</a>&gt=
;<br>
&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; hi<br>
&gt;&gt;<br>
&gt;&gt; i am trying to compile the yocto-tiny for raspberry pi by adding t=
he<br>
&gt;&gt; distro to my local.conf<br>
&gt;&gt;<br>
&gt;&gt; DISTRO =3D &quot;poky-tiny&quot;=C2=A0 and i=C2=A0 get the followi=
ng<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; ERROR: nothing provides &#39;virtual/kernel&#39;<br>
&gt;&gt; ERROR: linux-yocto-tiny Provides virtual/kernel but was skipped:<b=
r>
&gt;&gt; incompatible with machine raspberrypi0-wifi (not in compatible_mac=
hine)<br>
&gt;&gt; ERROR: linux-yocto-rt Provides virtual/kernel but was skipped:<br>
&gt;&gt; incompatible with machine raspberrypi0-wifi (not in compatible_mac=
hine)<br>
&gt;&gt; ERROR: linux-yocto Provides virtual/kernel but was skipped: incomp=
atible<br>
&gt;&gt; with machine raspberrypi0-wifi (not in compatible_machine)<br>
&gt;&gt; ERROR: linux-yocto-dev Provides virtual/kernel but was skipped:<br=
>
&gt;&gt; incompatible with machine raspberrypi0-wifi (not in compatible_mac=
hine)<br>
&gt;&gt; ERROR: required build target &#39;rpi-basic-image&#39; has no buil=
dable providers.<br>
&gt;&gt; Missing or unbuildable depency chain was: &#39;rpi-basic-image&#39=
;,<br>
&gt;&gt; &#39;virtual/kernel&#39;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; any body has a clue to solve it?<br>
&gt;&gt;<br>
&gt;&gt; thanks<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; ______________________________<wbr>_________________<br>
&gt;&gt; yocto mailing list<br>
&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@=
yoctoproject.org</a><br>
&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"n=
oreferrer" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/y=
octo</a><br>
&gt;&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto=
</a><br>
&gt;<br>
</div></div></blockquote></div></div></div><br></div>
</blockquote></div><br><br></div>
</blockquote></div></div></div></div>
</blockquote></div><br></div>

--94eb2c1b50a2028278055fb99454--
