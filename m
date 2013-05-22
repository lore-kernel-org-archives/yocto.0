Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f47.google.com (mail-pb0-f47.google.com
	[209.85.160.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB2F5E013B8
	for <yocto@yoctoproject.org>; Wed, 22 May 2013 16:56:53 -0700 (PDT)
Received: by mail-pb0-f47.google.com with SMTP id rr4so2266345pbb.20
	for <yocto@yoctoproject.org>; Wed, 22 May 2013 16:56:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=CtCauTspFv4dA1avUzBH6xCNZ6PYsTL2G/HduYoEVR0=;
	b=T7Jo/gwMBdCtR9q7s91ukaWEj5iZbE6gmnLM6v7tMQDwVMRMOz0UIt0WhGbTuwMkY4
	KXPQO4rlJLH9mGosneEAke7mugmLVepdb+syKaBFrBGHyt0dEDFT+YJD7yhaYrhK2FB3
	Wb8sxOf7i+edrK8u+49oX4JF+VC2aWUQEnsu1Ni2DzfD35R3mLVluO7bqqOliy8DMnoc
	20bVf/AEkKyulRNLhJHM4W3EwgiXh82BaGPs9V3DYsA/doQyyXXov5msUnChzzwVBKCx
	d76geTPjC4FYISKuMtcHePS627VWX6QYpUmo06uGqavUTcfdBDnvqQxnFkjsgRqk9bSX
	HuOw==
X-Received: by 10.66.216.198 with SMTP id os6mr10435236pac.145.1369267013617; 
	Wed, 22 May 2013 16:56:53 -0700 (PDT)
Received: from sa-nc-common3-43.static.jnpr.net (natint3.juniper.net.
	[66.129.224.36])
	by mx.google.com with ESMTPSA id qp4sm9058753pbc.41.2013.05.22.16.56.51
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 22 May 2013 16:56:52 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <08AF77B4B1E31040BA560C0FBB91548007B7818E@CHN-CL-MAIL01.mchp-main.com>
Date: Wed, 22 May 2013 16:56:50 -0700
Message-Id: <6EC87B9D-02A8-49C6-AFE0-0CC89ECA400D@gmail.com>
References: <08AF77B4B1E31040BA560C0FBB91548007B7818E@CHN-CL-MAIL01.mchp-main.com>
To: <Steve.Scott@microchip.com>
X-Mailer: Apple Mail (2.1503)
Cc: yocto@yoctoproject.org
Subject: Re: Adding prebuilt binaries to a BSP recipe
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
X-List-Received-Date: Wed, 22 May 2013 23:56:53 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_9E180FD5-149C-4C97-9DFB-F73A2B56E1BD"

--Apple-Mail=_9E180FD5-149C-4C97-9DFB-F73A2B56E1BD
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252


On May 22, 2013, at 4:15 PM, <Steve.Scott@microchip.com> wrote:

> Based upon the routerstationpro machine default, we have created a =
meta-mchp-sasha layer and it works as expected meaning it boots and the =
file system image works on our test hardware platform. We want to modify =
the recipe for the meta-mchp-sasha layer to include two graphics =
libraries that we want to give to customers as prebuilt binaries, but we =
do not want to include source code. In our case, we want to include =
vgraphics.ko and libVgraphics.so in the file system image. Our problem =
is that we don=92t know how to do this, but it seems like a simple set =
of two recipes and including them using IMAGE_INSTALL +=3D =93vgraphics =
libvgraphics=94.
> =20
> Assuming we know how to extract the prebuilt graphics libs from our =
local git repo, what do we have to include in our Yocto project =
meta-mchp-sasha layer to allow =93bitbake core-image-minimal=94 to find =
the graphics libraries and place them in the right part of the file =
system image?
>=20

so in your recipe (your-bins.bb) you would provide a SRC_URI which =
probably is a tar ball containing your binary artifacts. then in you =
recipe you would have
a do_install () which will take them from WORKDIR and install them =
wherever they need to be in ${D}${libdir} and so on.

Then you would add a new recipe for your own image say =
core-image-minimal-custom.bb
which has=20

require path/to/core-image-minimal.bb

IMAGE_INSTALL +=3D "your-bins"

> Thank you,
> =20
> Steve Scott
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_9E180FD5-149C-4C97-9DFB-F73A2B56E1BD
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=windows-1252

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dwindows-1252"><base href=3D"x-msg://2002/"></head><body =
style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; "><br><div><div>On May 22, 2013, =
at 4:15 PM, &lt;<a =
href=3D"mailto:Steve.Scott@microchip.com">Steve.Scott@microchip.com</a>&gt=
; wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div lang=3D"EN-US" link=3D"blue" vlink=3D"purple" =
style=3D"font-family: Helvetica; font-size: medium; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
"><div class=3D"WordSection1" style=3D"page: WordSection1; "><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif; "><font size=3D"2" face=3D"Courier New"><span =
style=3D"font-size: 10pt; font-family: 'Courier New'; ">Based upon the =
routerstationpro machine default, we have created a meta-mchp-sasha =
layer and it works as expected meaning it boots and the file system =
image works on our test hardware platform. We want to modify the recipe =
for the meta-mchp-sasha layer to include two graphics libraries that we =
want to give to customers as prebuilt binaries, but we do not want to =
include source code. In our case, we want to include vgraphics.ko and =
libVgraphics.so in the file system image. Our problem is that we don=92t =
know how to do this, but it seems like a simple set of two recipes and =
including them using IMAGE_INSTALL +=3D =93vgraphics =
libvgraphics=94.<o:p></o:p></span></font></div><div style=3D"margin: 0in =
0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; "><font =
size=3D"2" face=3D"Courier New"><span style=3D"font-size: 10pt; =
font-family: 'Courier New'; ">&nbsp;</span></font></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif; "><font size=3D"2" face=3D"Courier New"><span =
style=3D"font-size: 10pt; font-family: 'Courier New'; ">Assuming we know =
how to extract the prebuilt graphics libs from our local git repo, what =
do we have to include in our Yocto project meta-mchp-sasha layer to =
allow =93bitbake core-image-minimal=94 to find the graphics libraries =
and place them in the right part of the file system =
image?<o:p></o:p></span></font></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; =
"><br></div></div></div></blockquote><div><br></div><div>so in your =
recipe (your-bins.bb) you would provide a SRC_URI which probably is a =
tar ball containing your binary artifacts. then in you recipe you would =
have</div><div>a do_install () which will take them from WORKDIR and =
install them wherever they need to be in ${D}${libdir} and so =
on.</div><div><br></div><div>Then you would add a new recipe for your =
own image say core-image-minimal-custom.bb</div><div>which =
has&nbsp;</div><div><br></div><div>require =
path/to/core-image-minimal.bb</div><div><br></div><div>IMAGE_INSTALL +=3D =
"your-bins"</div><br><blockquote type=3D"cite"><div lang=3D"EN-US" =
link=3D"blue" vlink=3D"purple" style=3D"font-family: Helvetica; =
font-size: medium; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: =
none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; "><div =
class=3D"WordSection1" style=3D"page: WordSection1; "><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif; "><font size=3D"2" face=3D"Courier New"><span =
style=3D"font-size: 10pt; font-family: 'Courier New'; ">Thank =
you,<o:p></o:p></span></font></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif; "><font =
size=3D"2" face=3D"Courier New"><span style=3D"font-size: 10pt; =
font-family: 'Courier New'; ">&nbsp;</span></font></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif; "><font size=3D"2" face=3D"Courier New"><span =
style=3D"font-size: 10pt; font-family: 'Courier New'; ">Steve =
Scott<o:p></o:p></span></font></div></div>________________________________=
_______________<br>yocto mailing list<br><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"color: purple; =
text-decoration: underline; ">yocto@yoctoproject.org</a><br><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" style=3D"color: =
purple; text-decoration: underline; =
">https://lists.yoctoproject.org/listinfo/yocto</a><br></div></blockquote>=
</div><br></body></html>=

--Apple-Mail=_9E180FD5-149C-4C97-9DFB-F73A2B56E1BD--
