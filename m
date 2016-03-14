Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F6B9E0083D; Mon, 14 Mar 2016 06:54:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84C8FE006AE
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 06:54:49 -0700 (PDT)
Received: by mail-wm0-f46.google.com with SMTP id l68so108595513wml.0
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 06:54:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=HDqV0ykHaHI/IU2pulITGsVB0qDY2JmPCdB6dKSCZRo=;
	b=tMxBHSSOGkvAmfqS1bvTALACB8MkpbMWVNCwjWFH2pEooRUz/9PnfTFmgsV/YionpE
	0n0XfUDzB36uKBY5vx/mNt8D6esbJoZlTFlZahwHonSye4efC81x4Un7XgcX2UR4wgLv
	pkdzMre1OgBm3RW5nAWOgfjv9dk1ZDvOts+Ly5cKCWITnw/XOvNtV+wS14G3yAZfL/zx
	ee7n4NVTGxUXN1m5Vrfo2F+Oz8dhge+Y1OyceyMblMAU5EJsQW1KuWckvz5dEIAWwwer
	McOD29JAnIKjliCUwt9k0S0EZAekNwk24Q2sh72/hme9nlsYMqHW1nvDbQ3MVWSDcRwt
	gFjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=HDqV0ykHaHI/IU2pulITGsVB0qDY2JmPCdB6dKSCZRo=;
	b=Dl7l5njI0/zn0Z58k35Qio0qcG3Fnf75qwfQQZSQ638WfcRBKhRDZRIgZtW5PKZZcL
	IN6ZbgTzcLaofVzmLyO9gbbuvf8Z6T1GX/XNrL28DimXs0s7hRdZOVj+HzamewgWE1IE
	kphSC4iqaYy27zU/MscIRxnqxwsrh5SJ4Z3LwyiJN13YV/JjLX48hD88iqYnRg1uSpa0
	NbpwI1LL5gsb6D8dqBqbdBZ6MNJZycImhJ7qVobXleTluYCh4TJJiF86CWnEvIPMxHHQ
	bGpwSuwn3YuIj7om0ld1IAG9pmX7Id6YcUJzUONwLPx4qIFcg6xW9Ju8UzI/Pf+1Oy9c
	C2PA==
X-Gm-Message-State: AD7BkJIVCPNMixE9+0d2ZmnrRA1vcOUyn/eKMyuaQd4tTsBLRHtKg7PojPwJ/3Z3dJxZCA==
X-Received: by 10.28.131.141 with SMTP id f135mr17705680wmd.33.1457963687890; 
	Mon, 14 Mar 2016 06:54:47 -0700 (PDT)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id
	gb9sm22457347wjb.26.2016.03.14.06.54.46
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 14 Mar 2016 06:54:46 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Mon, 14 Mar 2016 14:58:09 +0100
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20160314135809.GD2560@jama>
References: <56E6B182.1060505@mlbassoc.com>
	<CAJTo0LZYi3PK2KJC3vqrN2AVwMGSN=dVZZckWk_0XpNsvu9jeA@mail.gmail.com>
	<56E6B3BF.7020307@mlbassoc.com> <56E6C05A.2020509@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <56E6C05A.2020509@mlbassoc.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: Strange build dependency
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
X-List-Received-Date: Mon, 14 Mar 2016 13:54:53 -0000
X-Groupsio-MsgNum: 29001
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="6Nae48J/T25AfBN4"
Content-Disposition: inline

--6Nae48J/T25AfBN4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 14, 2016 at 02:44:58PM +0100, Gary Thomas wrote:
> On 03/14/2016 01:51 PM, Gary Thomas wrote:
> > On 03/14/2016 01:46 PM, Burton, Ross wrote:
> >>
> >> On 14 March 2016 at 12:41, Gary Thomas <gary@mlbassoc.com <mailto:gary=
@mlbassoc.com>> wrote:
> >>
> >>     How can I find out what's going on here?
> >>
> >>
> >> bitbake-whatchanged is generally helpful here.  Do a build in one conf=
iguration, switch to the other, run
> >> bitbake-whatchanged.  It will identify the hashes that have changed an=
d try and chase them down.
> >>
> >> That said perl is quite a deep recipe so rebuilding that will certainl=
y bubble up the tree causing all sorts of rebuilds.
> >
> > Thanks, I'll give this a try.
> >
>=20
> I've run this and I still don't have a clue.  Here's what I got.  Maybe
> you can explain what I'm seeing?

You can also create snapshot before and after the change with
scripts/sstate-diff-machines.sh and compare the signatures manually.

> e.g. why did the kernel need to be rebuilt if all I did was change perl?
> what about mobile-broadband-info (which I think is pretty much just
> static data)?
>=20
> Thanks
>=20
> --=20
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------

> Figuring out the STAMPS_DIR ...
> Generating the new stamps ... (need several minutes)
> =3D=3D=3D Newly added tasks: (945 tasks)
>   renderproto-native: do_populate_sysroot do_patch do_install do_populate=
_lic do_unpack do_build do_configure do_fetch do_compile
>   shadow-native: do_fetch do_unpack do_populate_lic do_populate_sysroot d=
o_patch do_build do_compile do_configure do_install
>   qemu-helper-native: do_build do_install do_fetch do_populate_sysroot do=
_compile do_populate_lic do_configure do_unpack do_patch
>   ncurses-native: do_populate_lic do_populate_sysroot do_build do_compile=
 do_patch do_install do_configure do_unpack
