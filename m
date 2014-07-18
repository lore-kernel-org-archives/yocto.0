Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 510C5E0043F; Fri, 18 Jul 2014 12:08:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f178.google.com (mail-lb0-f178.google.com
	[209.85.217.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDFEAE00342
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 12:07:57 -0700 (PDT)
Received: by mail-lb0-f178.google.com with SMTP id c11so2339931lbj.9
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 12:07:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=jKwtXFfTx/PR1jRMQlTvL/2w+vgewKX9m3cDuQRc4lQ=;
	b=U9p2uVKtke4YYZaLBBLI5ZwCfK6uSBMpsYskrZnWSMuWDHzSBRY0QWuckSWy6/uZ5H
	LZsAhFEIjaSikdoawFDJ3Nzw4NxQrOOLsTI83b68pomFWvKt6qY8NGXxctkufT+yZmxF
	whFSLYkn5uWJmG3X8Ka+sAeMbgFUY4x1Puco3RfkMtXvnKNXfrRQGvFTrlBxRUfknSGa
	iCPo3H2isdlWfvo1QVjI/WezBiXiD/1qTVecy/ByQPaWK9AHlXR00i43cpoakA6QDunY
	X1g7wh2aKPxnVEfQZHroBHADQojnbVeUwZMAlTRrlsiAq4O9C2DuEKqIEoMoNbkbyddu
	Unfg==
X-Received: by 10.112.198.161 with SMTP id jd1mr7112073lbc.56.1405710476557;
	Fri, 18 Jul 2014 12:07:56 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.63.72 with HTTP; Fri, 18 Jul 2014 12:07:36 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.11.1407181453420.13980@localhost>
References: <53C94ACD.6010800@mlbassoc.com>
	<CABcZAN=B3uNLKrTK4j_G5Ex=9WQw3xHkidhVVR-2E-2oLpOrhw@mail.gmail.com>
	<53C9515F.1040504@mlbassoc.com>
	<alpine.LFD.2.11.1407181439030.24703@localhost>
	<CABcZANm+Nb9OKDHrvjBm-BOyWaKy5pHgZmp33F0fjAmoUQH18Q@mail.gmail.com>
	<alpine.LFD.2.11.1407181453420.13980@localhost>
From: Christopher Larson <clarson@kergoth.com>
Date: Fri, 18 Jul 2014 12:07:36 -0700
X-Google-Sender-Auth: 7MXBjPlRC-XMzWhFuDkmiWtTCgw
Message-ID: <CABcZANm679EQJMGGkLxF1jytdyj1qZSwt6A3tYTm8BLwWSOPQw@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: yocto <yocto@yoctoproject.org>, Gary Thomas <gary@mlbassoc.com>
Subject: Re: Extending images
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
X-List-Received-Date: Fri, 18 Jul 2014 19:08:09 -0000
Content-Type: multipart/alternative; boundary=001a11c34b889cc40804fe7c7927

--001a11c34b889cc40804fe7c7927
Content-Type: text/plain; charset=UTF-8

On Fri, Jul 18, 2014 at 11:55 AM, Robert P. J. Day <rpjday@crashcourse.ca>
wrote:

> On Fri, 18 Jul 2014, Christopher Larson wrote:
>
> > I really don't think this was ever safe, as it completely depended
> > on how the image recipe added its bits to IMAGE_INSTALL, which could
> > easily vary from image to image. I've *always* told folks to use
> > IMAGE_INSTALL_append if anything, even back in oe classic :) --
>
>   a quick grep in openembedded-core/meta shows:
>
> $ grep -r "IMAGE_INSTALL +=" *
> recipes-core/images/core-image-minimal-mtdutils.bb:IMAGE_INSTALL +=
> "mtd-utils"
> recipes-extended/images/core-image-testmaster.bb:IMAGE_INSTALL += "\
> recipes-extended/images/core-image-lsb-sdk.bb:IMAGE_INSTALL +=
> "kernel-dev"
> recipes-graphics/images/core-image-directfb.bb:IMAGE_INSTALL += "\
> recipes-qt/images/qt4e-demo-image.bb:IMAGE_INSTALL += "\
> recipes-rt/images/core-image-rt-sdk.bb:IMAGE_INSTALL += "rt-tests
> hwlatdetect kernel-dev"
> recipes-rt/images/core-image-rt.bb:IMAGE_INSTALL += "rt-tests hwlatdetect"
> recipes-sato/images/core-image-sato-sdk.bb:IMAGE_INSTALL += "kernel-dev"
> recipes-sato/images/core-image-sato.bb:IMAGE_INSTALL +=
> "packagegroup-core-x11-sato-games"
> $
>
>   now i'm scared to look. :-)


This is what they should be doing in most cases. The only time you need
_append is when you're defining it from local.conf, because the behavior of
IMAGE_INSTALL += in local.conf depends on what the recipe is doing (does it
IMAGE_INSTALL = (overrides the user's value), ?= (only uses the user's
value, not its own), or += (adds to an already set value)). This is where
the value lies in providing the user explicit variables with known
semantics, so the user doesn't have to know these peculiarities and can
just set the variable already :)

