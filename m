Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4501FE00949; Sat, 17 Jan 2015 16:30:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EBB4E0076F
	for <yocto@yoctoproject.org>; Sat, 17 Jan 2015 16:30:15 -0800 (PST)
Received: by mail-wi0-f176.google.com with SMTP id z2so7059482wiv.3
	for <yocto@yoctoproject.org>; Sat, 17 Jan 2015 16:30:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=gd7WuIqLkoZ0Q1QGezSGZskQmR5gx5kBqRZBM4YOOO0=;
	b=E0kDb9ZIHI77rMuIVQ6fJonUuYzO8gwGmrk/NH3n/qMXHM/lxLQNbyoEsQPWtjYco6
	qmAg2dzUkxNo4okYi+epqczI9t6zdt4Hse/PRtgDvyTxXMqnNi+RnmTomN8uFV7pyZGR
	4ap2JoU/fh+2Zd0P8ZNylHTblhtZ9f7+V0LZx4uy0phWNyIVlu7VdL3qYgCd4/WaUPvO
	O3JyCgbFnSkRqiTLqS/J7xrv4qUMVoDlV9xbJ9TuXut8OtZqyov3vYqSD8GLHL4vfhzL
	ymqSsrsqBG+LTZL/OB+YJ+82Xeolw/p4W6E4HO37eL0j0ZZptvvQekHvMN6vrJ038XHe
	MG4g==
X-Gm-Message-State: ALoCoQkzRAO4XFd6XYKQO3rxVEWd3cu0a+XZbPnzwoInLObTQ2/Shcw285j6/exNn8Acxsf15CvO
X-Received: by 10.180.93.1 with SMTP id cq1mr20163975wib.2.1421541014719; Sat,
	17 Jan 2015 16:30:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.216.107.132 with HTTP; Sat, 17 Jan 2015 16:29:54 -0800 (PST)
X-Originating-IP: [109.100.140.128]
In-Reply-To: <6C0F4B49-EDA6-4059-9BE7-6BD47A918073@jtang.org>
References: <11564A1C-1D09-4BDA-8CCB-3045DF82EFD2@jtang.org>
	<20150114203610.GB4735@gmail.com>
	<B16CA82B-7834-419F-9E84-669E8F9B6779@jtang.org>
	<54B782FA.9040109@topic.nl>
	<6C0F4B49-EDA6-4059-9BE7-6BD47A918073@jtang.org>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sun, 18 Jan 2015 01:29:54 +0100
Message-ID: <CAK18fxE91QTiCotpwsq03bozy8KjAsSQxgtt-hTHh6VrPAMmYg@mail.gmail.com>
To: "J. Tang" <tang@jtang.org>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Why not enable hard floating point?
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
X-List-Received-Date: Sun, 18 Jan 2015 00:30:19 -0000
Content-Type: multipart/alternative; boundary=f46d043c818e376909050ce24f95

--f46d043c818e376909050ce24f95
Content-Type: text/plain; charset=UTF-8

Hello,

On Fri, Jan 16, 2015 at 3:05 AM, J. Tang <tang@jtang.org> wrote:

>
> On 2015-01-15, at 04:06, Mike Looijmans <mike.looijmans@topic.nl> wrote:
>
> > -2- The CPU doesn't actually have floating point support and the kernel
> is emulating it for you. This allows the platform to run "hf" binaries, at
> a minor performance cost compared to completely doing the emulation in user
> space (libc).
>
> From my understanding, the Raspberry Pi (at least the model B, which is
> what I have) has an FPU.
>
> Would it hurt to at least mention in the top-level README of the
> meta-raspberrypi layer that a user could enable hard FP by setting the
> DEFAULTTUNE?
>
>
Definitely it wouldn't. But right now we have two options:
We can just throw a README line and that's it.
Or we can  investigate a little to see if in our current setup we actually
use FPU instructions or not. Following Mike's answer I would definitely
think that we are in case 1 where the compile based on the CPU
configuration figures out that we can use FPU instruction on this CPU
architecture. Right now, as being on vacation, I can really test on
binaries by dissembling code and check it by hand. Anybody who can do it
and provide some feedback? As well, some bench-marking would really make
sense here.

Thanks guys.

-- 
*Andrei Gherzan*

--f46d043c818e376909050ce24f95
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br><div class=3D"gmail_extra"><br><div class=3D"gma=
il_quote">On Fri, Jan 16, 2015 at 3:05 AM, J. Tang <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:tang@jtang.org" target=3D"_blank">tang@jtang.org</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><span class=3D""><br>
On 2015-01-15, at 04:06, Mike Looijmans &lt;<a href=3D"mailto:mike.looijman=
s@topic.nl">mike.looijmans@topic.nl</a>&gt; wrote:<br>
<br>
&gt; -2- The CPU doesn&#39;t actually have floating point support and the k=
ernel is emulating it for you. This allows the platform to run &quot;hf&quo=
t; binaries, at a minor performance cost compared to completely doing the e=
mulation in user space (libc).<br>
<br>
</span>From my understanding, the Raspberry Pi (at least the model B, which=
 is what I have) has an FPU.<br>
<br>
Would it hurt to at least mention in the top-level README of the meta-raspb=
errypi layer that a user could enable hard FP by setting the DEFAULTTUNE?<b=
r>
<span class=3D"im HOEnZb"><br></span></blockquote><div><br></div><div>Defin=
itely it wouldn&#39;t. But right now we have two options:</div><div>We can =
just throw a README line and that&#39;s it.</div><div>Or we can =C2=A0inves=
tigate a little to see if in our current setup we actually use FPU instruct=
ions or not. Following Mike&#39;s answer I would definitely think that we a=
re in case 1 where the compile based on the CPU configuration figures out t=
hat we can use FPU instruction on this CPU architecture. Right now, as bein=
g on vacation, I can really test on binaries by dissembling code and check =
it by hand. Anybody who can do it and provide some feedback? As well, some =
bench-marking would really make sense here.<br></div></div><div class=3D"gm=
ail_extra"><br></div>Thanks guys.<br clear=3D"all"><div><br></div>-- <br><d=
iv class=3D"gmail_signature"><div dir=3D"ltr"><div style=3D"text-align:cent=
er"></div><div style=3D"text-align:center"><div align=3D"left"><b style=3D"=
font-family:Arial;font-size:small;color:rgb(51,51,51);text-align:center">An=
drei Gherzan</b><br></div></div></div></div>
</div></div>

--f46d043c818e376909050ce24f95--