>   xtrans-native: do_configure do_build do_unpack do_install do_compile do=
_fetch do_populate_lic do_populate_sysroot do_patch
>   elfutils-native: do_configure do_populate_lic do_fetch do_compile do_un=
pack do_install do_populate_sysroot do_build do_patch
>   e2fsprogs-native: do_unpack do_configure do_patch do_build do_compile d=
o_populate_sysroot do_install do_populate_lic
>   libtool-native: do_unpack do_build do_patch do_compile do_install do_po=
pulate_lic do_fetch do_populate_sysroot do_configure
>   ldconfig-native: do_build do_unpack do_install do_configure do_compile =
do_patch do_fetch do_populate_lic do_populate_sysroot
>   randrproto-native: do_configure do_install do_populate_sysroot do_unpac=
k do_patch do_build do_fetch do_compile do_populate_lic
>   intltool-native: do_compile do_configure do_install do_populate_lic do_=
fetch do_unpack do_build do_patch do_populate_sysroot
>   tzcode-native: do_unpack do_fetch do_configure do_populate_sysroot do_p=
opulate_lic do_compile do_install do_build do_patch
>   texinfo-dummy-native: do_unpack do_configure do_fetch do_install do_com=
pile do_populate_sysroot do_populate_lic do_build do_patch
>   core-image-base: do_configure do_compile do_install
>   opkg-native: do_install do_compile do_configure do_unpack do_fetch do_p=
opulate_sysroot do_build do_patch do_populate_lic
>   pbzip2-native: do_install do_fetch do_compile do_build do_populate_sysr=
oot do_populate_lic do_unpack do_configure do_patch
>   bc-native: do_populate_sysroot do_configure do_populate_lic do_install =
do_compile do_patch do_unpack do_build
>   xextproto-native: do_unpack do_build do_populate_sysroot do_install do_=
fetch do_configure do_patch do_compile do_populate_lic
>   libsdl-native: do_compile do_unpack do_populate_lic do_fetch do_install=
 do_populate_sysroot do_build do_configure do_patch
>   libarchive-native: do_populate_lic do_unpack do_patch do_install do_com=
pile do_configure do_build do_populate_sysroot do_fetch
>   xz-native: do_configure do_patch do_install do_unpack do_fetch do_compi=
le do_populate_lic do_build do_populate_sysroot
>   dtc-native: do_populate_lic do_configure do_unpack do_compile do_patch =
do_populate_sysroot do_build do_fetch do_install
>   libxml-parser-perl-native: do_configure do_install do_patch do_build do=
_populate_lic do_populate_sysroot do_unpack do_compile
>   automake-native: do_compile do_patch do_unpack do_populate_lic do_insta=
ll do_configure do_populate_sysroot do_build do_fetch
>   m4-native: do_install do_patch do_configure do_fetch do_unpack do_popul=
ate_sysroot do_populate_lic do_compile do_build
>   dbus-native: do_populate_sysroot do_install do_patch do_configure do_un=
pack do_build do_populate_lic do_compile
>   prelink-native: do_compile do_populate_lic do_configure do_fetch do_bui=
ld do_install do_unpack do_patch do_populate_sysroot
>   packagegroup-core-ssh-openssh: do_populate_sysroot do_packagedata do_pa=
ckage_write_rpm do_package_qa do_build do_compile do_install do_populate_li=
c do_package do_configure
>   dbus-glib-native: do_unpack do_populate_sysroot do_populate_lic do_comp=
ile do_install do_patch do_build do_configure
>   libpthread-stubs-native: do_build do_configure do_compile do_unpack do_=
populate_sysroot do_populate_lic do_patch do_install
>   xcb-proto-native: do_install do_populate_sysroot do_build do_compile do=
_configure do_patch do_populate_lic do_unpack
>   pseudo-native: do_unpack do_build do_populate_lic do_populate_sysroot d=
o_compile do_patch do_fetch do_install do_configure
>   binutils-native: do_populate_lic do_build do_populate_sysroot do_instal=
l do_unpack do_compile do_patch do_configure
>   createrepo-native: do_compile do_populate_lic do_build do_populate_sysr=
oot do_install do_fetch do_patch do_unpack do_configure
>   kbproto-native: do_compile do_install do_fetch do_configure do_patch do=
_unpack do_populate_lic do_populate_sysroot do_build
>   libxml2-native: do_build do_unpack do_populate_lic do_install do_patch =
do_compile do_populate_sysroot do_configure
>   expat-native: do_build do_unpack do_configure do_populate_lic do_patch =
do_compile do_populate_sysroot do_install
>   libxdmcp-native: do_build do_configure do_populate_lic do_install do_pa=
tch do_populate_sysroot do_unpack do_compile
>   readline-native: do_populate_sysroot do_build do_populate_lic do_patch =
do_install do_configure do_unpack do_fetch do_compile
>   gettext-minimal-native: do_populate_sysroot do_configure do_unpack do_i=
nstall do_build do_populate_lic do_compile do_fetch do_patch
>   kmod-native: do_configure do_populate_sysroot do_patch do_install do_bu=
ild do_unpack do_compile do_fetch do_populate_lic
>   gettext-native: do_build do_populate_lic do_configure do_populate_sysro=
ot do_compile do_patch do_install do_unpack
>   libxau-native: do_configure do_patch do_build do_populate_sysroot do_un=
pack do_compile do_populate_lic do_install
>   rpm-native: do_configure do_compile do_patch do_unpack do_populate_sysr=
oot do_fetch do_populate_lic do_install do_build
>   unifdef-native: do_populate_lic do_populate_sysroot do_configure do_pat=
ch do_unpack do_fetch do_build do_compile do_install
>   update-rc.d: do_compile do_packagedata do_package_write_rpm do_install =
do_build do_populate_sysroot do_package_qa do_unpack do_package do_patch do=
_populate_lic do_fetch do_configure
>   gmp-native: do_patch do_fetch do_populate_lic do_build do_configure do_=
install do_unpack do_populate_sysroot do_compile
>   kern-tools-native: do_configure do_patch do_populate_lic do_compile do_=
build do_fetch do_install do_unpack do_populate_sysroot
>   flex-native: do_fetch do_populate_lic do_patch do_install do_compile do=
_build do_unpack do_configure do_populate_sysroot
>   libffi-native: do_patch do_install do_compile do_unpack do_populate_sys=
root do_build do_fetch do_configure do_populate_lic
>   pigz-native: do_configure do_patch do_unpack do_compile do_populate_lic=
 do_build do_fetch do_install do_populate_sysroot
