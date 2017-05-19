Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D199BE0094C; Fri, 19 May 2017 07:57:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A913E00812
	for <yocto@yoctoproject.org>; Fri, 19 May 2017 07:56:57 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v4JEutOa022502
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 19 May 2017 07:56:56 -0700 (PDT)
Received: from ALA-MBC.corp.ad.wrs.com ([fe80::fcbe:9b7:1141:89a1]) by
	ALA-HCB.corp.ad.wrs.com ([147.11.189.41]) with mapi id 14.03.0294.000;
	Fri, 19 May 2017 07:56:55 -0700
From: "Huang, Jie (Jackie)" <Jackie.Huang@windriver.com>
To: akuster808 <akuster808@gmail.com>
Thread-Topic: [yocto] [meta-security][PATCH 2/2] ecryptfs-utils: add new recipe
Thread-Index: AQHS0K80ib1S12xITESUdni8lTIQbKH7vr8w
Date: Fri, 19 May 2017 14:56:54 +0000
Message-ID: <1B858668EC6A94408DCA5225FDFA85AA014B776416@ALA-MBC.corp.ad.wrs.com>
References: <cover.1495007644.git.jackie.huang@windriver.com>
	<8e4ad559ae8543501c07c6d12a09e72688ceb72a.1495007644.git.jackie.huang@windriver.com>
	<5576d9c1-a95c-c274-c748-952c0dc7ed49@gmail.com>
In-Reply-To: <5576d9c1-a95c-c274-c748-952c0dc7ed49@gmail.com>
Accept-Language: en-US, zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.224.17.209]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-security][PATCH 2/2] ecryptfs-utils: add new recipe
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
X-List-Received-Date: Fri, 19 May 2017 14:57:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: akuster808 [mailto:akuster808@gmail.com]
> Sent: Friday, May 19, 2017 22:50
> To: Huang, Jie (Jackie); yocto@yoctoproject.org
> Subject: Re: [yocto] [meta-security][PATCH 2/2] ecryptfs-utils: add new r=
ecipe
>=20
>=20
>=20
> On 05/17/2017 12:56 AM, jackie.huang@windriver.com wrote:
> > From: Jackie Huang <jackie.huang@windriver.com>
> >
> > eCryptfs is a stacked cryptographic filesystem that ships
> > in Linux kernel versions 2.6.19 and above. This package
> > provides the mount helper and supporting libraries to
> > perform key management and mount functions.
> >
> > Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
>=20
> This has the following warning:
> WARNING: libpam-1.3.0-r5 do_pam_sanity: Building libpam but 'pam' isn't
> in DISTRO_FEATURES, PAM won't work correctly
>=20
> I noticed this package has the ability to disable-pam so maybe
> PACKAGECONFIG with the DISTRO_FEATURES check for PAM would be
> applicable
> in this case?
>=20
> please investigate.

I will investigate and fix the warning.

Thanks,
Jackie

