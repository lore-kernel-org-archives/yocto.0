Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC2FFE00AAA; Sun,  3 Nov 2019 10:15:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.170 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
	[209.85.222.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86D4DE006D2
	for <yocto@yoctoproject.org>; Sun,  3 Nov 2019 10:15:01 -0800 (PST)
Received: by mail-qk1-f170.google.com with SMTP id m125so15371057qkd.8
	for <yocto@yoctoproject.org>; Sun, 03 Nov 2019 10:15:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=IHcRWz3EnuBN0vS+H9CHBGFEPy8lsyD9JvmH2yO9X4c=;
	b=KmzhpXSSt+UGapPZ3e4TJ0izNaCFZ7DvgRzKboIzM1uKG4pSZ7VmWeeJAPFZgLp4Jt
	7IsVWIhzwC9duudLcUvn8MaLwYxBk9QMk+TnlBe3adZJK43a3CfyI7Gz4lE4Kd/oLXJc
	FWENkQ6afeCnkHTmm8N+ikBChsrkxBDuFdIPZeU3oUYgUS41jpMOU9WEMjEqTGs8Xcc6
	GFivkrKluLGHjxj9VMmIIQoI5KvWFg5e6cj9gm2c5A+XXQxIaPkKREpYQ3HbBT/NOxv7
	aym674/DtIR6fAkmS2E7QyTTF6EkJG925erGFpHDs937atWTY+aFfDJtFhKD0tGlz+xG
	UT0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=IHcRWz3EnuBN0vS+H9CHBGFEPy8lsyD9JvmH2yO9X4c=;
	b=O/oA36lqWw1P0mCMfC9VP0WYlDlvqfY/cWNhWdqLHhAvi2o8HgPidKIJxyLd0RJCuP
	EQZAkz0+0xINYY+ZXROHBjAVKLi9hhE8VCzm4llBmgiDY1yqWgZ7smoU4cC4a0uZp1jB
	sHXqA2YZpvEaQHKm2YYinVAzntpibGMD1GuosZGs1+iWHBLBIhzHoiOK5MzgxCirrd1w
	pk8c8GmA+D5kP0HmbKBkgpgTZxhvZkzTjIuj7aQrYQnBaX+dxacydImMbzqRHNPP0KgB
	+bcuKOs4EgGuDqSb1Qe34mKevkIaUd0EnqyqV68AZ3jRkk1dcI3vvP7OMhrQIOZIVIXW
	swPw==
X-Gm-Message-State: APjAAAXAZDnEmVcXsUAxqxSIn/FDp1yHyC71GctsDXySlVftS7pRCYgU
	5ibYcdreEW7w/mfXZMYqiaaTYcDl+3eyHfbp2pE=
X-Google-Smtp-Source: APXvYqw/yqqzTkiZg5/bIihasgMb2qm9xcXshtPb+dxv5614BZaPseYHfYGdLqyJSYaKQmbZ1tjYjBUAXiD9cr88Vwc=
X-Received: by 2002:ae9:f010:: with SMTP id l16mr14877619qkg.212.1572804900336;
	Sun, 03 Nov 2019 10:15:00 -0800 (PST)
MIME-Version: 1.0
References: <7D6FCC3C-A8B1-4EE7-875F-E544DCC3B44A@korgrd.com>
	<d6a7e59a-cc6a-aa34-21a5-47c73062f9e1@gherzan.ro>
	<CAMKF1srHdfY1=Qbb7vURbMauc5VcPiKzH6_AGht86ChoJKvDZQ@mail.gmail.com>
	<097a8fe9-979d-aa3f-68ad-2c9e0bea6853@gherzan.ro>
	<CAMKF1sq39xefZFVEVafJ6yuRuinUtZ8odrPSJ4POiq49zevwPw@mail.gmail.com>
	<352DF122-AE8C-4549-A04B-27EEF9A73AE5@gherzan.ro>
In-Reply-To: <352DF122-AE8C-4549-A04B-27EEF9A73AE5@gherzan.ro>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 3 Nov 2019 10:14:49 -0800
Message-ID: <CAMKF1sovcyAPT2j1=uZbQc6GT0+6gQy0ogDgBwAD9adkQGWwWA@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto Project <yocto@yoctoproject.org>, Steve Pavao <stevep@korgrd.com>
Subject: Re: [meta-raspberrypi] poky linux build fails if ARM erratum mfix linker switch is specified
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
X-List-Received-Date: Sun, 03 Nov 2019 18:15:02 -0000
Content-Type: multipart/alternative; boundary="00000000000062baa20596752d03"

--00000000000062baa20596752d03
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Nov 3, 2019 at 9:56 AM Andrei Gherzan <andrei@gherzan.ro> wrote:

>
>
> On 3 November 2019 13:18:53 GMT, Khem Raj <raj.khem@gmail.com> wrote:
> >On Sun, Nov 3, 2019 at 2:46 AM Andrei Gherzan <andrei@gherzan.ro>
> >wrote:
> >
> >> On 01/11/2019 17:18, Khem Raj wrote:
> >> > On Fri, Nov 1, 2019 at 1:28 AM Andrei Gherzan <andrei@gherzan.ro>
> >wrote:
> >> >>
> >> >> Hi Steve,
> >> >>
> >> >> On 01/11/2019 05:32, Steve Pavao wrote:
> >> >>> poky linux build fails when ARM erratum mfix linker switch is
> >specified
> >> >>> in local.conf:
> >> >>>
> >> >>> TARGET_LD_ARCH_append +=3D " -mfix-cortex-a53-843419=E2=80=9D
> >> >>>
> >> >>> causes build failure.
> >> >>>
> >> >>> Please advise how to use this switch successfully.  I am synced
> >current
> >> >>> in master branch in all layers as of today.  The switch causes
> >libtool
> >> >>> link to fail due to missing libbz2.so.  If I don=E2=80=99t specify=
 the
> >switch,
> >> >>> the build completes without errors.
> >> >>>
> >> >>> It is important to be able to build poky linux with this switch
> >to
> >> avoid
> >> >>> certain crash conditions as described in the ARM errata document.
> >> >>
> >> >> I haven't tried this erratum fix. It is indeed implemented at the
> >> >> linker's lever. It's curious though to see the bz2 dependency. Can
> >you
> >> >> share the specific error? I assume you are doing this on RPi3.
> >> >>
> >> >
> >> > this will impact rpi3 in 64bit mode, don't think 32bit needs this.
> >I
> >> > think its best to
> >> > add this option in raspberrypi3-64.conf perhaps via TUNE_CCARGS
> >>
> >> I was thinking about this. The erratum seems to show that this
> >applies
> >> to all revisions of a53. So it sounds like we should add it in
> >> `tune-cortexa53.inc`.
> >>
> >
> >Up to r0b4 only so maybe not all a53 implementations are impacted
> >
>
> As far as I know that is the latest revision. Do you mean that newer
> revision might come up with this fixed?
>

Rpi3 is one of many cortex a53 implementations

>
> --
> Andrei Gherzan
> gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan
>

--00000000000062baa20596752d03
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sun, Nov 3, 2019 at 9:56 AM Andrei Gherzan &lt;<a href=
=3D"mailto:andrei@gherzan.ro">andrei@gherzan.ro</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex"><br>
<br>
On 3 November 2019 13:18:53 GMT, Khem Raj &lt;<a href=3D"mailto:raj.khem@gm=
ail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;On Sun, Nov 3, 2019 at 2:46 AM Andrei Gherzan &lt;<a href=3D"mailto:and=
rei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro</a>&gt;<br>
&gt;wrote:<br>
&gt;<br>
&gt;&gt; On 01/11/2019 17:18, Khem Raj wrote:<br>
&gt;&gt; &gt; On Fri, Nov 1, 2019 at 1:28 AM Andrei Gherzan &lt;<a href=3D"=
mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro</a>&gt;<br>
&gt;wrote:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Hi Steve,<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; On 01/11/2019 05:32, Steve Pavao wrote:<br>
&gt;&gt; &gt;&gt;&gt; poky linux build fails when ARM erratum mfix linker s=
witch is<br>
&gt;specified<br>
&gt;&gt; &gt;&gt;&gt; in local.conf:<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; TARGET_LD_ARCH_append +=3D &quot; -mfix-cortex-a53-84=
3419=E2=80=9D<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; causes build failure.<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; Please advise how to use this switch successfully.=C2=
=A0 I am synced<br>
&gt;current<br>
&gt;&gt; &gt;&gt;&gt; in master branch in all layers as of today.=C2=A0 The=
 switch causes<br>
&gt;libtool<br>
&gt;&gt; &gt;&gt;&gt; link to fail due to missing libbz2.so.=C2=A0 If I don=
=E2=80=99t specify the<br>
&gt;switch,<br>
&gt;&gt; &gt;&gt;&gt; the build completes without errors.<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; It is important to be able to build poky linux with t=
his switch<br>
&gt;to<br>
&gt;&gt; avoid<br>
&gt;&gt; &gt;&gt;&gt; certain crash conditions as described in the ARM erra=
ta document.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; I haven&#39;t tried this erratum fix. It is indeed implem=
ented at the<br>
&gt;&gt; &gt;&gt; linker&#39;s lever. It&#39;s curious though to see the bz=
2 dependency. Can<br>
&gt;you<br>
&gt;&gt; &gt;&gt; share the specific error? I assume you are doing this on =
RPi3.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; this will impact rpi3 in 64bit mode, don&#39;t think 32bit ne=
eds this.<br>
&gt;I<br>
&gt;&gt; &gt; think its best to<br>
&gt;&gt; &gt; add this option in raspberrypi3-64.conf perhaps via TUNE_CCAR=
GS<br>
&gt;&gt;<br>
&gt;&gt; I was thinking about this. The erratum seems to show that this<br>
&gt;applies<br>
&gt;&gt; to all revisions of a53. So it sounds like we should add it in<br>
&gt;&gt; `tune-cortexa53.inc`.<br>
&gt;&gt;<br>
&gt;<br>
&gt;Up to r0b4 only so maybe not all a53 implementations are impacted<br>
&gt;<br>
<br>
As far as I know that is the latest revision. Do you mean that newer revisi=
on might come up with this fixed? <br>
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Rpi3 is one of m=
any cortex a53 implementations=C2=A0</div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><b=
r>
--<br>
Andrei Gherzan<br>
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan<br>
</blockquote></div></div>

--00000000000062baa20596752d03--
