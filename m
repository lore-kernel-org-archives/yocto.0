Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF6EEE00E49; Fri, 29 Apr 2016 01:31:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78288E00E46
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 01:30:58 -0700 (PDT)
Received: by mail-ig0-f181.google.com with SMTP id s8so13991734ign.0
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 01:30:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=QrGbY15mE94mPmsHUk7v4VItKGwlwWx9lZDHrt8u4Xo=;
	b=a0qxIcBYjvEOOLLDqvBmitXhWsyutQ3pDDLQOn5IWgeWZb17JqluqsnO8trq9ZWsYg
	05HwPExv0GbyfNTxXM+BzPhE5qDL712DR3w1MGQ+HL7k21DN/vs8IamfTG9oUNlrjEkp
	vNhM1QKp862maescfS4uaENPLQz+63Gp1Yx4bShtj2JmRYh9COVeFw17GpVd62P0VFkY
	++qY0r3lZMpfLITOWN5NteQz1H/cwxck9LAB0uGIVabVay+u1x3cf0xMOdR1NNfqqc8m
	w8OK9GlB+IRfUJBJoIAnIL7/ql9RypylB3Xp8J16kkfiDmEQL3WcHgMsTPuB9798sLPh
	xyDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=QrGbY15mE94mPmsHUk7v4VItKGwlwWx9lZDHrt8u4Xo=;
	b=HatTHXeN0eI94ZTOZB37DurBshDr8cLIO5hwG2oV7l16HxYAh2Zuk0hY6i0e4LmzaL
	K54bA4/Y1eEHEnjVK9O5/bD02T9Rm0n23YWFsakcvxFf/Q4GAk4MvCOPO/Z6Ceye/oxz
	gqMyQqMvwA/bWY5FsMJRckDaURhagPuTf7pOYJIVlhmnHaDKbPj83Dc6llm/1SAgEenB
	eHO2K5jtVc69ue4iBjhTTrpubCUc1lbvNTa6KMeaoNfvNQ2SZW5GGNsC68dtqCvJohvO
	hTB/yVhQFdOnHzKb2Gnc9uPGYRFn8nHYsO8JtstnL4NHp86qI8CxcJW9fJbchf5FReme
	JOtA==
X-Gm-Message-State: AOPr4FWdiML5q7r9NwI+pyInD9gF86aGl3vw+nUCg+a0SQeA7Yt8pJcn4G0lv4A7riUAJptLgDnuw/spUw4Gzq5/
X-Received: by 10.50.233.40 with SMTP id tt8mr3031998igc.78.1461918657572;
	Fri, 29 Apr 2016 01:30:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.9.106 with HTTP; Fri, 29 Apr 2016 01:30:38 -0700 (PDT)
In-Reply-To: <2D704C56-775E-4E1A-BFBD-0C14455EFE1A@gmail.com>
References: <B1D22563-F31B-4EF1-90D6-16EB391134D5@gmail.com>
	<CACS+7ZSpWgziO+GF++25dM7kgP4SZ_GDV+-DcEMQ_YUGyEEnfQ@mail.gmail.com>
	<CAMKF1spQn114r9dCAk9z7c3hw-NJp3pVoVP+f3gao2mhLTBHYg@mail.gmail.com>
	<CAMKF1spwimpQwSE38B5jWmyZXwMKy6znMEF9p-NmTM4mGGr+4g@mail.gmail.com>
	<CAJTo0Lb25x1H44nGn05d6qBVLDpyiaZ3XW40fdrAWcP_D+qYwg@mail.gmail.com>
	<CAJTo0LZZ3Hs_yrm5ceik4j8Orv-UQ9T72Wu=R_PCRKw4Y9-WCw@mail.gmail.com>
	<CAMKF1sozR3_Mhy5PKSaKCo7S2yHrtLzTNrUURFhN38gV0AbkYQ@mail.gmail.com>
	<246f9c39-736b-7ed6-b69a-69d8c4369236@windriver.com>
	<B59F2ADC-CB7F-44CF-9AD7-AD779FC2EEC9@gmail.com>
	<748495f9-7383-ce65-a41b-7343aa1c6004@windriver.com>
	<2D704C56-775E-4E1A-BFBD-0C14455EFE1A@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 29 Apr 2016 09:30:38 +0100
Message-ID: <CAJTo0LZKvjbMQnbHXXYZqd8b=q8s=Rh-VAajj3xH3hLTN5sCrQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	openembeded-devel <openembedded-devel@lists.openembedded.org>,
	OE Core mailing list <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] GCC 6 Recipes
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
X-List-Received-Date: Fri, 29 Apr 2016 08:31:02 -0000
Content-Type: multipart/alternative; boundary=f46d0428757146868f05319b7603

--f46d0428757146868f05319b7603
Content-Type: text/plain; charset=UTF-8

Took it for another ride on our AB last night:

http://errors.yoctoproject.org/Errors/Latest/?filter=ab893d4e1c3efc1ee73c6cfbbb9a64036c63d93c&type=commit

The systemd-sysusers stuff I failed to remove, and is broken.

There's a pango-native failure that appears to be caused by GIR.

And two SDK image test failures caused by transient network problems.

Looking good!

Ross

On 28 April 2016 at 16:29, Khem Raj <raj.khem@gmail.com> wrote:

