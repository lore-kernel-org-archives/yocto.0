Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-da0-f51.google.com (mail-da0-f51.google.com
	[209.85.210.51]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id E0A23E002AB
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2013 16:28:45 -0800 (PST)
Received: by mail-da0-f51.google.com with SMTP id z17so1103208dal.10
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2013 16:28:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=Ha+YERZf1RE0viutg/X8FMQ2iIpbZrLML9HlNxcT5mo=;
	b=b3tHD/IeHmUi7fZFlLjBFjOhrlB+ScQHwZDLkmRuwvHuY1oTOfY9T+lCDXdSfusE31
	nbO6hJd7RPeEdiBKQWRIerHs2wVrDcqZ24TBQYubvQXFtoP7CkQFXPrCzV445MF/JqTw
	lwqC7WF1f5j8+QsKFEsK0333gCS5XPlt0d7Ws=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=Ha+YERZf1RE0viutg/X8FMQ2iIpbZrLML9HlNxcT5mo=;
	b=VhfbuayMS1Y0hg1bsIgXYqC31+HK4s9k4goyfFBhY7RVFb3DIZ8M4DQz/F3bqQqFpz
	DcL0T21QnhPzHME5sI0XkgEWUFFtRuQePoLCG4SDie+emOS1LDVkmvBw6fweC40fymEW
	qrjDsyOX0q1ORfcQB249w58xO95P5PURBSQrJc5bQysZIpI/psvL56kXmqlXwdYdzQRF
	XVjAPIivQp24wZhUMT/f/wP2L+YemFwB0uOtzXPkILWFUOP7AUgkBTaHt19VRI57Lu9k
	5GDoSCTDWDFHCjWtDK+pTWeLTjs1gOvJlRIAIN6w3YrNt8o/cG5lV5bsqoZtyYf6vyRT
	JBPw==
MIME-Version: 1.0
X-Received: by 10.66.145.101 with SMTP id st5mr15574678pab.162.1362097725539; 
	Thu, 28 Feb 2013 16:28:45 -0800 (PST)
Received: by 10.68.135.3 with HTTP; Thu, 28 Feb 2013 16:28:45 -0800 (PST)
In-Reply-To: <D5D8A4D8397140AB98A5568853482737@PAULD>
References: <D5D8A4D8397140AB98A5568853482737@PAULD>
Date: Thu, 28 Feb 2013 16:28:45 -0800
Message-ID: <CA+gsK-oj7KzHyjn4+18CaBw9Tbwi60oG_FOxmpAtVABt=nrnCQ@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
X-Gm-Message-State: ALoCoQkwL1bn3pkaSyr01PlXQpMcDAofA49uHMQuBPHapANnUBJKGTANCZoznkxxdk0KGGwCDIgZ
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Newbie trying to get started
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
X-List-Received-Date: Fri, 01 Mar 2013 00:28:46 -0000
Content-Type: multipart/alternative; boundary=047d7b6da79614d13904d6d2173d

--047d7b6da79614d13904d6d2173d
Content-Type: text/plain; charset=ISO-8859-1

Hi Paul,

It does not matter where you unpack the meta-intel tarball to. All that
matters is that you include it in the bblayers.conf file of your build
environment.

Yes, you are right that you want to create a new build environment for your
new Atom project. Do so with


cd yocto
source poky/oe-init-build-env buildatom

This will create a new build environment for you and change directory to
buildatom. Then edit con/bblayers.conf to include the BSP layer. The
meta-intel is a container layer that contains multiple BSPs you will have
to add the meta-intel as well as the layer for the BSP that you want to use
in the BBLAYERS variable e.g.

BBLAYERS ?= " \
  <path to yocto>/poky/meta \
  <path to yocto>/poky/meta-yocto \
  <path to yocto>/meta-intel \
  <path to yocto>/meta-intel/meta-<bsp> "

Then you need to set the MACHINE variable in conf/local.conf to a machine
defined by the the BSP.

That should do the trick.

And I now see that Sean has beat me to it. Now you have it twice.

Cheers,
Rudi




On Thu, Feb 28, 2013 at 3:54 PM, Paul D. DeRocco <pderocco@ix.netcom.com>wrote:

> I've been working with a Gumstix, and have successfully built both the
> console and GUI version of their distro. So now I have two directories,
> yocto/poky containing everything that was downloaded, and yocto/build
> containing the stuff that was built. So far, so good.
>
> Now, I need to do a completely unrelated project, based on an Intel Atom.
> I've downloaded the BSP (the N2600/N2800/D2550), and the directions told me
> to unpack it so that it's all contained in yocto/meta-intel. Does this mean
> that this BSP isn't related to Poky? My yocto/poky directory is full of
> other meta-blahblah stuff, so I would think that meta-intel would go in
> there, one level down.
>
> Then, the directions say to edit bblayers.conf, and possibly local.conf.
> The
> only place I find these files are in my yocto/build/conf directory, but I
> would think that doing a build for a different machine would involve
> setting
> up a different build directory, e.g., yocto/buildatom. Is that correct? But
> isn't the build directory set up by running the oe-init-build-env script,
> which comes afterwards in the instructions?
>
> Also, those instructions imply that I should run that script in the
> yocto/poky directory, since that's where the script is located, but the
> meta-intel is "upstairs" from that, which seems odd.
>
> I'm confused by all this, but more to the point, I'm afraid of doing the
> wrong thing, and clobbering the Gumstix stuff, which took a day and a half
> to build. I expect the Atom build will also take a long time, but I don't
> want to have to do it two more times.
>
> Thanks in advance.
>
> --
>
> Ciao,               Paul D. DeRocco
> Paul                mailto:pderocco@ix.netcom.com
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
-- 
*Rudolf J. Streif*
Director of Embedded Solutions
The Linux Foundation

rudolf.streif@linux.com
Phone: +1.619.631.5383
Skype: rudolfstreif
PGP: RSA 2048/2048 D6E7D28B

Linux Foundation Events Schedule:  events.linuxfoundation.org
Linux Foundation Training Schedule: training.linuxfoundation.org

--047d7b6da79614d13904d6d2173d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Paul,<div><br></div><div style>It does not matter where=
 you unpack the meta-intel tarball to. All that matters is that you include=
 it in the bblayers.conf file of your build environment.</div><div style><b=
r>
</div><div style>Yes, you are right that you want to create a new build env=
ironment for your new Atom project. Do so with</div><div style><br></div><d=
iv style><br></div><div style>cd yocto</div><div style>source poky/oe-init-=
build-env buildatom</div>
<div style><br></div><div style>This will create a new build environment fo=
r you and change directory to buildatom. Then edit con/bblayers.conf to inc=
lude the BSP layer. The meta-intel is a container layer that contains multi=
ple BSPs you will have to add the meta-intel as well as the layer for the B=
SP that you want to use in the BBLAYERS variable e.g.</div>
<div style><br></div><div style><span style=3D"font-family:arial,sans-serif=
;font-size:13px">BBLAYERS ?=3D &quot; \</span><br style=3D"font-family:aria=
l,sans-serif;font-size:13px"><span style=3D"font-family:arial,sans-serif;fo=
nt-size:13px">=A0 &lt;path to yocto&gt;/poky</span><span style=3D"font-fami=
ly:arial,sans-serif;font-size:13px">/meta \</span><br style=3D"font-family:=
arial,sans-serif;font-size:13px">
<span style=3D"font-family:arial,sans-serif;font-size:13px">=A0 &lt;path to=
 yocto&gt;/poky</span><span style=3D"font-family:arial,sans-serif;font-size=
:13px">/meta-yocto \</span><br style=3D"font-family:arial,sans-serif;font-s=
ize:13px">
<span style=3D"font-family:arial,sans-serif;font-size:13px">=A0 &lt;path to=
 yocto&gt;/</span><span style=3D"font-family:arial,sans-serif;font-size:13p=
x">meta-intel \</span><br style=3D"font-family:arial,sans-serif;font-size:1=
3px">
<span style=3D"font-family:arial,sans-serif;font-size:13px">=A0 &lt;path to=
 yocto&gt;/</span><span style=3D"font-family:arial,sans-serif;font-size:13p=
x">meta-intel/meta-&lt;bsp&gt;</span><span style=3D"font-family:arial,sans-=
serif;font-size:13px">=A0&quot;</span><br style=3D"font-family:arial,sans-s=
erif;font-size:13px">
</div><div style><span style=3D"font-family:arial,sans-serif;font-size:13px=
"><br></span></div><div style><span style=3D"font-family:arial,sans-serif;f=
ont-size:13px">Then you need to set the MACHINE variable in conf/local.conf=
 to a machine defined by the the BSP.</span></div>
<div style><span style=3D"font-family:arial,sans-serif;font-size:13px"><br>=
</span></div><div style><span style=3D"font-family:arial,sans-serif;font-si=
ze:13px">That should do the trick.</span></div><div style><span style=3D"fo=
nt-family:arial,sans-serif;font-size:13px"><br>
</span></div><div style><span style=3D"font-family:arial,sans-serif;font-si=
ze:13px">And I now see that Sean has beat me to it. Now you have it twice.<=
/span></div><div style><span style=3D"font-family:arial,sans-serif;font-siz=
e:13px"><br>
</span></div><div style><span style=3D"font-family:arial,sans-serif;font-si=
ze:13px">Cheers,</span></div><div style><span style=3D"font-family:arial,sa=
ns-serif;font-size:13px">Rudi</span></div><div style><br></div><div style><=
br>
</div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">O=
n Thu, Feb 28, 2013 at 3:54 PM, Paul D. DeRocco <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:pderocco@ix.netcom.com" target=3D"_blank">pderocco@ix.netcom.c=
om</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">I&#39;ve been working with a Gumstix, and ha=
ve successfully built both the<br>
console and GUI version of their distro. So now I have two directories,<br>
yocto/poky containing everything that was downloaded, and yocto/build<br>
containing the stuff that was built. So far, so good.<br>
<br>
Now, I need to do a completely unrelated project, based on an Intel Atom.<b=
r>
I&#39;ve downloaded the BSP (the N2600/N2800/D2550), and the directions tol=
d me<br>
to unpack it so that it&#39;s all contained in yocto/meta-intel. Does this =
mean<br>
that this BSP isn&#39;t related to Poky? My yocto/poky directory is full of=
<br>
other meta-blahblah stuff, so I would think that meta-intel would go in<br>
there, one level down.<br>
<br>
Then, the directions say to edit bblayers.conf, and possibly local.conf. Th=
e<br>
only place I find these files are in my yocto/build/conf directory, but I<b=
r>
would think that doing a build for a different machine would involve settin=
g<br>
up a different build directory, e.g., yocto/buildatom. Is that correct? But=
<br>
isn&#39;t the build directory set up by running the oe-init-build-env scrip=
t,<br>
which comes afterwards in the instructions?<br>
<br>
Also, those instructions imply that I should run that script in the<br>
yocto/poky directory, since that&#39;s where the script is located, but the=
<br>
meta-intel is &quot;upstairs&quot; from that, which seems odd.<br>
<br>
I&#39;m confused by all this, but more to the point, I&#39;m afraid of doin=
g the<br>
wrong thing, and clobbering the Gumstix stuff, which took a day and a half<=
br>
to build. I expect the Atom build will also take a long time, but I don&#39=
;t<br>
want to have to do it two more times.<br>
<br>
Thanks in advance.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Ciao, =A0 =A0 =A0 =A0 =A0 =A0 =A0 Paul D. DeRocco<br>
Paul =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0mailto:<a href=3D"mailto:pderocco@ix.ne=
tcom.com">pderocco@ix.netcom.com</a><br>
<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r>--=A0<br><font face=3D"arial, helvetica, sans-serif"><b>Rudolf J. Streif<=
/b></font><div><font face=3D"arial, helvetica, sans-serif">Director of Embe=
dded Solutions</font></div>
<div><font face=3D"arial, helvetica, sans-serif">The Linux Foundation</font=
></div><div><font face=3D"arial, helvetica, sans-serif"><br></font></div><d=
iv><a href=3D"mailto:rudolf.streif@linux.com" target=3D"_blank"><font face=
=3D"arial, helvetica, sans-serif">rudolf.streif@linux.com</font></a></div>
<div><font face=3D"arial, helvetica, sans-serif">Phone: +1.619.631.5383</fo=
nt></div><div><font face=3D"arial, helvetica, sans-serif">Skype: rudolfstre=
if</font></div><div><font face=3D"arial, helvetica, sans-serif">PGP: RSA 20=
48/2048 D6E7D28B</font></div>
<div><font face=3D"garamond, serif"><br></font></div><div><font face=3D"gar=
amond, serif"><span style=3D"border-collapse:collapse;color:rgb(102,102,102=
);font-family:arial,sans-serif;font-size:13px"><span style=3D"border-collap=
se:collapse">Linux Foundation Events Schedule: =A0<a href=3D"http://events.=
linuxfoundation.org/" style=3D"color:rgb(64,100,128)" target=3D"_blank">eve=
nts.linuxfoundation.org</a><br>
Linux Foundation Training Schedule:=A0<a href=3D"http://training.linuxfound=
ation.org/" style=3D"color:rgb(64,100,128)" target=3D"_blank">training.linu=
xfoundation.org</a></span><br></span></font></div><div><font face=3D"garamo=
nd, serif"><span style=3D"border-collapse:collapse;color:rgb(102,102,102);f=
ont-family:arial,sans-serif;font-size:13px"><br>
</span></font></div>
</div>

--047d7b6da79614d13904d6d2173d--
