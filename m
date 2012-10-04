Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ia0-f176.google.com (mail-ia0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D456DE0049F
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2012 11:59:00 -0700 (PDT)
Received: by mail-ia0-f176.google.com with SMTP id h11so409673iae.35
	for <yocto@yoctoproject.org>; Thu, 04 Oct 2012 11:58:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=Dc1ylzlM6CcKK9xoXiXLAq5QZgLgEn+aEITZ/HoXst8=;
	b=JJ9DHNYMEYDY1Ur91vRtEcHIPgVkJ1wj3egtwJG0uNJSQXSwhb9DSKfFA0k0NC+8Vr
	fDRR3XCe5nNggzMIxnYix2NQBPWzs05Hvx7ezTJNTrFGfFI/4QNfnrcg/aQ+F10XNOAH
	2XuiN6Hd3IlbxWFOucvncZ2LhjSmlb+dxlV+FNLwMs4J+uBQQpG+lXPAFUHLkcHQhgbu
	+NsUkfmcOjdiJbteyRUVe+3CwawbOdBC+znp6d58MxAzJnxmp6k+zwiqSMVlEuzJU7Ot
	SjajHIiAA9WOfv7aHrbum3AfppPh2mcKvO4gqjymT/vjRCPava2vnJD2NxC+EcfbvNxD
	XKTQ==
MIME-Version: 1.0
Received: by 10.42.39.197 with SMTP id i5mr5255828ice.27.1349377138175; Thu,
	04 Oct 2012 11:58:58 -0700 (PDT)
Sender: rstreif@linuxfoundation.org
Received: by 10.64.27.197 with HTTP; Thu, 4 Oct 2012 11:58:58 -0700 (PDT)
In-Reply-To: <6796989A-D845-4726-B47B-64B82F380444@gamestop.com>
References: <CC9226B2.365%PatrickTurley@gamestop.com>
	<CC922B79.368%PatrickTurley@gamestop.com>
	<CA+gsK-o=VD7GLYsTHYvmhK4Ht5KeNFS=4=yHmxybeAN7M_nzDw@mail.gmail.com>
	<6796989A-D845-4726-B47B-64B82F380444@gamestop.com>
Date: Thu, 4 Oct 2012 11:58:58 -0700
X-Google-Sender-Auth: 92kCwGkk_l_xAxow_noK9ebMKgA
Message-ID: <CA+gsK-p5gt0FuN4XbifdSjPv5pcnF6u=5bcrWAw9Ayd9WpUTYw@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: Patrick Turley <PatrickTurley@gamestop.com>
X-Gm-Message-State: ALoCoQkMUgZc1T/P9Fs38BCfV/7j5LPcMDTiugwSY+2lueCknom6Qv2aD5J6lxp+JXAVCSefx21f
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: The BitBake equivalent of "Hello, World!"
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 04 Oct 2012 18:59:01 -0000
Content-Type: multipart/alternative; boundary=90e6ba6e8e1cfd2d2804cb4058a1

--90e6ba6e8e1cfd2d2804cb4058a1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

[Warning: lengthy post, and probably boring to most.]

My Bitbake "Hello World" is a little more than a basic "Hello World". It's
idea is to incorporate a layer and use a structure similar to what OE and
Yocto are using. You can do it simpler if you want to. I did this a while
ago with Bitbake 1.12.0. I would think it works with newer versions too
although I have not tested it. This is the layout I am using:

bbtest/
=E2=94=9C=E2=94=80=E2=94=80 conf
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 bblayers.conf
=E2=94=82   =E2=94=94=E2=94=80=E2=94=80 bitbake.conf
=E2=94=9C=E2=94=80=E2=94=80 downloads
=E2=94=82   =E2=94=94=E2=94=80=E2=94=80 /* need to create but will be popul=
ated with downloads */
=E2=94=9C=E2=94=80=E2=94=80 meta-test
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 classes
=E2=94=82   =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 base.bbclass
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 conf

=E2=94=82   =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 layer.conf

=E2=94=82   =E2=94=94=E2=94=80=E2=94=80 recipes-test

=E2=94=82       =E2=94=94=E2=94=80=E2=94=80 nano

=E2=94=82         =E2=94=94=E2=94=80=E2=94=80 nano.bb

=E2=94=94=E2=94=80=E2=94=80 tmp

    =E2=94=94=E2=94=80=E2=94=80 /* will be created and populated when build=
ing */

The first thing Bitbake looks for is a conf/bblayers.conf file in the
directory you started it from. This file must provide an initial setting
for BBPATH:

bblayers.conf:

BBPATH :=3D "${TOPDIR}"
BBFILES ?=3D ""
BBLAYERS =3D " \
  ${TOPDIR}/meta-test \
  "

Without BBPATH Bitbake will not find any conf/<filename>.conf files and
recipe files at all. It will also not find bitbake.conf. I simply copied
bitbake.conf from the Bitbake download and edited DL_DIR:

bitbake.conf:

# comments omitted
B =3D "${S}"

CVSDIR =3D "${DL_DIR}/cvs"

DEPENDS =3D ""

DEPLOY_DIR =3D "${TMPDIR}/deploy"
DEPLOY_DIR_IMAGE =3D "${DEPLOY_DIR}/images"
DL_DIR =3D "${TOPDIR}/downloads"
FETCHCOMMAND =3D ""
FETCHCOMMAND_cvs =3D "/usr/bin/env cvs -d${CVSROOT} co ${CVSCOOPTS}
${CVSMODULE}"
FETCHCOMMAND_svn =3D "/usr/bin/env svn co ${SVNCOOPTS} ${SVNROOT}
${SVNMODULE}"
FETCHCOMMAND_wget =3D "/usr/bin/env wget -t 5 --passive-ftp -P ${DL_DIR}
${URI}"
FILESDIR =3D "${@bb.utils.which(bb.data.getVar('FILESPATH', d, 1), '.')}"
FILESPATH =3D
"${FILE_DIRNAME}/${PF}:${FILE_DIRNAME}/${P}:${FILE_DIRNAME}/${PN}:${FILE_DI=
RNAME}/files:${FILE_DIRNAME}"
FILE_DIRNAME =3D "${@os.path.dirname(bb.data.getVar('FILE', d))}"
GITDIR =3D "${DL_DIR}/git"
IMAGE_CMD =3D "_NO_DEFINED_IMAGE_TYPES_"
IMAGE_ROOTFS =3D "${TMPDIR}/rootfs"
MKTEMPCMD =3D "mktemp -q ${TMPBASE}"
MKTEMPDIRCMD =3D "mktemp -d -q ${TMPBASE}"
OVERRIDES =3D "local:${MACHINE}:${TARGET_OS}:${TARGET_ARCH}"
P =3D "${PN}-${PV}"
PERSISTENT_DIR =3D "${TMPDIR}/cache"
PF =3D "${PN}-${PV}-${PR}"
PN =3D "${@bb.parse.BBHandler.vars_from_file(bb.data.getVar('FILE',d),d)[0]
or 'defaultpkgname'}"
PR =3D "${@bb.parse.BBHandler.vars_from_file(bb.data.getVar('FILE',d),d)[2]
or 'r0'}"
PROVIDES =3D ""
PV =3D "${@bb.parse.BBHandler.vars_from_file(bb.data.getVar('FILE',d),d)[1]
or '1.0'}"
RESUMECOMMAND =3D ""
RESUMECOMMAND_wget =3D "/usr/bin/env wget -c -t 5 --passive-ftp -P ${DL_DIR=
}
${URI}"
S =3D "${WORKDIR}/${P}"
SRC_URI =3D "file://${FILE}"
STAMP =3D "${TMPDIR}/stamps/${PF}"
SVNDIR =3D "${DL_DIR}/svn"
T =3D "${WORKDIR}/temp"
TARGET_ARCH =3D "${BUILD_ARCH}"
TMPDIR =3D "${TOPDIR}/tmp"
UPDATECOMMAND =3D ""
UPDATECOMMAND_cvs =3D "/usr/bin/env cvs -d${CVSROOT} update ${CVSCOOPTS}"
UPDATECOMMAND_svn =3D "/usr/bin/env svn update ${SVNCOOPTS}"
WORKDIR =3D "${TMPDIR}/work/${PF}"
PERSISTENT_DIR =3D "${TMPDIR}/cache"

