Return-Path: <elcapitanbrown@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6E35E00DC6; Fri, 14 Jun 2019 06:52:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (elcapitanbrown[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.47 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
	[209.85.128.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADD30E00DB7
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2019 06:52:52 -0700 (PDT)
Received: by mail-wm1-f47.google.com with SMTP id c6so2436970wml.0
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2019 06:52:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=LwiZihf+OG8RoxNQc3Gt6LnIyNboAUAuXS3dh+UxNxw=;
	b=SK5tTDAiwg82dVCRcCszFyhR+gbll8VjelwVMYi5fuGbl+yJDjcTSsU6bOAAAT2kc1
	OHN0jXBHuxPz3IiYZ2d+oE7Hpo4YEtkKKSYQzWqpfg4v6aXQE0GZUUp7yznZWMDr5Uar
	iPRmTbnLd3TndZ9duXw6VnSmnUF+DcWq3z9CmFkoQ1AgLW06liqf15AlnjzhQIu6zqfV
	KMBosD28t0hCP+jGwVScBhkFDOi0FBRQCC6IpDRMPlNWW68VybkMPQl93DnOoXJoYFRQ
	ynAo6goXI12RlznSfzp2dWnSFjkTkdioSAKZZ5eyjJeQRDnXqX7w/MYJtBaFq629RGpC
	ZraA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=LwiZihf+OG8RoxNQc3Gt6LnIyNboAUAuXS3dh+UxNxw=;
	b=cfook6sMZaCBhal7TrD0ADBB0N7PPwmoA/lGx6KbBQeuwtvT+2rCUYOcKeBvygbUEV
	CikODjJjEQIDE6Mc77k93twpArq/YQY4OXxoCmJJ3ohRJKGXD5NwmKxsLkvlkSx/Qa4B
	nCPiBrodnFtABmv+tkz99SzWodo8z/zC6pWaxB+vKIyhrEFi7kLM4SFKiWZdEOc2zLgY
	h6pkAmHZUyEbiwoQltwM1Mv6IoR4I9K1yLWzuVHisxYrqudDxJ2EOe7C+IuB96A4lhVV
	bJwUf0mLKpV3dgYcoZZ2lC1aOFkaI6cplMFVpE5NU5s+RMiBbLjqKBtCZExWXLUyS7de
	R3KQ==
X-Gm-Message-State: APjAAAW1hXVhdg7ovVgf74E1Xi0ne1ej0ARTwohb/iRNtH6TS+X90h+G
	fHIxNwf4hdA0qqZDEut3e8GBLElsvHUoQ0DxLLekBpyG
X-Google-Smtp-Source: APXvYqyFbzBacnxM//9AFf35OlXS+wBDl+VQVaS5Othm98mvNLaMhjclwv1kvqe+E8MCejY+kEKaqsxY/DjmLUALQtI=
X-Received: by 2002:a1c:1947:: with SMTP id 68mr7813175wmz.165.1560520371404; 
	Fri, 14 Jun 2019 06:52:51 -0700 (PDT)
MIME-Version: 1.0
From: Larry Brown <elcapitanbrown@gmail.com>
Date: Fri, 14 Jun 2019 09:52:40 -0400
Message-ID: <CAOmL4Uj8+A=nXjyu198+XsTMsj6wTa5NgKi=nypLVDWQjix4xA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: dnf causing build failure
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
X-List-Received-Date: Fri, 14 Jun 2019 13:52:53 -0000
Content-Type: multipart/alternative; boundary="000000000000670364058b48f6cc"

--000000000000670364058b48f6cc
Content-Type: text/plain; charset="UTF-8"

I've created a recipe that simply copies files into a folder of the image.
Basically in this form:

------------------------------------------------------

SUMMARY = "Some text"
HOMEPAGE = ""
LICENSE = "CLOSED"
LIC_FILES_CHKSUM = ""

DEPENDS = "openssl"

do_install () {
     install -m 0644 ${WORKDIR}/path/fileA ${B}/
     install -m 0644 ${WORKDIR}/path/fileB ${B}/
}

FILES_${PN}-ssh = "${sysconfdir}/path/fileA ${sysconfdir}/path/fileB"

-------------------------------------------------

When I build this I only want the files in the target image.  I don't need
an rpm built that could be used to deliver these files.  Now there might be
something I could do that would enable DNF to succeed, however I would like
to learn how to get the package installer to ignore/skip a recipe (
openssh-keys-install.bb in this case) that is only used during the initial
build.

Can someone shed some light here?

Also, if there is already a way built into the build process to retain a
set of keys for each device so they don't keep creating new keys, that
would be cool and appreciated, but I'm wanting to learn how to accomplish
this so it does not stop me when wanting to include other files elsewhere.

I'm assuming here that there is someone here that has dealt with this;
however, if I'm mistaken the following is the error that is generated when
building.  And by the way, the files do get placed into the correct folder
(after some bit of tweaking of the code).  But the error persists:

ERROR: core-image-minimal-1.0-r0 do_rootfs: Could not invoke dnf. Command
'...--nogpgcheck install base-passwd iptables openssh openssh-keys-install
packagegroup-core-boot run-postinsts shadow' returned 1:
DNF version:4.2.2
cachedir:
/stor/development/yocto/poky/trident-build/tmp/work/raspberrypi3_64-poky-linux/core-image-minimal/1.0-r0/rootfs/var/cache/dnf
Added oe-repo repo from
/stor/development/yocto/poky/trident-build/tmp/work/raspberrypi3_64-poky-linux/core-image-minimal/1.0-r0/oe-rootfs-repo
repo: using cache for: oe-repo
not found other for:
not found modules for:
not found deltainfo for:
not found updateinfo for:
oe-repo: using metadata from Thu 13 Jun 2019 09:13:54 PM UTC.
No module defaults found
No match for argument: openssh-keys-install
Error: Unable to find a match

ERROR: core-image-minimal-1.0-r0 do_rootfs:
ERROR: core-image-minimal-1.0-r0 do_rootfs: Function failed: do_rootfs
....

TIA



-- 
Larry Brown
S/V Trident
Palm Harbor, FL
~~~~~~~~~~~~~~~~~_/)~~~~~~~~
    ~     ~          ~~           ~
~           ~~_/)    ~      ~ ~        ~
     ~                  _/)          ~

