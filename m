Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10BE3E00B20; Wed, 12 Apr 2017 00:14:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f173.google.com (mail-yw0-f173.google.com
	[209.85.161.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F946E00AD5
	for <yocto@yoctoproject.org>; Wed, 12 Apr 2017 00:14:31 -0700 (PDT)
Received: by mail-yw0-f173.google.com with SMTP id l189so8206030ywb.0
	for <yocto@yoctoproject.org>; Wed, 12 Apr 2017 00:14:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ihaZzC+/I+py4JvPY1fLYQOUQ4lWvwcv6IZbX74M2+I=;
	b=uO9rWmNGH2goQfteF4w7+vwwPc2trocn7SyX1hkbOoBZp4zv/Q2z9JXcYGbxTO7mD4
	UDyiTx1rnU3ffDNOdlrWFtJ0leLS5VXhIiBMmGYK+rqmnTP/UCc73+xK+OS58HCuU82B
	I2wsDdpoleeirg1epNEPeV/HfjO/FqrnHXnXWZxzL+8h0t9PTGCzpZhjp6so3lELgrHx
	Zu6O/AQoLrUnn2RRfOR/Z0RoLkMOR0m7LqVFY2ip46Ra9OpoBUhzplLKnvV+7mIXTeEr
	L3BBE5B5ugLCt2iGqdTnKlJUKzoXOIDAvs0acw6vdJF7/wSa8acTgWLrJIglqoSPa2R8
	xAuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ihaZzC+/I+py4JvPY1fLYQOUQ4lWvwcv6IZbX74M2+I=;
	b=orc+z2225kQEpmSh+CTWA0eUAa/o8yEOVbH7xzzo9oJ/ZreOCMK0ppuZwdUdqyNKGv
	fn3r5umBiDySX6JqOJonFxkudc7ab/dO1ZyMfCFMgWidEG85wP2gWcEbStV/Qt0Fp28T
	a/n2GdnqQXuE65V/KUSRbu5nEtXWgbbqsKHBkqkutfVJYW6+r3WmjR3JPflps12GrM5v
	rIiIab4daqxNyHLJ4J8+CEVKf2Oq8qgFD+ktnGCqFNchaSh7LPeCjJM6+C5fjAGBKmU8
	3FqddBKZd7NuKrKDgj55HeGzvmshNcKT4KkmHmHhSpnm1UiGzje6cxMP9sbe7PovYG93
	M3lA==
X-Gm-Message-State: AFeK/H3xZt7jQmS+3We/bnMIEOk6LemmKUUj8TW0bUODJcCMHHKXsbMwWXPTQVXZwgReMw5S4BTHaxAXbdE1vvrA
X-Received: by 10.129.197.74 with SMTP id o10mr42211826ywj.183.1491981270649; 
	Wed, 12 Apr 2017 00:14:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.129.121.75 with HTTP; Wed, 12 Apr 2017 00:14:00 -0700 (PDT)
In-Reply-To: <ba1a6361-3fd4-63f7-3752-63c75dff1347@xevo.com>
References: <ba1a6361-3fd4-63f7-3752-63c75dff1347@xevo.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Wed, 12 Apr 2017 10:14:00 +0300
Message-ID: <CAHiDW_FKOO2kGXxLs3NiB3yPmGh2OE1xec0Fdgnt2JuVmBvN_Q@mail.gmail.com>
To: Martin Kelly <mkelly@xevo.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Relicensing an Apache-licensed recipe as MIT
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
X-List-Received-Date: Wed, 12 Apr 2017 07:14:33 -0000
Content-Type: multipart/alternative; boundary=94eb2c1a54faa62473054cf2f53a

--94eb2c1a54faa62473054cf2f53a
Content-Type: text/plain; charset=UTF-8

On 11 April 2017 at 23:52, Martin Kelly <mkelly@xevo.com> wrote:

> Hi,
>
> I'm thinking about integrating the open-vm-tools recipe from openswitch[1]
> into openembedded (it massively improves the performance of VMWare guests)
> but first I have a question about licensing. The openswitch repository is
> Apache-licensed while the openembedded layers are all MIT licensed. I'm not
> a lawyer, but my understanding is that the Apache license is a superset of
> the MIT license (it includes a patent clause that the MIT license lacks),
> and therefore MIT code can be relicensed as Apache but not the other way
> around.
>

The license of the layer refers to the licensing of the recipe files
themselves: the source code licenses of the projects the recipes fetch and
build are another thing. As long as the source code license is an open
source one there should be no complaints about integrating into an
openembedded layer.

To be completely clear: The LICENSE variable in a recipe refers to the
source code license of the project to be built and should be set based on
the licensing info found within the version of source code that we fetch
and build. The recipe files are licensed according to the LICENSE and/or
COPYING files of the layer it is in.

By the way, a quick search on layers.openembedded.org reveals this:
http://git.openswitch.net/cgit/openswitch/ops-build/tree/yocto/openswitch/meta-foss-openswitch/recipes-extended/open-vm-tools/open-vm-tools_10.0.5.bb
(it seems to think the correct license is GPL).

   Jussi

--94eb2c1a54faa62473054cf2f53a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 1=
1 April 2017 at 23:52, Martin Kelly <span dir=3D"ltr">&lt;<a href=3D"mailto=
:mkelly@xevo.com" target=3D"_blank">mkelly@xevo.com</a>&gt;</span> wrote:<b=
r><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
I&#39;m thinking about integrating the open-vm-tools recipe from openswitch=
[1] into openembedded (it massively improves the performance of VMWare gues=
ts) but first I have a question about licensing. The openswitch repository =
is Apache-licensed while the openembedded layers are all MIT licensed. I&#3=
9;m not a lawyer, but my understanding is that the Apache license is a supe=
rset of the MIT license (it includes a patent clause that the MIT license l=
acks), and therefore MIT code can be relicensed as Apache but not the other=
 way around.<br></blockquote><div><br></div><div>The license of the layer r=
efers to the licensing of the recipe files themselves: the source code lice=
nses of the projects the recipes fetch and build are another thing. As long=
 as the source code license is an open source one there should be no compla=
ints about integrating into an openembedded layer.<br></div><div><br></div>=
<div>To be completely clear: The LICENSE variable in a recipe refers to the=
 source code license of the project to be built and should be set based on =
the licensing info found within the version of source code that we fetch an=
d build. The recipe files are licensed according to the LICENSE and/or COPY=
ING files of the layer it is in.</div><div><br></div><div>By the way, a qui=
ck search on <a href=3D"http://layers.openembedded.org">layers.openembedded=
.org</a> reveals this: <a href=3D"http://git.openswitch.net/cgit/openswitch=
/ops-build/tree/yocto/openswitch/meta-foss-openswitch/recipes-extended/open=
-vm-tools/open-vm-tools_10.0.5.bb">http://git.openswitch.net/cgit/openswitc=
h/ops-build/tree/yocto/openswitch/meta-foss-openswitch/recipes-extended/ope=
n-vm-tools/open-vm-tools_10.0.5.bb</a> (it seems to think the correct licen=
se is GPL).</div><div><br></div><div>=C2=A0 =C2=A0Jussi<br></div><div><br><=
/div><div><br></div></div></div></div>

--94eb2c1a54faa62473054cf2f53a--
