Return-Path: <jeremy.thien@adtecdigital.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2D41E003DB; Mon, 23 Jan 2017 08:40:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f194.google.com (mail-qt0-f194.google.com
	[209.85.216.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96B57E0030B
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2017 08:40:54 -0800 (PST)
Received: by mail-qt0-f194.google.com with SMTP id f4so18463337qte.2
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2017 08:40:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=adtecinc-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ldV66Oud0/ND6lBUfGI0c+GIWk7ZB0gSDcyYGXKY7lg=;
	b=XMRmMeZpRKzTQTz+ZXbXiSqBglFtgtWDbeYS7i8eRH2USgCyX7goCKUEeJEGSwf2Tx
	eQlqfqwhlrkzS1tedYdpLUiFGRjqlwHOKvbKJLmPsd+OqrsR8Gm+SS/mcDt9m/8vGSDt
	xzypRt+l8I8SF7jJ0iFQHBv0tydVEP8rL3rIOOHGA+eQPxMOe2hAOtMJfUpW8RfIM+0G
	jCh2VPhQ8MqmcLAOLYlfgcVSJtKI1AxOlEI/uJBzIQZwEaJUQ8yN/ShwxmIRjMILNeu9
	NWdtxF6clAk/bTIeLCN0IVNH9b4Y304DPSGUaEW9bJJu67oJ1EjdbWpa1oSa0YVW+b25
	D8GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ldV66Oud0/ND6lBUfGI0c+GIWk7ZB0gSDcyYGXKY7lg=;
	b=HMhay793c61qPo0Ttp4v97p1mPxcGVu1SsIRBjYSLc8tvODNqO6PIuIpeDaXBDYPt0
	vSEcYrVG7x3v8YukKNagNOUP5iPu/MzMqGeRl0HwTWVTzRMQJRg6U+f66WR0ZzeiCawH
	tDNvTdRoTn1QmG4/C+Ye8cN4cpMlBpfWxlDcgQtXoyzr+rWZGVlOqPkhdqV6ZGpvMdlN
	blkKz0kD32k5iuEiao1kdk+akmWD6zZ6tc8V8IHZsUh5/QuDcfC5u8raZYPNaT/3HRxT
	68Yk+Db/2fHw2egxO15862KHAwVDPbJB4+Nc/R2zl8sxKCjAO5ryO1d9JZsthUu0k8RO
	q4cA==
X-Gm-Message-State: AIkVDXLZm1pFUSFCnf5K15h7WYBpUWtbRTjOJfmE0AAYV3E+KQpr3Qdb7tCw8kwXfy+PQMonuKx053V2va9TOQ==
X-Received: by 10.200.39.200 with SMTP id x8mr24499590qtx.159.1485189653516;
	Mon, 23 Jan 2017 08:40:53 -0800 (PST)
MIME-Version: 1.0
References: <b2610f4ee0fe434e9820784963e2e0c3@FE-MBX1014.de.bosch.com>
	<1485085344.20333.7.camel@intel.com>
	<CALzCvPTYcMYbKt8xqjkCEDYmueTvR4ALpWeODG08SbZzJd4kJg@mail.gmail.com>
In-Reply-To: <CALzCvPTYcMYbKt8xqjkCEDYmueTvR4ALpWeODG08SbZzJd4kJg@mail.gmail.com>
From: Jeremy Thien <jeremyt@adtecinc.com>
Date: Mon, 23 Jan 2017 16:40:43 +0000
Message-ID: <CALzCvPQYFy4zq8gt+fuVx3t1+g8C23oUXbek2QC+es2Q2pAGYA@mail.gmail.com>
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
X-List-Received-Date: Mon, 23 Jan 2017 16:40:57 -0000
Content-Type: multipart/alternative; boundary=001a1135b526b913950546c5a969

--001a1135b526b913950546c5a969
Content-Type: text/plain; charset=UTF-8

Sorry, mangled the name. It should be initramfs-debug-image. It is very
simple, but you have to handle switch root yourself.

On Mon, Jan 23, 2017 at 9:08 AM Jeremy Thien <jeremyt@adtecinc.com> wrote:

> I suggest the debug-iniramfs-image from meta-openembedded/meta-initramfs.
>
> On Sun, Jan 22, 2017, 6:42 AM Patrick Ohly <patrick.ohly@intel.com> wrote:
>
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
> --
> Jeremy Thien
> Adtec Digital
> adtecdigital.com
> jeremy.thien@adtecdigital.net
>
-- 
Jeremy Thien
Adtec Digital
adtecdigital.com
jeremy.thien@adtecdigital.net

--001a1135b526b913950546c5a969
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Sorry, mangled the name. It should be initramfs-debug-imag=
e. It is very simple, but you have to handle switch root yourself.</div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr">On Mon, Jan 23, 2017 at 9:08 A=
M Jeremy Thien &lt;<a href=3D"mailto:jeremyt@adtecinc.com">jeremyt@adtecinc=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p dir=3D"ltr" =
class=3D"gmail_msg">I suggest the debug-iniramfs-image from meta-openembedd=
ed/meta-initramfs.</p>
<br class=3D"gmail_msg"><div class=3D"gmail_quote gmail_msg"><div dir=3D"lt=
r" class=3D"gmail_msg">On Sun, Jan 22, 2017, 6:42 AM Patrick Ohly &lt;<a hr=
ef=3D"mailto:patrick.ohly@intel.com" class=3D"gmail_msg" target=3D"_blank">=
patrick.ohly@intel.com</a>&gt; wrote:<br class=3D"gmail_msg"></div><blockqu=
ote class=3D"gmail_quote gmail_msg" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex">On Fri, 2017-01-20 at 12:44 +0000, Eswaran=
 Vinothkumar (BEG-PT/PJ-IOT1)<br class=3D"gmail_msg">
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
</blockquote></div><div dir=3D"ltr" class=3D"gmail_msg">-- <br class=3D"gma=
il_msg"></div><div data-smartmail=3D"gmail_signature" class=3D"gmail_msg"><=
div dir=3D"ltr" class=3D"gmail_msg">Jeremy Thien<div class=3D"gmail_msg">Ad=
tec Digital</div><div class=3D"gmail_msg"><a href=3D"http://adtecdigital.co=
m" class=3D"gmail_msg" target=3D"_blank">adtecdigital.com</a></div><div cla=
ss=3D"gmail_msg"><a href=3D"mailto:jeremy.thien@adtecdigital.net" class=3D"=
gmail_msg" target=3D"_blank">jeremy.thien@adtecdigital.net</a></div></div><=
/div></blockquote></div><div dir=3D"ltr">-- <br></div><div data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr">Jeremy Thien<div>Adtec Digital</div><=
div><a href=3D"http://adtecdigital.com">adtecdigital.com</a></div><div><a h=
ref=3D"mailto:jeremy.thien@adtecdigital.net">jeremy.thien@adtecdigital.net<=
/a></div></div></div>

--001a1135b526b913950546c5a969--