>
> > On Apr 28, 2016, at 8:19 AM, Mark Hatle <mark.hatle@windriver.com>
> wrote:
> >
> > On 4/28/16 2:10 AM, Khem Raj wrote:
> >>
> >>> On Apr 27, 2016, at 11:06 AM, Mark Hatle <mark.hatle@windriver.com>
> wrote:
> >>>
> >>> On 4/27/16 12:53 PM, Khem Raj wrote:
> >>>> thanks I think most of them come to these categories. So any help in
> >>>> fixing them is welcome.
> >>>>
> >>>> 1. kernel older than 4.4, backport needed fixed into these branches or
> >>>> move to newer kernels.
> >>>> 2. uboot dont have gcc6 compiler header files, backport the needed
> fixes
> >>>> 2. meta-qt4 needs to use gnu++98
> >>>> 3. gcc6 providing its own stdlib.h in libstdc++
> >>>> 4. gcc6 swtiching to gnu++14 for C++ as default.
> >>>> 5. GPLv2-only versions of recipes are simply old will need fixing
> >>>
> >>> From a -very- brief look, I suspect each of these fixes will be fairly
> simple.
> >>> So as we move into the next oe-core phase, we should be able get
> through this
> >>> pretty quickly.
> >>
> >> I think yes, they are trivial, except the GPL-2.0 packages which might
> need patching
> >>
> >
> > Ha, actually that was what I was referring to.  The couple I looked at
> seemed to
> > be trivial.. :)
>
> yes they are just the fact that compiler has gone stricter compliance with
> standards compared
> to when code was written. In worst case we might downgrade -std for these
> recipe but that
> may not be enough in some cases
> >
> > If someone doesn't get to it first, I expect some of my guys will in
> about a month.
> >
>
> OK cool. I think we should make it merge worthy and get it early into
> master and fix the fallouts
>
>
> > --Mark
>
>

--f46d0428757146868f05319b7603
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Took it for another ride on our AB last night:<div><br></d=
iv><div><a href=3D"http://errors.yoctoproject.org/Errors/Latest/?filter=3Da=
b893d4e1c3efc1ee73c6cfbbb9a64036c63d93c&amp;type=3Dcommit">http://errors.yo=
ctoproject.org/Errors/Latest/?filter=3Dab893d4e1c3efc1ee73c6cfbbb9a64036c63=
d93c&amp;type=3Dcommit</a><br></div><div><br></div><div>The systemd-sysuser=
s stuff I failed to remove, and is broken.</div><div><br></div><div>There&#=
39;s a pango-native failure that appears to be caused by GIR.</div><div><br=
></div><div>And two SDK image test failures caused by transient network pro=
blems.</div><div><br></div><div>Looking good!</div><div><br></div><div>Ross=
</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 28=
 April 2016 at 16:29, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.=
khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<=
br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex"><span class=3D""><br>
&gt; On Apr 28, 2016, at 8:19 AM, Mark Hatle &lt;<a href=3D"mailto:mark.hat=
le@windriver.com">mark.hatle@windriver.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On 4/28/16 2:10 AM, Khem Raj wrote:<br>
&gt;&gt;<br>
&gt;&gt;&gt; On Apr 27, 2016, at 11:06 AM, Mark Hatle &lt;<a href=3D"mailto=
:mark.hatle@windriver.com">mark.hatle@windriver.com</a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On 4/27/16 12:53 PM, Khem Raj wrote:<br>
&gt;&gt;&gt;&gt; thanks I think most of them come to these categories. So a=
ny help in<br>
&gt;&gt;&gt;&gt; fixing them is welcome.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; 1. kernel older than 4.4, backport needed fixed into these=
 branches or<br>
&gt;&gt;&gt;&gt; move to newer kernels.<br>
&gt;&gt;&gt;&gt; 2. uboot dont have gcc6 compiler header files, backport th=
e needed fixes<br>
&gt;&gt;&gt;&gt; 2. meta-qt4 needs to use gnu++98<br>
&gt;&gt;&gt;&gt; 3. gcc6 providing its own stdlib.h in libstdc++<br>
&gt;&gt;&gt;&gt; 4. gcc6 swtiching to gnu++14 for C++ as default.<br>
&gt;&gt;&gt;&gt; 5. GPLv2-only versions of recipes are simply old will need=
 fixing<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; From a -very- brief look, I suspect each of these fixes will b=
e fairly simple.<br>
&gt;&gt;&gt; So as we move into the next oe-core phase, we should be able g=
et through this<br>
&gt;&gt;&gt; pretty quickly.<br>
&gt;&gt;<br>
&gt;&gt; I think yes, they are trivial, except the GPL-2.0 packages which m=
ight need patching<br>
&gt;&gt;<br>
&gt;<br>
&gt; Ha, actually that was what I was referring to.=C2=A0 The couple I look=
ed at seemed to<br>
&gt; be trivial.. :)<br>
<br>
</span>yes they are just the fact that compiler has gone stricter complianc=
e with standards compared<br>
to when code was written. In worst case we might downgrade -std for these r=
ecipe but that<br>
may not be enough in some cases<br>
<span class=3D"">&gt;<br>
&gt; If someone doesn&#39;t get to it first, I expect some of my guys will =
in about a month.<br>
&gt;<br>
<br>
</span>OK cool. I think we should make it merge worthy and get it early int=
o master and fix the fallouts<br>
<br>
<br>
&gt; --Mark<br>
<br>
</blockquote></div><br></div>

--f46d0428757146868f05319b7603--
