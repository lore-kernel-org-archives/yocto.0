Return-Path: <gschmottlach@gmail.com>
Received: from mail-we0-f179.google.com (mail-we0-f179.google.com
	[74.125.82.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70917E0166F
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 13:17:09 -0700 (PDT)
Received: by mail-we0-f179.google.com with SMTP id w61so1250412wes.24
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 13:17:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=r4krg1RT2cz1a8029aHG/rvSbpDt8qlvmCsZoIm8U4U=;
	b=cORa09iPb+hGNR59xlB4OcyBZx8aqmz0sHAeZT39XkA+Z8jWrZgUswbnbPGPgZr121
	/cOkGrjy4jk12qFASvB91hT8A3lCpntWCRWWCf5d5gBHooa7FKxlfG6q1honKxev8/jY
	ZCbXRs29wUO7Bna3LULDK/OnTwcgF9lH0pCrtZ5ItWpM55hlWq5V3P3pgAHbBQTMjBf8
	kFy0Ba7+W/rGQFRcA0QegAfmXoxOGbTSGZTptR1a4V6fXdG1y0SaYfeQVIJfmHGw6ESR
	HElgzqBNIAPPF7BrSk2muutKZRBOKR7Svmitk5Z2pCZDl3T2oYr+haSLSrRabyxNm4zm
	vEXA==
MIME-Version: 1.0
X-Received: by 10.194.175.66 with SMTP id by2mr3039937wjc.59.1381954627955;
	Wed, 16 Oct 2013 13:17:07 -0700 (PDT)
Received: by 10.216.46.196 with HTTP; Wed, 16 Oct 2013 13:17:07 -0700 (PDT)
Date: Wed, 16 Oct 2013 16:17:07 -0400
Message-ID: <CAMS2kBFgfdCHF1f3TfDA3PNzL_PGxOpzrmXLOV_GMhkbdTXocA@mail.gmail.com>
From: Glenn Schmottlach <gschmottlach@gmail.com>
To: yocto@yoctoproject.org
Subject: OPKG configuration questions
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
X-List-Received-Date: Wed, 16 Oct 2013 20:17:10 -0000
Content-Type: multipart/alternative; boundary=089e013d19f8b2009a04e8e162a0

--089e013d19f8b2009a04e8e162a0
Content-Type: text/plain; charset=ISO-8859-1

I have several questions regarding configuring the OPKG package management
support in my target image.

1) I'm having difficulty getting the /var/lib/opkg directory to be created
and populated with a list of installed packages.

2) I can't figure out (e.g. can find no documentation) that describe what
the "lists_dir ext /var/lib/opkg" option in the opkg.conf file does. Does
this point to where the list of installed packages should be found?

3) What is the best/preferred approach (e.g. patch, *bbappend, new recipe,
etc...) to tailor or modify the opkg.conf file (specifically the opkg
source (src) paths) that are appended to /etc/opkg/opkg.conf file by the
opkg-collatoral.bb recipe.

This is what I have done to prepare my image to include package management:

1) My image recipe inherits from core-image

2) I've configured ONLINE_PACKAGE_MANAGEMENT = "full" and confirmed that is
it set correctly via "bitbake-env -r image-nitrogen6x
ONLINE_PACKAGE_MANAGEMENT"

3) I've confirmed that IMAGE_FEATURES = "debug-tweaks package-management"

4) PACKAGE_CLASSES = "package_ipk" is configured and I see packages in my
<project>/build/tmp/deploy/ipk directory

The target boots fine and I have the appropriate opkg applications
installed (e.g. opkg, opkg-cl, opkg-key). I also have the default
/etc/opkg/opkg.conf and /etc/opkg/arch.conf installed.

There is *no* /var/lib/opkg directory and thus "opkg-cl list-installed"
returns with an error because the "opkg" directory is missing. If I
manually create it the program run successfully but doesn't list anything
(which is obvious since it is empty).

I read this post
https://lists.yoctoproject.org/pipermail/yocto/2013-June/016324.html

and confirmed that my setting are correct for IMAGE_FEATURES and
ROOT_POSTPROCESS_CMD (= "run_intercept_scriptlets;
license_create_manifest;  ssh_allow_empty_password;
rootfs_update_timestamp ;")

Can anyone offer any suggestions, recommendations, or answers to my
questions above?

Thanks for you help . . .

--089e013d19f8b2009a04e8e162a0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div><div><div><div><div><di=
v>I have several questions regarding configuring the OPKG package managemen=
t support in my target image.<br><br></div>1) I&#39;m having difficulty get=
ting the /var/lib/opkg directory to be created and populated with a list of=
 installed packages.<br>
<br></div>2) I can&#39;t figure out (e.g. can find no documentation) that d=
escribe what the &quot;lists_dir ext /var/lib/opkg&quot; option in the opkg=
.conf file does. Does this point to where the list of installed packages sh=
ould be found?<br>
<br></div>3) What is the best/preferred approach (e.g. patch, *bbappend, ne=
w recipe, etc...) to tailor or modify the opkg.conf file (specifically the =
opkg source (src) paths) that are appended to /etc/opkg/opkg.conf file by t=
he <a href=3D"http://opkg-collatoral.bb">opkg-collatoral.bb</a> recipe.<br>
<br></div>This is what I have done to prepare my image to include package m=
anagement:<br><br></div>1) My image recipe inherits from core-image<br><br>=
</div>2) I&#39;ve configured ONLINE_PACKAGE_MANAGEMENT =3D &quot;full&quot;=
 and confirmed that is it set correctly via &quot;bitbake-env -r image-nitr=
ogen6x ONLINE_PACKAGE_MANAGEMENT&quot;<br>
<br></div>3) I&#39;ve confirmed that IMAGE_FEATURES =3D &quot;debug-tweaks =
package-management&quot;<br><br>4) PACKAGE_CLASSES =3D &quot;package_ipk&qu=
ot; is configured and I see packages in my &lt;project&gt;/build/tmp/deploy=
/ipk directory<br>
<br></div>The target boots fine and I have the appropriate opkg application=
s installed (e.g. opkg, opkg-cl, opkg-key). I also have the default /etc/op=
kg/opkg.conf and /etc/opkg/arch.conf installed.<br><br></div>There is *no* =
/var/lib/opkg directory and thus &quot;opkg-cl list-installed&quot; returns=
 with an error because the &quot;opkg&quot; directory is missing. If I manu=
ally create it the program run successfully but doesn&#39;t list anything (=
which is obvious since it is empty).<br>
<br></div>I read this post<br><a href=3D"https://lists.yoctoproject.org/pip=
ermail/yocto/2013-June/016324.html">https://lists.yoctoproject.org/pipermai=
l/yocto/2013-June/016324.html</a><br><br>and confirmed that my setting are =
correct for IMAGE_FEATURES and ROOT_POSTPROCESS_CMD (=3D &quot;run_intercep=
t_scriptlets; license_create_manifest;=A0 ssh_allow_empty_password;=A0 root=
fs_update_timestamp ;&quot;)<br>
<br></div>Can anyone offer any suggestions, recommendations, or answers to =
my questions above?<br><br></div>Thanks for you help . . .<br></div>

--089e013d19f8b2009a04e8e162a0--
