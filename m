Return-Path: <munoz0raul@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06271E01370
	for <yocto@yoctoproject.org>; Mon,  3 Sep 2012 11:03:21 -0700 (PDT)
Received: by lagr15 with SMTP id r15so4250949lag.35
	for <yocto@yoctoproject.org>; Mon, 03 Sep 2012 11:03:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=gMSIotMAD593Onrp4gZzrpNQ5okIetLTugW6JVIM7/U=;
	b=Fe5NYl3u+Py8Y1V21OInifo2vaKKwgZql0sCcVB+UvH9mEHqGZV2NNdRvo4W+xQc4a
	GHon0YfeW3tZ4xz+63TbZty8LmiWQP2H0HRz2OGWCLuWqTefbln244ZHI61KDvcpem2X
	8aXlJdPNZO8expA64/UlLqvmuin4HvrolAeoLbZoeGMfADNsPp3wV3PX8HjuivBGWHAA
	PNshDGZBHB0EautCaFcxHOZ5oNGjd4c1edc46KV8sFdDNCLwdKmNDmeoSL5NfFQ/EGka
	BFHc/4mOrfJXiYVS75L9gYO9OIX+LrpaLQdzTsDet9wFvuiVVfU5wB+Z3mH2x8EbBES7
	cNJQ==
MIME-Version: 1.0
Received: by 10.112.100.65 with SMTP id ew1mr5773759lbb.16.1346695396601; Mon,
	03 Sep 2012 11:03:16 -0700 (PDT)
Received: by 10.112.21.194 with HTTP; Mon, 3 Sep 2012 11:03:16 -0700 (PDT)
Date: Mon, 3 Sep 2012 15:03:16 -0300
Message-ID: <CANmVirjVWacj1Rn2i1+pgmNZw5LYzBVtcZgmTcqiUOno5ZcKgg@mail.gmail.com>
From: Raul Rosetto Munoz <munoz0raul@gmail.com>
To: yocto@yoctoproject.org
Subject: netbase_4.47.bbappend
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
X-List-Received-Date: Mon, 03 Sep 2012 18:03:22 -0000
Content-Type: multipart/alternative; boundary=14dae9d71824bc304f04c8cff433

--14dae9d71824bc304f04c8cff433
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,

I'm try to create my inferface file to netbase.

I have in the poky folder this files

raul@phi04:/home/prjs/poky$ find . -name "*netbase*"
./meta/recipes-core/netbase
./meta/recipes-core/netbase/netbase-4.47
./meta/recipes-core/netbase/netbase_4.47.bb
./meta-yocto/recipes-core/netbase
./meta-yocto/recipes-core/netbase/netbase_4.47.bbappend
./meta-yocto/recipes-core/netbase/netbase-4.47

But I want to create my bbappend file in the meta-fsl-arm, because here I
have my recipes that I'm change what I want.

raul@phi04:/home/prjs/newcom0001/philinux/meta-fsl-arm$ ls
classes  conf  README  recipes-bsp  recipes-core  recipes-graphics
 recipes-kernel  recipes-multimedia  recipes-phi  recipes-qt

In the folder recipes-phi I have some things that I'm changed..

raul@phi04:/home/prjs/newcom0001/philinux/meta-fsl-arm/recipes-phi$ ls
ddclient  netbase  ppp

And finaly in the netbase folder:

raul@phi04:/home/prjs/newcom0001/philinux/meta-fsl-arm/recipes-phi/netbase$
ls
netbase-4.47  netbase_4.47.bbappend

I try to create this files but it never result in my inferfaces file in
/etc/netwok/interfaces.

in my netbase_4.47.bbappend file i have this:

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/netbase-4.47"

PRINC =3D "1"
SRC_URI_append  =3D "file://interfaces"

do_install_append () {
        install -m 644 ${WORKDIR}/interfaces ${D}/${sysconfdir}/network/
}

and in the folder netbase-4.47:

raul@phi04:/home/prjs/newcom0001/philinux/meta-fsl-arm/recipes-phi/netbase$
ls netbase-4.47/
interfaces
raul@phi04:/home/prjs/newcom0001/philinux/meta-fsl-arm/recipes-phi/netbase$
cat netbase-4.47/interfaces

# /etc/network/interfaces -- configuration file for ifup(8), ifdown(8)

# The loopback interface
auto lo
iface lo inet loopback

# Wired or wireless interfaces
iface eth0 inet static
address 192.168.1.50
netmask 255.255.255.0
network 192.168.1.0
gateway 192.168.1.1


