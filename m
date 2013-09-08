Return-Path: <timothy.bean@gmail.com>
Received: from mail-lb0-f172.google.com (mail-lb0-f172.google.com
	[209.85.217.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2A1FE0051D
	for <yocto@yoctoproject.org>; Sun,  8 Sep 2013 10:32:28 -0700 (PDT)
Received: by mail-lb0-f172.google.com with SMTP id x18so4327017lbi.31
	for <yocto@yoctoproject.org>; Sun, 08 Sep 2013 10:32:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=jJepmAJ2mrmA/xoSIf6MWzHic2vJOrSQydH+KR1LwOw=;
	b=XSJ6zCq2dghqIE4lCXU7qU9xJj/i/PtsaLkt3nXs4vilDmK+2HD9SuIYYY7O7QRV4b
	G140z9GJoOQ6ng2/YkF4Ic4qR2ksjg1Iv4OAzWusrJKG9I8/pC4cwro4JRTzIGdJQug0
	l/g33Wd7iS2FXfB3MHn8YL4AmFhEFo0t+/UFN6EUYnpUlCpALkDEIMi2rXJtFeCUOZtc
	Yb9kyHRR54O4P348z5ct3Ieg1rsX/1dbKMSaQJ9uNeMCtCfZ1WCJwrVGD4dJ1RUaGqt/
	+kDr5UaJOTXJkSKPdD1wSoQOYoq1MbgSuCr+x8dWG0pKEhaaZP3j+ZKse3WJBtaQrSkm
	aFYw==
MIME-Version: 1.0
X-Received: by 10.152.3.201 with SMTP id e9mr2837314lae.24.1378661546643; Sun,
	08 Sep 2013 10:32:26 -0700 (PDT)
Received: by 10.112.131.40 with HTTP; Sun, 8 Sep 2013 10:32:26 -0700 (PDT)
Date: Sun, 8 Sep 2013 12:32:26 -0500
Message-ID: <CAKv5JSoFj8mUXBi_pzQUTbMWgYbxKTRGfFRtbBz+aj9YwRdutA@mail.gmail.com>
From: Timothy Bean <timothy.bean@gmail.com>
To: yocto@yoctoproject.org
Subject: Any help with gst-plugsin-bad and python error?
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
X-List-Received-Date: Sun, 08 Sep 2013 17:32:32 -0000
Content-Type: multipart/alternative; boundary=089e013d14cac0d8ca04e5e2a7ab

--089e013d14cac0d8ca04e5e2a7ab
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Trying to install gst-plugins-bad-mpegtddemux and I get:

DEBUG: Executing shell function do_rootfs
| Note: configuring RPM platform settings
| Note: configuring RPM system provides
| Note: configuring RPM DB settings
| Note: configuring Smart settings
|
|
|
|
|
|
| Note: adding Smart channel nitrogen6x (80)
|
|
| Note: adding Smart channel armv7a_vfp_neon (75)
|
|
| Note: adding Smart channel all (10)
|
|
| Note: configuring RPM cross-install scriptlet_wrapper
|
| Updating cache...               ########################################
[100%]
|
| Saving cache...
|
| Note: adding Smart RPM DB channel
|
| Note: to be installed:
libsoup-2.4@armv7a_vfp_neonfirmware-imx-vpu-imx6q@nitrogen6xlibgtop-2.0-7@a=
rmv7a_vfp_neonrpm-postinsts@allpackagegroup-core-nfs-server@allpython-subpr=
ocess@armv7a_vfp_neonvbmediaserver@armv7a_vfp_neongst-plugins-base-tcp@nitr=
ogen6xpackagegroup-fsl-gstreamer@nitrogen6xpython-datetime@armv7a_vfp_neonp=
ython-json@armv7a_vfp_neonpackagegroup-core-boot@nitrogen6x
| Loading cache...
| Updating cache...               ########################################
[100%]
|
| Computing transaction...error: Can't install
libglib-2.0-utils-1:2.34.3-r2@armv7a_vfp_neon: no package provides
/usr/local/bin/python
|
| Saving cache...
|
| ERROR: Function failed: do_rootfs (see
/home/tim/imx/yocto/fsl-community-bsp/build/tmp/work/nitrogen6x-poky-linux-=
gnueabi/n6x-min/1.0-r0/temp/log.do_rootfs.18452
for further information)
ERROR: Task 7
(/home/tim/imx/yocto/fsl-community-bsp/sources/meta-n6x-min/recipes-fsl/ima=
ges/
n6x-min.bb, do_rootfs) failed with exit code '1'



Any help would be appreciated.

Thanks

Tim

--089e013d14cac0d8ca04e5e2a7ab
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Trying to install gst-plugins-bad-mpegtddemux an=
d I get:<br><br>DEBUG: Executing shell function do_rootfs<br>| Note: config=
uring RPM platform settings<br>| Note: configuring RPM system provides<br>
| Note: configuring RPM DB settings<br>| Note: configuring Smart settings<b=
r>| <br>| <br>| <br>| <br>| <br>| <br>| Note: adding Smart channel nitrogen=
6x (80)<br>| <br>| <br>| Note: adding Smart channel armv7a_vfp_neon (75)<br=
>
| <br>| <br>| Note: adding Smart channel all (10)<br>| <br>| <br>| Note: co=
nfiguring RPM cross-install scriptlet_wrapper<br>| <br>| Updating cache...=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ################################=
######## [100%]<br>| <br>
| Saving cache...<br>| <br>| Note: adding Smart RPM DB channel<br>| <br>| N=
ote: to be installed:=A0 libsoup-2.4@armv7a_vfp_neon firmware-imx-vpu-imx6q=
@nitrogen6x libgtop-2.0-7@armv7a_vfp_neon rpm-postinsts@all packagegroup-co=
re-nfs-server@all python-subprocess@armv7a_vfp_neon vbmediaserver@armv7a_vf=
p_neon gst-plugins-base-tcp@nitrogen6x packagegroup-fsl-gstreamer@nitrogen6=
x python-datetime@armv7a_vfp_neon python-json@armv7a_vfp_neon packagegroup-=
core-boot@nitrogen6x<br>
| Loading cache...<br>| Updating cache...=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 ######################################## [100%]<br>| <br>| Comput=
ing transaction...error: Can&#39;t install libglib-2.0-utils-1:2.34.3-r2@ar=
mv7a_vfp_neon: no package provides /usr/local/bin/python<br>
| <br>| Saving cache...<br>| <br>| ERROR: Function failed: do_rootfs (see /=
home/tim/imx/yocto/fsl-community-bsp/build/tmp/work/nitrogen6x-poky-linux-g=
nueabi/n6x-min/1.0-r0/temp/log.do_rootfs.18452 for further information)<br>
ERROR: Task 7 (/home/tim/imx/yocto/fsl-community-bsp/sources/meta-n6x-min/r=
ecipes-fsl/images/<a href=3D"http://n6x-min.bb">n6x-min.bb</a>, do_rootfs) =
failed with exit code &#39;1&#39;<br><br><br><br></div>Any help would be ap=
preciated.<br>
<br></div>Thanks<br><br>Tim<br></div>

--089e013d14cac0d8ca04e5e2a7ab--