>   python-pygobject-native: do_install do_build do_unpack do_configure do_=
compile do_populate_lic do_patch do_populate_sysroot
>   alsa-lib-native: do_populate_sysroot do_build do_compile do_install do_=
unpack do_fetch do_configure do_patch do_populate_lic
>   cmake-native: do_unpack do_configure do_patch do_install do_populate_sy=
sroot do_fetch do_populate_lic do_build do_compile
>   mpfr-native: do_unpack do_patch do_populate_lic do_populate_sysroot do_=
compile do_install do_configure do_build do_fetch
>   rpmresolve-native: do_unpack do_build do_fetch do_patch do_populate_sys=
root do_compile do_populate_lic do_install do_configure
>   cross-localedef-native: do_patch do_populate_sysroot do_build do_unpack=
 do_fetch do_install do_configure do_compile do_populate_lic
>   run-postinsts: do_install do_populate_sysroot do_configure do_package_q=
a do_unpack do_populate_lic do_packagedata do_package_write_rpm do_fetch do=
_compile do_build do_patch do_package
>   swig-native: do_populate_lic do_configure do_populate_sysroot do_patch =
do_build do_compile do_unpack do_fetch do_install
>   libxext-native: do_unpack do_populate_sysroot do_compile do_build do_co=
nfigure do_install do_populate_lic do_patch
>   db-native: do_compile do_populate_lic do_install do_configure do_unpack=
 do_patch do_populate_sysroot do_build
>   libx11-native: do_compile do_unpack do_install do_configure do_populate=
_sysroot do_populate_lic do_patch do_build
>   bzip2-native: do_populate_sysroot do_fetch do_compile do_patch do_unpac=
k do_configure do_populate_lic do_build do_install
>   libxcb-native: do_populate_lic do_patch do_build do_configure do_compil=
e do_unpack do_install do_populate_sysroot
>   acl-native: do_populate_lic do_compile do_unpack do_configure do_popula=
te_sysroot do_build do_fetch do_patch do_install
>   xproto-native: do_populate_lic do_build do_fetch do_compile do_unpack d=
o_populate_sysroot do_install do_patch do_configure
>   util-macros-native: do_unpack do_install do_build do_compile do_patch d=
o_configure do_fetch do_populate_sysroot do_populate_lic
>   libmpc-native: do_populate_sysroot do_build do_populate_lic do_configur=
e do_unpack do_fetch do_patch do_compile do_install
>   libxslt-native: do_configure do_patch do_populate_lic do_build do_insta=
ll do_compile do_populate_sysroot do_unpack do_fetch
>   gnu-config-native: do_fetch do_compile do_build do_unpack do_configure =
do_install do_populate_sysroot do_populate_lic do_patch
>   attr-native: do_unpack do_compile do_install do_patch do_populate_lic d=
o_fetch do_populate_sysroot do_configure do_build
>   libxrandr-native: do_populate_lic do_configure do_build do_patch do_ins=
tall do_unpack do_compile do_populate_sysroot
>   tzdata: do_install do_compile do_populate_lic do_package_qa do_configur=
e do_populate_sysroot do_fetch do_package_write_rpm do_unpack do_patch do_p=
ackage do_build do_packagedata
>   quilt-native: do_fetch do_populate_sysroot do_compile do_unpack do_conf=
igure do_populate_lic do_patch do_build do_install
>   libpng-native: do_populate_lic do_populate_sysroot do_compile do_config=
ure do_patch do_unpack do_install do_build
>   ossp-uuid-native: do_configure do_unpack do_build do_populate_lic do_pa=
tch do_compile do_populate_sysroot do_install do_fetch
>   autoconf-native: do_unpack do_populate_sysroot do_build do_patch do_ins=
tall do_fetch do_populate_lic do_configure do_compile
>   gcc-cross-mips64: do_populate_lic do_populate_sysroot do_build do_insta=
ll do_configure do_compile
>   gcc-cross-initial-mips64: do_compile do_populate_lic do_configure do_bu=
ild do_populate_sysroot do_install
>   libpcre-native: do_unpack do_install do_build do_patch do_populate_sysr=
oot do_populate_lic do_configure do_compile
>   qemuwrapper-cross: do_configure do_compile
>   pixman-native: do_populate_sysroot do_build do_populate_lic do_unpack d=
o_compile do_install do_configure do_patch do_fetch
>   sqlite3-native: do_install do_configure do_build do_patch do_unpack do_=
compile do_populate_lic do_populate_sysroot
>   byacc-native: do_patch do_populate_lic do_populate_sysroot do_configure=
 do_unpack do_install do_compile do_build do_fetch
