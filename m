Return-Path: <john@mccabe.org.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F4D1E00A7D; Fri, 28 Jun 2019 04:46:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [212.227.126.130 listed in list.dnswl.org]
X-Greylist: delayed 303 seconds by postgrey-1.32 at yocto-www;
	Fri, 28 Jun 2019 04:46:18 PDT
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26FFDE0096F
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2019 04:46:17 -0700 (PDT)
Received: from oxbsltgw10.schlund.de ([172.19.249.27]) by
	mrelayeu.kundenserver.de (mreue011 [213.165.67.99]) with ESMTPSA
	(Nemesis) id
	1M2NqA-1hiSsW3NFe-003rCw for <yocto@yoctoproject.org>; Fri, 28 Jun 2019
	13:41:14 +0200
Date: Fri, 28 Jun 2019 12:41:14 +0100 (BST)
From: John McCabe <john@mccabe.org.uk>
To: yocto@yoctoproject.org
Message-ID: <667705151.446726.1561722074672@email.ionos.co.uk>
In-Reply-To: <CAJTo0LY+dZj9m74+QutZ7kzApZFwGTQ5B6ZXT0O-0KJdhpDoMw@mail.gmail.com>
References: <LNXP265MB0346E0B3875EEF62066F257ED1FD0@LNXP265MB0346.GBRP265.PROD.OUTLOOK.COM>
	<CAJTo0LY+dZj9m74+QutZ7kzApZFwGTQ5B6ZXT0O-0KJdhpDoMw@mail.gmail.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.4-Rev58
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K1:EOYP7nIrqcfvCBhk4055f2z1kMTQ+6YW8A7pQndzxQ80UB9bP2W
	MN6NZqMAemRoUcmVfY0Vji2KbU/feVzl/nVDpW/E+/EI7BcFhy0PmX8xMy4ADie5hVin8ML
	pkgitETstMS2pexuYJ0R20w5H18oENhXAaD65LAFk6gqe4l8R2WQN6ClXpudJ63LftQP/dJ
	JOcS+uXue7DbyJgNGtFqw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:U+zzzL6i9Q0=:T1ggjg0k5X2MTxDrLKqQTs
	sy1Tao96rCJgcHS+Iw7LNE57RHcqZjCTKoEW+UXwLxBskNDg3FivWdL/PBp9hBgr7uVnEjQhO
	d63+ZUtOcJ4dkvKGkPb8soJBjbYVigCKZRPs4Nxy3ylgLhUrvd1Vzan+EbPJerisFY7bf0o/v
	W/23rWa3tyNHgrSFtGlmUp1ODytxaHVxHeHaZcnd+wsIiEJJwnaMAvAhuv0E9LPimWE1Rb++Z
	jCVrhZknbLYX7MyR6BMhtQVDFOr4p0Fji/Fv9Tmq6Vsax8dBJG+xNz8N5QCaWZslJTyyOXyET
	UA3VMswfVAbVtQXIfFMYnWLNUAPJ587uPfIBg0tywU+kFzgBlyYxpQ77UL801o2gdyhK9I5RI
	xHwrRgIQxQNrK65CWNZvecCZiM/bLXSKdL6fc9Awfo7rNec8MTuxx1PfVmyAf/1rb+lwXWiIC
	nR7k67O0gHCofOm7T3l7hnz7HdbAO3EHMCToOxAjhiOtG8HeVKKnnb92p9nQBeypkPhvvYvDd
	t0GDT7haQS4KUr2wgUjzbsI6SjETcn4YzFIb0MuBJdxTJwSGNJ7yuFFPw5iYturzf0wS/FJfW
	ERwBbvaYm4oWZ1RT+XJVyImQtXcsEWHX7vzIt4jIdfO0sU41F44pUp2wpvgQ/Fxkc7GTTbgh/
	ypNYeXBWu2dWU9qecxLKYGulABX2oWEEYgmcQOTq1mNhNuSeqIadxc6yD1z4Sfo0bbreqBi+k
	+ZqCrPn4IsUqJ210yRkofWKoXWvovibbwtX232T/OI+IuxaaSRRDsOmZLCw=
Subject: Re: Recursions problem with pre-built versioned libraries and oe_soinstall
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
X-List-Received-Date: Fri, 28 Jun 2019 11:46:19 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Ross,

Thank you for your reply.

Please see interspersed comments below.

> On 28 June 2019 at 11:53 "Burton, Ross" <ross.burton@intel.com> wrote:=20
>=20
> On Thu, 27 Jun 2019 at 17:58, John McCabe < JMcCabe@kirintec.com> wrote:
> > Exception: OSError: [Errno 40] too much recursions while resolving '<pr=
oject-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/1.0=
-r0/packages-split/opendds/usr/lib/libTAO_PI_Server.so.2.2a_p15'; loop in '=
<project-base>/build/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/opendds/=
1.0-r0/packages-split/opendds/usr/lib/libTAO_PI_Server.so.2.2a_p15'
> =C2=A0=20
> > lrwxrwxrwx 1 jmccabe jmccabe 28 Jun 27 17:38 libTAO_PI_Server.so.2.2a_p=
15 -> libTAO_PI_Server.so.2.2a_p15
> =C2=A0
> You can't deny that this is a symlink loop.

Yes, it is most definitely a symlink loop/fault.

oe_soinstall does this (from https://git.yoctoproject.org/cgit.cgi/poky/pla=
in/meta/classes/utils.bbclass):

