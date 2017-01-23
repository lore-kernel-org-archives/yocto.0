Return-Path: <jeremy.thien@adtecdigital.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F161EE0083C; Mon, 23 Jan 2017 06:08:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.178 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.178 listed in list.dnswl.org]
Received: from mail-qt0-f178.google.com (mail-qt0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 297D8E00823
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2017 06:08:39 -0800 (PST)
Received: by mail-qt0-f178.google.com with SMTP id v23so125886465qtb.0
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2017 06:08:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=adtecinc-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=khxTSyEd1SItyEN9rZzmeEPybbodzBHwI2nQJx69Vnw=;
	b=P553pUhAjkfENjHJdMDmeXmrUF3r6hl2wm0fJJnY70x7xdr1zfNkMpI7NHQYstr1JY
	vcwvlhuWIvUnm4Eu+gGt4xS3Uzehv+TDNGfUQquk1YY0kvdZwWa1dToQbYnXqQyBmgUK
	5qtijXyKs0mJUGc/cHmiMH0hpTbYRyVhMI0TYu0KoFGeFTmKndpv2OGlc9XcywnbkiC3
	s+FnpKQASoQd6U6InBL7r7rKuZsk6H24SzPJPcMT3cQUbv5gTsJ1f3mVnkPIhFSB/HSQ
	s6qNu994s5Q1Rdexx0dSi2SK/TcLL7XrifQsmSZ3omARpmjzybOMFrraWK5NN8UHWYux
	0x3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=khxTSyEd1SItyEN9rZzmeEPybbodzBHwI2nQJx69Vnw=;
	b=hW+SR0z600b+lU9UG8U7cFGNq0P5zEroTqRWfaPnVJ7cp0WVz4rsFwSgXh/kwst1iH
	0y/nJly43FfY64dB4BgBx2D+swWdTHIQDuXd0+XjPuCvgmsz3ad7qIkVin8LDBqlhHLA
	FeIym4ozk/TAFn08Y5TiV6JdoCi5ODSUfYBE9KWjKHcHT/S2GD1dPp2e0L+qaST2OwOB
	kew8w9sat+qEkcwLWn7PDnaK/YA8YyAaNuyKORhdfJISsu37ZdiK3DkoP7UtysmGNeTw
	i+0qonbZI+CEyAdgsfVADr+G9+Ow2GVKIG4A3dCHr9xHHycgGaQXgle4dKM8hfiTKai5
	nuMA==
X-Gm-Message-State: AIkVDXLvYQYpWtHzLOXRSi7srbsDYXUOJLXUkjx+6521OtDM90f6wKTarFECC1a5Zi+LnFzIWFAu69r04jI/pA==
X-Received: by 10.200.0.25 with SMTP id a25mr24646774qtg.191.1485180518189;
	Mon, 23 Jan 2017 06:08:38 -0800 (PST)
MIME-Version: 1.0
References: <b2610f4ee0fe434e9820784963e2e0c3@FE-MBX1014.de.bosch.com>
	<1485085344.20333.7.camel@intel.com>
In-Reply-To: <1485085344.20333.7.camel@intel.com>
From: Jeremy Thien <jeremyt@adtecinc.com>
Date: Mon, 23 Jan 2017 14:08:27 +0000
Message-ID: <CALzCvPTYcMYbKt8xqjkCEDYmueTvR4ALpWeODG08SbZzJd4kJg@mail.gmail.com>
To: Patrick Ohly <patrick.ohly@intel.com>, 
	"Eswaran Vinothkumar (BEG-PT/PJ-IOT1)" <Vinothkumar.Eswaran@de.bosch.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto - Building initramfs to run a shell script for the support of IMA/EVM
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
X-List-Received-Date: Mon, 23 Jan 2017 14:08:42 -0000
Content-Type: multipart/alternative; boundary=f403045e736236e0250546c3898f

--f403045e736236e0250546c3898f
Content-Type: text/plain; charset=UTF-8

I suggest the debug-iniramfs-image from meta-openembedded/meta-initramfs.

On Sun, Jan 22, 2017, 6:42 AM Patrick Ohly <patrick.ohly@intel.com> wrote:

> On Fri, 2017-01-20 at 12:44 +0000, Eswaran Vinothkumar (BEG-PT/PJ-IOT1)
> wrote:
> > We are using initramfs to run a script which before mounting the root
> > file system checks for ima policy and also responsible for loading the
> > evm-keys. In short, the initramfs contains a script which is executed
> > before mounting the main root file system.
>
> Ostro OS does the same, with IMA activated via a plugin for the
> initramfs-framework (a set of scripts in OE-core).
>
> meta-integrity:
> https://github.com/01org/meta-intel-iot-security/tree/master/meta-integrity
>
> IMA plugin:
>
> https://github.com/01org/meta-intel-iot-security/tree/master/meta-integrity/recipes-core/initrdscripts
>
> Full initramfs using this is ostro-initramfs.bb in:
>
> https://github.com/ostroproject/ostro-os/tree/master/meta-ostro/recipes-image/images
>
> Perhaps this will give you some ideas how to do this, or can even be
> used as-is?
>
> --
> Best Regards, Patrick Ohly
>
> The content of this message is my personal opinion only and although
> I am an employee of Intel, the statements I make here in no way
> represent Intel's position on the issue, nor am I authorized to speak
> on behalf of Intel on this matter.
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
-- 
Jeremy Thien
Adtec Digital
adtecdigital.com
jeremy.thien@adtecdigital.net

--f403045e736236e0250546c3898f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">I suggest the debug-iniramfs-image from meta-openembedded/me=
ta-initramfs.</p>
<br><div class=3D"gmail_quote"><div dir=3D"ltr">On Sun, Jan 22, 2017, 6:42 =
AM Patrick Ohly &lt;<a href=3D"mailto:patrick.ohly@intel.com">patrick.ohly@=
intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Fri, =
2017-01-20 at 12:44 +0000, Eswaran Vinothkumar (BEG-PT/PJ-IOT1)<br class=3D=
"gmail_msg">
wrote:<br class=3D"gmail_msg">
&gt; We are using initramfs to run a script which before mounting the root<=
br class=3D"gmail_msg">
&gt; file system checks for ima policy and also responsible for loading the=
<br class=3D"gmail_msg">
&gt; evm-keys. In short, the initramfs contains a script which is executed<=
br class=3D"gmail_msg">
&gt; before mounting the main root file system.<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
Ostro OS does the same, with IMA activated via a plugin for the<br class=3D=
"gmail_msg">
initramfs-framework (a set of scripts in OE-core).<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
meta-integrity:<br class=3D"gmail_msg">
<a href=3D"https://github.com/01org/meta-intel-iot-security/tree/master/met=
a-integrity" rel=3D"noreferrer" class=3D"gmail_msg" target=3D"_blank">https=
://github.com/01org/meta-intel-iot-security/tree/master/meta-integrity</a><=
br class=3D"gmail_msg">
<br class=3D"gmail_msg">
IMA plugin:<br class=3D"gmail_msg">
<a href=3D"https://github.com/01org/meta-intel-iot-security/tree/master/met=
a-integrity/recipes-core/initrdscripts" rel=3D"noreferrer" class=3D"gmail_m=
sg" target=3D"_blank">https://github.com/01org/meta-intel-iot-security/tree=
/master/meta-integrity/recipes-core/initrdscripts</a><br class=3D"gmail_msg=
">
<br class=3D"gmail_msg">
Full initramfs using this is <a href=3D"http://ostro-initramfs.bb" rel=3D"n=
oreferrer" class=3D"gmail_msg" target=3D"_blank">ostro-initramfs.bb</a> in:=
<br class=3D"gmail_msg">
<a href=3D"https://github.com/ostroproject/ostro-os/tree/master/meta-ostro/=
recipes-image/images" rel=3D"noreferrer" class=3D"gmail_msg" target=3D"_bla=
nk">https://github.com/ostroproject/ostro-os/tree/master/meta-ostro/recipes=
-image/images</a><br class=3D"gmail_msg">
<br class=3D"gmail_msg">
Perhaps this will give you some ideas how to do this, or can even be<br cla=
ss=3D"gmail_msg">
used as-is?<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
--<br class=3D"gmail_msg">
Best Regards, Patrick Ohly<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
The content of this message is my personal opinion only and although<br cla=
ss=3D"gmail_msg">
I am an employee of Intel, the statements I make here in no way<br class=3D=
"gmail_msg">
represent Intel&#39;s position on the issue, nor am I authorized to speak<b=
r class=3D"gmail_msg">
on behalf of Intel on this matter.<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
--<br class=3D"gmail_msg">
_______________________________________________<br class=3D"gmail_msg">
yocto mailing list<br class=3D"gmail_msg">
<a href=3D"mailto:yocto@yoctoproject.org" class=3D"gmail_msg" target=3D"_bl=
ank">yocto@yoctoproject.org</a><br class=3D"gmail_msg">
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" class=3D"gmail_msg" target=3D"_blank">https://lists.yoctoproject.org/list=
info/yocto</a><br class=3D"gmail_msg">
</blockquote></div><div dir=3D"ltr">-- <br></div><div data-smartmail=3D"gma=
il_signature"><div dir=3D"ltr">Jeremy Thien<div>Adtec Digital</div><div><a =
href=3D"http://adtecdigital.com">adtecdigital.com</a></div><div><a href=3D"=
mailto:jeremy.thien@adtecdigital.net">jeremy.thien@adtecdigital.net</a></di=
v></div></div>

--f403045e736236e0250546c3898f--
