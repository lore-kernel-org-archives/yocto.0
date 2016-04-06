Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69DE1E006C7; Wed,  6 Apr 2016 08:52:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D76EFE0048B
	for <yocto@yoctoproject.org>; Wed,  6 Apr 2016 08:52:23 -0700 (PDT)
Received: by mail-io0-f169.google.com with SMTP id 2so61279648ioy.1
	for <yocto@yoctoproject.org>; Wed, 06 Apr 2016 08:52:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ya0Os+v4a7oN5rByZFBFfk83YAj1CYJ0K6ZAWYyGAog=;
	b=AlL7h0XiVDTmBGoGYHR0xGpNh/EWH8Ok4cgRZ8Bd5R18tDyFb6Tt5I2RWLMGN1TzGm
	1r1FhGXyhjd2HkSs3txcHshvsduhW/DwtWn7rQWnwBxhdSXnwsmnxTA+S7TuyKk1UsGX
	3m+aivsQNny+GC/CsajBaWujctcScW88hXSxGVjHWGdJRcXkcOyxG8hhscPeHGzVT6nC
	VGNeTY5hi07BOWq3KdEsRSfGwYbfj0tl6gM9KXW7kBUvtZno6ovmiFTf56sz4zlKpD6U
	Yp3ehUb/tcW8nK1Pz2PHc0MgWJw2vkoqYplKc1XAcwOOrE8aIxncKN4Ctai4IINrXngC
	3ntg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ya0Os+v4a7oN5rByZFBFfk83YAj1CYJ0K6ZAWYyGAog=;
	b=fLPwe+E5K9FhkJF5UsR5Q2njX4Uq9S1zq/pEW2YYc8I1swVdqLMfG4fjqavAsmfMXe
	6OfToqYKqYbAd2XIl9bjzHywQ7FtdNuuQkm/MfMwe2/8PehncteImfr5lkhTfLg/f2DN
	cF1W24SF4p2AraLv+EiCp64xgMLbTXg7E3FWtI8Kaz4VMyF8/qlwwNw1jN70rALU+B5a
	z8lLyc3j8p+mil/IVOLFHpHXAvlcq4lNmMFKL8GkGp1RHCsmzDkWgl3WUeJD+0YcmPi3
	6QHp5LLyygZv1nmC1Vu9AU+fQ6SQ3zxJy+1ED3aEIgyq0ARMzan7cmVA8fKlMcm6Xd1g
	vxMg==
X-Gm-Message-State: AD7BkJLREYB2W1fdpxf4NlULxmPVYW7bHVj/rxBBm2L3GSYNuBAqrn8naBSARhEYwlX8NVtTVSqBBu9ik7wF+D29
X-Received: by 10.107.134.84 with SMTP id i81mr24440376iod.99.1459957942889;
	Wed, 06 Apr 2016 08:52:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.132.24 with HTTP; Wed, 6 Apr 2016 08:52:03 -0700 (PDT)
In-Reply-To: <DUB130-W30F71C6509C95E9FA2606EDA9F0@phx.gbl>
References: <DUB130-W48119310217EFF39E1E035DA9F0@phx.gbl>
	<CAJTo0LbdXCPtc7PF_25Yc00T0pt=Ptq12whkehT5LVnnwS7RtA@mail.gmail.com>
	<DUB130-W492E3B0F53AE2AA9EE0F0ADA9F0@phx.gbl>
	<CAJTo0Lbg10pM7VT0ZiaqC7r5YwvdX9_c3X9P=vrPdFX3C6maLQ@mail.gmail.com>
	<DUB130-W30F71C6509C95E9FA2606EDA9F0@phx.gbl>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 6 Apr 2016 16:52:03 +0100
Message-ID: <CAJTo0LYa+BZxy47950p8g7HqgRFQiHCeS3ZThtetopm-1ZDScg@mail.gmail.com>
To: Chris Trobridge <christrobridge@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Python GObject Errors on yocto-2.1_M3.rc2
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
X-List-Received-Date: Wed, 06 Apr 2016 15:52:25 -0000
Content-Type: multipart/alternative; boundary=001a113febc89356cd052fd2f25e

--001a113febc89356cd052fd2f25e
Content-Type: text/plain; charset=UTF-8

On 6 April 2016 at 16:45, Chris Trobridge <christrobridge@hotmail.com>
wrote:

> I will try to sort that out tomorrow (poky@yoctoproject.org, right?).
>

No, openembedded-core@lists.openembedded.org

Regarding python3, whenever I change the "--with-python" option to
> something other than "python2.7" then I get an error.
>

You need to change the inherits to pull in python3native.  Sadly flipping
between py2 and py3 isn't trivial.

Ross

--001a113febc89356cd052fd2f25e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 6 April 2016 at 16:45, Chris Trobridge <span dir=3D"ltr">&lt;<a href=3D"=
mailto:christrobridge@hotmail.com" target=3D"_blank">christrobridge@hotmail=
.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":8q=
d" class=3D"a3s" style=3D"overflow:hidden">I will try to sort that out tomo=
rrow (<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a>, r=
ight?).<br></div></blockquote><div><br></div><div>No, <a href=3D"mailto:ope=
nembedded-core@lists.openembedded.org">openembedded-core@lists.openembedded=
.org</a></div><div><br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":8qd=
" class=3D"a3s" style=3D"overflow:hidden">
Regarding python3, whenever I change=C2=A0the &quot;--with-python&quot; opt=
ion to something other than &quot;python2.7&quot; then I get an error.<br><=
/div></blockquote><div><br></div><div>You need to change the inherits to pu=
ll in python3native.=C2=A0 Sadly flipping between py2 and py3 isn&#39;t tri=
vial.</div><div><br></div><div>Ross</div></div></div></div>

--001a113febc89356cd052fd2f25e--
