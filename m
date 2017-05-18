Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6AE4E00B28; Thu, 18 May 2017 05:57:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.182 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f182.google.com (mail-yb0-f182.google.com
	[209.85.213.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CE07E00AE4
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 05:56:57 -0700 (PDT)
Received: by mail-yb0-f182.google.com with SMTP id 187so3890982ybg.0
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 05:56:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Sv3g5RjTiFk1mNJws8KqfVtTLZcGdcixxSLmu6XcE5Y=;
	b=L+RxxWRZk9djAITBjVGJqNjStflx2Ty7E4ZiJS7R/+0yqkVLPAfGCCmnIyUgX0rgnr
	Io9ZwyZ1cSbI6Mn54BqCsTw7Z2Lk5g4rv/OJaLWSvufWhrxDTS0jb2Jm3U2WfWR7U1Fo
	K3oG4JAc/icrpAo+fDT/9XsRNNA+UyRp9bd6/6DzVs5rpPMADo6ipu9B4AeGwOzhyBKe
	W73vCJiEeRyvxP9U4OMdctxdH9XfzCi146BI8K6qK6SIzq1gcti2mXGWxvrucZnwq5Ab
	xQls5YyA0S5M9jg6PJr8M8Hqb1XD/HwpPdSk6oKmShIOWtB9SYiBFW8Nzd+8EwJJRwwb
	lvFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Sv3g5RjTiFk1mNJws8KqfVtTLZcGdcixxSLmu6XcE5Y=;
	b=dBGVHGDuvNu0zCfZme4qVhYnOR+ov9zRPRFqzLYshKQ4TTBAHNzPDnthE7FhN+FUjC
	+1F443pDQ8+qsCxRNvWv+KNmpTkpelGivpU6+kK9OlhZaYizezvo71ds7ttwaxfCRyx9
	8TtYzj5OnyuYPIVY+WAK1+i9dK2b3fDMzyq/69zswUA8lA2zlAQWatzfbA/cB8/AvW3p
	VxBK+Pf0BLPNB2u7/6S5Jlnn2A43/h+/8M6/1tvT5GLFKOqRNbS8XWMPLET96H7GA9Qq
	q7aJC+JoP4WjmTqam1YsWexyA9W9CCpH7UC5di0aKpfZR385DSf8Ty6OUVhofPkbkEei
	O/cw==
X-Gm-Message-State: AODbwcAdNs1LxuroDQrtwGB1PFAIyN8ybYncLM/7yO6pYOpLPKJtvDkM
	cLs5rt0+Sj4RdmUPbAR7ynDAEUbqdec8
X-Received: by 10.37.164.200 with SMTP id g66mr3234007ybi.147.1495112217075;
	Thu, 18 May 2017 05:56:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.13.194.134 with HTTP; Thu, 18 May 2017 05:56:26 -0700 (PDT)
In-Reply-To: <1879655844.551173.1495108954174@mail.yahoo.com>
References: <853904707.1405328.1495010277595.ref@mail.yahoo.com>
	<853904707.1405328.1495010277595@mail.yahoo.com>
	<1495091834.12055.46.camel@collabora.co.uk>
	<1879655844.551173.1495108954174@mail.yahoo.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Thu, 18 May 2017 15:56:26 +0300
Message-ID: <CAHiDW_GqdDhiHPTBR0HnAhKOko8syHvjCDAxrPgzJrg7a3EPrA@mail.gmail.com>
To: Abayiz <abayiz@yahoo.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Install Torch7
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
X-List-Received-Date: Thu, 18 May 2017 12:57:01 -0000
Content-Type: multipart/alternative; boundary="94eb2c13ad1e996ebe054fcbf0b1"

--94eb2c13ad1e996ebe054fcbf0b1
Content-Type: text/plain; charset="UTF-8"

On 18 May 2017 at 15:02, Abayiz <abayiz@yahoo.com> wrote:
> No, I didn't try 'devtool edit-recipe torch' to add dependencies.
Actually I didn't know how to add them. Is there any way to directly call
that .sh file there??

That shell script is very specific to a handful of distros. It will only
help you as a reference.

For the cache variables even the shell script wouldn't help: the project
just won't cross-compile on any distro unless you set those by hand.
I assume something like this in the recipe should help:
    EXTRA_OECMAKE = "-D<variable>=<value>  -D<another_variable>=<value>"
Experiment with one of the variables and see if you can make one of the
errors go away.

After that you will have to ensure each dependency is available at
build/run time as needed: Some of them will just require you to set DEPENDS
or RDEPENDS correctly, some may require you to write a recipe for the
dependency first.

> Could you give me a minimal example to illustrate it?

The documentation is extensive, I suggest you read the 5.3 section of the
dev-manual, especially 5.3.10. Dependencies:
http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#new-dependencies
and get back with specific questions if that doesn't help.

Based on a quick look I'd expect Torch to be quite tricky to package, be
prepared for new problems on the way.

Jussi

--94eb2c13ad1e996ebe054fcbf0b1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 18 May 2017 at 15:02, Abayiz &lt;<a href=3D"mailto:abay=
iz@yahoo.com">abayiz@yahoo.com</a>&gt; wrote:<br>&gt; No, I didn&#39;t try =
&#39;devtool edit-recipe torch&#39; to add dependencies. Actually I didn&#3=
9;t know how to add them. Is there any way to directly call that .sh file t=
here??<br><br>That shell script is very specific to a handful of distros. I=
t will only help you as a reference.<br><br>For the cache variables even th=
e shell script wouldn&#39;t help: the project just won&#39;t cross-compile =
on any distro unless you set those by hand.<br>I assume something like this=
 in the recipe should help:<br><div>=C2=A0 =C2=A0 EXTRA_OECMAKE =3D &quot;-=
D&lt;variable&gt;=3D&lt;value&gt; =C2=A0-D&lt;another_variable&gt;=3D&lt;va=
lue&gt;&quot;<br>Experiment with one of the variables and see if you can ma=
ke one of the errors go away.<br><br>After that you will have to ensure eac=
h dependency is available at build/run time as needed: Some of them will ju=
st require you to set DEPENDS or RDEPENDS correctly, some may require you t=
o write a recipe for the dependency first.<br><br>&gt; Could you give me a =
minimal example to illustrate it?<br><br>The documentation is extensive, I =
suggest you read the 5.3 section of the dev-manual, especially 5.3.10. Depe=
ndencies:=C2=A0<br><a href=3D"http://www.yoctoproject.org/docs/current/dev-=
manual/dev-manual.html#new-dependencies">http://www.yoctoproject.org/docs/c=
urrent/dev-manual/dev-manual.html#new-dependencies</a> and get back with sp=
ecific questions if that doesn&#39;t help.<br><br>Based on a quick look I&#=
39;d expect Torch to be quite tricky to package, be prepared for new proble=
ms on the way.<br><br>Jussi</div><div><br></div></div>

--94eb2c13ad1e996ebe054fcbf0b1--
