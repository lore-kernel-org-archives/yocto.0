Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C95DCE01374
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 13:51:51 -0700 (PDT)
Received: by ggcs6 with SMTP id s6so5373380ggc.35
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 13:51:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=8TaIWsh7g+pvo78ZfSddZJDdJSYhM4TZvyB2UrAGDJI=;
	b=Fd8OILjDbomXLuhQI5YNfeJjnhSVs8Pi9akdiyDrvPfogP3vxRVIjA9mV7YPORx36n
	IM8J3VYJuNyN/2V+4H7n68qzNX0pFgFn3x0Df6lRf+kzsjP1/vZilgyfU+LyLrv4PrCr
	wr6Pl/jLbCRuo3h1zOsKZ/gPs2wcK8DmjuvIoQ2P5wc6ycWL+AxBnRL/87dK2+wlAv2I
	jSw0d2xK186+x112GqFJwHGGGXpLKdpFuCKlXZv59jXc0f3caH0CSMj5x7seea+jUbvX
	N4NfQKKHgv77+ZEn6YAnjxSww5rQCCIJBcBUTmH/RGqyvKHHfOKbTjZr3D0CVORJzMKr
	L0Qw==
MIME-Version: 1.0
Received: by 10.68.203.65 with SMTP id ko1mr56558880pbc.3.1332795109945; Mon,
	26 Mar 2012 13:51:49 -0700 (PDT)
Sender: rstreif@linuxfoundation.org
Received: by 10.143.29.18 with HTTP; Mon, 26 Mar 2012 13:51:49 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1203260747350.4275@oneiric>
References: <alpine.DEB.2.02.1203260747350.4275@oneiric>
Date: Mon, 26 Mar 2012 13:51:49 -0700
X-Google-Sender-Auth: rFmhnefwt0UgKDRHv_IzY3hNfA8
Message-ID: <CA+gsK-qBgcKDtQCQJVhUBKijKok7tQeXM4O5ZJUTea0iMKwvfQ@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQnuerjXINvuS/63uamXuz8nC4xoIWuxrHDWcp8Y5a1LhX7M44XmusAAhI9WUPAKS9Jnnvsy
Subject: Re: can all of the licensing discussion be centralized in an appendix?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 26 Mar 2012 20:51:52 -0000
Content-Type: multipart/alternative; boundary=047d7b10cb1116307004bc2b8b19

--047d7b10cb1116307004bc2b8b19
Content-Type: text/plain; charset=ISO-8859-1

>
> >> there's *way* too much coverage of licensing sprinkled throughout.
> >> most people are not going to care about licensing until the time comes
> >> to maybe start distributing their BSP.
>
> The ability of collecting licensing information, tracking license changes
and providing the license information automatically with the images and
packages for deployment is in my opinion a major feature of Yocto albeit
underestimated. Most people will only appreciate it once they have to
deliver that information with a product for the end user. However, it
starts much earlier, with the recipe.

How to include licensing tracking information with your recipe needs to be
part of the section explaining how to write recipes of the reference
manual. In both, the current 1.1 and the upcoming 1.1.1, versions of the
manual the license tracking section is a little disjoint from the sections
explaining how to add packages/recipes in my opinion. The examples include
the license tracking info, of course because otherwise the sanity checker
will not allow building the recipe, but they don't explain that you
actually need it (unless you use LICENSE = "CLOSED").

Since the license tracking and deployment feature follows the rule "garbage
in, garbage out" the manual cannot stress enough providing the correct info
in particular when writing recipes for upstream projects.

Side note: And nice features for a future release are SPDX info (already
worked on as far as I know) and providing the license info in
${TMPDIR}/deploy/licenses according to the images in ${TMPDIR}/images so
that one knows what licenses are in use for what image. That would be very
convenient when building multiple images with different package content.

Rudi

--047d7b10cb1116307004bc2b8b19
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">&gt;&gt; there&#3=
9;s *way* too much coverage of licensing sprinkled throughout.<br>&gt;&gt; =
most people are not going to care about licensing until the time comes<br>
&gt;&gt; to maybe start distributing their BSP.<br><br></blockquote><div>Th=
e ability of collecting licensing information, tracking license changes and=
 providing the license information automatically with the images and packag=
es for deployment is in my opinion a major feature of Yocto albeit underest=
imated. Most people will only appreciate it once they have to deliver that =
information with a product for the end user. However, it starts much earlie=
r, with the recipe.</div>
<div><br></div><div>How to include licensing tracking information with your=
 recipe needs to be part of the section explaining how to write recipes of =
the reference manual. In both, the current 1.1 and the upcoming 1.1.1, vers=
ions of the manual the license tracking section is a little disjoint from t=
he sections explaining how to add packages/recipes in my opinion. The examp=
les include the license tracking info, of course because otherwise the sani=
ty checker will not allow building the recipe, but they don&#39;t explain t=
hat you actually need it (unless you use LICENSE =3D &quot;CLOSED&quot;).</=
div>
<div><br></div><div>Since the license tracking and deployment feature follo=
ws the rule &quot;garbage in, garbage out&quot; the manual cannot stress en=
ough providing the correct info in particular when writing recipes for upst=
ream projects.</div>
<div><br></div><div>Side note: And nice features for a future release are S=
PDX info (already worked on as far as I know) and providing the license inf=
o in ${TMPDIR}/deploy/licenses according to the images in ${TMPDIR}/images =
so that one knows what licenses are in use for what image. That would be ve=
ry convenient when building multiple images with different package content.=
</div>
<div><br></div><div>Rudi</div></div>

--047d7b10cb1116307004bc2b8b19--
