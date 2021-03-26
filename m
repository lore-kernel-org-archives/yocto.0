Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.12608.1616766158832425859
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Mar 2021 06:42:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@aruba.it header.s=a1 header.b=becF/B33;
 spf=none, err=permanent DNS error (domain: faresoftware.it, ip: 198.145.29.25, mailfrom: mauro@faresoftware.it)
Received: from smtpcmd11117.aruba.it (smtpcmd11117.aruba.it [62.149.156.117])
	by mail.yoctoproject.org (Postfix) with ESMTP id 370C338C06E6
	for <yocto@yoctoproject.org>; Fri, 26 Mar 2021 13:42:37 +0000 (UTC)
Received: from p50 ([213.213.6.58])
	by Aruba Outgoing Smtp  with ESMTPSA
	id PmjSl0gYskeOqPmjSlaGmn; Fri, 26 Mar 2021 14:42:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aruba.it; s=a1;
	t=1616766155; bh=hYdBUKWm3PGsuDfIbEhTlOcgQYYfFTQoMMfM7tbzf8c=;
	h=Date:From:To:Subject:MIME-Version:Content-Type;
	b=becF/B33XucaQkVqf15F0yrOnSkHox/p3wJlSRL29r+nhwVqgCsXWLWYrPPOexPyl
	 4j18jargc/4N9Iy2McK55OxucnxboqjHQtNC+aDKJKjIy++bwRIn6heCp3TMIr2L7s
	 3NNCZL4HV9OGL/K2Z6aGDLzoTP9uR+lUD5VFl8KR5cT+QGGiCkNHSHgb51BEap7Sf7
	 sP9KU0qCWxbsEuOrRAmajTx9qfXdAAnLOveT11iOJzTsADP99L0e6R0w43zTh0ajss
	 NWXL8wvmDpCvTVt4LfruOImswXMfUHQKvAeT8sXaoSYokbqXZf1CRd1cJflaZbashU
	 QNLYvajawHVpg==
Date: Fri, 26 Mar 2021 14:42:34 +0100
From: "Mauro Ziliani" <mauro@faresoftware.it>
To: Khem Raj <raj.khem@gmail.com>
Cc: "=?utf-8?Q?yocto=40yoctoproject.org?=" <yocto@yoctoproject.org>
Message-ID: <3B4105AB-4627-4A78-BFEC-D37451DE317E@getmailspring.com>
In-Reply-To: <9ac096ac-77fc-699d-3458-4dd3e9af0925@gmail.com>
References: <9ac096ac-77fc-699d-3458-4dd3e9af0925@gmail.com>
Subject: Re: [yocto] Howto read bitbake -g files?
X-Mailer: Mailspring
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfO1LPczcRL1hqn5+ZSIwKyzb+id4JMUlb4uw8hqrgTMu8ogntg9PkGkX/PCif0QxzHZQ2ej2YNwB9t626QUkqPyy9Q/fTUvdEINOqn50Xx8ZFc8eq8XQ
 Qa4u5UmE4RTH0a7OXSdLcKsoPIcf8rYGVF9XvakxPYO2x/4/7vCQuCqG5KdzQSxosxZv3Ygb1vBmUg==
Content-Type: multipart/alternative; boundary="605de4ca_ee15fdf_e03"

--605de4ca_ee15fdf_e03
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Thank you for the answer.
I analyze the problem.

