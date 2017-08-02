Return-Path: <bluehills7@comcast.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF55BE00CB4; Tue,  1 Aug 2017 17:55:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bluehills7[at]comcast.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [69.252.207.36 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from resqmta-ch2-04v.sys.comcast.net
	(resqmta-ch2-04v.sys.comcast.net [69.252.207.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F30B8E00C9D
	for <yocto@yoctoproject.org>; Tue,  1 Aug 2017 17:55:28 -0700 (PDT)
Received: from resomta-ch2-01v.sys.comcast.net ([69.252.207.97])
	by resqmta-ch2-04v.sys.comcast.net with ESMTP
	id chwad0fTu0sIechwddwj0b; Wed, 02 Aug 2017 00:55:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=q20161114; t=1501635327;
	bh=Na5RFWKCy56kipUdEu10BZrpHY+RfDGnaVyNlC93qiI=;
	h=Received:Received:Content-Type:Mime-Version:Subject:From:Date:
	Message-Id:To;
	b=My2igId8O6CDy/tpYsOslAWyfx3ZUjN/E8LNVJjNVupOU7loUCQTAKGbyL0uf1+8g
	W53NpTzCvDzpYdNX7DTUzmxukG+8SABNwjbsVTq4ocaEuZX8qjogSTag4bqIb/lHkd
	cGsSxy8yTS7sJ57toNVfh8yt+SdC+KHeX+hHXhkxNme1QDsgDOmH9pjnMK+I9cxNV4
	CC/v5XHSrsDC2al0Vi3WZaWVmQl9qmYW/QlPB2FqIlWdNXyKzINmAcj56ZgXEPv+oW
	HcUdcWFdQ+SilFr+di5kX4rS2VOch7L2Z42VgxIAZ+GPmR/GWFxRLGsYwY1PVfaMUK
	PzO2WtldFoRcw==
Received: from [IPv6:2601:18f:800:acc1:7057:341e:5042:3de]
	([IPv6:2601:18f:800:acc1:7057:341e:5042:3de])
	by resomta-ch2-01v.sys.comcast.net with SMTP
	id chwcdqLzA3hkzchwcdbPRN; Wed, 02 Aug 2017 00:55:27 +0000
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
From: Russell Peterson <bluehills7@comcast.net>
X-Priority: 3
In-Reply-To: <1928283135.524860.1501624351743@connect.xfinity.com>
Date: Tue, 1 Aug 2017 20:55:26 -0400
Message-Id: <33807B63-4010-4E20-9200-92EA19FBED02@comcast.net>
References: <FCFE4E57-753C-47F3-AFBC-A969AABDDD2C@comcast.net>
	<20571187.vhiZQWh1oz@peggleto-mobl.ger.corp.intel.com>
	<1928283135.524860.1501624351743@connect.xfinity.com>
To: Russell Peterson <bluehills7@comcast.net>
X-Mailer: Apple Mail (2.3273)
X-CMAE-Envelope: MS4wfDFlnU5q46zqhxpsxuTCWwcLVScpV/bdwYufpvTOqbhmYmMWKutQDOgr/zPkY2Nu0OuzESNAuUcAKOA9rOoS212mfjHBgn4f2pdXMtYIjFXLRsWb8n9G
	ZD+RwaAKwMzEr25y2BYNdDpasS0iwXJ52U9w/cNRodSaplcFBerq7X0NPE+HHX5qhccpx/BhpyJaMjyX7rNgCiUyQExTVJVPJzl5gQBRJ6ljm82lIn9HzMU0
	Y96e8H817/8wWTyyEN0R2t6VBKqUlAkOabN2JnpWJh0=
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: extensible SDK build failure
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
X-List-Received-Date: Wed, 02 Aug 2017 00:55:30 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

FYI: For those interested=E2=80=A6

Just as a test/workaround I added a harfbuzz_%.bbappend file to my meta =
layer and directly set the acpaths variable to the STAGING native =
directory and that seems to work fine.  Works for now but I will try to =
come up with a cleaner, more generic fix.

acpaths =3D =E2=80=9C-I ${STAGING_DATADIR_NATIVE}/aclocal/=E2=80=9C


Regards,

Russell


> On Aug 1, 2017, at 5:52 PM, RUSSELL PETERSON <bluehills7@comcast.net> =
wrote:
>=20
> Thank you for the response, Paul. You were correct that I had the =
TOOLCHAIN_*_TASK variables set in my machine.conf file. I put it into my =
image bb file and things seem far more sane... although I must admit I =
am not 100% sure why it works but I will study it a bit and figure it =
out. Thanks for your help.
>=20
> I have run into another issue while trying to generate the eSDK in =
that there appears to be an issue with building harfbuzz. =46rom what I =
can tell, this appears to be an issue with the search paths for the =
autoreconf call. The autoreconf tool is finding the pkg.m4 file in the =
harfbuzz m4 directory FIRST and therefore not getting the one in =
harfbuzz/1.4.1-r0/recipe-sysroot-native/usr/share/aclocal which indeed =
has the correct m4_pattern_allow.
>=20
> Do you think that's a bug or something with my recipe? Seems like I =
just want to reverse the -I options... but I don't know how, exactly.
>=20
> =
/scratch/russell/yocto-00dc025f/work/aarch64-poky-linux/harfbuzz/1.4.1-r0/=
recipe-sysroot-native/usr/bin/autoconf =
--include=3D/scratch/russell/yocto-00dc025f/work/aarch64-poky-linux/harfbu=
zz/1.4.1-r0/harfbuzz-1.4.1/m4/ =
--include=3D/scratch/russell/yocto-00dc025f/work/aarch64-poky-linux/harfbu=
zz/1.4.1-r0/recipe-sysroot-native/usr/share/aclocal/ --force
>=20
> ../../../autoconf-2.69/lib/autoconf/specific.m4:368: =
AC_USE_SYSTEM_EXTENSIONS is expanded from...
> | configure.ac:22: the top level
> | configure:18902: error: possibly undefined macro: =
PKG_CONFIG_SYSROOT_DIR
> | If this token and others are legitimate, please use =
m4_pattern_allow.
> | See the Autoconf documentation.
> | autoreconf: =
/scratch/russell/yocto-00dc025f/work/aarch64-poky-linux/harfbuzz/1.4.1-r0/=
recipe-sysroot-native/usr/bin/autoconf failed with exit status: 1
> | ERROR: Function failed: do_configure (log file is located at =
/scratch/russell/yocto-00dc025f/work/aarch64-poky-linux/harfbuzz/1.4.1-r0/=
temp/log.do_configure.14956)
>=20
> > On July 31, 2017 at 9:50 AM Paul Eggleton =
<paul.eggleton@linux.intel.com> wrote:
> >=20
> >=20
> > Hi Russell,
> >=20
> > It looks to me like you have added kernel-devsrc to the =
TOOLCHAIN_*_TASK variable at the global level, which you really don't =
want to do if you're going to be building buildtools-tarball (which eSDK =
will build as a dependency). I'd suggest moving that setting to your =
image recipe.
> >=20
> > Cheers,
> > Paul
> >=20
> > On Sunday, 30 July 2017 4:22:24 PM CEST Russell Peterson wrote:
> > > Hello, all.
> > >=20
> > > I=E2=80=99m trying to build the eSDK for my platform and I just =
can=E2=80=99t figure out why dnf can=E2=80=99t find kernel-devsrc. =
It=E2=80=99s there, I added it. The =E2=80=9Cnormal SDK=E2=80=9D uses it =
and builds fine. Just no luck with the eSDK.
> > > Any help out there? Poky is pyro. aarch64 SoC target platform with =
an x86 build host (CentOS 7.3). Basically I just bitbake -c =
do_populate_sdk_ext core-image-full. I do have a linux kernel recipe =
that pulls the kernel from the standard kernel.org <http://kernel.org/> =
repo.
> > >=20
> > > ERROR: buildtools-tarball-1.0-r0 do_populate_sdk: Could not invoke =
dnf. Command =
'/scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linux/build=
tools-tarball/1.0-r0/recipe-sysroot-native/usr/bin/dnf -y -c =
/scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linux/buildt=
ools-tarball/1.0-r0/sdk/image/opt/poky/2.3.1/sysroots/none/etc/dnf/dnf.con=
f =
--setopt=3Dreposdir=3D/scratch/russell/yocto-00dc025f/work/x86_64-nativesd=
k-pokysdk-linux/buildtools-tarball/1.0-r0/sdk/image/opt/poky/2.3.1/sysroot=
s/none/etc/yum.repos.d =
--repofrompath=3Doe-repo,/scratch/russell/yocto-00dc025f/work/x86_64-nativ=
esdk-pokysdk-linux/buildtools-tarball/1.0-r0/oe-rootfs-repo =
--installroot=3D/scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-poky=
sdk-linux/buildtools-tarball/1.0-r0/sdk/image/opt/poky/2.3.1/sysroots/none=
 =
--setopt=3Dlogdir=3D/scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-=
pokysdk-linux/buildtools-tarball/1.0-r0/temp --nogpgcheck install =
kernel-devsrc' returned 1:
> > > Added oe-repo repo from =
file:///scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linux=
/buildtools-tarball/1.0-r0/oe-rootfs-repo =
<file:///scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linu=
x/buildtools-tarball/1.0-r0/oe-rootfs-repo>
> > > Last metadata expiration check: 0:00:01 ago on Sun Jul 30 01:38:48 =
2017 UTC.
> > > No package kernel-devsrc available.
> > > Error: Unable to find a match
> > >=20
> > > ERROR: buildtools-tarball-1.0-r0 do_populate_sdk: Function failed: =
do_populate_sdk
> > > ERROR: Logfile of failure stored in: =
/scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linux/buildt=
ools-tarball/1.0-r0/temp/log.do_populate_sdk.4836
> > > ERROR: Task =
(/labhome/russell/src/bf/poky/meta/recipes-core/meta/buildtools-tarball.bb=
:do_populate_sdk) failed with exit code '1'
> >=20
> >=20
> > --=20
> >=20
> > Paul Eggleton
> > Intel Open Source Technology Centre
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


