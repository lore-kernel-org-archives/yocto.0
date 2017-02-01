Return-Path: <usmanhaider89@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E8F8E00546; Wed,  1 Feb 2017 08:08:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (usmanhaider89[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.51 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.51 listed in list.dnswl.org]
Received: from mail-oi0-f51.google.com (mail-oi0-f51.google.com
	[209.85.218.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF980E003E1
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2017 08:08:20 -0800 (PST)
Received: by mail-oi0-f51.google.com with SMTP id w204so236771180oiw.0
	for <yocto@yoctoproject.org>; Wed, 01 Feb 2017 08:08:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=BlH1We8nu6DGMdEBTR/GEEf8+Z/+VPy1E2mTgpS0EXQ=;
	b=Sigp/MRc/bQRDBqV1g74uWN6p/X+X3Ds6hN56Z1AIAiKZlx478eRRm2lSr8PUUkk23
	5AZTtmLH7uIgnL6aMm/HLfjZga37l+/HE8or9Donzwp4sBoXdR9ApAbmI0vGMII/o+it
	5VlGgils45V0eHjoPuQm1ZyEfZdgjwgQQRium3Hi4gkFyTrcBgVVYw/ThbVd6PJYxUDT
	dax7HkoDLnKrmVXDZYFnknOYN0nt4u+BpDw2k8tBtmccEalFzIvEaRj0tV4qYb1NfIyl
	QdWvX4Kbnj7dMA9u7erepn9NY5Yl9UtEIkgND6GJVk9/9xmHEcpWcsOoNKe/P3y/uFYV
	uzhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=BlH1We8nu6DGMdEBTR/GEEf8+Z/+VPy1E2mTgpS0EXQ=;
	b=coY2hY7r5tnRSGf8/Z1hagLFlquJosF1ZJ+20RpEe9dQmkkOgQ5/B6j3k11OnSO+yZ
	m09TuVu2LUuzxPfKEq2JEiC5fwbfx/zHBFVDc6njqgkiw0wrBFluv+AZ6WlgebYTdzKw
	EpHA8VJqfNW62Sv0pRlp1OeZ4ZVOeGZA3mKMJs+bkde0KsWF5Nht0T0a4Z9G1EYLWf8a
	cXuNtj01LncBLrL1GGsLZnCnzJh3oYyozmVgGcxtIQr8LfuWrM4aPLXQ9nEtuEkDzOs5
	L5gGxZOGxybl7GNL26gujf1GEvGZMRXH9yC3d1TRpTMRKaaOxZGliLd9fTmEgNBkoxVx
	TyVQ==
X-Gm-Message-State: AIkVDXJL7u9SgP+saoIrkeVFGNYfoWR7k7rB3ImqsK5zLPv4Io/armvFUMUpdDMkYZiS5Rzp4J2TLuMJRu638w==
X-Received: by 10.202.213.66 with SMTP id m63mr1506510oig.143.1485965299365;
	Wed, 01 Feb 2017 08:08:19 -0800 (PST)
MIME-Version: 1.0
Received: by 10.182.50.74 with HTTP; Wed, 1 Feb 2017 08:08:19 -0800 (PST)
From: Usman Haider <usmanhaider89@gmail.com>
Date: Wed, 1 Feb 2017 21:08:19 +0500
Message-ID: <CANxWOTYfkUDguyFogHHA2HH77McT06-4+z96S7pJupfRKHhm+g@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: meta-raspberrypi issue
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
X-List-Received-Date: Wed, 01 Feb 2017 16:08:24 -0000
Content-Type: multipart/alternative; boundary=001a113de9c0d15a1205477a4101

--001a113de9c0d15a1205477a4101
Content-Type: text/plain; charset=UTF-8

Hi,

I am new to yocto and just started working on it. I am having issue
with meta-raspberrypi. I did inside poky

$ git checkout -b work_branch -t origin/daisy

$ git clone git://git.yoctoproject.org/meta-raspberrypi

$ source oe-init-build-env rpi-build

updated the local.conf and bblayer.conf files inside rpi-build

In local.conf

BB_NUMBER_THREADS ?= "${@oe.utils.cpu_count()}"
PARALLEL_MAKE ?= "-j ${@oe.utils.cpu_count()}"
MACHINE ?= "raspberrypi"

In bblayer.conf
# LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
# changes incompatibly
LCONF_VERSION = "6"

BBPATH = "${TOPDIR}"
BBFILES ?= ""

BBLAYERS ?= " \
  /home/vm/poky/meta \
  /home/vm/poky/meta-yocto \
  /home/vm/poky/meta-yocto-bsp \
  /home/vm/poky/meta-raspberrypi \
  "
BBLAYERS_NON_REMOVABLE ?= " \
  /home/vm/poky/meta \
  /home/vm/poky/meta-yocto \
  "

When I run bitbake rpi-basic-image, I get following


*********************************

vm@sdr-vm:~/poky/rpi-build$ bitbake rpi-basic-image
WARNING: Host distribution "Ubuntu-16.04" has not been validated with this
version of the build system; you may possibly experience unexpected
failures. It is recommended that you use a tested distribution.
Parsing recipes: 100% |#########################################| Time:
00:02:37
Parsing of 882 .bb files complete (0 cached, 882 parsed). 1241 targets, 63
skipped, 0 masked, 0 errors.
ERROR: No recipes available for:

/home/vm/poky/meta-raspberrypi/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.10%.bbappend

/home/vm/poky/meta-raspberrypi/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbappend
ERROR: Command execution failed: Exited with 1

*************************************

What could be the issue?

--
Usman

--001a113de9c0d15a1205477a4101
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I am new to yocto and ju=
st started working on it. I am having issue with=C2=A0meta-raspberrypi. I d=
id inside poky</div><div><br></div><div>$=C2=A0git checkout -b work_branch =
-t origin/daisy</div><div><br></div><div>$ git clone git://<a href=3D"http:=
//git.yoctoproject.org/meta-raspberrypi">git.yoctoproject.org/meta-raspberr=
ypi</a></div><div><br></div><div><div>$ source oe-init-build-env rpi-build<=
/div></div><div><br></div><div>updated the local.conf and bblayer.conf file=
s inside rpi-build</div><div><br></div><div>In local.conf</div><div><br></d=
iv><div><div>BB_NUMBER_THREADS ?=3D &quot;${@oe.utils.cpu_count()}&quot;</d=
iv><div>PARALLEL_MAKE ?=3D &quot;-j ${@oe.utils.cpu_count()}&quot;</div><di=
v>MACHINE ?=3D &quot;raspberrypi&quot;</div></div><div><br></div><div>In bb=
layer.conf</div><div><div># LAYER_CONF_VERSION is increased each time build=
/conf/bblayers.conf</div><div># changes incompatibly</div><div>LCONF_VERSIO=
N =3D &quot;6&quot;</div><div><br></div><div>BBPATH =3D &quot;${TOPDIR}&quo=
t;</div><div>BBFILES ?=3D &quot;&quot;</div><div><br></div><div>BBLAYERS ?=
=3D &quot; \</div><div>=C2=A0 /home/vm/poky/meta \</div><div>=C2=A0 /home/v=
m/poky/meta-yocto \</div><div>=C2=A0 /home/vm/poky/meta-yocto-bsp \</div><d=
iv>=C2=A0 /home/vm/poky/meta-raspberrypi \</div><div>=C2=A0 &quot;</div><di=
v>BBLAYERS_NON_REMOVABLE ?=3D &quot; \</div><div>=C2=A0 /home/vm/poky/meta =
\</div><div>=C2=A0 /home/vm/poky/meta-yocto \</div><div>=C2=A0 &quot;</div>=
</div><div><br></div><div>When I run bitbake rpi-basic-image, I get followi=
ng</div><div><br></div><br><div>*********************************</div><div=
><br></div><div><div>vm@sdr-vm:~/poky/rpi-build$ bitbake rpi-basic-image</d=
iv><div>WARNING: Host distribution &quot;Ubuntu-16.04&quot; has not been va=
lidated with this version of the build system; you may possibly experience =
unexpected failures. It is recommended that you use a tested distribution.<=
/div><div>Parsing recipes: 100% |#########################################|=
 Time: 00:02:37</div><div>Parsing of 882 .bb files complete (0 cached, 882 =
parsed). 1241 targets, 63 skipped, 0 masked, 0 errors.</div><div>ERROR: No =
recipes available for:</div><div>=C2=A0 /home/vm/poky/meta-raspberrypi/reci=
pes-multimedia/gstreamer/gstreamer1.0-omx_1.10%.bbappend</div><div>=C2=A0 /=
home/vm/poky/meta-raspberrypi/recipes-multimedia/gstreamer/gstreamer1.0-omx=
_1.2.0.bbappend</div><div>ERROR: Command execution failed: Exited with 1</d=
iv></div><div><br></div><div>*************************************</div><di=
v><br></div><div>What could be the issue?</div><div><br></div><div>--</div>=
<div>Usman</div></div>

--001a113de9c0d15a1205477a4101--
