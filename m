Return-Path: <lefevre.da@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5132EE00D89; Tue, 24 Sep 2019 23:14:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (lefevre.da[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.169 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
	[209.85.160.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A00D1E00D68
	for <yocto@yoctoproject.org>; Tue, 24 Sep 2019 23:14:08 -0700 (PDT)
Received: by mail-qt1-f169.google.com with SMTP id u40so5184484qth.11
	for <yocto@yoctoproject.org>; Tue, 24 Sep 2019 23:14:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=WeYf8Z4KGIMt0/f5Lz7UtWRx0Xfs6o0ipTonHq6Ao4g=;
	b=ZlejT1HcIobfNwUH5JtOiIOt+JhqFabcT0Sz0lD60M5ML/A0winlmdNdMt+Z2job6j
	AzeJit4zd12b5Eiuds8oD16nZ41lAqPqC3e61v1O6PeAcL4YVAqEEVFQZ6BVI92N8sHG
	lGvsaCqRStYeqNXdJMhAbyvFQQPQgDOerMr69WcQQjy5TilSI2FFberX/CwT8N2Kc++/
	7sfP9oin/eNIvzH1/5Aagjpj9W6tQ8oYqK4bBMAUVMnLfrZ+Z8ReUFcQ8NnOIiyukvaw
	3IdikzFDd9OV/AXNCZs1SJMudWP+tom8tzOTpdNjpJSkjGTnVuA7aLflf+zAn7G1AfIG
	0NLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=WeYf8Z4KGIMt0/f5Lz7UtWRx0Xfs6o0ipTonHq6Ao4g=;
	b=Wm+/K8bupCo0y9xnDF1G0tq/5tDnaPYaMdsZZ87C1qyzoJLmHFf6pcgUAyvFSCtZW/
	YrDpSGPOFHQfBJj+4plIq18CJiE9Salt/T4SgImJFWCS7XVwPZwA9W48VIoSpcKWcR1b
	yQFurM/ovwAvrkKbgaPYKdmN+xXwyGKrLT/UuoJBX8pH4TVbbVWRGDxmxkBBdIa400Fd
	mHHjXG+uRrNG9YKZtYpiOQL08e8x50Is2d2oB4YLKU8Ij4i242j39hbslau87v06IJo2
	cYd0Mz1FsDhqp5mQ44qXtWdNqp2wDOYzdxMoAzi+88vOwxWd74qXDLqwWNAsyyylRbNF
	OlIw==
X-Gm-Message-State: APjAAAWU45aQZQADBBbQLDPI109quvPYIb6kW69VCSECJkHirLI6KWAQ
	qoTwS0tEdCS9X80GJa+BFMh0crKZb49Na30K7Q==
X-Google-Smtp-Source: APXvYqw2WI421xLMphC1nYG3zbG2LpSO81o+8ZRnNNRX65xVRbtzXNauNzVyhG9Jl4YSJflD3KZilgo1XcK2s1wRdaQ=
X-Received: by 2002:ac8:73c7:: with SMTP id v7mr7163924qtp.106.1569392047736; 
	Tue, 24 Sep 2019 23:14:07 -0700 (PDT)
MIME-Version: 1.0
From: Damien LEFEVRE <lefevre.da@gmail.com>
Date: Wed, 25 Sep 2019 09:13:56 +0300
Message-ID: <CA+FhBv-74abWOFa-99ad_o5J35_az46AUbYuLpESmCUjdyU12g@mail.gmail.com>
To: Ross Burton <ross.burton@intel.com>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Nothing PROVIDES 'python3-dev'
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
X-List-Received-Date: Wed, 25 Sep 2019 06:14:09 -0000
Content-Type: multipart/alternative; boundary="00000000000084cb0f05935a8f9b"

--00000000000084cb0f05935a8f9b
Content-Type: text/plain; charset="UTF-8"

> On 24/09/2019 10:36, Damien LEFEVRE wrote:
> > Hi,
> >
> > Migrating from poky:pyro to poky:warrior.
> >
> > It looks like the python3-dev package is generated from
> > python3-manifest.json:
> >
> >  ? ? "dev": {
> >  ? ? ? ? "cached": [],
> >  ? ? ? ? "files": [
> >  ? ? ? ? ? ? "${base_libdir}/*.a",
> >  ? ? ? ? ? ? "${base_libdir}/*.o",
> >  ? ? ? ? ? ? "${bindir}/python*-config",
> >  ? ? ? ? ? ? "${datadir}/aclocal",
> >  ? ? ? ? ? ? "${datadir}/pkgconfig",
> >  ? ? ? ? ? ? "${includedir}",
> >  ? ? ? ? ? ? "${libdir}/*.a",
> >  ? ? ? ? ? ? "${libdir}/*.la",
> >  ? ? ? ? ? ? "${libdir}/*.o",
> >  ? ? ? ? ? ? "${libdir}/lib*${SOLIBSDEV}",
> >  ? ? ? ? ? ? "${libdir}/pkgconfig"
> >  ? ? ? ? ],
> >  ? ? ? ? "rdepends": [
> >  ? ? ? ? ? ? "core"
> >  ? ? ? ? ],
> >  ? ? ? ? "summary": "Python development package"
> >  ? ? },
> >
> > and this is used in python3_3.7.2.bb <http://python3_3.7.2.bb>.
> >
> > Still I get this error: Nothing PROVIDES 'python3-dev'
>
> Are you trying to 'bitbake python3-dev'?  You bitbake a recipe, not a
> package, so 'bitbake python3'.
>
> Ross

Hi Ross,

The issue is with the python3 recipe. It declares RDEPENDS_python3-dev, not
DEPENDS_python3-dev.

I'm using the Python C API. So I need headers and so lib files at build
time but only so lib at runtime.

I can add python3-dev to my recipe's RDEPENDS list, but bitbake rightfully
complains about installing -dev files to the image.

I'll check today how to fix that.

-Damien

--00000000000084cb0f05935a8f9b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&gt; On 24/09/2019 10:36, Damien LEFEVRE wrote:<br>&gt; &g=
t; Hi,<br>&gt; &gt;=C2=A0<br>&gt; &gt; Migrating from poky:pyro to poky:war=
rior.<br>&gt; &gt;=C2=A0<br>&gt; &gt; It looks like the python3-dev package=
 is generated from=C2=A0<br>&gt; &gt; python3-manifest.json:<br>&gt; &gt;=
=C2=A0<br>&gt; &gt;=C2=A0 ? ? &quot;dev&quot;: {<br>&gt; &gt;=C2=A0 ? ? ? ?=
 &quot;cached&quot;: [],<br>&gt; &gt;=C2=A0 ? ? ? ? &quot;files&quot;: [<br=
>&gt; &gt;=C2=A0 ? ? ? ? ? ? &quot;${base_libdir}/*.a&quot;,<br>&gt; &gt;=
=C2=A0 ? ? ? ? ? ? &quot;${base_libdir}/*.o&quot;,<br>&gt; &gt;=C2=A0 ? ? ?=
 ? ? ? &quot;${bindir}/python*-config&quot;,<br>&gt; &gt;=C2=A0 ? ? ? ? ? ?=
 &quot;${datadir}/aclocal&quot;,<br>&gt; &gt;=C2=A0 ? ? ? ? ? ? &quot;${dat=
adir}/pkgconfig&quot;,<br>&gt; &gt;=C2=A0 ? ? ? ? ? ? &quot;${includedir}&q=
uot;,<br>&gt; &gt;=C2=A0 ? ? ? ? ? ? &quot;${libdir}/*.a&quot;,<br>&gt; &gt=
;=C2=A0 ? ? ? ? ? ? &quot;${libdir}/*.la&quot;,<br>&gt; &gt;=C2=A0 ? ? ? ? =
? ? &quot;${libdir}/*.o&quot;,<br>&gt; &gt;=C2=A0 ? ? ? ? ? ? &quot;${libdi=
r}/lib*${SOLIBSDEV}&quot;,<br>&gt; &gt;=C2=A0 ? ? ? ? ? ? &quot;${libdir}/p=
kgconfig&quot;<br>&gt; &gt;=C2=A0 ? ? ? ? ],<br>&gt; &gt;=C2=A0 ? ? ? ? &qu=
ot;rdepends&quot;: [<br>&gt; &gt;=C2=A0 ? ? ? ? ? ? &quot;core&quot;<br>&gt=
; &gt;=C2=A0 ? ? ? ? ],<br>&gt; &gt;=C2=A0 ? ? ? ? &quot;summary&quot;: &qu=
ot;Python development package&quot;<br>&gt; &gt;=C2=A0 ? ? },<br>&gt; &gt;=
=C2=A0<br>&gt; &gt; and this is used in=C2=A0<a href=3D"http://python3_3.7.=
2.bb/" rel=3D"noreferrer" target=3D"_blank">python3_3.7.2.bb</a>=C2=A0&lt;<=
a href=3D"http://python3_3.7.2.bb/" rel=3D"noreferrer" target=3D"_blank">ht=
tp://python3_3.7.2.bb</a>&gt;.<br>&gt; &gt;=C2=A0<br>&gt; &gt; Still I get =
this error: Nothing PROVIDES &#39;python3-dev&#39;<br>&gt;=C2=A0<br>&gt; Ar=
e you trying to &#39;bitbake python3-dev&#39;?=C2=A0 You bitbake a recipe, =
not a=C2=A0<br>&gt; package, so &#39;bitbake python3&#39;.<br>&gt;=C2=A0<br=
>&gt; Ross<br><div><br></div><div>Hi Ross,</div><div><br></div><div>The iss=
ue is with the python3 recipe. It declares RDEPENDS_python3-dev, not DEPEND=
S_python3-dev.</div><div><br></div><div>I&#39;m using the Python C API. So =
I need headers and so lib files at build time but only so lib at runtime.=
=C2=A0</div><div><br></div><div>I can add python3-dev to my recipe&#39;s RD=
EPENDS list, but bitbake rightfully complains about installing -dev files t=
o the image.</div><div><br></div><div>I&#39;ll check today how to fix that.=
</div><div><br></div><div>-Damien</div></div>

--00000000000084cb0f05935a8f9b--