That said, this is definitely another case of many you've pointed out where
our recipes just aren't as consistent as would be ideal. IMO when a recipe
takes a list variable like this and does just an '=' it's basically saying
"I must have only these things, throw away anything already set", so the
only time it should be set that way is when there's such an explicit need.
Whereas most of the time what they really wanted to say was "I need these
things", in which case += is more appropriate (and I'm not just talking
about IMAGE_INSTALL here, but also variables like RDEPENDS and DEPENDS) :)
But that's just my personal view on the subject.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a11c34b889cc40804fe7c7927
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Fri, Jul 18, 2014 at 11:55 AM, Robert P. J. Day <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcourse=
.ca</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"">On Fri, 18 Jul 2014, Christo=
pher Larson wrote:<br>
<br>
&gt; I really don&#39;t think this was ever safe, as it completely depended=
<br>
&gt; on how the image recipe added its bits to IMAGE_INSTALL, which could<b=
r>
&gt; easily vary from image to image. I&#39;ve *always* told folks to use<b=
r>
&gt; IMAGE_INSTALL_append if anything, even back in oe classic :) --<br>
<br>
</div>=C2=A0 a quick grep in openembedded-core/meta shows:<br>
<br>
$ grep -r &quot;IMAGE_INSTALL +=3D&quot; *<br>
recipes-core/images/core-image-minimal-mtdutils.bb:IMAGE_INSTALL +=3D &quot=
;mtd-utils&quot;<br>
recipes-extended/images/core-image-testmaster.bb:IMAGE_INSTALL +=3D &quot;\=
<br>
recipes-extended/images/core-image-lsb-sdk.bb:IMAGE_INSTALL +=3D &quot;kern=
el-dev&quot;<br>
recipes-graphics/images/core-image-directfb.bb:IMAGE_INSTALL +=3D &quot;\<b=
r>
recipes-qt/images/qt4e-demo-image.bb:IMAGE_INSTALL +=3D &quot;\<br>
recipes-rt/images/core-image-rt-sdk.bb:IMAGE_INSTALL +=3D &quot;rt-tests hw=
latdetect kernel-dev&quot;<br>
recipes-rt/images/core-image-rt.bb:IMAGE_INSTALL +=3D &quot;rt-tests hwlatd=
etect&quot;<br>
recipes-sato/images/core-image-sato-sdk.bb:IMAGE_INSTALL +=3D &quot;kernel-=
dev&quot;<br>
recipes-sato/images/core-image-sato.bb:IMAGE_INSTALL +=3D &quot;packagegrou=
p-core-x11-sato-games&quot;<br>
$<br>
<br>
=C2=A0 now i&#39;m scared to look. :-)</blockquote></div><br></div><div cla=
ss=3D"gmail_extra">This is what they should be doing in most cases. The onl=
y time you need _append is when you&#39;re defining it from local.conf, bec=
ause the behavior of IMAGE_INSTALL +=3D in local.conf depends on what the r=
ecipe is doing (does it IMAGE_INSTALL =3D (overrides the user&#39;s value),=
 ?=3D (only uses the user&#39;s value, not its own), or +=3D (adds to an al=
ready set value)). This is where the value lies in providing the user expli=
cit variables with known semantics, so the user doesn&#39;t have to know th=
ese peculiarities and can just set the variable already :)<br>

<br>That said, this is definitely another case of many you&#39;ve pointed o=
ut where our recipes just aren&#39;t as consistent as would be ideal. IMO w=
hen a recipe takes a list variable like this and does just an &#39;=3D&#39;=
 it&#39;s basically saying &quot;I must have only these things, throw away =
anything already set&quot;, so the only time it should be set that way is w=
hen there&#39;s such an explicit need. Whereas most of the time what they r=
eally wanted to say was &quot;I need these things&quot;, in which case +=3D=
 is more appropriate (and I&#39;m not just talking about IMAGE_INSTALL here=
, but also variables like RDEPENDS and DEPENDS) :) But that&#39;s just my p=
ersonal view on the subject.<br>

-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBak=
e, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engine=
er, Mentor Graphics
</div></div>

--001a11c34b889cc40804fe7c7927--
