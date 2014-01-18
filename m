Return-Path: <andrei@gherzan.ro>
Received: from mail-we0-f179.google.com (mail-we0-f179.google.com
	[74.125.82.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 188C9E00840
	for <yocto@yoctoproject.org>; Sat, 18 Jan 2014 02:24:45 -0800 (PST)
Received: by mail-we0-f179.google.com with SMTP id w62so5516255wes.10
	for <yocto@yoctoproject.org>; Sat, 18 Jan 2014 02:24:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=Z1XTLc7U1r8fWRw10Wtd9pcBbayDEOvlMriNkwJDe/A=;
	b=OagINYGFv+ZIcke0Ee8MOjCNdaxEe1uzVXhCJ/AaJVxDVYBSxVpsmdRDNiWkx/fNH5
	L1gYCxmWto9d2FdiMk4h97n1N6iOVH6Bi77wBKYtdmrJRUak6DFGTaUwBORlkFo6htKU
	k35ybKYbWkH72kjU1vcMwkf3Q1hybXB/hFc6/73+ilWdEzEeCp0601I0fq3mfFCGPtrf
	zKHVVNsn3DGNthVaPO+oanlCw/GyIedqKggVjd7UBL6nmfKL+3fq6eE1EZAFsPLwHB3K
	sTYwANGgJCVLgf9eD8h17vun4YS/rKUKA+MMO17sLlI9DpB76nXihFkL6f1hgMMVLDNw
	qYHw==
X-Gm-Message-State: ALoCoQmxfCVtLznxD+1tlsOnW4bdQlmfHV7eiR1UPG2Idqc5Q7pNziExTcxF4Qosf0D7p1VXZyIp
MIME-Version: 1.0
X-Received: by 10.180.221.129 with SMTP id qe1mr2243797wic.17.1390040684115;
	Sat, 18 Jan 2014 02:24:44 -0800 (PST)
Received: by 10.217.150.199 with HTTP; Sat, 18 Jan 2014 02:24:44 -0800 (PST)
X-Originating-IP: [79.116.111.233]
Received: by 10.217.150.199 with HTTP; Sat, 18 Jan 2014 02:24:44 -0800 (PST)
In-Reply-To: <CANyK_8dMpZPu1E_-y+KkRvxg-42ACfwGg3HpupZe1OFpweb=Yw@mail.gmail.com>
References: <1389971801-23724-1-git-send-email-andrei@gherzan.ro>
	<1389971801-23724-4-git-send-email-andrei@gherzan.ro>
	<CANyK_8dMpZPu1E_-y+KkRvxg-42ACfwGg3HpupZe1OFpweb=Yw@mail.gmail.com>
Date: Sat, 18 Jan 2014 12:24:44 +0200
Message-ID: <CAK18fxFAmZ=j1-dg2mH4u1Dv8Y-WDCye3c59gJm80qZP-bhc4w@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 4/5] userland: Update to remove HEAD
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
X-List-Received-Date: Sat, 18 Jan 2014 10:24:47 -0000
Content-Type: multipart/alternative; boundary=001a1133c8fa33815b04f03c115a

--001a1133c8fa33815b04f03c115a
Content-Type: text/plain; charset=ISO-8859-1

On Jan 18, 2014 2:45 AM, "Paul Barker" <paul@paulbarker.me.uk> wrote:
>
> On 17 January 2014 15:16, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > Change-Id: Ib98889d05b33ec2647966f2827e1fbf84f35fd95
> > Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> > ---
> >  recipes-graphics/userland/userland_git.bb | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/recipes-graphics/userland/userland_git.bbb/recipes-graphics/userland/
userland_git.bb
> > index 2993044..cba1709 100644
> > --- a/recipes-graphics/userland/userland_git.bb
> > +++ b/recipes-graphics/userland/userland_git.bb
> > @@ -5,13 +5,13 @@ vcos, openmaxil, vchiq_arm, bcm_host, WFC, OpenVG."
> >  LICENSE = "Broadcom"
> >  LIC_FILES_CHKSUM =
"file://LICENCE;md5=957f6640d5e2d2acfce73a36a56cb32f"
> >
> > -PR = "r3"
> > +PR = "r4"
> >
> >  PROVIDES = "virtual/libgles2 \
> >              virtual/egl"
> >  COMPATIBLE_MACHINE = "raspberrypi"
> >
> > -SRCREV = "d2c9f912da389c23ed27e81e940be3540f64fc59"
> > +SRCREV = "6da40ffd91f2b3c2aa8471195813322ae5d0cb0d"
> >  SRC_URI = "git://
github.com/raspberrypi/userland.git;protocol=git;branch=master \
> >            "
> >  S = "${WORKDIR}/git"
>
> The subject seems confusing... should this be "remote HEAD" not "remove
HEAD"?

Typo detected. Thanks.

ag

--001a1133c8fa33815b04f03c115a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On Jan 18, 2014 2:45 AM, &quot;Paul Barker&quot; &lt;<a href=3D"mailto:paul=
@paulbarker.me.uk">paul@paulbarker.me.uk</a>&gt; wrote:<br>
&gt;<br>
&gt; On 17 January 2014 15:16, Andrei Gherzan &lt;<a href=3D"mailto:andrei@=
gherzan.ro">andrei@gherzan.ro</a>&gt; wrote:<br>
&gt; &gt; Change-Id: Ib98889d05b33ec2647966f2827e1fbf84f35fd95<br>
&gt; &gt; Signed-off-by: Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherza=
n.ro">andrei@gherzan.ro</a>&gt;<br>
&gt; &gt; ---<br>
&gt; &gt; =A0recipes-graphics/userland/<a href=3D"http://userland_git.bb">u=
serland_git.bb</a> | 4 ++--<br>
&gt; &gt; =A01 file changed, 2 insertions(+), 2 deletions(-)<br>
&gt; &gt;<br>
&gt; &gt; diff --git a/recipes-graphics/userland/<a href=3D"http://userland=
_git.bb">userland_git.bb</a> b/recipes-graphics/userland/<a href=3D"http://=
userland_git.bb">userland_git.bb</a><br>
&gt; &gt; index 2993044..cba1709 100644<br>
&gt; &gt; --- a/recipes-graphics/userland/<a href=3D"http://userland_git.bb=
">userland_git.bb</a><br>
&gt; &gt; +++ b/recipes-graphics/userland/<a href=3D"http://userland_git.bb=
">userland_git.bb</a><br>
&gt; &gt; @@ -5,13 +5,13 @@ vcos, openmaxil, vchiq_arm, bcm_host, WFC, Open=
VG.&quot;<br>
&gt; &gt; =A0LICENSE =3D &quot;Broadcom&quot;<br>
&gt; &gt; =A0LIC_FILES_CHKSUM =3D &quot;file://LICENCE;md5=3D957f6640d5e2d2=
acfce73a36a56cb32f&quot;<br>
&gt; &gt;<br>
&gt; &gt; -PR =3D &quot;r3&quot;<br>
&gt; &gt; +PR =3D &quot;r4&quot;<br>
&gt; &gt;<br>
&gt; &gt; =A0PROVIDES =3D &quot;virtual/libgles2 \<br>
&gt; &gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0virtual/egl&quot;<br>
&gt; &gt; =A0COMPATIBLE_MACHINE =3D &quot;raspberrypi&quot;<br>
&gt; &gt;<br>
&gt; &gt; -SRCREV =3D &quot;d2c9f912da389c23ed27e81e940be3540f64fc59&quot;<=
br>
&gt; &gt; +SRCREV =3D &quot;6da40ffd91f2b3c2aa8471195813322ae5d0cb0d&quot;<=
br>
&gt; &gt; =A0SRC_URI =3D &quot;git://<a href=3D"http://github.com/raspberry=
pi/userland.git;protocol=3Dgit;branch=3Dmaster">github.com/raspberrypi/user=
land.git;protocol=3Dgit;branch=3Dmaster</a> \<br>
&gt; &gt; =A0 =A0 =A0 =A0 =A0 =A0&quot;<br>
&gt; &gt; =A0S =3D &quot;${WORKDIR}/git&quot;<br>
&gt;<br>
&gt; The subject seems confusing... should this be &quot;remote HEAD&quot; =
not &quot;remove HEAD&quot;?</p>
<p dir=3D"ltr">Typo detected. Thanks. </p>
<p dir=3D"ltr">ag<br>
</p>

--001a1133c8fa33815b04f03c115a--