--000000000000670364058b48f6cc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:comic sa=
ns ms,sans-serif">I&#39;ve created a recipe that simply copies files into a=
 folder of the image.=C2=A0 Basically in this form:</div><div class=3D"gmai=
l_default" style=3D"font-family:comic sans ms,sans-serif"><br></div><div cl=
ass=3D"gmail_default" style=3D"font-family:comic sans ms,sans-serif">------=
------------------------------------------------</div><div class=3D"gmail_d=
efault" style=3D"font-family:comic sans ms,sans-serif"><br></div><div class=
=3D"gmail_default" style=3D"font-family:comic sans ms,sans-serif">SUMMARY =
=3D &quot;Some text&quot;</div><div class=3D"gmail_default" style=3D"font-f=
amily:comic sans ms,sans-serif">HOMEPAGE =3D &quot;&quot;</div><div class=
=3D"gmail_default" style=3D"font-family:comic sans ms,sans-serif">LICENSE =
=3D &quot;CLOSED&quot;</div><div class=3D"gmail_default" style=3D"font-fami=
ly:comic sans ms,sans-serif">LIC_FILES_CHKSUM =3D &quot;&quot;</div><div cl=
ass=3D"gmail_default" style=3D"font-family:comic sans ms,sans-serif"><br></=
div><div class=3D"gmail_default" style=3D"font-family:comic sans ms,sans-se=
rif">DEPENDS =3D &quot;openssl&quot;</div><div class=3D"gmail_default" styl=
e=3D"font-family:comic sans ms,sans-serif"><br></div><div class=3D"gmail_de=
fault" style=3D"font-family:comic sans ms,sans-serif">do_install () {</div>=
<div class=3D"gmail_default" style=3D"font-family:comic sans ms,sans-serif"=
>=C2=A0 =C2=A0 =C2=A0install -m 0644 ${WORKDIR}/path/fileA ${B}/</div><div =
class=3D"gmail_default" style=3D"font-family:comic sans ms,sans-serif">=C2=
=A0 =C2=A0 =C2=A0install -m 0644=C2=A0${WORKDIR}/path/fileB ${B}/</div><div=
 class=3D"gmail_default" style=3D"font-family:comic sans ms,sans-serif">}</=
div><div class=3D"gmail_default" style=3D"font-family:comic sans ms,sans-se=
rif"><br></div><div class=3D"gmail_default" style=3D"font-family:comic sans=
 ms,sans-serif">FILES_${PN}-ssh =3D &quot;${sysconfdir}/path/fileA ${syscon=
