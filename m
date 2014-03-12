Return-Path: <bianchirickkutta@gmail.com>
Received: from mail-ve0-f170.google.com (mail-ve0-f170.google.com
	[209.85.128.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C904E00A4E
	for <yocto@yoctoproject.org>; Wed, 12 Mar 2014 08:15:17 -0700 (PDT)
Received: by mail-ve0-f170.google.com with SMTP id pa12so10333785veb.15
	for <yocto@yoctoproject.org>; Wed, 12 Mar 2014 08:15:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=prpPspJQ4HgzOWlvz6o0NBlUhOOHmU2ek9OXWD8TYgU=;
	b=bCqbfQxXT7F9jRWMlAmziMEgv313EEktay5+WLYSAzSfx+JDwGAoIQ2GvY1baXkwlr
	qMDIqhtLkYz8hQORvUGoUrtS7Z0GjcDbYEXBtMKMPftwwfeyUVeLPRKBxLdqrgpJsIaV
	vzIlXDgE9cSNibBiu+7vY3TD8CQWwNb7SDSPQivfu/hhfMeDZkSsRqmAyYeiGZ70nTS1
	sCz4G5OiVZSI/j56/cRHyFUkTZ32EZZbDCiGXCteFSXkXmk7UaQclzjUOadtu5nd0SsK
	Nil8x3t3bCz6d0tP+xgnCoBFYtKyFFz9e6+wYRN29r0pUtzJXkmFacOZa2fcCb1PIax7
	RQHw==
MIME-Version: 1.0
X-Received: by 10.52.229.133 with SMTP id sq5mr479994vdc.45.1394637316081;
	Wed, 12 Mar 2014 08:15:16 -0700 (PDT)
Received: by 10.220.96.66 with HTTP; Wed, 12 Mar 2014 08:15:16 -0700 (PDT)
Date: Wed, 12 Mar 2014 08:15:16 -0700
Message-ID: <CAA7h+EpU6RVwbewuJ6r04+O2CvjPBpP1z86dpAthm4_cBrrO+Q@mail.gmail.com>
From: Rick Bianchi <bianchirickkutta@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Building on target
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
X-List-Received-Date: Wed, 12 Mar 2014 15:15:19 -0000
Content-Type: multipart/alternative; boundary=089e013a021ad0cd4d04f46a4dd2

--089e013a021ad0cd4d04f46a4dd2
Content-Type: text/plain; charset=ISO-8859-1

I have the gumstix-console-image with the added packages below. When I
compile on the target is take a very long time for it to complete, over 24
hours. I have compiled the same code on the same target, but running Linaro
image, and it only takes a few minutes. Is there another recipe that I need
to add to the build to speed up compiling?

EXTRA_IMAGE_FEATURES += "dev-pkgs"
IMAGE_INSTALL_append =" autoconf"
IMAGE_INSTALL_append =" autofs"
IMAGE_INSTALL_append =" automake"
IMAGE_INSTALL_append =" ccache"
IMAGE_INSTALL_append =" chkconfig"
IMAGE_INSTALL_append =" dbus-glib"
IMAGE_INSTALL_append =" gcc"
IMAGE_INSTALL_append =" glib-2.0"
IMAGE_INSTALL_append =" glib-networking"
IMAGE_INSTALL_append =" glibmm"
IMAGE_INSTALL_append =" packagegroup-core-buildessential"
IMAGE_INSTALL_append =" pciutils"
IMAGE_INSTALL_append =" pkgconfig"
IMAGE_INSTALL_append =" python-scons"
IMAGE_INSTALL_append =" systemd-compat-units"
IMAGE_INSTALL_append =" sysfsutils"
IMAGE_INSTALL_append =" tcp-wrappers"
IMAGE_INSTALL_append =" usbutils"
IMAGE_INSTALL_append =" util-macros"

--089e013a021ad0cd4d04f46a4dd2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div>I have the gumstix-console-image with the added p=
ackages below. When I compile on the target is take a very long time for it=
 to complete, over 24 hours. I have compiled the same code on the same targ=
et, but running Linaro image, and it only takes a few minutes. Is there ano=
ther recipe that I need to add to the build to speed up compiling?</div>
<div><br></div><div>EXTRA_IMAGE_FEATURES +=3D &quot;dev-pkgs&quot;<br>IMAGE=
_INSTALL_append =3D&quot; autoconf&quot;<br>IMAGE_INSTALL_append =3D&quot; =
autofs&quot;<br>IMAGE_INSTALL_append =3D&quot; automake&quot;<br>IMAGE_INST=
ALL_append =3D&quot; ccache&rdquo;<br>
IMAGE_INSTALL_append =3D&quot; chkconfig&quot;<br>IMAGE_INSTALL_append =3D&=
quot; dbus-glib&quot;<br>IMAGE_INSTALL_append =3D&quot; gcc&quot;<br>IMAGE_=
INSTALL_append =3D&quot; glib-2.0&quot;<br>IMAGE_INSTALL_append =3D&quot; g=
lib-networking&quot;<br>
IMAGE_INSTALL_append =3D&quot; glibmm&quot;<br>IMAGE_INSTALL_append =3D&quo=
t; packagegroup-core-buildessential&quot;<br>IMAGE_INSTALL_append =3D&quot;=
 pciutils&quot;<br>IMAGE_INSTALL_append =3D&quot; pkgconfig&rdquo;<br>IMAGE=
_INSTALL_append =3D&quot; python-scons&quot;<br>
IMAGE_INSTALL_append =3D&quot; systemd-compat-units&rdquo;<br>IMAGE_INSTALL=
_append =3D&quot; sysfsutils&quot;<br>IMAGE_INSTALL_append =3D&quot; tcp-wr=
appers&quot;<br>IMAGE_INSTALL_append =3D&quot; usbutils&quot;<br>IMAGE_INST=
ALL_append =3D&quot; util-macros&quot;</div>
</div>

--089e013a021ad0cd4d04f46a4dd2--