>   python-smartpm-native: do_build do_populate_lic do_unpack do_configure =
do_populate_sysroot do_compile do_fetch do_patch do_install
>   makedevs-native: do_install do_patch do_compile do_fetch do_populate_sy=
sroot do_configure do_populate_lic do_unpack do_build
>   inputproto-native: do_unpack do_populate_sysroot do_install do_patch do=
_fetch do_build do_configure do_compile do_populate_lic
>   lzo-native: do_populate_lic do_install do_populate_sysroot do_patch do_=
unpack do_configure do_compile do_fetch do_build
>   bison-native: do_populate_sysroot do_populate_lic do_compile do_build d=
o_patch do_install do_unpack do_configure
>   openssl-native: do_unpack do_install do_populate_sysroot do_fetch do_po=
pulate_lic do_configure do_build do_compile do_patch
>   pkgconfig-native: do_build do_configure do_unpack do_compile do_populat=
e_lic do_install do_patch do_populate_sysroot do_fetch
>   python-pyrex-native: do_configure do_unpack do_populate_sysroot do_popu=
late_lic do_compile do_patch do_fetch do_build do_install
>   gtk-doc-stub-native: do_build do_populate_sysroot do_unpack do_configur=
e do_compile do_patch do_populate_lic do_fetch do_install
>   perl-native: do_patch do_populate_sysroot do_unpack do_configure do_pop=
ulate_lic do_fetch do_install do_compile do_build
>   qemu-native: do_configure do_fetch do_compile do_populate_lic do_instal=
l do_build do_patch do_unpack do_populate_sysroot
>   shared-mime-info-native: do_configure do_patch do_populate_lic do_insta=
ll do_populate_sysroot do_compile do_unpack do_build
>   zlib-native: do_populate_sysroot do_unpack do_compile do_install do_fet=
ch do_patch do_populate_lic do_configure do_build
>   libxrender-native: do_unpack do_patch do_populate_lic do_configure do_i=
nstall do_compile do_build do_populate_sysroot
>   opkg-utils-native: do_populate_sysroot do_compile do_configure do_build=
 do_patch do_install do_unpack do_fetch do_populate_lic
>   cryptodev-linux-native: do_build do_patch do_unpack do_install do_confi=
gure do_compile do_populate_sysroot do_populate_lic
>   gperf-native: do_populate_sysroot do_compile do_unpack do_populate_lic =
do_install do_build do_configure do_fetch do_patch
>   binutils-cross-mips64: do_patch do_unpack do_populate_sysroot do_instal=
l do_configure do_build do_compile do_populate_lic
>   mklibs-native: do_fetch do_populate_sysroot do_compile do_build do_inst=
all do_unpack do_configure do_patch do_populate_lic
>   icu-native: do_install do_unpack do_fetch do_populate_sysroot do_popula=
te_lic do_configure do_build do_compile do_patch
>   popt-native: do_install do_populate_lic do_unpack do_configure do_build=
 do_populate_sysroot do_compile do_patch
>   file-native: do_fetch do_install do_unpack do_patch do_configure do_pop=
ulate_sysroot do_build do_compile do_populate_lic
>   update-rc.d-native: do_unpack do_compile do_build do_install do_populat=
e_lic do_populate_sysroot do_configure do_patch
>   util-linux-native: do_patch do_populate_lic do_install do_build do_popu=
late_sysroot do_fetch do_configure do_unpack do_compile
>   glib-2.0-native: do_install do_build do_populate_sysroot do_patch do_fe=
tch do_populate_lic do_configure do_unpack do_compile
>=20
> =3D=3D=3D PV changed: (39 tasks)
>   linux-yocto: 4.4.3+gitAUTOINC+89419d8b90_06c34af69f -> 4.4.3+gitAUTOINC=
+89419d8b90_79b496614c
>   perl: 5.22.1 -> 5.20.0
>=20
> =3D=3D=3D Dependencies changed: (1354 tasks)
>   busybox: do_package do_configure do_packagedata do_install_ptest_base d=
o_populate_sysroot do_build do_configure_ptest_base do_package_qa do_compil=
e_ptest_base do_install do_compile do_package_write_rpm do_populate_lic
>   ofono: do_compile do_configure do_install do_package_qa do_package do_b=
uild do_populate_sysroot do_package_write_rpm do_populate_lic do_packagedat=
a do_unpack do_patch
>   glibc-initial: do_install do_populate_sysroot do_build do_compile do_in=
stall_locale do_configure do_patch do_evacuate_scripts do_populate_lic
>   libtirpc: do_package do_package_qa do_populate_sysroot do_configure do_=
unpack do_packagedata do_build do_populate_lic do_package_write_rpm do_inst=
all do_compile do_patch
>   alsa-state: do_package_write_rpm do_populate_sysroot do_packagedata do_=
package do_install do_build do_package_qa do_configure do_compile do_popula=
te_lic
>   gdbm: do_compile_ptest_base do_populate_sysroot do_build do_populate_li=
c do_package_qa do_compile do_install_ptest_base do_configure_ptest_base do=
_install do_configure do_package do_packagedata do_package_write_rpm
>   linux-libc-headers: do_package do_install do_configure do_populate_lic =
do_package_qa do_build do_package_write_rpm do_packagedata do_compile do_pa=
tch do_populate_sysroot do_unpack
>   libxdmcp: do_package do_populate_lic do_configure do_package_qa do_inst=
all do_populate_sysroot do_package_write_rpm do_packagedata do_compile do_b=
uild
>   sysvinit-inittab: do_build do_install do_configure do_populate_sysroot =
do_packagedata do_populate_lic do_package_write_rpm do_package do_package_q=
a do_compile
>   core-image-base: do_image do_image_complete do_unpack do_package do_pac=
kagedata do_package_write_rpm do_build do_package_qa do_populate_sysroot do=
_image_tar do_populate_lic do_rootfs do_rootfs_wicenv do_image_ext4 do_patch
>   gmp: do_configure do_populate_lic do_packagedata do_build do_compile do=
_package_qa do_populate_sysroot do_package_write_rpm do_install do_package
>   packagegroup-core-boot: do_package_write_rpm do_install do_package do_p=
ackagedata do_populate_lic do_compile do_populate_sysroot do_package_qa do_=
build do_configure
>   kbproto: do_package_write_rpm do_package do_compile do_configure do_bui=
ld do_package_qa do_populate_lic do_install do_packagedata do_populate_sysr=
oot
>   flex: do_packagedata do_package do_build do_install_ptest_base do_compi=
le do_install do_package_qa do_configure do_package_write_rpm do_compile_pt=
est_base do_populate_sysroot do_populate_lic do_configure_ptest_base
>   libsndfile1: do_populate_sysroot do_build do_configure do_package_qa do=
_package do_install do_populate_lic do_package_write_rpm do_packagedata do_=
compile
>   libusb-compat: do_package do_packagedata do_build do_package_qa do_popu=
late_sysroot do_compile do_install do_configure do_populate_lic do_package_=
write_rpm
>   python: do_install do_compile do_populate_lic do_build do_configure do_=
package do_configure_ptest_base do_populate_sysroot do_install_ptest_base d=
o_package_write_rpm do_compile_ptest_base do_packagedata do_patch do_packag=
e_qa do_unpack
>   libidn: do_package_write_rpm do_compile do_populate_lic do_build do_pac=
kagedata do_install do_populate_sysroot do_configure do_package do_package_=
qa
>   xproto: do_package do_packagedata do_package_qa do_configure do_package=
_write_rpm do_populate_lic do_build do_populate_sysroot do_install do_compi=
le
>   bash-completion: do_build do_package_write_rpm do_packagedata do_instal=
l do_package do_populate_sysroot do_populate_lic do_compile do_package_qa d=
o_configure
>   work-shared: do_preconfigure
>   opkg-utils: do_package_write_rpm do_compile do_configure do_package_qa =
do_populate_sysroot do_packagedata do_populate_lic do_package do_install do=
_build
>   shadow: do_package_qa do_populate_sysroot do_build do_package_write_rpm=
 do_populate_lic do_compile do_packagedata do_install do_configure do_packa=