01 oe_soinstall() {
02 =09# Purpose: Install shared library file and
03 =09#          create the necessary links
04 =09# Example: oe_soinstall libfoo.so.1.2.3 ${D}${libdir}
05 =09libname=3D`basename $1`
06 =09case "$libname" in
07 =09    *.so)
08 =09        bbfatal "oe_soinstall: Shared library must haved versioned fi=
lename (e.g. libfoo.so.1.2.3)"
09 =09        ;;
10 =09esac
11 =09install -m 755 $1 $2/$libname
12 =09sonamelink=3D`${HOST_PREFIX}readelf -d $1 |grep 'Library soname:' |se=
d -e 's/.*\[\(.*\)\].*/\1/'`
13 =09if [ -z $sonamelink ]; then
14 =09=09bbfatal "oe_soinstall: $libname is missing ELF tag 'SONAME'."
15 =09fi
16 =09solink=3D`echo $libname | sed -e 's/\.so\..*/.so/'`
17 =09ln -sf $libname $2/$sonamelink
18 =09ln -sf $libname $2/$solink
19 }

Which is as I described so, at the end of it, lines 17 & 18 have created sy=
mbolic links in the <output>/usr/lib folder to the ${WORKDIR} copy of the v=
ersioned shared library.

Later on the "def perform_packagecopy(d)" function (see https://git.yoctopr=
oject.org/cgit.cgi/poky/plain/meta/classes/package.bbclass, probably!) is r=
un. In run.do_package this shows as:

01def perform_packagecopy(d):
02    enabled =3D oe.data.typed_value('LICENSE_CREATE_PACKAGE', d)
03    if d.getVar('CLASSOVERRIDE', True) =3D=3D 'class-target' and enabled:
04        lic_files_paths =3D find_license_files(d)
05
06        # LICENSE_FILES_DIRECTORY starts with '/' so os.path.join cannot =
be used to join D and LICENSE_FILES_DIRECTORY
07        destdir =3D d.getVar('D', True) + os.path.join(d.getVar('LICENSE_=
FILES_DIRECTORY', True), d.getVar('PN', True))
08        copy_license_files(lic_files_paths, destdir)
09        add_package_and_files(d)
10    dest =3D d.getVar('D', True)
11    dvar =3D d.getVar('PKGD', True)
12
13    # Start by package population by taking a copy of the installed
14    # files to operate on
15    # Preserve sparse files and hard links
16    cmd =3D 'tar -cf - -C %s -p . | tar -xf - -C %s' % (dest, dvar)
17    (retval, output) =3D oe.utils.getstatusoutput(cmd)
18    if retval:
19        bb.fatal("file copy failed with exit code %s (cmd was %s)%s" % (r=
etval, cmd, ":\n%s" % output if output else ""))
20
21    # replace RPATHs for the nativesdk binaries, to make them relocatable
22    if bb.data.inherits_class('nativesdk', d) or bb.data.inherits_class('=
cross-canadian', d):
23        rpath_replace (dvar, d)

It's line 16 that's breaking things; that tar command claims to preserve sp=
arse files and hard links, but I've tried running that command manually and=
 it certainly doesn't preserve symbolic links.

> Note that these are all the users of oe_libinstall in oe-core:
>=20
> $ git grep -l oe_soinstall
> meta/classes/utils.bbclass

Yip - I looked through the core files to see if there were other recipes th=
at used it and found the same result.

> So I'm not massively surprised that it's buggy.=C2=A0 In this case, it lo=
oks like the library either has an incorrect soname, or the install functio=
n isn't handling the soname being the same: it assumes that it is being pas=
sed libfoo.so.1.2.3 which has a soname of libfoo.so.1 and will copy libfoo.=
so.1.2.3 and then create libfoo.so.1 and libfoo.so symlinks.=20

Everything that's done as part of do_install is working as it "should" (!?)=
 if you follow through the code. As described, the result of the do_install=
 is that there is a file called libTAO_PI_Server.so.2.2a_p15 in ${WORKDIR},=
 and in ${WORKDIR}/image/usr/lib there are two symbolic links; libTAO_PI_Se=
rver.so.2.2a_p15 and libTAO_PI_Server.so, both of which point to the file i=
n ${WORKDIR}. When the tar commands are run in perform_packagecopy, you end=
 up with this:

lrwxrwxrwx 1 jmccabe jmccabe 28 Jun 27 17:38 libTAO_PI_Server.so -> libTAO_=
PI_Server.so.2.2a_p15
lrwxrwxrwx 1 jmccabe jmccabe 28 Jun 27 17:38 libTAO_PI_Server.so.2.2a_p15 -=
> libTAO_PI_Server.so.2.2a_p15

What confuses me are that there are a small number of examples out there on=
 how to use oe_soinstall, and a couple of comments here and there about how=
 it's what you should be using to install versioned shared libraries, parti=
cularly here bugzilla.yoctodev.org/wiki/TipsAndTricks/Packaging_Prebuilt_Li=
braries#Versioned_Libraries, and it looks quite sensible and simple until y=
ou come to try to use it!

>=C2=A0 =C2=A0My recommendations:
 =C2=A0
> 1) Write a proper recipe instead of building code outside of OE and tryin=
g to copy it in by hand.=C2=A0 Or,

In the long run that would be the plan, however, I'm still in the early sta=
ges so thought that it would be nice to avoid having to rebuild the OpenDDS=
 stuff as it takes, as I mentioned, a number of hours to build!

> 2) Determine what the correct structure is regarding sonames, and either =
fix oe_soinstall

Now there's a question; how to determine whether it's actually oe_soinstall=
 that's at fault (which, clearly, appears to be very rarely used!), or perf=
orm_packagecopy (which is vastly more widely used) and then work out how to=
 fix it!

> or just use install/ln directly.

I suspect this will be the path I need to take, unless anyone else has any =
useful suggestions.

Many thanks
John