That's more than you need but it's convenient.

Bitbake will require a base.bbclass file somewhere in a classes
subdirectory of BBPATH. I used the base.bbclass file from the Bitbake
download. As a minimum it should contain a do_build task. That's the target
that Bitbake invokes by default if you do not use the -c option explicitly.
It's empty and does not do anything but it functions as an anchor for tasks
you define in your recipes:

base.bbclass:

# comments omitted
die() {
        bbfatal "$*"
}

bbnote() {
        echo "NOTE:" "$*"
}

bbwarn() {
        echo "WARNING:" "$*"
}

bbfatal() {
        echo "FATAL:" "$*"
        exit 1
}

addtask showdata
do_showdata[nostamp] =3D "1"
python do_showdata() {
        import sys
        # emit variables and shell functions
        bb.data.emit_env(sys.__stdout__, d, True)
        # emit the metadata which isnt valid shell
        for e in bb.data.keys(d):
                if bb.data.getVarFlag(e, 'python', d):
                        sys.__stdout__.write("\npython %s () {\n%s}\n" %
(e, bb.data.getVar(e, d, 1)))
}

addtask listtasks
do_listtasks[nostamp] =3D "1"
python do_listtasks() {
        import sys
        for e in bb.data.keys(d):
                if bb.data.getVarFlag(e, 'task', d):
                        sys.__stdout__.write("%s\n" % e)
}