ge do_unpack do_patch
>   util-linux: do_package_write_rpm do_configure do_patch do_compile_ptest=
_base do_install_ptest_base do_install do_unpack do_build do_configure_ptes=
t_base do_package do_compile do_package_qa do_packagedata do_populate_sysro=
ot do_populate_lic
>   libdaemon: do_build do_install do_package_qa do_populate_lic do_package=
 do_compile do_package_write_rpm do_populate_sysroot do_packagedata do_conf=
igure
>   libsm: do_configure do_populate_sysroot do_install do_packagedata do_pa=
ckage_write_rpm do_compile do_populate_lic do_package do_package_qa do_build
>   glibc-locale: do_packagedata do_package_qa do_package do_configure do_b=
uild do_install do_populate_lic do_package_write_rpm do_compile do_populate=
_sysroot
>   sysvinit: do_package_write_rpm do_install do_compile do_package do_pack=
age_qa do_populate_sysroot do_build do_configure do_packagedata do_populate=
_lic
>   dbus: do_package_write_rpm do_install do_package_qa do_package do_popul=
ate_lic do_configure do_build do_populate_sysroot do_compile do_packagedata
>   dbus-test: do_install do_build do_package_write_rpm do_compile_ptest_ba=
se do_packagedata do_populate_lic do_install_ptest_base do_populate_sysroot=
 do_configure_ptest_base do_package do_compile do_package_qa do_configure
>   libvorbis: do_populate_sysroot do_configure do_patch do_build do_packag=
e_qa do_package do_install do_unpack do_populate_lic do_compile do_packaged=
ata do_package_write_rpm
>   amanda: do_build do_package do_install do_populate_lic do_compile do_po=
pulate_sysroot do_package_qa do_packagedata do_package_write_rpm do_configu=
re
>   shared-mime-info: do_package_write_rpm do_unpack do_populate_sysroot do=
_package_qa do_build do_populate_lic do_compile do_packagedata do_patch do_=
install do_configure do_package
>   rpcbind: do_package_write_rpm do_populate_lic do_packagedata do_package=
 do_install do_compile do_package_qa do_populate_sysroot do_build do_config=