Some one can Tell me Why my bbappend do not work?

Thanks for all help!




--=20
*Raul Rosetto Mu=F1oz*

--14dae9d71824bc304f04c8cff433
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div><div><div>Hello,</div><div><br></div><div>I&#39;m try to create my inf=
erface file to netbase.</div><div><br></div><div>I have in the poky folder =
this files</div><div><br></div><div>raul@phi04:/home/prjs/poky$ find . -nam=
e &quot;*netbase*&quot;</div>
<div>./meta/recipes-core/netbase</div><div>./meta/recipes-core/netbase/netb=
ase-4.47</div><div>./meta/recipes-core/netbase/<a href=3D"http://netbase_4.=
47.bb">netbase_4.47.bb</a></div><div>./meta-yocto/recipes-core/netbase</div=
>
<div>./meta-yocto/recipes-core/netbase/netbase_4.47.bbappend</div><div>./me=
ta-yocto/recipes-core/netbase/netbase-4.47</div><div><br></div><div>But I w=
ant to create my bbappend file in the meta-fsl-arm, because here I have my =
recipes that I&#39;m change what I want.</div>
<div><br></div><div>raul@phi04:/home/prjs/newcom0001/philinux/meta-fsl-arm$=
 ls</div><div>classes =A0conf =A0README =A0recipes-bsp =A0recipes-core =A0r=
ecipes-graphics =A0recipes-kernel =A0recipes-multimedia =A0recipes-phi =A0r=
ecipes-qt</div>
<div><br></div><div>In the folder recipes-phi I have some things that I&#39=
;m changed..</div><div><br></div><div>raul@phi04:/home/prjs/newcom0001/phil=
inux/meta-fsl-arm/recipes-phi$ ls</div><div>ddclient =A0netbase =A0ppp</div=
>
<div><br></div><div>And finaly in the netbase folder:</div><div><br></div><=
div>raul@phi04:/home/prjs/newcom0001/philinux/meta-fsl-arm/recipes-phi/netb=
ase$ ls</div><div>netbase-4.47 =A0netbase_4.47.bbappend</div><div><br></div=
>
<div>I try to create this files but it never result in my inferfaces file i=
n /etc/netwok/interfaces.</div><div><br></div><div>in my netbase_4.47.bbapp=
end file i have this:</div><div><br></div><div>FILESEXTRAPATHS_prepend :=3D=
 &quot;${THISDIR}/netbase-4.47&quot;</div>
<div><br></div><div>PRINC =3D &quot;1&quot;</div><div>SRC_URI_append =A0=3D=
 &quot;file://interfaces&quot;</div><div><br></div><div>do_install_append (=
) {</div><div>=A0 =A0 =A0 =A0 install -m 644 ${WORKDIR}/interfaces ${D}/${s=
ysconfdir}/network/</div>
<div>}</div><div><br></div><div>and in the folder netbase-4.47:</div><div><=
br></div><div>raul@phi04:/home/prjs/newcom0001/philinux/meta-fsl-arm/recipe=
s-phi/netbase$ ls netbase-4.47/</div><div>interfaces</div><div>raul@phi04:/=
home/prjs/newcom0001/philinux/meta-fsl-arm/recipes-phi/netbase$ cat netbase=
-4.47/interfaces=A0</div>
<div><br></div><div># /etc/network/interfaces -- configuration file for ifu=
p(8), ifdown(8)</div><div>=A0</div><div># The loopback interface</div><div>=
auto lo</div><div>iface lo inet loopback</div><div><br></div><div># Wired o=
r wireless interfaces</div>
<div>iface eth0 inet static</div><div><span class=3D"Apple-tab-span" style=
=3D"white-space:pre">	</span>address 192.168.1.50</div><div><span class=3D"=
Apple-tab-span" style=3D"white-space:pre">	</span>netmask 255.255.255.0</di=
v><div>
<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>network 19=
2.168.1.0</div><div><span class=3D"Apple-tab-span" style=3D"white-space:pre=
">	</span>gateway 192.168.1.1</div><div><br></div><div><br></div><div>Some =
one can Tell me Why my bbappend do not work?</div>
<div><br></div><div>Thanks for all help!</div></div><div><br></div><div><br=
></div><div><br></div><div><br></div>-- <br><b>Raul Rosetto Mu=F1oz</b><br>
</div>

--14dae9d71824bc304f04c8cff433--
