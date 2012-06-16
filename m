Return-Path: <tylerjones64@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85FD0E01461
	for <yocto@yoctoproject.org>; Fri, 15 Jun 2012 18:18:44 -0700 (PDT)
Received: by lagz14 with SMTP id z14so2998976lag.35
	for <yocto@yoctoproject.org>; Fri, 15 Jun 2012 18:18:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=QygCpWnC+I7qM5JGRTCbGaDFGf85bfdN2ha97qHOz+o=;
	b=mxrkKubY7Fd6aQ3CJAQkV/qppgwucsTQ00868idaBQlt5BKHohS30FNQNhjqhtLVf5
	lD+72t037Fw3NwFLj7d7tBtJpXkqxExY8jTDVp7+YR+PPLtsphNPCtoI8ziY0m+hUQEz
	4vjW1W9zUtqqz/HTNR1UumqD8aomMBcwjnVLrZDAY/DIn3APklGJPb/gffsU9tL1UbDX
	/KnpRvnsG5gjp4iEpjdbxCoava+JmXUPEUIg5rGmgh7A4iMXagI5kVC7bTLirfHYo/Qu
	7mF+U8B7+CXZkNtDUtOrwpNpcQZ4M5Pzy2ub665v4Yok1byE28q3n2ftMxPt2FMxQCjB
	H1Og==
Received: by 10.152.103.11 with SMTP id fs11mr7234309lab.23.1339809523151;
	Fri, 15 Jun 2012 18:18:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.48.10 with HTTP; Fri, 15 Jun 2012 18:18:22 -0700 (PDT)
In-Reply-To: <4FDAD3AB.3000605@gmail.com>
References: <CAN57a28DC3Xge0Sk8JH5fEji1q6nmxcDKxmbxTUfMPXKVU+Yeg@mail.gmail.com>
	<4FDAD3AB.3000605@gmail.com>
From: Tyler Jones <tylerjones64@gmail.com>
Date: Fri, 15 Jun 2012 18:18:22 -0700
Message-ID: <CAN57a2-f0LWnYaqg9yEPNJyzi5M64Du1JH_-yW1bzzSkuyGEQw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Setting architecture of only DEB files (arm vs armel)
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
X-List-Received-Date: Sat, 16 Jun 2012 01:18:45 -0000
Content-Type: multipart/alternative; boundary=f46d040715c5b1b44a04c28cb622

--f46d040715c5b1b44a04c28cb622
Content-Type: text/plain; charset=ISO-8859-1

On 14 June 2012 23:18, Khem Raj <raj.khem@gmail.com> wrote:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
> On 6/14/2012 5:17 PM, Tyler Jones wrote:
> > I am compiling a distro for my hardware using DEBs for my package
> > management. In meta/classes/package_deb.bbclass I need DPKG_ARCH =
> > "armel" instead of TARGET_ARCH (which is "arm"). When I run dpkg on
> > my device armel is the architecture, not arm, but yocto wants my
> > TARGET_ARCH to be set to "arm". Is there a non hackish way to do
> > this from my BSP layer or config file?
> >
> > The dpkg error I get is: package architecture (arm) does not match
> > system (armel)
> >
>
> set DPKG_ARCH = "armel" in your local.conf
>
> > -Tyler Jones
> >
> >
> >
> >
> > _______________________________________________ yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1.4.12 (MingW32)
> Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/
>
> iEYEARECAAYFAk/a06sACgkQuwUzVZGdMxRBvgCeJAinKceaUDI8gQHPbvzGiOSt
> tuQAnRDOpYZvovXfg6UHji6it4YehqvR
> =7G4e
> -----END PGP SIGNATURE-----
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

That didn't seem to work I also tried editing in the top of the
meta/classes/package_deb.bbclass setting
  DPKG_ARCH = "armel"
But that did not work either.

When I change:

@@ -249,6 +249,7 @@ python do_package_deb () {
         localdata.setVar('OVERRIDES', pkg)

         bb.data.update_data(localdata)
+        localdata.setVar('DPKG_ARCH', 'armel')
         basedir = os.path.join(os.path.dirname(root))

         pkgoutdir = os.path.join(outdir, localdata.getVar('PACKAGE_ARCH',
True))

the packages are created properly.
-Tyler Jones

--f46d040715c5b1b44a04c28cb622
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote">On 14 June 2012 23:18, Khem Raj <span dir=3D"ltr=
">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmai=
l.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">


-----BEGIN PGP SIGNED MESSAGE-----<br>
Hash: SHA1<br>
<div><div><br>
On 6/14/2012 5:17 PM, Tyler Jones wrote:<br>
&gt; I am compiling a distro for my hardware using DEBs for my package<br>
&gt; management. In meta/classes/package_deb.bbclass I need DPKG_ARCH =3D<b=
r>
&gt; &quot;armel&quot; instead of TARGET_ARCH (which is &quot;arm&quot;). W=
hen I run dpkg on<br>
&gt; my device armel is the architecture, not arm, but yocto wants my<br>
&gt; TARGET_ARCH to be set to &quot;arm&quot;. Is there a non hackish way t=
o do<br>
&gt; this from my BSP layer or config file?<br>
&gt;<br>
&gt; The dpkg error I get is: package architecture (arm) does not match<br>
&gt; system (armel)<br>
&gt;<br>
<br>
</div></div>set DPKG_ARCH =3D &quot;armel&quot; in your local.conf<br>
<br>
&gt; -Tyler Jones<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________ yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
-----BEGIN PGP SIGNATURE-----<br>
Version: GnuPG v1.4.12 (MingW32)<br>
Comment: Using GnuPG with Mozilla - <a href=3D"http://enigmail.mozdev.org/"=
 target=3D"_blank">http://enigmail.mozdev.org/</a><br>
<br>
iEYEARECAAYFAk/a06sACgkQuwUzVZGdMxRBvgCeJAinKceaUDI8gQHPbvzGiOSt<br>
tuQAnRDOpYZvovXfg6UHji6it4YehqvR<br>
=3D7G4e<br>
-----END PGP SIGNATURE-----<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br><div>That didn&#39;t seem to work I also tried editi=
ng in the top of the meta/classes/package_deb.bbclass setting</div><div>=A0=
=A0DPKG_ARCH =3D &quot;armel&quot;</div><div>But that did not work either.<=
/div>

<div><br></div><div>When I change:</div><blockquote style=3D"margin:0 0 0 4=
0px;border:none;padding:0px"><div>@@ -249,6 +249,7 @@ python do_package_deb=
 () {</div><div>=A0 =A0 =A0 =A0 =A0localdata.setVar(&#39;OVERRIDES&#39;, pk=
g)</div>

<div>=A0</div><div>=A0 =A0 =A0 =A0 =A0bb.data.update_data(localdata)</div><=
div>+ =A0 =A0 =A0 =A0localdata.setVar(&#39;DPKG_ARCH&#39;, &#39;armel&#39;)=
</div><div>=A0 =A0 =A0 =A0 =A0basedir =3D os.path.join(os.path.dirname(root=
))</div><div>=A0</div><div>=A0 =A0 =A0 =A0 =A0pkgoutdir =3D os.path.join(ou=
tdir, localdata.getVar(&#39;PACKAGE_ARCH&#39;, True))</div>

</blockquote><div>the packages are created properly.<br clear=3D"all">-Tyle=
r Jones<br></div>

--f46d040715c5b1b44a04c28cb622--