ure
>   libnss-mdns: do_populate_lic do_compile do_configure do_packagedata do_=
populate_sysroot do_build do_package_write_rpm do_install do_package do_pac=
kage_qa
>   util-macros: do_package do_populate_lic do_populate_sysroot do_package_=
qa do_packagedata do_configure do_build do_package_write_rpm do_compile do_=
install
>   sed: do_install do_populate_sysroot do_populate_lic do_compile_ptest_ba=
se do_compile do_package_qa do_configure_ptest_base do_package do_build do_=
packagedata do_package_write_rpm do_configure do_install_ptest_base
>   libgcc: do_populate_lic do_packagedata do_package_write_rpm do_compile =
do_multilib_install do_populate_sysroot do_package_qa do_install do_build d=
o_extra_symlinks do_package do_configure
>   tcp-wrappers: do_package do_packagedata do_package_qa do_populate_lic d=
o_populate_sysroot do_compile do_install do_configure do_package_write_rpm =
do_build
>   inputproto: do_package do_package_write_rpm do_build do_install do_conf=
igure do_packagedata do_populate_lic do_populate_sysroot do_package_qa do_c=
ompile
>   libxau: do_configure do_install do_compile do_build do_package do_packa=
ge_qa do_packagedata do_package_write_rpm do_populate_lic do_populate_sysro=
ot
>   kmod: do_populate_sysroot do_install do_configure do_package_write_rpm =
do_compile do_package_qa do_packagedata do_populate_lic do_build do_package
>   modutils-initscripts: do_install do_package do_populate_lic do_populate=
_sysroot do_package_qa do_compile do_build do_package_write_rpm do_packaged=
ata do_configure
>   bluez5: do_package do_package_write_rpm do_unpack do_packagedata do_pac=
kage_qa do_configure do_build do_patch do_compile do_install do_populate_sy=
sroot do_populate_lic
>   glibc: do_populate_sysroot do_compile do_install_locale do_configure do=
_populate_lic do_install do_packagedata do_package_qa do_package_write_rpm =
do_patch do_package do_build do_evacuate_scripts
>   libgpg-error: do_populate_sysroot do_packagedata do_package_write_rpm d=
o_populate_lic do_configure do_compile do_build do_package do_package_qa do=
_install
>   libice: do_populate_lic do_package_write_rpm do_populate_sysroot do_pac=
kage_qa do_packagedata do_configure do_package do_compile do_install do_bui=
ld
>   init-ifupdown: do_populate_lic do_populate_sysroot do_packagedata do_bu=
ild do_configure do_package do_package_write_rpm do_package_qa do_install d=
o_compile
>   icu: do_populate_lic do_build do_populate_sysroot do_install do_package=
 do_configure do_package_qa do_compile do_packagedata do_package_write_rpm
>   msmtp: do_unpack do_build do_package do_compile do_configure do_package=
data do_populate_lic do_patch do_package_qa do_populate_sysroot do_install =
do_package_write_rpm
>   bc: do_package do_package_write_rpm do_package_qa do_packagedata do_bui=
ld do_compile do_configure do_install do_populate_lic do_populate_sysroot
>   gawk: do_populate_lic do_package_write_rpm do_package_qa do_install do_=
compile_ptest_base do_populate_sysroot do_install_ptest_base do_packagedata=
 do_compile do_build do_configure_ptest_base do_configure do_package
>   xcb-proto: do_packagedata do_install do_package_write_rpm do_build do_p=
ackage do_compile do_configure do_populate_sysroot do_package_qa do_populat=
e_lic
>   libgcc-initial: do_build do_extra_symlinks do_populate_lic do_install d=
o_configure do_multilib_install do_populate_sysroot do_compile
>   libxml-parser-perl: do_package_write_rpm do_packagedata do_populate_sys=
root do_configure do_populate_lic do_build do_compile do_package_qa do_pack=
age do_install
>   libgcrypt: do_package_write_rpm do_install do_build do_package do_popul=
ate_sysroot do_compile do_package_qa do_packagedata do_populate_lic do_conf=
igure
>   bash: do_install do_install_ptest_base do_packagedata do_populate_sysro=
ot do_configure_ptest_base do_compile do_compile_ptest_base do_populate_lic=
 do_package_write_rpm do_configure do_package do_build do_package_qa
>   eudev: do_package_write_rpm do_populate_sysroot do_package do_populate_=
lic do_build do_compile do_install do_packagedata do_package_qa do_configure
>   shadow-securetty: do_build do_package_write_rpm do_compile do_configure=
 do_package do_packagedata do_populate_lic do_install do_populate_sysroot d=
o_package_qa
>   openssh: do_install do_package do_install_ptest_base do_populate_sysroo=
t do_packagedata do_compile do_configure_ptest_base do_package_qa do_compil=
e_ptest_base do_configure do_populate_lic do_package_write_rpm do_build
>   python-pygobject: do_package do_populate_lic do_configure do_compile do=
_package_qa do_populate_sysroot do_build do_package_write_rpm do_packagedat=
a do_install
>   openssl: do_configure_ptest_base do_compile do_package do_compile_ptest=
_base do_populate_sysroot do_install_ptest_base do_packagedata do_build do_=
configure do_package_qa do_install do_populate_lic do_package_write_rpm
>   gnutls: do_configure do_package do_compile do_build do_package_qa do_in=
stall do_patch do_populate_sysroot do_packagedata do_populate_lic do_packag=
e_write_rpm do_unpack
>   ptest-runner: do_populate_lic do_configure do_package_qa do_build do_in=
stall do_populate_sysroot do_compile do_packagedata do_package do_package_w=
rite_rpm
>   cryptodev-linux: do_package_qa do_configure do_populate_lic do_install =
do_package_write_rpm do_compile do_packagedata do_populate_sysroot do_build=
 do_package