fdir}/path/fileB&quot;</div><div class=3D"gmail_default" style=3D"font-fami=
ly:comic sans ms,sans-serif"><br></div><div class=3D"gmail_default" style=
=3D"font-family:comic sans ms,sans-serif">---------------------------------=
----------------</div><div><br></div><div><div class=3D"gmail_default" styl=
e=3D"font-family:&quot;comic sans ms&quot;,sans-serif">When I build this I =
only want the files in the target image.=C2=A0 I don&#39;t need an rpm buil=
t that could be used to deliver these files.=C2=A0 Now there might be somet=
hing I could do that would enable DNF to succeed, however I would like to l=
earn how to get the package installer to ignore/skip a recipe (<a href=3D"h=
ttp://openssh-keys-install.bb">openssh-keys-install.bb</a> in this case) th=
at is only used during the initial build.</div><div class=3D"gmail_default"=
 style=3D"font-family:&quot;comic sans ms&quot;,sans-serif"><br></div><div =
class=3D"gmail_default" style=3D"font-family:&quot;comic sans ms&quot;,sans=
-serif">Can someone shed some light here? </div><br></div><div><div class=
=3D"gmail_default" style=3D"font-family:&quot;comic sans ms&quot;,sans-seri=
f">Also, if there is already a way built into the build process to retain a=
 set of keys for each device so they don&#39;t keep creating new keys, that=
 would be cool and appreciated, but I&#39;m wanting to learn how to accompl=
ish this so it does not stop me when wanting to include other files elsewhe=
re.</div><br></div><div><div class=3D"gmail_default" style=3D"font-family:&=
quot;comic sans ms&quot;,sans-serif">I&#39;m assuming here that there is so=
meone here that has dealt with this; however, if I&#39;m mistaken the follo=
wing is the error that is generated when building.=C2=A0 And by the way, th=
e files do get placed into the correct folder (after some bit of tweaking o=
f the code).=C2=A0 But the error persists:</div><div class=3D"gmail_default=
" style=3D"font-family:&quot;comic sans ms&quot;,sans-serif"><br></div><div=
 class=3D"gmail_default" style=3D"font-family:&quot;comic sans ms&quot;,san=
s-serif">ERROR: core-image-minimal-1.0-r0 do_rootfs: Could not invoke dnf. =
Command &#39;...--nogpgcheck install base-passwd iptables openssh openssh-k=
eys-install packagegroup-core-boot run-postinsts shadow&#39; returned 1:</d=
iv><div class=3D"gmail_default" style=3D"font-family:&quot;comic sans ms&qu=
ot;,sans-serif">DNF version:4.2.2</div><div class=3D"gmail_default" style=
=3D"font-family:&quot;comic sans ms&quot;,sans-serif">cachedir: /stor/devel=
opment/yocto/poky/trident-build/tmp/work/raspberrypi3_64-poky-linux/core-im=
age-minimal/1.0-r0/rootfs/var/cache/dnf<br>Added oe-repo repo from /stor/de=
velopment/yocto/poky/trident-build/tmp/work/raspberrypi3_64-poky-linux/core=
-image-minimal/1.0-r0/oe-rootfs-repo<br>repo: using cache for: oe-repo<br>n=
ot found other for: <br>not found modules for: <br>not found deltainfo for:=
 <br>not found updateinfo for: <br>oe-repo: using metadata from Thu 13 Jun =
2019 09:13:54 PM UTC.<br>No module defaults found<br></div><div class=3D"gm=
ail_default" style=3D"font-family:&quot;comic sans ms&quot;,sans-serif">No =
match for argument: openssh-keys-install<br>Error: Unable to find a match<b=
r><br>ERROR: core-image-minimal-1.0-r0 do_rootfs: <br>ERROR: core-image-min=
imal-1.0-r0 do_rootfs: Function failed: do_rootfs<br></div><div class=3D"gm=
ail_default" style=3D"font-family:&quot;comic sans ms&quot;,sans-serif">...=
.</div><div class=3D"gmail_default" style=3D"font-family:&quot;comic sans m=
s&quot;,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-fa=
mily:&quot;comic sans ms&quot;,sans-serif">TIA</div><div class=3D"gmail_def=
ault" style=3D"font-family:&quot;comic sans ms&quot;,sans-serif"><br></div>=
<br></div><div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature"><div dir=3D"ltr">Larry Brown<div>S/V Tri=
dent</div><div>Palm Harbor, FL</div><div>~~~~~~~~~~~~~~~~~_/)~~~~~~~~</div>=
<div>=C2=A0 =C2=A0 ~ =C2=A0 =C2=A0 ~ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0~~ =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ~</div><div>~ =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ~~_/) =C2=A0 =C2=A0~ =C2=A0 =C2=A0 =C2=A0~ ~ =C2=A0 =C2=A0 =C2=
=A0 =C2=A0~</div><div>=C2=A0 =C2=A0 =C2=A0~ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_/) =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0~</div=
></div></div></div>

--000000000000670364058b48f6cc--
