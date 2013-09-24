Return-Path: <gschmottlach@gmail.com>
Received: from mail-wg0-f50.google.com (mail-wg0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE0FDE01595
	for <yocto@yoctoproject.org>; Tue, 24 Sep 2013 13:17:11 -0700 (PDT)
Received: by mail-wg0-f50.google.com with SMTP id f12so5227824wgh.29
	for <yocto@yoctoproject.org>; Tue, 24 Sep 2013 13:17:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Vrz4LVg5R/LPQX2f2Qxp+gJ3hTdhqFLuSWf1kWIEC/8=;
	b=iOeFwVqEA6oRBWfpy5DhATOhsnFBWYoRcEOi5IQLdXFFwmP1JhPP1kbpD/f/25mqCY
	sU3cV07wmAOVoiDm6lJHV0ShjG8O3ES4SIHtx3chV+Bh52r1YZx/S2bpDG6c2toveCgF
	U0Dem1tXtEzdk2rNXsxu79vac+4YslRXt1fmhb+L2clSIGMy2SS7oBLKiCAD3gTLtr06
	wQPOs/0qu/1BHs9tawZZarVCG9Ppamp6HEAohMrX7SnsK8qeL13ezSj/C2yjlKcHBWWm
	jCr5H/O0/8hL37WuUd5fK+Vmxqv0pEDHnQWo8Rj6vRWXHawE4IanV0H3eyj5CeJtg2UR
	CYLQ==
MIME-Version: 1.0
X-Received: by 10.180.187.236 with SMTP id fv12mr11312626wic.20.1380053830207; 
	Tue, 24 Sep 2013 13:17:10 -0700 (PDT)
Received: by 10.216.152.9 with HTTP; Tue, 24 Sep 2013 13:17:10 -0700 (PDT)
Date: Tue, 24 Sep 2013 16:17:10 -0400
Message-ID: <CAMS2kBF1Ha6tEWpkny1DZRXW5Z3T5YKBkd-GhhBrT3aVmjS8-Q@mail.gmail.com>
From: Glenn Schmottlach <gschmottlach@gmail.com>
To: yocto@yoctoproject.org
Subject: IPK naming oddity for ipkg's containing archived ${PN}-dev files
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
X-List-Received-Date: Tue, 24 Sep 2013 20:17:15 -0000
Content-Type: multipart/alternative; boundary=001a11c25cec5212c204e726d295

--001a11c25cec5212c204e726d295
Content-Type: text/plain; charset=ISO-8859-1

I've run across what appears to be a naming inconsistency (not sure if it's
intentional or a bug) that seems to impact the name given to the ipk file
for recipe's "dev" files.


Let me be more clear. My recipe produces a shared object library called:

libtts_engine.so

This shared library is deployed in /usr/lib and the package-split directory
structure looks like the following in my recipe workdir:

package-split/tts-sdk-dev
package-split/tts-sdk-dev/usr
package-split/tts-sdk-dev/usr/lib
package-split/tts-sdk-dev/usr/lib/libtts_engine.so
package-split/tts-sdk-dev/usr/include
package-split/tts-sdk-dev/usr/include/tts.h

So, when Yocto generates my ipk archive I would expect it to be named
something like:

tts-sdk-dev_${PV}_${PACKAGE_ARCH}.ipk

Instead, Yocto is generating the following name for the "dev" ipk:

libtts_engine-dev_${PV}_${PACKAGE_ARCH}.ipk

This is *not* consistent with how the other ipk are named by Yocto, e.g.

tts-sdk_${PV}_${PACKAGE_ARCH}.ipk
tts-sdk-doc_${PV}_${PACKAGE_ARCH}.ipk
tts-sdk-dbg_${PV}_${PACKAGE_ARCH}.ipk

In the poky class file (package_ipk.bbclass) I looked at the
do_package_ipk() python function and see that there is an explicit query
for the following variable to determine the base name of the ipk file:

pkgname = localdata.getVar('PKG_%s' % pkg, True)

In most cases, this look-up returns the expected name, e.g. tts-sdk-doc,
tts-sdk-dbg, etc.... But for some reason, the "dev" package name is
remapped from tts-sdk to libtts_engine. My only counter-measure to correct
this is to add the following explicit assignment in my recipe:

PKG_${PN}-dev = "${PN}-dev"

This seems to "correct" the name. Can anyone explain to me the behavior I
am observing? Is there some reason the "dev" package (and only the "dev"
package) is named differently when the ipk is created. Am I breaking an
expected behavior by forcing it to use the more consistent
tts-sdk-dev_${PV}_${PACKAGE_ARCH}.ipk name? I can't find any documentation
that answers this question.

Thanks . . .

--001a11c25cec5212c204e726d295
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;ve run across what appears to be a naming incon=
sistency (not sure if it&#39;s intentional or a bug) that seems to impact t=
he name given to the ipk file for recipe&#39;s &quot;dev&quot; files.<br><b=
r>
<br></div><div>Let me be more clear. My recipe produces a shared object lib=
rary called:<br><br></div><div>libtts_engine.so<br><br></div><div>This shar=
ed library is deployed in /usr/lib and the package-split directory structur=
e looks like the following in my recipe workdir:<br>
<br></div><div>package-split/tts-sdk-dev<br></div><div>package-split/tts-sd=
k-dev/usr<br></div><div>package-split/tts-sdk-dev/usr/lib<br></div><div>pac=
kage-split/tts-sdk-dev/usr/lib/libtts_engine.so<br>package-split/tts-sdk-de=
v/usr/include<br>
package-split/tts-sdk-dev/usr/include/tts.h<br><br></div><div>So, when Yoct=
o generates my ipk archive I would expect it to be named something like:<br=
><br></div><div>tts-sdk-dev_${PV}_${PACKAGE_ARCH}.ipk<br><br></div><div>
Instead, Yocto is generating the following name for the &quot;dev&quot; ipk=
:<br><br></div><div>libtts_engine-dev_${PV}_${PACKAGE_ARCH}.ipk<br><br></di=
v><div>This is *not* consistent with how the other ipk are named by Yocto, =
e.g.<br>
<br>tts-sdk_${PV}_${PACKAGE_ARCH}.ipk<br>tts-sdk-doc_${PV}_${PACKAGE_ARCH}.=
ipk<br>tts-sdk-dbg_${PV}_${PACKAGE_ARCH}.ipk<br><br></div><div>In the poky =
class file (package_ipk.bbclass) I looked at the do_package_ipk() python fu=
nction and see that there is an explicit query for the following variable t=
o determine the base name of the ipk file:<br>
<br>pkgname =3D localdata.getVar(&#39;PKG_%s&#39; % pkg, True)<br><br></div=
><div>In most cases, this look-up returns the expected name, e.g. tts-sdk-d=
oc, tts-sdk-dbg, etc.... But for some reason, the &quot;dev&quot; package n=
ame is remapped from tts-sdk to libtts_engine. My only counter-measure to c=
orrect this is to add the following explicit assignment in my recipe:<br>
<br>PKG_${PN}-dev =3D &quot;${PN}-dev&quot;<br><br></div><div>This seems to=
 &quot;correct&quot; the name. Can anyone explain to me the behavior I am o=
bserving? Is there some reason the &quot;dev&quot; package (and only the &q=
uot;dev&quot; package) is named differently when the ipk is created. Am I b=
reaking an expected behavior by forcing it to use the more consistent tts-s=
dk-dev_${PV}_${PACKAGE_ARCH}.ipk name? I can&#39;t find any documentation t=
hat answers this question.<br>
<br></div><div>Thanks . . .<br></div></div>

--001a11c25cec5212c204e726d295--