opencv_3.1.bb installs many debug packages by PACKAGES variable
Removing unneeded packages for PACKAGES every *-dev packages disappears from production image.
MZ
On mar 25 2021, at 7:34 pm, Khem Raj <raj.khem@gmail.com> wrote:
>
>
> On 3/25/21 3:37 AM, Mauro Ziliani wrote:
> > An example about my question
> >
> > Inside package-depends.dot I see this
> >
> > "opencv-dev" [label="opencv-dev(opencv)
> > :3.1+gitAUTOINC+92387b1ef8-r0\n/Sources/softfx/krogoth/sources/meta-openembedded/meta-oe/recipes-support/opencv/opencv_3.1.bb"]
> >
> > I need to remote opencv-dev from final image.
> >
> > In pn-depends.dot I see
> >
> > "opencv" -> "opencv-dev" [style=dashed]
>
> this should only happen if opencv-dev has a .so which is not a symlink
> and there is a program in opencv package which depends on it. Can you
> expand the content of opencv-dev and see whats in there ?
> secondly you can also look at content of opencv package and readelf -d
> over the binaries in it and see if some binary is dependent on .so from
> -dev package.
>
> you can do this inside opencv build tree under packages-split/ area.
> of a built tree.
>
> >
> > I understand that
> > opencv generates opencv-dev from the recipe opencv_3.1.bb
> >
> >
> >
> > Sent from Mailspring <https://getmailspring.com/>, the best free email
> > app for work
> > On mar 25 2021, at 8:39 am, Mauro Ziliani <mauro@faresoftware.it> wrote:
> >
> > Hi all
> >
> > I have to look for the recipes put in my image the *-dev packages.
> >
> > I removed dev-pkgs and dng-pkgs from IMAGE_FEATURES and debug tweaks
> > from DISTRO_FEATURES.
> > I don't IMAGE_INSTALL_append any *-dev packages
> >
> > I generate bitbake -g image, but I don't produce the PDF because is
> > unreadable.
> >
> > So I read the dot source. I use dot and I know the syntax.
> >
> > But I don't how to read the graph.
> >
> >
> > MZ
> >
> >
> >
> >
> > Sent from Mailspring <https://getmailspring.com/>, the best free
> > email app for work
> >
> >
> >
> > 
> >
>


--605de4ca_ee15fdf_e03
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<div>Thank you for the answer.</div><div>I analyze the problem.</div><br><d=
iv>opencv_3.1.bb installs many debug packages by PACKAGES variable</div><br=
><div>Removing unneeded packages for PACKAGES every *-dev&nbsp; packages di=
sappears from production image.</div><br><div>MZ</div><br><div class=3D"gma=
il_quote_attribution">On mar 25 2021, at 7:34 pm, Khem Raj &lt;raj.khem@gma=
il.com&gt; wrote:</div><blockquote><div><br><br><div>On 3/25/21 3:37 AM, Ma=
uro Ziliani wrote:</div><div>&gt; An example about my question</div><div>&g=
t;</div><div>&gt; Inside package-depends.dot I see this</div><div>&gt;</div=
><div>&gt; "opencv-dev" [label=3D"opencv-dev(opencv)</div><div>&gt; :3.1+gi=
tAUTOINC+92387b1ef8-r0\n/Sources/softfx/krogoth/sources/meta-openembedded/m=
eta-oe/recipes-support/opencv/opencv_3.1.bb"]</div><div>&gt;</div><div>&gt;=
 I need to remote opencv-dev from final image.</div><div>&gt;</div><div>&gt=
; In pn-depends.dot I see</div><div>&gt;</div><div>&gt; "opencv" -&gt; "ope=
ncv-dev" [style=3Ddashed]</div><br><div>this should only happen if opencv-d=
ev has a .so which is not a symlink</div><div>and there is a program in ope=
ncv package which depends on it. Can you</div><div>expand the content of op=
encv-dev and see whats in there ?</div><div>secondly you can also look at c=
ontent of opencv package and readelf -d</div><div>over the binaries in it a=
nd see if some binary is dependent on .so from</div><div>-dev package.</div=
><br><div>you can do this inside opencv build tree under packages-split/ ar=
ea.</div><div>of a built tree.</div><br><div>&gt;</div><div>&gt; I understa=
nd that</div><div>&gt; opencv generates opencv-dev from the recipe opencv_3=
.1.bb</div><div>&gt;</div><div>&gt;</div><div>&gt;</div><div>&gt; Sent from=
 Mailspring &lt;https://getmailspring.com/&gt;, the best free email</div><d=
iv>&gt; app for work</div><div>&gt; On mar 25 2021, at 8:39 am, Mauro Zilia=
ni &lt;mauro@faresoftware.it&gt; wrote:</div><div>&gt;</div><div>&gt; Hi al=
l</div><div>&gt;</div><div>&gt; I have to look for the recipes put in my im=
age the *-dev packages.</div><div>&gt;</div><div>&gt; I removed dev-pkgs an=
d dng-pkgs from IMAGE_FEATURES and debug tweaks</div><div>&gt; from DISTRO_=
FEATURES.</div><div>&gt; I don't IMAGE_INSTALL_append any *-dev packages</d=
iv><div>&gt;</div><div>&gt; I generate bitbake&nbsp; -g image, but I don't =
produce the PDF because is</div><div>&gt; unreadable.</div><div>&gt;</div><=
div>&gt; So I read the dot source. I use dot and I know the syntax.</div><d=
iv>&gt;</div><div>&gt; But I don't how to read the graph.</div><div>&gt;</d=
iv><div>&gt;</div><div>&gt; MZ</div><div>&gt;</div><div>&gt;</div><div>&gt;=
</div><div>&gt;</div><div>&gt; Sent from Mailspring &lt;https://getmailspri=
ng.com/&gt;, the best free</div><div>&gt; email app for work</div><div>&gt;=
</div><div>&gt;</div><div>&gt;</div><div>&gt; </div><div>&gt;</div></div></=
blockquote>

--605de4ca_ee15fdf_e03--
