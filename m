Return-Path: <jain.arpit6@gmail.com>
Received: from mail-la0-f45.google.com (mail-la0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E1F7E01513
	for <yocto@yoctoproject.org>; Mon,  3 Jun 2013 05:49:48 -0700 (PDT)
Received: by mail-la0-f45.google.com with SMTP id fr10so3426192lab.32
	for <yocto@yoctoproject.org>; Mon, 03 Jun 2013 05:49:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=YRTGJBiYL5EiYH5iev1RH6+jzOC1LiubASQjy+kmz90=;
	b=UrQD3XEyXL6JCGoAFM+JM+eojDIsptVR4C1MahPHakSVuARt+K72vSfAkVc5bCTsI0
	g5eTK0ss6THFMyRljofCi6b/UuuN9O48fe+rSs3jXBBkWOXHpZySJnL0QI8uhzgBs/M3
	AjOOs9oAJfS80a/HSvStMS1iGiHqDPe7akCtUv9PWaz8we/Z/g1KEQVC0uOGaovMVlHJ
	OFJ0/2/XouMIdesEi2jtH1nigSyNsUKpoZF0kDHWH41iMN0YbSkqxvKge+MKn3Yy9QWu
	/hv6r+ANUzWBRC3SQSiiRGtxoGCjylibLYD8zK9lV1YjzB1IC4s6VTwuklvtzITdFvkB
	4T4g==
MIME-Version: 1.0
X-Received: by 10.152.22.199 with SMTP id g7mr10100228laf.20.1370263786607;
	Mon, 03 Jun 2013 05:49:46 -0700 (PDT)
Received: by 10.112.127.102 with HTTP; Mon, 3 Jun 2013 05:49:46 -0700 (PDT)
Date: Mon, 3 Jun 2013 14:49:46 +0200
Message-ID: <CAF_dhbe1mXEveAZz8V2LNPxcg55Ab_pQkyZM4hKcp7=a9PoM3w@mail.gmail.com>
From: Arpit Jain <jain.arpit6@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 03 Jun 2013 08:40:41 -0700
Subject: Building own cmake based package using Yocto
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
X-List-Received-Date: Mon, 03 Jun 2013 12:49:48 -0000
Content-Type: multipart/alternative; boundary=089e0158c3023fd94c04de3f6619

--089e0158c3023fd94c04de3f6619
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am trying to build a CMake based package using Yocto on Linux (SUSE Linux
Enterprise Desktop 11 (x86_64)). I am trying to build (cross compile) for
PowerPC.
I have specified MACHINE as "qemuppc" in local.conf file before command
"bitbake -k core-image-minimal".

I have written a very simple recipe file to build my own package using
cmake.

The file is as simple as do configure()
{
   cmake ..
}

When I run bitbake -b <recipe file>, the build configuration kicks off
and the package gets extracted.

To cross compile my package, it is picking the following
compiler "/home/arpit/yocto/poky-dylan-9.0.0/build/tmp/sysroots/x86_64-linux/usr/bin/ppc603e-poky-linux/powerpc-poky-linux-gcc",
which I suppose is correct.

However, following doubt I have:
1. The dependant libraries for package that it is picking has to be
for PowerPC, but is picking x86_64 libraries like NetSNMP, FUSE.
I guess these libraries should also be picked for PowerPC from Yocto
compiled sources.
Then the configuration stops with an error that "Sorry, could not find
ncurses library   Please install it ".

Can you please suggest if I am doing something wrong.

Regards,
Arpit

--089e0158c3023fd94c04de3f6619
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div>=A0</div><div>I am trying to build a CM=
ake based package using Yocto on Linux (SUSE Linux Enterprise Desktop 11 (x=
86_64)). I=A0am trying to build (cross compile) for PowerPC. </div><div>I h=
ave specified MACHINE as &quot;qemuppc&quot; in local.conf file before comm=
and &quot;bitbake -k core-image-minimal&quot;.</div>
<div>=A0</div><div><div>I have written a very simple recipe file to build m=
y own package using cmake.</div><div>=A0</div><div>The file is as simple as=
 do configure()</div><div>{</div><div>=A0=A0 cmake ..</div><div>}</div><div=
>=A0</div>
<div>When I run bitbake -b &lt;recipe file&gt;, the build configuration=A0k=
icks off and=A0the package gets=A0extracted.=A0</div></div><div>=A0</div><d=
iv>To cross compile my package, it is picking the following compiler=A0&quo=
t;/home/arpit/yocto/poky-dylan-9.0.0/build/tmp/sysroots/x86_64-linux/usr/bi=
n/ppc603e-poky-linux/powerpc-poky-linux-gcc&quot;, which I suppose is corre=
ct.</div>
<div>=A0</div><div>However, following doubt I have:</div><div>1. The depend=
ant libraries for package=A0that it=A0is=A0picking has=A0to be for=A0PowerP=
C, but is picking x86_64 libraries like NetSNMP, FUSE. </div><div>I guess t=
hese libraries should also be picked for PowerPC from Yocto compiled source=
s.</div>
<div>Then the configuration stops with an error that &quot;Sorry, could not=
 find ncurses library=A0=A0 Please install it &quot;.</div><div>=A0</div><d=
iv>Can you please suggest if I am doing something wrong.</div><div>=A0</div=
><div>
Regards,</div><div>Arpit</div><div>=A0</div><div>=A0</div><div>=A0</div></d=
iv>

--089e0158c3023fd94c04de3f6619--