>   xextproto: do_compile do_populate_lic do_packagedata do_install do_popu=
late_sysroot do_package_qa do_configure do_package_write_rpm do_build do_pa=
ckage
>   libical: do_package do_install do_package_qa do_configure do_populate_s=
ysroot do_compile do_packagedata do_generate_toolchain_file do_package_writ=
e_rpm do_build do_populate_lic
>   depmodwrapper-cross: do_populate_sysroot do_populate_lic do_install do_=
build
>   libtool-cross: do_package_write_rpm do_package_qa do_install do_package=
data do_populate_lic do_build do_compile do_package do_configure do_populat=
e_sysroot
>   psplash: do_install do_compile do_build do_package do_populate_lic do_p=
opulate_sysroot do_configure do_package_write_rpm do_package_qa do_packaged=
ata
>   libusb1: do_install do_populate_sysroot do_populate_lic do_package_writ=
e_rpm do_compile do_configure do_build do_package_qa do_package do_packaged=
ata
>   libxml-simple-perl: do_package do_install do_package_write_rpm do_packa=
ge_qa do_packagedata do_configure do_build do_compile do_populate_sysroot d=
o_populate_lic
>   libxcb: do_install do_configure do_build do_compile do_packagedata do_p=
opulate_lic do_package_qa do_populate_sysroot do_package_write_rpm do_packa=
ge
>   packagegroup-base: do_populate_sysroot do_package do_populate_lic do_pa=
ckagedata do_package_write_rpm do_package_qa do_build
>   glib-2.0: do_package_write_rpm do_install do_compile_ptest_base do_pack=
agedata do_patch do_populate_lic do_populate_sysroot do_install_ptest_base =
do_configure do_configure_ptest_base do_package_qa do_unpack do_package do_=
build do_compile
>   m4: do_package do_packagedata do_populate_sysroot do_configure do_popul=
ate_lic do_install do_package_qa do_package_write_rpm do_compile do_build
>   netbase: do_configure do_install do_packagedata do_populate_lic do_popu=
late_sysroot do_build do_patch do_package_qa do_compile do_package_write_rp=
m do_package do_unpack
>   libpcre: do_package_write_rpm do_compile do_populate_lic do_install_pte=
st_base do_build do_configure do_configure_ptest_base do_packagedata do_com=
pile_ptest_base do_package_qa do_install do_populate_sysroot do_package
>   libsamplerate0: do_compile do_packagedata do_install do_populate_sysroo=
t do_populate_lic do_build do_package_write_rpm do_configure do_package do_=
package_qa
>   ncurses: do_package_write_rpm do_populate_sysroot do_populate_lic do_pa=
ckage do_compile do_package_qa do_packagedata do_install do_configure do_bu=
ild
>   flac: do_unpack do_build do_package_qa do_configure do_populate_lic do_=
package_write_rpm do_populate_sysroot do_patch do_package do_packagedata do=
_install do_compile
>   sysfsutils: do_package_qa do_populate_sysroot do_package do_build do_co=
nfigure do_compile do_package_write_rpm do_populate_lic do_packagedata do_i=
nstall
>   gcc-runtime: do_build do_package_qa do_populate_lic do_populate_sysroot=
 do_compile do_install do_package do_configure do_packagedata do_package_wr=
ite_rpm
>   qemuwrapper-cross: do_packagedata do_package do_populate_sysroot do_pop=
ulate_lic do_install do_build do_package_write_rpm do_package_qa
>   backup-setup: do_populate_lic do_compile do_build do_package_write_rpm =
do_package_qa do_configure do_install do_package do_packagedata do_populate=
_sysroot
>   attr: do_install_ptest_base do_package do_configure_ptest_base do_packa=
ge_write_rpm do_populate_sysroot do_compile do_populate_lic do_packagedata =
do_install do_package_qa do_compile_ptest_base do_configure do_build
>   libnl: do_packagedata do_install do_populate_sysroot do_populate_lic do=
_compile do_configure do_build do_package_qa do_package_write_rpm do_package
>   zlib: do_package_qa do_compile do_compile_ptest_base do_install do_conf=
igure do_patch do_build do_package_write_rpm do_unpack do_package do_instal=
l_ptest_base do_populate_sysroot do_populate_lic do_packagedata do_configur=
e_ptest_base
>   xtrans: do_populate_lic do_package_write_rpm do_install do_packagedata =
do_package do_configure do_compile do_package_qa do_populate_sysroot do_bui=
ld
>   initscripts: do_install do_configure do_package do_compile do_package_q=
a do_package_write_rpm do_populate_sysroot do_populate_lic do_build do_pack=
agedata
>   avahi: do_package_write_rpm do_install do_package_qa do_build do_popula=
te_lic do_packagedata do_populate_sysroot do_compile do_package do_configure
>   procps: do_package_write_rpm do_patch do_compile do_package_qa do_popul=
ate_sysroot do_package do_configure do_unpack do_build do_populate_lic do_i=
nstall do_packagedata
>   alsa-utils: do_populate_sysroot do_compile do_package_write_rpm do_inst=
all do_configure do_package do_packagedata do_package_qa do_populate_lic do=
_build
>   neard: do_package_write_rpm do_packagedata do_populate_lic do_unpack do=
_compile do_package do_patch do_populate_sysroot do_package_qa do_build do_=
configure do_install
>   tar: do_install do_package_write_rpm do_populate_sysroot do_package do_=
build do_configure do_populate_lic do_package_qa do_compile do_packagedata
>   libxml2: do_install do_build do_package_write_rpm do_populate_lic do_co=
nfigure_ptest_base do_compile do_packagedata do_package do_compile_ptest_ba=
se do_install_ptest_base do_populate_sysroot do_configure do_package_qa
>   expat: do_build do_populate_sysroot do_package_write_rpm do_package_qa =
do_compile do_packagedata do_package do_configure do_populate_lic do_unpack=
 do_install do_patch