addtask build
do_build[dirs] =3D "${TOPDIR}"
do_build[nostamp] =3D "1"
python base_do_build () {
        bb.note("The included, default BB base.bbclass does not define a
useful default task.")
        bb.note("Try running the 'listtasks' task against a .bb to see what
tasks are defined.")
}

EXPORT_FUNCTIONS do_clean do_mrproper do_build

Again, it's more than you need. It's just convenient to use it. I put this
file inside the layer but you can also create a classes directory in
${TOPDIR} (bbtest in this example). Next, create a layer (meta-bbtest in my
example, name does not matter, meta-* is convention). It needs a
conf/layer.con file:

layer.conf:

# We have a metadata layer directory, add to BBPATH
BBPATH .=3D ":${LAYERDIR}"

# We have a recipe directory, add to BBFILES
BBFILES +=3D "${LAYERDIR}/recipes-*/*/*.bb \
            ${LAYERDIR}/recipes-*/*/*.bbappend"

BBFILE_COLLECTIONS +=3D "test"
BBFILE_PATTERN_test :=3D "^${LAYERDIR}/"
BBFILE_PRIORITY_test =3D "5"

The path expression for the recipes is more complex than necessary, it just
follows the convention. Finally a recipe to build the Nano editor:

DESCRIPTION =3D "Recipe to build the 'nano' editor"

PN =3D "nano"
PV =3D "2.2.6"

SRC_URI =3D "http://www.nano-editor.org/dist/v2.2/nano-2.2.6.tar.gz"

python do_fetch() {
   bb.note("Downloading source tarball from ${SRC_URI} ...")

   src_uri =3D (bb.data.getVar('SRC_URI', d, True) or "").split()
   if len(src_uri) =3D=3D 0:
      bb.fatal("Empty URI")

   try:
      bb.fetch.init(src_uri, d)
      bb.fetch.go(d)
   except FetchError:
      bb.fatal("Could not fetch source tarball.")

   bb.note("Download successful.")
}

addtask fetch before do_build


python do_unpack() {
   bb.note("Unpacking source tarball ...")

   os.system("tar x -C ${WORKDIR} -f ${DL_DIR}/${P}.tar.gz")

   bb.note("Unpacked source tarball.")
}

addtask unpack before do_build after do_fetch


python do_configure() {
   bb.note("Configuring source package ...")

   os.system("cd ${WORKDIR}/${P} && ./configure")

   bb.note("Configured source package.")
}

addtask configure before do_build after do_unpack


python do_compile() {
   bb.note("Compiling package...")

   os.system("cd ${WORKDIR}/${P} && make")

   bb.note("Compiled package.")
}

addtask compile before do_build after do_configure


Nano is an autotooled package. This recipe simply at a very basic level
does what you would do manually. OECore's autotools.bbclass is much more
sophisticated and so are the fetcher class files.

:rjs

--90e6ba6e8e1cfd2d2804cb4058a1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div>[Warning: lengthy post, and probably boring to most.]</div><div><br></=
div>My Bitbake &quot;Hello World&quot; is a little more than a basic &quot;=
Hello World&quot;. It&#39;s idea is to incorporate a layer and use a struct=
ure similar to what OE and Yocto are using. You can do it simpler if you wa=
nt to. I did this a while ago with Bitbake 1.12.0. I would think it works w=
ith newer versions too although I have not tested it. This is the layout I =
am using:<div>
<br></div><div><div>bbtest/</div><div>=E2=94=9C=E2=94=80=E2=94=80 conf</div=
><div>=E2=94=82 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 bblayers.conf</div><div>=
=E2=94=82 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 bitbake.conf</div><div>=E2=94=
=9C=E2=94=80=E2=94=80 downloads</div><div>=E2=94=82 =C2=A0=C2=A0=E2=94=94=
=E2=94=80=E2=94=80 /* need to create but will be populated with downloads *=
/</div><div>=E2=94=9C=E2=94=80=E2=94=80 meta-test</div>
<div>=E2=94=82 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 classes</div><div>=E2=94=
=82 =C2=A0 =E2=94=82 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 base.bbclass</div><=
div>=E2=94=82 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 conf =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div><div>=E2=94=82 =
=C2=A0 =E2=94=82 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 layer.conf =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div>
<div>=E2=94=82 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 recipes-test =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div><div>=E2=94=82 =C2=A0 =C2=A0 =C2=
=A0=C2=A0=E2=94=94=E2=94=80=E2=94=80 nano =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div>
<div>=E2=94=82 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 <a h=
ref=3D"http://nano.bb">nano.bb</a> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div>=
<div>=E2=94=94=E2=94=80=E2=94=80 tmp =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div>
<div>=C2=A0 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 /* will be created and popul=
ated when building */</div><div><br></div><div>The first thing Bitbake look=
s for is a conf/bblayers.conf file in the directory you started it from. Th=
is file must provide an initial setting for BBPATH:</div>
<div><br></div><div>bblayers.conf:</div><div><br></div><div><div>BBPATH :=
=3D &quot;${TOPDIR}&quot;</div><div>BBFILES ?=3D &quot;&quot;</div><div>BBL=
AYERS =3D &quot; \</div><div>=C2=A0 ${TOPDIR}/meta-test \</div><div>=C2=A0 =
&quot;</div></div>
<div><br></div><div>Without BBPATH Bitbake will not find any conf/&lt;filen=
ame&gt;.conf files and recipe files at all. It will also not find bitbake.c=
onf. I simply copied bitbake.conf from the Bitbake download and edited DL_D=
IR:</div>
<div><br></div><div>bitbake.conf:</div><div><br></div><div># comments omitt=
ed</div><div><div>B =3D &quot;${S}&quot; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div>
<div>CVSDIR =3D &quot;${DL_DIR}/cvs&quot; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=
</div><div>DEPENDS =3D &quot;&quot; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div>
<div>DEPLOY_DIR =3D &quot;${TMPDIR}/deploy&quot;</div><div>DEPLOY_DIR_IMAGE=
 =3D &quot;${DEPLOY_DIR}/images&quot;</div><div>DL_DIR =3D &quot;${TOPDIR}/=
downloads&quot;</div><div>FETCHCOMMAND =3D &quot;&quot;</div><div>FETCHCOMM=
AND_cvs =3D &quot;/usr/bin/env cvs -d${CVSROOT} co ${CVSCOOPTS} ${CVSMODULE=
}&quot;</div>
<div>FETCHCOMMAND_svn =3D &quot;/usr/bin/env svn co ${SVNCOOPTS} ${SVNROOT}=
 ${SVNMODULE}&quot;</div><div>FETCHCOMMAND_wget =3D &quot;/usr/bin/env wget=
 -t 5 --passive-ftp -P ${DL_DIR} ${URI}&quot;</div><div>FILESDIR =3D &quot;=
${@bb.utils.which(bb.data.getVar(&#39;FILESPATH&#39;, d, 1), &#39;.&#39;)}&=
quot;</div>
<div>FILESPATH =3D &quot;${FILE_DIRNAME}/${PF}:${FILE_DIRNAME}/${P}:${FILE_=
DIRNAME}/${PN}:${FILE_DIRNAME}/files:${FILE_DIRNAME}&quot;</div><div>FILE_D=
IRNAME =3D &quot;${@os.path.dirname(bb.data.getVar(&#39;FILE&#39;, d))}&quo=
t;</div>
<div>GITDIR =3D &quot;${DL_DIR}/git&quot;</div><div>IMAGE_CMD =3D &quot;_NO=
_DEFINED_IMAGE_TYPES_&quot;</div><div>IMAGE_ROOTFS =3D &quot;${TMPDIR}/root=
fs&quot;</div><div>MKTEMPCMD =3D &quot;mktemp -q ${TMPBASE}&quot;</div><div=
>MKTEMPDIRCMD =3D &quot;mktemp -d -q ${TMPBASE}&quot;</div>
<div>OVERRIDES =3D &quot;local:${MACHINE}:${TARGET_OS}:${TARGET_ARCH}&quot;=
</div><div>P =3D &quot;${PN}-${PV}&quot;</div><div>PERSISTENT_DIR =3D &quot=
;${TMPDIR}/cache&quot;</div><div>PF =3D &quot;${PN}-${PV}-${PR}&quot;</div>=
<div>
PN =3D &quot;${@bb.parse.BBHandler.vars_from_file(bb.data.getVar(&#39;FILE&=
#39;,d),d)[0] or &#39;defaultpkgname&#39;}&quot;</div><div>PR =3D &quot;${@=
bb.parse.BBHandler.vars_from_file(bb.data.getVar(&#39;FILE&#39;,d),d)[2] or=
 &#39;r0&#39;}&quot;</div>
<div>PROVIDES =3D &quot;&quot;</div><div>PV =3D &quot;${@bb.parse.BBHandler=
.vars_from_file(bb.data.getVar(&#39;FILE&#39;,d),d)[1] or &#39;1.0&#39;}&qu=
ot;</div><div>RESUMECOMMAND =3D &quot;&quot;</div><div>RESUMECOMMAND_wget =
=3D &quot;/usr/bin/env wget -c -t 5 --passive-ftp -P ${DL_DIR} ${URI}&quot;=
</div>
<div>S =3D &quot;${WORKDIR}/${P}&quot;</div><div>SRC_URI =3D &quot;file://$=
{FILE}&quot;</div><div>STAMP =3D &quot;${TMPDIR}/stamps/${PF}&quot;</div><d=
iv>SVNDIR =3D &quot;${DL_DIR}/svn&quot;</div><div>T =3D &quot;${WORKDIR}/te=
mp&quot;</div>
<div>TARGET_ARCH =3D &quot;${BUILD_ARCH}&quot;</div><div>TMPDIR =3D &quot;$=
{TOPDIR}/tmp&quot;</div><div>UPDATECOMMAND =3D &quot;&quot;</div><div>UPDAT=
ECOMMAND_cvs =3D &quot;/usr/bin/env cvs -d${CVSROOT} update ${CVSCOOPTS}&qu=
ot;</div>
<div>UPDATECOMMAND_svn =3D &quot;/usr/bin/env svn update ${SVNCOOPTS}&quot;=
</div><div>WORKDIR =3D &quot;${TMPDIR}/work/${PF}&quot;</div><div>PERSISTEN=
T_DIR =3D &quot;${TMPDIR}/cache&quot;</div></div><div><br></div><div>That&#=
39;s more than you need but it&#39;s convenient.</div>
<div><br></div><div>Bitbake will require a base.bbclass file somewhere in a=
 classes subdirectory of BBPATH. I used the base.bbclass file from the Bitb=
ake download. As a minimum it should contain a do_build task. That&#39;s th=
e target that Bitbake invokes by default if you do not use the -c option ex=
plicitly. It&#39;s empty and does not do anything but it functions as an an=
chor for tasks you define in your recipes:</div>
<div><br></div><div>base.bbclass:</div><div><br></div><div><div># comments =
omitted</div><div></div><div>die() {</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
bbfatal &quot;$*&quot;</div><div>}</div><div><br></div><div>bbnote() {</div=
><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;NOTE:&quot; &quot;$*&quot;</di=
v>
<div>}</div><div><br></div><div>bbwarn() {</div><div>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 echo &quot;WARNING:&quot; &quot;$*&quot;</div><div>}</div><div><br><=
/div><div>bbfatal() {</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;FATA=
L:&quot; &quot;$*&quot;</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 exit 1</div>
<div>}</div><div><br></div><div>addtask showdata</div><div>do_showdata[nost=
amp] =3D &quot;1&quot;</div><div>python do_showdata() {</div><div>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 import sys</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 # emi=
t variables and shell functions</div><div>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.data.emit_env(sys.__stdout__, d, True)</div>=
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 # emit the metadata which isnt valid shell=
</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 for e in bb.data.keys(d):</div><div>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if bb.data.getVarFl=
ag(e, &#39;python&#39;, d):</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 sys.__stdout__.write(&quot;\npython %s () {\n%s}\n&quot; % (e=
, bb.data.getVar(e, d, 1)))</div><div>}</div><div><br></div><div>addtask li=
sttasks</div><div>do_listtasks[nostamp] =3D &quot;1&quot;</div>
<div>python do_listtasks() {</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 import s=
ys</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 for e in bb.data.keys(d):</div><di=
v>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if bb.data.getVar=
Flag(e, &#39;task&#39;, d):</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sys.__stdout__.write(&quot=
;%s\n&quot; % e)</div>
<div>}</div><div><br></div><div>addtask build</div><div>do_build[dirs] =3D =
&quot;${TOPDIR}&quot;</div><div>do_build[nostamp] =3D &quot;1&quot;</div><d=
iv>python base_do_build () {</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.note(=
&quot;The included, default BB base.bbclass does not define a useful defaul=
t task.&quot;)</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.note(&quot;Try running the &#39;listtas=
ks&#39; task against a .bb to see what tasks are defined.&quot;)</div><div>=
}</div><div><br></div><div>EXPORT_FUNCTIONS do_clean do_mrproper do_build</=
div></div><div><br>
</div><div>Again, it&#39;s more than you need. It&#39;s just convenient to =
use it. I put this file inside the layer but you can also create a classes =
directory in ${TOPDIR} (bbtest in this example). Next, create a layer (meta=
-bbtest in my example, name does not matter, meta-* is convention). It need=
s a conf/layer.con file:</div>
<div><br></div><div>layer.conf:</div><div><br></div><div><div># We have a m=
etadata layer directory, add to BBPATH</div><div>BBPATH .=3D &quot;:${LAYER=
DIR}&quot;</div><div><br></div><div># We have a recipe directory, add to BB=
FILES</div>
<div>BBFILES +=3D &quot;${LAYERDIR}/recipes-*/*/*.bb \</div><div>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${LAYERDIR}/recipes-*/*/*.bbappend&quot;</d=
iv><div><br></div><div>BBFILE_COLLECTIONS +=3D &quot;test&quot;</div><div>B=
BFILE_PATTERN_test :=3D &quot;^${LAYERDIR}/&quot;</div>
<div>BBFILE_PRIORITY_test =3D &quot;5&quot;</div><div><br></div></div><div>=
The path expression for the recipes is more complex than necessary, it just=
 follows the convention. Finally a recipe to build the Nano editor:</div>
<div><br></div><div><div>DESCRIPTION =3D &quot;Recipe to build the &#39;nan=
o&#39; editor&quot;</div><div><br></div><div>PN =3D &quot;nano&quot;</div><=
div>PV =3D &quot;2.2.6&quot;</div><div><br></div><div>SRC_URI =3D &quot;<a =
href=3D"http://www.nano-editor.org/dist/v2.2/nano-2.2.6.tar.gz">http://www.=
nano-editor.org/dist/v2.2/nano-2.2.6.tar.gz</a>&quot;</div>
<div><br></div><div>python do_fetch() {</div><div>=C2=A0 =C2=A0bb.note(&quo=
t;Downloading source tarball from ${SRC_URI} ...&quot;)</div><div><br></div=
><div>=C2=A0 =C2=A0src_uri =3D (bb.data.getVar(&#39;SRC_URI&#39;, d, True) =
or &quot;&quot;).split()</div>
<div>=C2=A0 =C2=A0if len(src_uri) =3D=3D 0:</div><div>=C2=A0 =C2=A0 =C2=A0 =
bb.fatal(&quot;Empty URI&quot;)</div><div><br></div><div>=C2=A0 =C2=A0try:<=
/div><div>=C2=A0 =C2=A0 =C2=A0 bb.fetch.init(src_uri, d)</div><div>=C2=A0 =
=C2=A0 =C2=A0 bb.fetch.go(d)</div><div>=C2=A0 =C2=A0except FetchError:</div=
>
<div>=C2=A0 =C2=A0 =C2=A0 bb.fatal(&quot;Could not fetch source tarball.&qu=
ot;)</div><div><br></div><div>=C2=A0 =C2=A0bb.note(&quot;Download successfu=
l.&quot;)</div><div>}</div><div><br></div><div>addtask fetch before do_buil=
d</div><div><br></div>
<div><br></div><div>python do_unpack() {</div><div>=C2=A0 =C2=A0bb.note(&qu=
ot;Unpacking source tarball ...&quot;)</div><div><br></div><div>=C2=A0 =C2=
=A0os.system(&quot;tar x -C ${WORKDIR} -f ${DL_DIR}/${P}.tar.gz&quot;)</div=
><div><br></div><div>
=C2=A0 =C2=A0bb.note(&quot;Unpacked source tarball.&quot;)</div><div>}</div=
><div><br></div><div>addtask unpack before do_build after do_fetch</div><di=
v><br></div><div><br></div><div>python do_configure() {</div><div>=C2=A0 =
=C2=A0bb.note(&quot;Configuring source package ...&quot;)</div>
<div><br></div><div>=C2=A0 =C2=A0os.system(&quot;cd ${WORKDIR}/${P} &amp;&a=
mp; ./configure&quot;)</div><div><br></div><div>=C2=A0 =C2=A0bb.note(&quot;=
Configured source package.&quot;)</div><div>}</div><div><br></div><div>addt=
ask configure before do_build after do_unpack</div>
<div><br></div><div><br></div><div>python do_compile() {</div><div>=C2=A0 =
=C2=A0bb.note(&quot;Compiling package...&quot;)</div><div><br></div><div>=
=C2=A0 =C2=A0os.system(&quot;cd ${WORKDIR}/${P} &amp;&amp; make&quot;)</div=
><div><br></div><div>
=C2=A0 =C2=A0bb.note(&quot;Compiled package.&quot;)</div><div>}</div><div><=
br></div><div>addtask compile before do_build after do_configure</div></div=
><div><br></div><div><br></div><div>Nano is an autotooled package. This rec=
ipe simply at a very basic level does what you would do manually. OECore&#3=
9;s autotools.bbclass is much more sophisticated and so are the fetcher cla=
ss files.</div>
<div><br></div><div>:rjs</div><div><br></div><div><br></div>
</div>

--90e6ba6e8e1cfd2d2804cb4058a1--
