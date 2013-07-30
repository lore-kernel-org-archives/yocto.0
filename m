Return-Path: <r10kindsofpeople@gmail.com>
Received: from mail-ob0-f171.google.com (mail-ob0-f171.google.com
	[209.85.214.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82343E01482
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2013 08:15:27 -0700 (PDT)
Received: by mail-ob0-f171.google.com with SMTP id tb18so12427092obb.16
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2013 08:15:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=6OCnLZfO6WxIfHKMoc6k9mqpEHQDbp2RA2v2rYMtD/Q=;
	b=vMXM4VW3PmzMCX3d5gPMRn2m7FHll3aC6B8lLUUIE9Ca95WQ8AILHJeWNx4ANyq5l/
	vxOrbcNnG2XI0TaBaIu989a3Y0HVWT8glf18zKDbOCYwOnL2SWuCCHStRrlRhxRmeOoX
	JxYWxUJJrFkW/hvA5wsumr8H+E/FMO2X/SbjaawFcKpXdeloBohAcEOgkntCFA4yWHNX
	WxZILFNyS0Tg6wIFaASDuVpJbieG2QLGwmwVZI40RS5SinMU/CWBjdV2LFL7IWbitzKJ
	t+JDjQ1tDptpbv994YrEUVA5Tow8KIaTkJihMp7dzwPrCNnsXRDvMQNwnhXoINzC8W7b
	QxHg==
MIME-Version: 1.0
X-Received: by 10.182.241.138 with SMTP id wi10mr55221315obc.48.1375197326442; 
	Tue, 30 Jul 2013 08:15:26 -0700 (PDT)
Received: by 10.76.86.138 with HTTP; Tue, 30 Jul 2013 08:15:26 -0700 (PDT)
Date: Tue, 30 Jul 2013 11:15:26 -0400
Message-ID: <CAE8H0+WMNPphz89i8WUeAwExPDxgFHHgc4FuLxVyx8pMR2esvw@mail.gmail.com>
From: r10kindsofpeople <r10kindsofpeople@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: denzil to dylan, netbase recipe broken?
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
X-List-Received-Date: Tue, 30 Jul 2013 15:15:27 -0000
Content-Type: multipart/alternative; boundary=089e01634d6223869a04e2bc14b3

--089e01634d6223869a04e2bc14b3
Content-Type: text/plain; charset=ISO-8859-1

Hello!

Under Denzil 7.0.1, I had a recipe
mylayer/recipes-core/netbase/netbase_4.47.bbappend that contained:

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += " file://interfaces \
            "
To put my own interface file in the root file system from
mylayer/recipes-core/netbase/netbase/interfaces

Under Dylan 9.0.1, I tried the same technique, except renaming to
netbase_5.0.bbappend, but I don't get my copy of interfaces, I get some
default.

I've hacked at the recipe a bit, trying to add a do_install step (based on
the recipe in meta), and know at least that the recipe is getting parsed,
because of the errors I created.  I was able to clear up the errors, but
still don't get my copy.  Right now, the recipe reads:

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_prepend = " file://interfaces \
            "

do_install_append () {
install -d ${D}/${sysconfdir}/network
install -m 0644 ${WORKDIR}/interfaces ${D}${sysconfdir}/network/interfaces
}

PRINC := "${@int(PRINC) + 1}"

Can anyone help me understand why the old recipe no longer works, and what
needs to be done to remedy?

The basic BSP is crownbay, if that's important.

John

--089e01634d6223869a04e2bc14b3
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello!<div><br></div><div>Under Denzil 7.0.1, I had a reci=
pe mylayer/recipes-core/netbase/netbase_4.47.bbappend that contained:</div>=
<div><div><br></div><div>FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN=
}:&quot;</div>
<div><br></div><div>SRC_URI +=3D &quot; file://interfaces \</div><div>=A0 =
=A0 =A0 =A0 =A0 =A0 &quot;</div></div><div>To put my own interface file in =
the root file system from mylayer/recipes-core/netbase/netbase/interfaces</=
div><div><br>
</div><div>Under Dylan 9.0.1, I tried the same technique, except renaming t=
o netbase_5.0.bbappend, but I don&#39;t get my copy of interfaces, I get so=
me default.=A0</div><div><br></div><div>I&#39;ve hacked at the recipe a bit=
, trying to add a do_install step (based on the recipe in meta), and know a=
t least that the recipe is getting parsed, because of the errors I created.=
 =A0I was able to clear up the errors, but still don&#39;t get my copy. =A0=
Right now, the recipe reads:</div>
<div><br></div><div><div>FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN=
}:&quot;</div><div><br></div><div>SRC_URI_prepend =3D &quot; file://interfa=
ces \<br></div><div>=A0 =A0 =A0 =A0 =A0 =A0 &quot;</div><div><br></div><div=
>do_install_append () {</div>
<div><span class=3D"" style=3D"white-space:pre">	</span>install -d ${D}/${s=
ysconfdir}/network</div><div><span class=3D"" style=3D"white-space:pre">	</=
span>install -m 0644 ${WORKDIR}/interfaces ${D}${sysconfdir}/network/interf=
aces</div>
<div>}</div><div><br></div><div>PRINC :=3D &quot;${@int(PRINC) + 1}&quot;</=
div></div><div><br></div><div>Can anyone help me understand why the old rec=
ipe no longer works, and what needs to be done to remedy?</div><div><br></d=
iv>
<div>The basic BSP is crownbay, if that&#39;s important. =A0</div><div><br>=
</div><div>John</div><div><br></div></div>

--089e01634d6223869a04e2bc14b3--
