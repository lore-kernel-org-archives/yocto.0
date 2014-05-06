Return-Path: <james.woodyatt@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1137EE00B1E; Tue,  6 May 2014 11:34:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFABCE00975
	for <yocto@yoctoproject.org>; Tue,  6 May 2014 11:34:16 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 06 May 2014 11:29:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,998,1389772800"; d="scan'208";a="535752395"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by orsmga002.jf.intel.com with ESMTP; 06 May 2014 11:33:43 -0700
Received: from orsmsx113.amr.corp.intel.com (10.22.240.9) by
	ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 6 May 2014 11:33:43 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.80]) by
	ORSMSX113.amr.corp.intel.com ([169.254.7.62]) with mapi id
	14.03.0123.003; Tue, 6 May 2014 11:33:43 -0700
From: "Woodyatt, James" <james.woodyatt@intel.com>
To: Yocto Project Main <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH 1/2] meta-darwin on dylan branch
Thread-Index: AQHPZXAPhl8owFkq0kOkPmA62349Bps0XfwA
Date: Tue, 6 May 2014 18:33:42 +0000
Message-ID: <894F0159-AF8C-4524-A77F-4ADADB6101A8@intel.com>
References: <470950EC-4779-4EB8-9EDF-938AB38DD50C@intel.com>
In-Reply-To: <470950EC-4779-4EB8-9EDF-938AB38DD50C@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.232.24.22]
MIME-Version: 1.0
Subject: Re: [PATCH 1/2] meta-darwin on dylan branch
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
X-List-Received-Date: Tue, 06 May 2014 18:34:18 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <F726152C69D08147BDB46CF3237DE8C6@intel.com>
Content-Transfer-Encoding: quoted-printable

Everyone=97

It looks like this one needs to be applied to the OpenEmbedded core on the =
=91dylan=92 branch to make the Linux meta-toolchain build work.

=97
james woodyatt <james.woodyatt@intel.com>
Software Architect, New Devices Group

On May 1, 2014, at 12:03, Woodyatt, James <james.woodyatt@intel.com> wrote:

> commit 980fb673e887f321d6b417b3aecbb380fa2561d3
> Author: james woodyatt <james.woodyatt@intel.com>
> Date:   Thu May 1 11:57:05 2014 -0700
>=20
>    Properly configure util-linux when ncurses is configured =97with-libte=
rm=3Dtinfo.
>=20
>    Amend oecore.patch to modify the util-linux recipe so that it applies =
a patch
>    to the fdisk/Makemodule.am file to add -ltinfo to the linker command l=
ine when
>    HAVE_TINFO and HAVE_NCURSES are both defined.
>=20
> diff --git a/oecore.patch b/oecore.patch
> index 333b715..7371244 100644
> --- a/oecore.patch
> +++ b/oecore.patch
> @@ -3242,3 +3242,33 @@ index b1d2612..1ba0d12 100644
> +
> +BBCLASSEXTEND =3D "nativesdk"
> \ No newline at end of file
> +diff --git a/meta/recipes-core/util-linux/util-linux/cfdisk-makemodule.p=
atch b/meta/recipes-core/util-linux/util-linux/cfdisk-makemodule.patch
> +new file mode 100644
> +index 0000000..df196b5
> +--- /dev/null
> ++++ b/meta/recipes-core/util-linux/util-linux/cfdisk-makemodule.patch
> +@@ -0,0 +1,12 @@
> ++--- util-linux-2.22.2.orig/fdisks/Makemodule.am	2014-04-30 17:02:21.469=
000162 -0700
> +++++ util-linux-2.22.2/fdisks/Makemodule.am	2014-04-30 17:02:55.39099997=
3 -0700
> ++@@ -78,6 +78,9 @@
> ++ cfdisk_LDADD +=3D -lslang
> ++ else
> ++ if HAVE_NCURSES
> +++if HAVE_TINFO
> +++cfdisk_LDADD +=3D -ltinfo
> +++endif
> ++ cfdisk_LDADD +=3D @NCURSES_LIBS@
> ++ endif
> ++ endif
> +diff --git a/meta/recipes-core/util-linux/util-linux_2.22.2.bb b/meta/re=
cipes-core/util-linux/util-linux_2.22.2.bb
> +index 43a55a6..5553411 100644
> +--- a/meta/recipes-core/util-linux/util-linux_2.22.2.bb
> ++++ b/meta/recipes-core/util-linux/util-linux_2.22.2.bb
> +@@ -8,6 +8,7 @@ SRC_URI +=3D "file://util-linux-ng-replace-siginterrupt.=
patch \
> +             file://configure-sbindir.patch \
> +             file://fix-configure.patch \
> +             file://mbsalign-license.patch \
> ++            file://cfdisk-makemodule.patch \
> + "
> +=20
> + SRC_URI[md5sum] =3D "3e379b4d8b9693948d751c154614c73e"
>=20
> =97
> james woodyatt <james.woodyatt@intel.com>
> Software Architect, New Devices Group
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


