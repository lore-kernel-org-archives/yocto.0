Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 910ACE00990; Mon, 27 Jun 2016 07:29:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D615E00971
	for <yocto@yoctoproject.org>; Mon, 27 Jun 2016 07:29:34 -0700 (PDT)
Received: by mail-io0-f170.google.com with SMTP id t74so153730992ioi.0
	for <yocto@yoctoproject.org>; Mon, 27 Jun 2016 07:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Vvqw63eyYVsPWwM6iPmw5xgqBMH1YZ5aWWshxLLG/U8=;
	b=WB/qoW4sOPnwYQFlaHvyzwJ7CTapImy1cP4DOJ4ZFvY58YDIlDj3d4kTRcXZfLjMwb
	Ylf+lARZu4inOuiS4DRt0cEgERPA45tgqDUDiHm7xexCPuXtyy5oJMavtWUOazI+tt43
	7xOlgy+j/85WTmRSVKoJEBPEZHH910MUUIY71qLjTAdaHRQA/+BDu7zc3ONtZXCGxYHe
	p7Xh4EmpioT0NgEBNJCo+i3JfBlR/PgkJLmMyKA3RTEH6P3GKNKZMUQO9WkcHGlhE7DZ
	aPqKsO/AHQLLN3mh93o+UUgsBqri1/ph+mL3gWGsNHPW5/dSSgm5gkmvpv6agXZnk7F5
	IIbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Vvqw63eyYVsPWwM6iPmw5xgqBMH1YZ5aWWshxLLG/U8=;
	b=LV6DuApJUbpNNw/6U1GnPNFFEN22SER5bQp/AiEbp+gLwCdt5IBEZHjsLdCh4SCDLK
	WGPpMqCEBfey93Qf+KOvawHPLpKd0QEsfTZy7yKzrkA8WPY71FQz0dmFdnV5toouJqik
	lYUCH6/tfWBGJtk/FpPIxM+R1gLPq5jYZHGzOUV4dpGEJyW+VrKQ/sv4/n+AMWdNbo5c
	CTYz2z+BpVEW+l+jVypcNvJ8wQ5ZuFvwohj0r+20gTtV+P/D154QlV+HRDjpKjN9Y5J3
	DyisTkMm7jUFStY/BEK9Y8aLmTNix2gzDAs81HqrU+Avwl3ehqem4N3qkY5JCtmUM5Gm
	91mQ==
X-Gm-Message-State: ALyK8tIO7ohmMTZ1VlpqCtGDNLl5Yo1B/F/3uXSnSUtIE8e9XVQvM8a9v/zXSmt2rkpPu9YW/3emMRP8d4mhi/kx
X-Received: by 10.107.154.210 with SMTP id c201mr992129ioe.99.1467037774387;
	Mon, 27 Jun 2016 07:29:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.142.151 with HTTP; Mon, 27 Jun 2016 07:29:15 -0700 (PDT)
In-Reply-To: <20160623161806.GE20922@asimov.austin.ibm.com>
References: <20160622164325.GB20922@asimov.austin.ibm.com>
	<CAJTo0Lb9zaufhDTaObFPYJK7ZU-H3bXD7-8y11+eAx=Btiwj4A@mail.gmail.com>
	<CAJTo0LZiTspQ+46fcuMUvaa7uHqodtfG0cTkqXN51gytOr70Gg@mail.gmail.com>
	<20160623161806.GE20922@asimov.austin.ibm.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 27 Jun 2016 15:29:15 +0100
Message-ID: <CAJTo0LaPnJ=4A5qTfLMhU9EQvu21RaAWJgjCTj6275bv81AmLA@mail.gmail.com>
To: Patrick Williams <patrick@stwcx.xyz>
Cc: Yocto Maillist <yocto@yoctoproject.org>,
	Bradley Bishop <bradleyb@fuzziesquirrel.com>
Subject: Re: uninative support on non-x86 platforms
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
X-List-Received-Date: Mon, 27 Jun 2016 14:29:39 -0000
Content-Type: multipart/alternative; boundary=001a1140fab66a308b05364359a8

--001a1140fab66a308b05364359a8
Content-Type: text/plain; charset=UTF-8

On 23 June 2016 at 17:18, Patrick Williams <patrick@stwcx.xyz> wrote:

> Thanks. We will give it a try.  I suspected there might be more to it than
> that
> based on this line:
>
> UNINATIVE_LOADER ?=
> "${STAGING_DIR}-uninative/${BUILD_ARCH}-linux/lib/${@bb.utils.contains('BUILD_ARCH',
> 'x86_64', 'ld-linux-x86-64.so.2', 'ld-linux.so.2', d)}"
>
>
> Which tag should we use to build this for publication?
>
> I was discussing with two of my colleagues and they mentioned that there
> is a free-for-opensource path to get a ppc64le virtual machine:
>     http://osuosl.org/services/powerdev/request_hosting
> Would it be useful for us to set this up to build the uninative
> tarballs?  I don't know what the process is for updating them for the
> x86 builds.
>
> It seems that the current autobuild runs on an x86 machine as well.
> Would there be any interest in a ppc64le slave?
>

For your own use, build a uninative-tarball using whatever commit of OE
you're using currently.

If it actually works and there's sufficient demand then it won't be
difficult to build it and add it to the poky configuration, but the main
requirement for that is that there is someone willing to fix any problems
that appear.

Ross

--001a1140fab66a308b05364359a8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 23 June 2016 at 17:18, Patrick Williams <span dir=3D"ltr">&lt;<a href=3D=
"mailto:patrick@stwcx.xyz" target=3D"_blank">patrick@stwcx.xyz</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><div id=3D":9t6" class=3D"a3s a=
XjCH m1557e0e9fd0625d4">Thanks. We will give it a try.=C2=A0 I suspected th=
ere might be more to it than that<br>
based on this line:<br>
<br>
UNINATIVE_LOADER ?=3D &quot;${STAGING_DIR}-uninative/${BUILD_ARCH}-linux/li=
b/${@bb.utils.contains(&#39;BUILD_ARCH&#39;, &#39;x86_64&#39;, &#39;ld-linu=
x-x86-64.so.2&#39;, &#39;ld-linux.so.2&#39;, d)}&quot;<br>
<br>
<br>
Which tag should we use to build this for publication?<br>
<br>
I was discussing with two of my colleagues and they mentioned that there<br=
>
is a free-for-opensource path to get a ppc64le virtual machine:<br>
=C2=A0 =C2=A0 <a href=3D"http://osuosl.org/services/powerdev/request_hostin=
g" rel=3D"noreferrer" target=3D"_blank">http://osuosl.org/services/powerdev=
/request_hosting</a><br>
Would it be useful for us to set this up to build the uninative<br>
tarballs?=C2=A0 I don&#39;t know what the process is for updating them for =
the<br>
x86 builds.<br>
<br>
It seems that the current autobuild runs on an x86 machine as well.<br>
Would there be any interest in a ppc64le slave?</div></blockquote></div><di=
v class=3D"gmail_extra"><br></div>For your own use, build a uninative-tarba=
ll using whatever commit of OE you&#39;re using currently.</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">If it actually works =
and there&#39;s sufficient demand then it won&#39;t be difficult to build i=
t and add it to the poky configuration, but the main requirement for that i=
s that there is someone willing to fix any problems that appear.</div><div =
class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1140fab66a308b05364359a8--
