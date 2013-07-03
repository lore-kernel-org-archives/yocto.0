Return-Path: <vidal.develone@gmail.com>
Received: from mail-ea0-f180.google.com (mail-ea0-f180.google.com
	[209.85.215.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DDA8E0141B
	for <yocto@yoctoproject.org>; Wed,  3 Jul 2013 12:05:07 -0700 (PDT)
Received: by mail-ea0-f180.google.com with SMTP id k10so290515eaj.25
	for <yocto@yoctoproject.org>; Wed, 03 Jul 2013 12:05:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=jigCLXmuByn4V27ifrJlh8TjYhPSvXZrvetHXEmU5nk=;
	b=hz2OIRPM6pdnGoUS684iKTPiF/QydtyjiaZr8M32paCQ/NiWlTNyCa6OJ3q/tHNF6x
	MnHbfBC97agbcKcZ2xn74G36R+ox6Z5VsaN61R9anO699pvTPlGTOjhWVZ0PdciygWdo
	ISa1Ya6jcUVa16yDX6w3HmYLULXb4RdvLyRj11n6W+ZYD+T5NpEMbXb3rVevUMrYpRD0
	nF1yG9NXXLCNhStSFbHb+HPdxlOQovAulUniiv8QBIYu4AxBHaAQpuDsvs6T4fZpHCbA
	CmsGAcRoEjaFve3dKxzjGiDR/dAnsN0OY3Lx2hckNDkOdeGN95YT9h7PMjM5s42fqRnu
	kd8Q==
MIME-Version: 1.0
X-Received: by 10.14.100.2 with SMTP id y2mr2629765eef.75.1372878306522; Wed,
	03 Jul 2013 12:05:06 -0700 (PDT)
Received: by 10.223.74.139 with HTTP; Wed, 3 Jul 2013 12:05:06 -0700 (PDT)
Date: Wed, 3 Jul 2013 13:05:06 -0600
Message-ID: <CANwz6nz2obpC75mXTYtK3roMczmNfHUEt84cj58Wjq5vGAFdaw@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Fedora 18 CentOS 6.4 yocto difference zc702
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
X-List-Received-Date: Wed, 03 Jul 2013 19:05:11 -0000
Content-Type: multipart/alternative; boundary=001a11c2b850c7e20104e0a02392

--001a11c2b850c7e20104e0a02392
Content-Type: text/plain; charset=ISO-8859-1

Hello,
I recently built core-image-minimal for zc702.
This generated a file with a  dtb extension that I have not seen before
uImage--3.8-xilinx+git0+6a0bedad60-r1-zynq-zc702-20130703173428.dtb.  Can
anyone tell me more about the this extension.  Where do you find the
boot.scr or uEnv.txt for the zc702?   I built this on both a CentOS 6.4 and
a Fedora18 x86_64 system.

meta-yocto        = "(nobranch):04af378874f38d1200bea2fa191beeae94232d6e"
meta-xilinx
meta-kc705
meta-zc702
meta-zedboard     = "(nobranch):b065f091f10060f2bb68b58f1d618e26a966fee2"
meta-yocto-bsp    = "(nobranch):04af378874f38d1200bea2fa191beeae94232d6e"

The latest version of poky that I downloaded
commit 8a186a6b3853fc1a7dcf342d421c8926c38949c9
Author: Cristiana Voicu <cristiana.voicu@intel.com>
Date:   Mon Jul 1 08:09:52 2013 +0000

    bitbake: hob: save button from settings called a nonexisting method

    The method was removed when the process for saving configuration
    in Hob was changed. Replace the call with the right function.

    [YOCTO #4793]
    (Bitbake rev: b6aa2b63d71cbe82850a375381b2dbc750cf1905)

    Signed-off-by: Cristiana Voicu <cristiana.voicu@intel.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

causes the following error on both CentOS 6.4 and Fedora 18
. oe-init-build-env

BitBake requires Python 2.7.3 or later
CentOS 6.4 has a non standard location of python.  Does anyone know how to
tell bitbake of the non standard location of python.

This latest version of poky that I downloaded on fedora18
causes the following error.
 MACHINE=zc702 bitbake core-image-minimal -vDD
ERROR:  OE-core's config sanity checker detected a potential
misconfiguration.
    Either fix the cause of this error or at your own risk disable the
checker (see sanity.conf).
    Following is the list of potential problems / advisories:

    Your version of make 3.82 is broken. Please revert to 3.81 or install a
patched version.

ERROR: Execution of event handler 'check_sanity_eventhandler' failed

This version of poky and meta-xilinx worked okay.

meta
meta-yocto        = "(nobranch):04af378874f38d1200bea2fa191beeae94232d6e"
meta-xilinx
meta-kc705
meta-zc702
meta-zedboard     = "(nobranch):b065f091f10060f2bb68b58f1d618e26a966fee2"
meta-yocto-bsp    = "(nobranch):04af378874f38d1200bea2fa191beeae94232d6e"

MACHINE=zc702 bitbake core-image-minimal -vDD

NOTE: Tasks Summary: Attempted 1530 tasks of which 306 didn't need to be
rerun and all succeeded.
We are trying to determine which board to purchase the
Xilinx Zynq-7000 SoC ZC702 Evaluation Kit
EK-Z7-ZC702-G
$895.00 or
AES-Z7EV-7Z020-G
ZEDBOARD ZYNQ BOARD
AES-Z7EV-7Z020-G
ECCN
Avnet Design Services - Custom
$395.00
Does anyone have any experience with either of these boards?
Any and all will be appreciated.
Thanks
  vidal.develone@gmail.com or develone@sbcglobal.net

--001a11c2b850c7e20104e0a02392
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br>I recently built core-image-minimal for zc702.<b=
r>This generated a file with a=A0 dtb extension that I have not seen before=
 uImage--3.8-xilinx+git0+6a0bedad60-r1-zynq-zc702-20130703173428.dtb.=A0 Ca=
n anyone tell me more about the this extension.=A0 Where do you find the bo=
ot.scr or uEnv.txt for the zc702?=A0=A0 I built this on both a CentOS 6.4 a=
nd a Fedora18 x86_64 system.<br>
<br>meta-yocto=A0=A0=A0=A0=A0=A0=A0 =3D &quot;(nobranch):04af378874f38d1200=
bea2fa191beeae94232d6e&quot;
<br>meta-xilinx=A0=A0=A0=A0=A0=A0=A0
<br>meta-kc705=A0=A0=A0=A0=A0=A0=A0=A0
<br>meta-zc702=A0=A0=A0=A0=A0=A0=A0=A0
<br>meta-zedboard=A0=A0=A0=A0 =3D &quot;(nobranch):b065f091f10060f2bb68b58f=
1d618e26a966fee2&quot;
<br>meta-yocto-bsp=A0=A0=A0 =3D &quot;(nobranch):04af378874f38d1200bea2fa19=
1beeae94232d6e&quot;<br><br>The latest version of poky that I downloaded <b=
r>commit 8a186a6b3853fc1a7dcf342d421c8926c38949c9<br>Author: Cristiana Voic=
u &lt;<a href=3D"mailto:cristiana.voicu@intel.com">cristiana.voicu@intel.co=
m</a>&gt;<br>
Date:=A0=A0 Mon Jul 1 08:09:52 2013 +0000<br><br>=A0=A0=A0 bitbake: hob: sa=
ve button from settings called a nonexisting method<br>=A0=A0=A0 <br>=A0=A0=
=A0 The method was removed when the process for saving configuration<br>=A0=
=A0=A0 in Hob was changed. Replace the call with the right function.<br>
=A0=A0=A0 <br>=A0=A0=A0 [YOCTO #4793]<br>=A0=A0=A0 (Bitbake rev: b6aa2b63d7=
1cbe82850a375381b2dbc750cf1905)<br>=A0=A0=A0 <br>=A0=A0=A0 Signed-off-by: C=
ristiana Voicu &lt;<a href=3D"mailto:cristiana.voicu@intel.com">cristiana.v=
oicu@intel.com</a>&gt;<br>=A0=A0=A0 Signed-off-by: Richard Purdie &lt;<a hr=
ef=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfounda=
tion.org</a>&gt;<br>
<br>causes the following error on both CentOS 6.4 and Fedora 18 <br>. oe-in=
it-build-env <br><br>BitBake requires Python 2.7.3 or later<br>CentOS 6.4 h=
as a non standard location of python.=A0 Does anyone know how to tell bitba=
ke of the non standard location of python.<br>
<br>This latest version of poky that I downloaded on fedora18 <br>causes th=
e following error.<br>=A0MACHINE=3Dzc702 bitbake core-image-minimal -vDD
<br>ERROR:=A0 OE-core&#39;s config sanity checker detected a potential misc=
onfiguration.
<br>=A0=A0=A0 Either fix the cause of this error or at your own risk disabl=
e the checker (see sanity.conf).
<br>=A0=A0=A0 Following is the list of potential problems / advisories:
<br>=A0<br>=A0=A0=A0 Your version of make 3.82 is broken. Please revert to =
3.81 or install a patched version.
<br>=A0<br>ERROR: Execution of event handler &#39;check_sanity_eventhandler=
&#39; failed<br><br>This version of poky and meta-xilinx worked okay.<br><b=
r>meta=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0
<br>meta-yocto=A0=A0=A0=A0=A0=A0=A0 =3D &quot;(nobranch):04af378874f38d1200=
bea2fa191beeae94232d6e&quot;
<br>meta-xilinx=A0=A0=A0=A0=A0=A0=A0
<br>meta-kc705=A0=A0=A0=A0=A0=A0=A0=A0
<br>meta-zc702=A0=A0=A0=A0=A0=A0=A0=A0
<br>meta-zedboard=A0=A0=A0=A0 =3D &quot;(nobranch):b065f091f10060f2bb68b58f=
1d618e26a966fee2&quot;
<br>meta-yocto-bsp=A0=A0=A0 =3D &quot;(nobranch):04af378874f38d1200bea2fa19=
1beeae94232d6e&quot;<br><br>MACHINE=3Dzc702 bitbake core-image-minimal -vDD=
<br><br>NOTE: Tasks Summary: Attempted 1530 tasks of which 306 didn&#39;t n=
eed to be rerun and all succeeded.<br>
We are trying to determine which board to purchase the <br>Xilinx Zynq-7000=
 SoC ZC702 Evaluation Kit<br>EK-Z7-ZC702-G<br>$895.00 or<br>AES-Z7EV-7Z020-=
G<br>ZEDBOARD ZYNQ BOARD<br>AES-Z7EV-7Z020-G<br>ECCN<br>Avnet Design Servic=
es - Custom<br>
$395.00<br>Does anyone have any experience with either of these boards?<br>=
Any and all will be appreciated.<br>Thanks<br>=A0
<a href=3D"mailto:vidal.develone@gmail.com">vidal.develone@gmail.com</a> or=
 <a href=3D"mailto:develone@sbcglobal.net">develone@sbcglobal.net</a><br><b=
r></div>

--001a11c2b850c7e20104e0a02392--