>   iw: do_packagedata do_build do_populate_lic do_install do_compile do_pa=
ckage do_package_write_rpm do_package_qa do_populate_sysroot do_configure
>   shadow-sysroot: do_packagedata do_compile do_configure do_package_write=
_rpm do_package_qa do_install do_populate_sysroot do_package do_build do_po=
pulate_lic
>   base-files: do_configure do_populate_lic do_packagedata do_compile do_p=
opulate_sysroot do_build do_package do_install do_package_write_rpm do_pack=
age_qa
>   libpthread-stubs: do_populate_sysroot do_package_write_rpm do_package_q=
a do_configure do_compile do_populate_lic do_build do_package do_packagedat=
a do_install
>   dbus-glib: do_populate_lic do_package do_install do_packagedata do_pack=
age_write_rpm do_configure do_compile do_populate_sysroot do_package_qa do_=
build
>   bzip2: do_packagedata do_package_qa do_package_write_rpm do_install do_=
compile_ptest_base do_configure do_install_ptest_base do_populate_lic do_pa=
ckage do_compile do_configure_ptest_base do_populate_sysroot do_build
>   alsa-lib: do_package_write_rpm do_compile do_package do_build do_packag=
e_qa do_populate_sysroot do_populate_lic do_install do_configure do_package=
data
>   make: do_compile do_populate_lic do_populate_sysroot do_package do_buil=
d do_configure do_install do_packagedata do_package_write_rpm do_package_qa
>   gettext: do_package do_package_qa do_build do_install do_packagedata do=
_configure do_compile do_populate_lic do_populate_sysroot do_package_write_=
rpm
>   coreutils: do_populate_sysroot do_build do_install do_package do_packag=
e_write_rpm do_package_qa do_unpack do_patch do_packagedata do_compile do_p=
opulate_lic do_configure
>   sqlite3: do_populate_sysroot do_populate_lic do_install do_package_qa d=
o_build do_compile do_packagedata do_package do_package_write_rpm do_config=
ure
>   libcap: do_configure do_compile do_packagedata do_package do_build do_p=
ackage_qa do_unpack do_package_write_rpm do_install do_populate_sysroot do_=
populate_lic do_patch
>   python-dbus: do_compile do_populate_sysroot do_build do_package_write_r=
pm do_packagedata do_populate_lic do_configure do_install do_package do_pac=
kage_qa
>   libcheck: do_packagedata do_package_write_rpm do_install do_package_qa =
do_populate_sysroot do_build do_package do_populate_lic do_configure do_com=
pile
>   wireless-tools: do_package_qa do_compile do_populate_sysroot do_configu=
re do_packagedata do_populate_lic do_package do_install do_build do_package=
_write_rpm
>   db: do_packagedata do_build do_configure do_populate_lic do_compile do_=
package_write_rpm do_package do_package_qa do_install do_populate_sysroot
>   quota: do_packagedata do_populate_sysroot do_build do_compile do_config=
ure do_package do_install do_package_write_rpm do_populate_lic do_package_qa
>   libogg: do_package_write_rpm do_packagedata do_package do_package_qa do=
_build do_patch do_populate_lic do_install do_compile do_populate_sysroot d=
o_configure do_unpack
>   libffi: do_configure do_packagedata do_compile do_package_qa do_package=
 do_populate_lic do_populate_sysroot do_package_write_rpm do_install do_bui=
ld
>   readline: do_populate_sysroot do_package_write_rpm do_packagedata do_pa=
ckage do_populate_lic do_install do_configure do_compile do_build do_packag=
e_qa
>   wpa-supplicant: do_package do_populate_lic do_build do_packagedata do_c=
onfigure do_package_qa do_populate_sysroot do_package_write_rpm do_compile =
do_install
>   mobile-broadband-provider-info: do_install do_packagedata do_package_wr=
ite_rpm do_populate_lic do_compile do_build do_package_qa do_configure do_p=
ackage do_populate_sysroot
>   diffutils: do_install_ptest_base do_populate_lic do_install do_build do=
_unpack do_packagedata do_package_write_rpm do_compile do_package do_packag=
e_qa do_compile_ptest_base do_configure do_patch do_populate_sysroot do_con=
figure_ptest_base
>   libx11: do_install do_populate_sysroot do_configure do_package_qa do_pa=
ckage do_populate_lic do_packagedata do_build do_package_write_rpm do_compi=
le
>   e2fsprogs: do_package_qa do_install_ptest_base do_configure_ptest_base =
do_populate_sysroot do_compile_ptest_base do_packagedata do_package do_comp=
ile do_install do_build do_configure do_package_write_rpm do_populate_lic
>   nettle: do_package do_install_ptest_base do_package_write_rpm do_config=
ure_ptest_base do_compile do_package_qa do_compile_ptest_base do_populate_l=
ic do_build do_packagedata do_populate_sysroot do_install do_configure
>   gzip: do_packagedata do_configure do_install do_package do_populate_sys=
root do_package_qa do_build do_populate_lic do_package_write_rpm do_compile
>   gnome-desktop-testing: do_patch do_package_qa do_unpack do_populate_sys=
root do_packagedata do_install do_populate_lic do_compile do_package do_con=
figure do_package_write_rpm do_build
>   base-passwd: do_packagedata do_build do_configure do_package do_package=
_write_rpm do_populate_sysroot do_package_qa do_populate_lic do_compile do_=
install
>=20
> =3D=3D=3D Summary: (2338 changed, 322 unchanged)
> Newly added: 945
> PV changed: 39
> PR changed: 0
> Dependencies changed: 1354
>=20
> Removing the newly generated stamps dir ...

> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--6Nae48J/T25AfBN4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlbmw3EACgkQN1Ujt2V2gBwlCgCgrKb95XMUUIe50l2A6mPNT9Pr
1ykAnA4I+TcO6gRFrxjRkFDruhPJsrF/
=TBCC
-----END PGP SIGNATURE-----

--6Nae48J/T25AfBN4--