>=20
> everything else looks fine for inclusion to meta-security.
>=20
> regards,
> Armin
>=20
> > ---
> >   .../ecryptfs-utils/ecryptfs-utils_111.bb           | 52 +++++++++++++=
++++
> >   .../files/ecryptfs-utils-CVE-2016-6224.patch       | 65
> ++++++++++++++++++++++
> >   2 files changed, 117 insertions(+)
> >   create mode 100644 recipes-security/ecryptfs-utils/ecryptfs-utils_111=
.bb
> >   create mode 100644 recipes-security/ecryptfs-utils/files/ecryptfs-uti=
ls-CVE-
> 2016-6224.patch
> >
> > diff --git a/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb b/re=
cipes-
> security/ecryptfs-utils/ecryptfs-utils_111.bb
> > new file mode 100644
> > index 0000000..49c2605
> > --- /dev/null
> > +++ b/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
> > @@ -0,0 +1,52 @@
> > +SUMMARY =3D "The eCryptfs mount helper and support libraries"
> > +DESCRIPTION =3D "eCryptfs is a stacked cryptographic filesystem \
> > +    that ships in Linux kernel versions 2.6.19 and above. This \
> > +    package provides the mount helper and supporting libraries \
> > +    to perform key management and mount functions."
> > +HOMEPAGE =3D "https://launchpad.net/ecryptfs"
> > +SECTION =3D "base"
> > +
> > +LICENSE =3D "GPL-2.0"
> > +LIC_FILES_CHKSUM =3D
> "file://COPYING;md5=3D8ca43cbc842c2336e835926c2166c28b"
> > +
> > +DEPENDS =3D "keyutils libgcrypt libpam nss intltool-native glib-2.0-na=
tive"
> > +
> > +inherit autotools pkgconfig
> > +
> > +SRC_URI =3D "\
> > +
> https://launchpad.net/ecryptfs/trunk/${PV}/+download/${BPN}_${PV}.orig.ta=
r.
> gz \
> > +    file://ecryptfs-utils-CVE-2016-6224.patch \
> > +    "
> > +
> > +SRC_URI[md5sum] =3D "83513228984f671930752c3518cac6fd"
> > +SRC_URI[sha256sum] =3D
> "112cb3e37e81a1ecd8e39516725dec0ce55c5f3df6284e0f4cc0f118750a987f"
> > +
> > +PARALLEL_MAKEINST=3D""
> > +
> > +EXTRA_OECONF =3D "\
> > +    --libdir=3D${base_libdir} \
> > +    --disable-pywrap \
> > +    --disable-nls \
> > +    --enable-openssl=3Dno \
> > +    "
> > +
> > +do_configure_prepend() {
> > +    export NSS_CFLAGS=3D"-I${STAGING_INCDIR}/nspr4 -
> I${STAGING_INCDIR}/nss3"
> > +    export NSS_LIBS=3D"-L${STAGING_BASELIBDIR} -lssl3 -lsmime3 -lnss3 =
-
> lsoftokn3 -lnssutil3"
> > +    export KEYUTILS_CFLAGS=3D"-I${STAGING_INCDIR}"
> > +    export KEYUTILS_LIBS=3D"-L${STAGING_LIBDIR} -lkeyutils"
> > +}
> > +
> > +do_install_append() {
> > +    chmod 4755 ${D}${base_sbindir}/mount.ecryptfs_private
> > +    mkdir -p ${D}/${libdir}
> > +    mv ${D}/${base_libdir}/pkgconfig ${D}/${libdir}
> > +    sed -i -e 's:-I${STAGING_INCDIR}::' \
> > +           -e 's:-L${STAGING_LIBDIR}::' ${D}/${libdir}/pkgconfig/libec=
ryptfs.pc
> > +    sed -i -e "s: ${base_sbindir}/cryptsetup: ${sbindir}/cryptsetup:"
> ${D}${bindir}/ecryptfs-setup-swap
> > +}
> > +
> > +FILES_${PN} +=3D "${base_libdir}/security/* ${base_libdir}/ecryptfs/*"
> > +
> > +RDEPENDS_${PN} +=3D "cryptsetup"
> > +RRECOMMENDS_${PN} =3D "gettext-runtime"
> > diff --git a/recipes-security/ecryptfs-utils/files/ecryptfs-utils-CVE-2=
016-
> 6224.patch b/recipes-security/ecryptfs-utils/files/ecryptfs-utils-CVE-201=
6-
> 6224.patch
> > new file mode 100644
> > index 0000000..4252f97
> > --- /dev/null
> > +++ b/recipes-security/ecryptfs-utils/files/ecryptfs-utils-CVE-2016-622=
4.patch
> > @@ -0,0 +1,65 @@
> > +From 558a513ba3100ea5190de1a24cf1fed663367765 Mon Sep 17 00:00:00
> 2001
> > +From: Li Zhou <li.zhou@windriver.com>
> > +Date: Mon, 5 Sep 2016 10:28:08 +0800
> > +Subject: [PATCH] ecryptfs-utils: CVE-2016-6224
> > +
> > +src/utils/ecryptfs-setup-swap: Prevent unencrypted swap partitions fro=
m
> > +being automatically enabled by systemd. This bug affected GPT partitio=
ned
> > +NVMe/MMC drives and resulted in the swap partition being used without
> > +encryption. It also resulted in a usability issue in that users were
> > +erroneously prompted to enter a pass-phrase to unlock their swap parti=
tion
> > +at boot. (LP: #1597154)
> > +
> > +the patch comes from:
> > +https://web.nvd.nist.gov/view/vuln/detail?vulnId=3DCVE-2016-6224
> > +https://bazaar.launchpad.net/~ecryptfs/ecryptfs/trunk/revision/882
> > +
> > +Upstream-Status: backport
> > +
> > +Signed-off-by: Li Zhou <li.zhou@windriver.com>
> > +---
> > + ChangeLog                     |  9 +++++++++
> > + src/utils/ecryptfs-setup-swap | 10 ++++++++--
> > + 2 files changed, 17 insertions(+), 2 deletions(-)
> > +
> > +diff --git a/ChangeLog b/ChangeLog
> > +index d255a94..2c9c73e 100644
> > +--- a/ChangeLog
> > ++++ b/ChangeLog
> > +@@ -1,3 +1,12 @@
> > ++ecryptfs-utils-112
> > ++  [ Jason Gerard DeRose ]
> > ++  * src/utils/ecryptfs-setup-swap: Prevent unencrypted swap partition=
s from
> > ++    being automatically enabled by systemd. This bug affected GPT
> partitioned
> > ++    NVMe/MMC drives and resulted in the swap partition being used wit=
hout
> > ++    encryption. It also resulted in a usability issue in that users w=
ere
> > ++    erroneously prompted to enter a pass-phrase to unlock their swap
> partition
> > ++    at boot. (LP: #1597154)
> > ++
> > + ecryptfs-utils-74
> > +   [ Michal Hlavinka ]
> > +   * Changes for RH/Fedora release
> > +diff --git a/src/utils/ecryptfs-setup-swap b/src/utils/ecryptfs-setup-=
swap
> > +index 41cf18a..e4785d7 100755
> > +--- a/src/utils/ecryptfs-setup-swap
> > ++++ b/src/utils/ecryptfs-setup-swap
> > +@@ -166,8 +166,14 @@ for swap in $swaps; do
> > + 	# If this is a GPT partition, mark it as no-auto mounting, to avoid
> > + 	# auto-activating it on boot
> > + 	if [ "$(blkid -p -s PART_ENTRY_SCHEME -o value "$swap")" =3D "gpt" ]=
;
> then
> > +-		drive=3D"${swap%[0-9]*}"
> > +-		partno=3D"${swap#$drive}"
> > ++		# Correctly handle NVMe/MMC drives, as well as any similar
> physical
> > ++		# block device that follow the "/dev/foo0p1" pattern (LP:
> #1597154)
> > ++		if echo "$swap" | grep -qE "^/dev/.+[0-9]+p[0-9]+$"; then
> > ++			drive=3D$(echo "$swap" | sed "s:\(.\+[0-9]\)p[0-9]\+:\1:")
> > ++		else
> > ++			drive=3D$(echo "$swap" | sed "s:\(.\+[^0-9]\)[0-9]\+:\1:")
> > ++		fi
> > ++		partno=3D$(echo "$swap" | sed "s:.\+[^0-9]\([0-9]\+\):\1:")
> > + 		if [ -b "$drive" ]; then
> > + 			if printf "x\np\n" | fdisk "$drive" | grep -q "^$swap .*
> GUID:.*\b63\b"; then
> > + 				echo "$swap is already marked as no-auto"
> > +--
> > +1.9.1
> > +


