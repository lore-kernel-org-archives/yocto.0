Return-Path: <vidal.develone@gmail.com>
Received: from mail-ea0-f180.google.com (mail-ea0-f180.google.com
	[209.85.215.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2FBEE01506
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 07:50:50 -0700 (PDT)
Received: by mail-ea0-f180.google.com with SMTP id k10so6366896eaj.25
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 07:50:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=OTCHtIsDsE8LNaN5fhY0XdZjc4Eh/zZ4XRnFU3V8YXo=;
	b=0xL6tFhfiDKCxcydIkuSFW996jHn1v3fIkmUK63kdeEFj3swqXMhW2XQuVmYuaIL/r
	7k15HvyE204uTQu84ddMt3vki2OAK/JtIpDXzi+sB0bPEomjWtWTdfHGxbeT57ek/PfH
	Z0ZK/z2elYZaD+9hW8UXAZaCd9bDkWPpbc9BNRYON6u9LZPLlKRBXJijC6iYE9Sla+8Z
	5pHa3D6vzrXL3UxSL44X8NRrp6pFEmfcNsE5Z+93g7ynEXdX4jX0szi3gpDUFtIF9VAV
	IHyB2qQ/GqapQL3wGASNmWl/MkA0kK/IY2DJZ0uX/nfe3VGZhh+gOBq0ZLIS/68lEo9z
	AmAg==
MIME-Version: 1.0
X-Received: by 10.15.93.134 with SMTP id w6mr17063691eez.25.1370962249598;
	Tue, 11 Jun 2013 07:50:49 -0700 (PDT)
Received: by 10.223.159.195 with HTTP; Tue, 11 Jun 2013 07:50:49 -0700 (PDT)
Date: Tue, 11 Jun 2013 08:50:49 -0600
Message-ID: <CANwz6nxwUaGiXncQGQa1OGK=7s4b8TjTWphy4VL=qyiTFe3Z+Q@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Yocto branches with other meta-data sets
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
X-List-Received-Date: Tue, 11 Jun 2013 14:50:52 -0000
Content-Type: multipart/alternative; boundary=089e0160c864e36ad104dee20586

--089e0160c864e36ad104dee20586
Content-Type: text/plain; charset=ISO-8859-1

Hello all
I am trying to understand the various branches of poky.
It appears that 1.4_M6 became dylan-9.0.0 which is DISTRO_VERSION    =
"1.4".  Is this correct?

top level of meta-oe
git branch -a
* master
  remotes/origin/HEAD -> origin/master
  remotes/origin/danny
  remotes/origin/danny-next
  remotes/origin/denzil
  remotes/origin/denzil-next
  remotes/origin/dylan
  remotes/origin/dylan-next
  remotes/origin/master
my conf/bblayers has the following entry
/home/vidal/POKY/build060613_dylan/poky/meta-oe/meta-oe \

When I have the following in my conf/bblayers
/home/vidal/POKY/build060613_dylan/poky/meta-oe \ I get errors.
can not find conf/layer.conf.
When using meta-oe with Yocto which branch should I be using
 origin/master, origin/dylan, or  origin/dylan-next?
My previous builds have been using origin/master
For my Yocto I use the following

git clone git://git.yoctoproject.org/poky
cd poky
git checkout -b dylan origin/dylan
Which I found in dev-manual 3.6.1. Repositories, Tags, and Branches
I noticed that this started as DISTRO_VERSION    = "1.4" a few days ago and
now it is DISTRO_VERSION    = "1.4.1".

When using meta-ti which I use to build images for beaglebone & pandaboard.
top level of meta-ti
git branch -a
* master
  remotes/origin/HEAD -> origin/master
  remotes/origin/danny
  remotes/origin/denzil
  remotes/origin/master
  remotes/origin/split

This branch works with origin/dylan of yocto meta-ti           =
"(nobranch):d61bfa88ed3df9190ac9fd5643c27f77b34c5f01".
I do not see a origin/dylan for meta-ti.
Is Yocto the main source of meta-data that other are creating same branches?
Is Yocto project participation Yocto Project Compatible what is driving the
same branches?

Any and all help will be appreciated.
Thanks
Ed Vidal

--089e0160c864e36ad104dee20586
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello all<br>I am trying to understand the various branche=
s of poky.<br>It appears that 1.4_M6 became dylan-9.0.0 which is DISTRO_VER=
SION=A0=A0=A0 =3D &quot;1.4&quot;.=A0 Is this correct?<br><br>top level of =
meta-oe<br>
git branch -a<br>* master<br>=A0 remotes/origin/HEAD -&gt; origin/master<br=
>=A0 remotes/origin/danny<br>=A0 remotes/origin/danny-next<br>=A0 remotes/o=
rigin/denzil<br>=A0 remotes/origin/denzil-next<br>=A0 remotes/origin/dylan<=
br>=A0 remotes/origin/dylan-next<br>
=A0 remotes/origin/master<br>my conf/bblayers has the following entry<br>/h=
ome/vidal/POKY/build060613_dylan/poky/meta-oe/meta-oe \<br><br>When I have =
the following in my conf/bblayers<br>/home/vidal/POKY/build060613_dylan/pok=
y/meta-oe \ I get errors.<br>
can not find conf/layer.conf.<br>When using meta-oe with Yocto which branch=
 should I be using<br>=A0origin/master, origin/dylan, or=A0 origin/dylan-ne=
xt?<br>My previous builds have been using origin/master <br>For my Yocto I =
use the following<br>
<br>git clone git://<a href=3D"http://git.yoctoproject.org/poky">git.yoctop=
roject.org/poky</a><br>cd poky<br>git checkout -b dylan origin/dylan<br>Whi=
ch I found in dev-manual 3.6.1. Repositories, Tags, and Branches<br>I notic=
ed that this started as DISTRO_VERSION=A0=A0=A0 =3D &quot;1.4&quot; a few d=
ays ago and now it is DISTRO_VERSION=A0=A0=A0 =3D &quot;1.4.1&quot;.<br>
<br>When using meta-ti which I use to build images for beaglebone &amp; pan=
daboard.<br>top level of meta-ti<br>git branch -a<br>* master<br>=A0 remote=
s/origin/HEAD -&gt; origin/master<br>=A0 remotes/origin/danny<br>=A0 remote=
s/origin/denzil<br>
=A0 remotes/origin/master<br>=A0 remotes/origin/split<br><br>This branch wo=
rks with origin/dylan of yocto meta-ti=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &q=
uot;(nobranch):d61bfa88ed3df9190ac9fd5643c27f77b34c5f01&quot;.<br>I do not =
see a origin/dylan for meta-ti.<br>
Is Yocto the main source of meta-data that other are creating same branches=
?<br>Is Yocto project participation Yocto Project Compatible what is drivin=
g the same branches?<br><br>Any and all help will be appreciated.<br>Thanks=
<br>
Ed Vidal<br><br><br>=A0<br><br></div>

--089e0160c864e36ad104dee20586--
