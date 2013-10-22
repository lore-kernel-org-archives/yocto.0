Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6B17E01638
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2013 06:47:05 -0700 (PDT)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Tue, 22 Oct 2013 09:47:04 -0400
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 22 Oct 2013 09:44:06 -0400
Thread-Topic: Can't get DEPENDS to trigger glib-2.0 or util-linux build
Thread-Index: Ac7PLMbW+y9tmpKPRBCyL/9z9n94pg==
Message-ID: <91586D499ADFD74FBCFB8425266A5DE40153B8ED02D3@pluto.melinkcorp.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Can't get DEPENDS to trigger glib-2.0 or util-linux build
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
X-List-Received-Date: Tue, 22 Oct 2013 13:47:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

I am on poky/dylan-9.0.1 (also have a yocto-autobuilder setup to use poky/d=
ylan latest) and I have an application that I am writing that makes use of =
the GLib dynamic libraries and the uuid library built by util-linux.  When =
setting up the yocto-autobuilder, I discovered an issue with my recipe in t=
hat it is not forcing the glib-2.0 or util-linux to be built before it gets=
 built.  I figured I had an issue with the DEPENDS or RDEPENDS settings for=
 my recipe, but so far adjusting these recipe settings has not fixed the is=
sue and I'm wondering what I am doing wrong.

As of now, my recipe has the following settings:

DEPENDS_${PN} =3D "virtual/kernel glib-2.0 util-linux"
RDEPENDS_${PN} =3D "tar php dosfstools libpam"
inherit autotools siteinfo update-rc.d

If I bitbake -c clean glib-2.0, util-linux and my recipe and then bitbake m=
y recipe, the system does not attempt to build either glib-2.0 or util-linu=
x before trying to configure my application.  As a result the configure ste=
p fails because it can't find the glib-2.0 or uuid libraries.  I also tried=
 doing a cleansstate on glib-2.0, util-linux and my recipe before buidling =
my recipe and received the same results.  Here is some applicable output fr=
om the do_configure step of my recipe:

...

checking for arm-poky-linux-gnueabi-pkg-config... no
checking for pkg-config... /media/sda3/yocto-autobuilder/yocto-slave/nightl=
y-foo/build/build/tmp/sysroots/i686-linux/usr/bin/pkg-config
configure: WARNING: using cross tools not prefixed with host triplet
checking pkg-config is at least version 0.9.0... yes
checking for GLIB... no
configure: error: Package requirements (glib-2.0) were not met:

No package 'glib-2.0' found

Consider adjusting the PKG_CONFIG_PATH environment variable if you
installed software in a non-standard prefix.

Alternatively, you may set the environment variables GLIB_CFLAGS
and GLIB_LIBS to avoid the need to call pkg-config.
See the pkg-config man page for more details.

...

If I go ahead and call "bitbake glib-2.0 util-linux" before building my rec=
ipe, then my application builds without issue.  What did I forget to add to=
 my recipe so the system builds the dependent packages first?

Thanks,
Bryan Evenson




