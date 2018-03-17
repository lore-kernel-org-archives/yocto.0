Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B591AE008E4; Sat, 17 Mar 2018 10:16:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kratsg[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0378EE006E9
	for <yocto@yoctoproject.org>; Sat, 17 Mar 2018 10:16:46 -0700 (PDT)
Received: by mail-io0-f174.google.com with SMTP id d21so16126760ioc.5
	for <yocto@yoctoproject.org>; Sat, 17 Mar 2018 10:16:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=jS/Xvpj32ETJZH/+I1C6aB58k06c/FAWQLnOdhepMkQ=;
	b=TQ3f6+XZG6wkcqyTMWMhpJh0xUIUpwFCLY1zXCksltM8lF1Yb5dk5gk+5m3YSr/pTO
	Zp9EZv0IeXwMTOgbMADl8TDsnQEQHp1EGnrrBAvx6C88RomHX7+Qs/aMqygHtYFGmXdw
	wtA9SOFlDhyzmPhS0baO7m6nOk9TlBYNPt16EIYd1k0sfOTelNGsBQv3BNpe2QV7i9xk
	9cx2m3+D2bx0aL5pz+jB03YSFswUSeMV0SReBXV4iJCmmLmJMwYaecA2ojOsB+AAuV+V
	h+EYqz44sJ/sVAheNysA07oeXOd1ou/gcNVRyHjPoIcZ6bX9THDaXGbpB+KnCRv5Yb99
	Y6fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=jS/Xvpj32ETJZH/+I1C6aB58k06c/FAWQLnOdhepMkQ=;
	b=ScEYL7R5Mu/iLEQai9HUeoSRWW5aJlfeIaUhEw9RaaXHR031Y84LbdezOCAgXcMTGQ
	2kSfc0RmWYvs8MiXmMzgXWJQ18RGZx2IMGJmpWa5SYdiJ9Br7hgwlwZ1ulSo47L2cIpa
	zsG7YxSgCBem01Zu+VXYUJorV3gM4e97HwMxH3lgjiqGU2J3mQ2fYvv/5OzUBW9wklJQ
	JdFIH93Z/L9/6h4ZMgCdpkrb2GHLQgTPwJVwjWiAf712Gyrq36JOIFRLuB+Kd5kQqLtT
	WHMxX/LC5d1JAiDrwf504t0AS5ZlW5//FnlmFWnT3qmbrSHvr9Cyqqru/hd8fQgfxpkh
	uezQ==
X-Gm-Message-State: AElRT7Gcesps5ISSV5vvAUSmNEfBhI1mHLcz9QN3KsnkTXJF1Me0MSx0
	KwSsyphN33qIZbqozNMjSUo2/TPIS49YOECJVPgk8A==
X-Google-Smtp-Source: AG47ELsQmlJuJ6S6Me70qPQ0RdFwxqUBypCkFk85U+8Agt4XXAAWMazTiXgK0EDTrJOP7K6Q0rziVSwjrLOfGCA/C0o=
X-Received: by 10.107.30.141 with SMTP id e135mr5934368ioe.183.1521307006039; 
	Sat, 17 Mar 2018 10:16:46 -0700 (PDT)
MIME-Version: 1.0
From: Giordon Stark <kratsg@gmail.com>
Date: Sat, 17 Mar 2018 17:16:35 +0000
Message-ID: <CAFzUWGnZq5Cr1wBLYr3ZxLp12vXUrqok4+pANJ56enWQxLvORg@mail.gmail.com>
To: "N:" <yocto@yoctoproject.org>
Subject: Could not invoke DNF with python package (Unable to find a match)
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
X-List-Received-Date: Sat, 17 Mar 2018 17:16:47 -0000
Content-Type: multipart/alternative; boundary="001a114198eeb0860905679ee311"

--001a114198eeb0860905679ee311
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm a bit confused by this error, since as far as I can tell, bitbake sees
this particular recipe I wrote...

inc file:
https://github.com/kratsg/meta-l1calo/blob/master/recipes-python/python-ironman.inc

specific version:
https://github.com/kratsg/meta-l1calo/blob/master/recipes-python/python-ironman_0.2.13.bb


ERROR: zynq-base-1.0-r0 do_rootfs: Could not invoke dnf. Command
'/local/d4/gstark/poky/build/tmp/work/gfex_prototype3a-poky-linux/zynq-base/1.0-r0/recipe-sysroot-native/usr/bin/dnf
-y -c
/local/d4/gstark/poky/build/tmp/work/gfex_prototype3a-poky-linux/zynq-base/1.0-r0/rootfs/etc/dnf/dnf.conf
--setopt=reposdir=/local/d4/gstark/poky/build/tmp/work/gfex_prototype3a-poky-linux/zynq-base/1.0-r0/rootfs/etc/yum.repos.d
--repofrompath=oe-repo,/local/d4/gstark/poky/build/tmp/work/gfex_prototype3a-poky-linux/zynq-base/1.0-r0/oe-rootfs-repo
--installroot=/local/d4/gstark/poky/build/tmp/work/gfex_prototype3a-poky-linux/zynq-base/1.0-r0/rootfs
--setopt=logdir=/local/d4/gstark/poky/build/tmp/work/gfex_prototype3a-poky-linux/zynq-base/1.0-r0/temp
--nogpgcheck install locale-base-en-us locale-base-en-gb
packagegroup-core-boot run-postinsts packagegroup-core-ssh-openssh devmem2
init-clock python-ironman packagegroup-base-extended' returned 1:
Added oe-repo repo from
file:///local/d4/gstark/poky/build/tmp/work/gfex_prototype3a-poky-linux/zynq-base/1.0-r0/oe-rootfs-repo
Last metadata expiration check: 0:00:00 ago on Sat Mar 17 17:11:44 2018 UTC.
No package python-ironman available.
Error: Unable to find a match

ERROR: zynq-base-1.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in:
/local/d4/gstark/poky/build/tmp/work/gfex_prototype3a-poky-linux/zynq-base/1.0-r0/temp/log.do_rootfs.24270
ERROR: Task (/local/d4/gstark/meta-l1calo/recipes-core/images/zynq-base.bb:do_rootfs)
failed with exit code '1'

so I double-checked that the recipe was discoverable:

kratsg@dc:/local/d4/gstark/poky/build$ bitbake-layers show-recipes
python-ironman
=== Matching recipes: ===
python-ironman:
  meta-l1calo          0.2.13

Any ideas if I wrote this python recipe incorrectly? If I inherit from
pypi, it should install this for me as an rpm that can be picked up by
bitbake, right?

Giordon
-- 
Giordon Stark

--001a114198eeb0860905679ee311
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m a bit confused by this erro=
r, since as far as I can tell, bitbake sees this particular recipe I wrote.=
..</div><div><br></div><div>inc file:=C2=A0<a href=3D"https://github.com/kr=
atsg/meta-l1calo/blob/master/recipes-python/python-ironman.inc">https://git=
hub.com/kratsg/meta-l1calo/blob/master/recipes-python/python-ironman.inc</a=
>=C2=A0</div><div>specific version:=C2=A0<a href=3D"https://github.com/krat=
sg/meta-l1calo/blob/master/recipes-python/python-ironman_0.2.13.bb">https:/=
/github.com/kratsg/meta-l1calo/blob/master/recipes-python/python-ironman_0.=
2.13.bb</a>=C2=A0</div><div><br></div><div><div><font face=3D"monospace">ER=
ROR: zynq-base-1.0-r0 do_rootfs: Could not invoke dnf. Command &#39;/local/=
d4/gstark/poky/build/tmp/work/gfex_prototype3a-poky-linux/zynq-base/1.0-r0/=
recipe-sysroot-native/usr/bin/dnf -y -c /local/d4/gstark/poky/build/tmp/wor=
k/gfex_prototype3a-poky-linux/zynq-base/1.0-r0/rootfs/etc/dnf/dnf.conf --se=
topt=3Dreposdir=3D/local/d4/gstark/poky/build/tmp/work/gfex_prototype3a-pok=
y-linux/zynq-base/1.0-r0/rootfs/etc/yum.repos.d --repofrompath=3Doe-repo,/l=
ocal/d4/gstark/poky/build/tmp/work/gfex_prototype3a-poky-linux/zynq-base/1.=
0-r0/oe-rootfs-repo --installroot=3D/local/d4/gstark/poky/build/tmp/work/gf=
ex_prototype3a-poky-linux/zynq-base/1.0-r0/rootfs --setopt=3Dlogdir=3D/loca=
l/d4/gstark/poky/build/tmp/work/gfex_prototype3a-poky-linux/zynq-base/1.0-r=
0/temp --nogpgcheck install locale-base-en-us locale-base-en-gb packagegrou=
p-core-boot run-postinsts packagegroup-core-ssh-openssh devmem2 init-clock =
python-ironman packagegroup-base-extended&#39; returned 1:</font></div><div=
><font face=3D"monospace">Added oe-repo repo from file:///local/d4/gstark/p=
oky/build/tmp/work/gfex_prototype3a-poky-linux/zynq-base/1.0-r0/oe-rootfs-r=
epo</font></div><div><font face=3D"monospace">Last metadata expiration chec=
k: 0:00:00 ago on Sat Mar 17 17:11:44 2018 UTC.</font></div><div><font face=
=3D"monospace">No package python-ironman available.</font></div><div><font =
face=3D"monospace">Error: Unable to find a match</font></div><div><font fac=
e=3D"monospace"><br></font></div><div><font face=3D"monospace">ERROR: zynq-=
base-1.0-r0 do_rootfs: Function failed: do_rootfs</font></div><div><font fa=
ce=3D"monospace">ERROR: Logfile of failure stored in: /local/d4/gstark/poky=
/build/tmp/work/gfex_prototype3a-poky-linux/zynq-base/1.0-r0/temp/log.do_ro=
otfs.24270</font></div><div><font face=3D"monospace">ERROR: Task (/local/d4=
/gstark/meta-l1calo/recipes-core/images/zynq-base.bb:do_rootfs) failed with=
 exit code &#39;1&#39;</font></div></div><div><br></div><div>so I double-ch=
ecked that the recipe was discoverable:</div><div><br></div><div><div><font=
 face=3D"monospace">kratsg@dc:/local/d4/gstark/poky/build$ bitbake-layers s=
how-recipes python-ironman</font></div><div><font face=3D"monospace">=3D=3D=
=3D Matching recipes: =3D=3D=3D</font></div><div><font face=3D"monospace">p=
ython-ironman:</font></div><div><font face=3D"monospace">=C2=A0 meta-l1calo=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 0.2.13</font></div></div><div><br></div>=
<div>Any ideas if I wrote this python recipe incorrectly? If I inherit from=
 pypi, it should install this for me as an rpm that can be picked up by bit=
bake, right?</div><div><br></div><div>Giordon</div></div>-- <br><div dir=3D=
"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr">Giordon Stark</div></div>

--001a114198eeb0860905679ee311--
