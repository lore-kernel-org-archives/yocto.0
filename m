Return-Path: <evadeflow@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01BE3E0146B
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2012 14:26:27 -0700 (PDT)
Received: by mail-ob0-f176.google.com with SMTP id x4so1311075obh.35
	for <yocto@yoctoproject.org>; Thu, 04 Oct 2012 14:26:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=izWCCQBQKmaah/kkhVUw5n0R5+JWvZ/OdjASmcLes7c=;
	b=0u7Nd/KdR4W1sxpouXo2dHt32aK3VCYBXKIhc8D7oMc95nK+2WZNVLV4GKtgk2uWTM
	UNzmvhv4T8iom48YPZoIOJXSbjob4xyxk0rXM4iQOfQ3Ek1KgbDkT7lXC+SOKwx1Zv9R
	ZRSZH6ZY8qDWPT9Q2OrHvpy9HfQXyjP2VHxMwTO2OYq+afpA1yIxmX/vAvRCs5NNWl5N
	bL6J+TlT9JwvXgb58UXHI2LMoF+7A0A9Tfe8tOF5khJoETvvjnt7+ivQf7gym1RB3+5U
	sLmn0T77B09Gfp7Y+Ph+UQ1kCL0ut5nLi8SiUK2YXB3eC03CaJOLdSmr9lpj5HIgUNHH
	58ww==
MIME-Version: 1.0
Received: by 10.60.172.236 with SMTP id bf12mr5484244oec.23.1349385984994;
	Thu, 04 Oct 2012 14:26:24 -0700 (PDT)
Received: by 10.76.153.198 with HTTP; Thu, 4 Oct 2012 14:26:24 -0700 (PDT)
In-Reply-To: <CA+gsK-p5gt0FuN4XbifdSjPv5pcnF6u=5bcrWAw9Ayd9WpUTYw@mail.gmail.com>
References: <CC9226B2.365%PatrickTurley@gamestop.com>
	<CC922B79.368%PatrickTurley@gamestop.com>
	<CA+gsK-o=VD7GLYsTHYvmhK4Ht5KeNFS=4=yHmxybeAN7M_nzDw@mail.gmail.com>
	<6796989A-D845-4726-B47B-64B82F380444@gamestop.com>
	<CA+gsK-p5gt0FuN4XbifdSjPv5pcnF6u=5bcrWAw9Ayd9WpUTYw@mail.gmail.com>
Date: Thu, 4 Oct 2012 17:26:24 -0400
Message-ID: <CAMAb8ZMwuYLVwsyUT8L6KPMNt9vxS-Z4AXWwxR1PPFhemxNmVw@mail.gmail.com>
From: Evade Flow <evadeflow@gmail.com>
To: Rudolf Streif <rudolf.streif@linux.com>
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
X-List-Received-Date: Thu, 04 Oct 2012 21:26:28 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks, this is great! I was looking for something exactly like this.
I'm going to have a play wit it right now.  If you (or anyone) can think
of any ways this example doesn't adhere to current bitbake best
practices (other than not inheriting from OECore's more full-featured
base classes), please let me know...


On Thu, Oct 4, 2012 at 2:58 PM, Rudolf Streif <rudolf.streif@linux.com> wro=
te:
> [Warning: lengthy post, and probably boring to most.]
>
> My Bitbake "Hello World" is a little more than a basic "Hello World". It'=
s
> idea is to incorporate a layer and use a structure similar to what OE and
> Yocto are using. You can do it simpler if you want to. I did this a while
> ago with Bitbake 1.12.0. I would think it works with newer versions too
> although I have not tested it. This is the layout I am using:
>
> bbtest/
> =E2=94=9C=E2=94=80=E2=94=80 conf
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 bblayers.conf
> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 bitbake.conf
> =E2=94=9C=E2=94=80=E2=94=80 downloads
> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 /* need to create but will be pop=
ulated with downloads */
> =E2=94=9C=E2=94=80=E2=94=80 meta-test
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 classes
> =E2=94=82   =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 base.bbclass
> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 conf
> =E2=94=82   =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 layer.conf
> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 recipes-test
> =E2=94=82       =E2=94=94=E2=94=80=E2=94=80 nano
> =E2=94=82         =E2=94=94=E2=94=80=E2=94=80 nano.bb
> =E2=94=94=E2=94=80=E2=94=80 tmp
>     =E2=94=94=E2=94=80=E2=94=80 /* will be created and populated when bui=
lding */
>
> The first thing Bitbake looks for is a conf/bblayers.conf file in the
> directory you started it from. This file must provide an initial setting =
for
> BBPATH:
>
> bblayers.conf:
>
> BBPATH :=3D "${TOPDIR}"
> BBFILES ?=3D ""
> BBLAYERS =3D " \
>   ${TOPDIR}/meta-test \
>   "
>
> Without BBPATH Bitbake will not find any conf/<filename>.conf files and
> recipe files at all. It will also not find bitbake.conf. I simply copied
> bitbake.conf from the Bitbake download and edited DL_DIR:
>
> bitbake.conf:
>
> # comments omitted
> B =3D "${S}"
> CVSDIR =3D "${DL_DIR}/cvs"
> DEPENDS =3D ""
> DEPLOY_DIR =3D "${TMPDIR}/deploy"
> DEPLOY_DIR_IMAGE =3D "${DEPLOY_DIR}/images"
> DL_DIR =3D "${TOPDIR}/downloads"
> FETCHCOMMAND =3D ""
> FETCHCOMMAND_cvs =3D "/usr/bin/env cvs -d${CVSROOT} co ${CVSCOOPTS}
> ${CVSMODULE}"
> FETCHCOMMAND_svn =3D "/usr/bin/env svn co ${SVNCOOPTS} ${SVNROOT}
> ${SVNMODULE}"
> FETCHCOMMAND_wget =3D "/usr/bin/env wget -t 5 --passive-ftp -P ${DL_DIR}
> ${URI}"
> FILESDIR =3D "${@bb.utils.which(bb.data.getVar('FILESPATH', d, 1), '.')}"
> FILESPATH =3D
> "${FILE_DIRNAME}/${PF}:${FILE_DIRNAME}/${P}:${FILE_DIRNAME}/${PN}:${FILE_=
DIRNAME}/files:${FILE_DIRNAME}"
> FILE_DIRNAME =3D "${@os.path.dirname(bb.data.getVar('FILE', d))}"
> GITDIR =3D "${DL_DIR}/git"
> IMAGE_CMD =3D "_NO_DEFINED_IMAGE_TYPES_"
> IMAGE_ROOTFS =3D "${TMPDIR}/rootfs"
> MKTEMPCMD =3D "mktemp -q ${TMPBASE}"
> MKTEMPDIRCMD =3D "mktemp -d -q ${TMPBASE}"
> OVERRIDES =3D "local:${MACHINE}:${TARGET_OS}:${TARGET_ARCH}"
> P =3D "${PN}-${PV}"
> PERSISTENT_DIR =3D "${TMPDIR}/cache"
> PF =3D "${PN}-${PV}-${PR}"
> PN =3D "${@bb.parse.BBHandler.vars_from_file(bb.data.getVar('FILE',d),d)[=
0] or
> 'defaultpkgname'}"
> PR =3D "${@bb.parse.BBHandler.vars_from_file(bb.data.getVar('FILE',d),d)[=
2] or
> 'r0'}"
> PROVIDES =3D ""
> PV =3D "${@bb.parse.BBHandler.vars_from_file(bb.data.getVar('FILE',d),d)[=
1] or
> '1.0'}"
> RESUMECOMMAND =3D ""
> RESUMECOMMAND_wget =3D "/usr/bin/env wget -c -t 5 --passive-ftp -P ${DL_D=
IR}
> ${URI}"
> S =3D "${WORKDIR}/${P}"
> SRC_URI =3D "file://${FILE}"
> STAMP =3D "${TMPDIR}/stamps/${PF}"
> SVNDIR =3D "${DL_DIR}/svn"
> T =3D "${WORKDIR}/temp"
> TARGET_ARCH =3D "${BUILD_ARCH}"
> TMPDIR =3D "${TOPDIR}/tmp"
> UPDATECOMMAND =3D ""
> UPDATECOMMAND_cvs =3D "/usr/bin/env cvs -d${CVSROOT} update ${CVSCOOPTS}"
> UPDATECOMMAND_svn =3D "/usr/bin/env svn update ${SVNCOOPTS}"
> WORKDIR =3D "${TMPDIR}/work/${PF}"
> PERSISTENT_DIR =3D "${TMPDIR}/cache"
>
> That's more than you need but it's convenient.
>
> Bitbake will require a base.bbclass file somewhere in a classes subdirect=
ory
> of BBPATH. I used the base.bbclass file from the Bitbake download. As a
> minimum it should contain a do_build task. That's the target that Bitbake
> invokes by default if you do not use the -c option explicitly. It's empty
> and does not do anything but it functions as an anchor for tasks you defi=
ne
> in your recipes:
>
> base.bbclass:
>
> # comments omitted
> die() {
>         bbfatal "$*"
> }
>
> bbnote() {
>         echo "NOTE:" "$*"
> }
>
> bbwarn() {
>         echo "WARNING:" "$*"
> }
>
> bbfatal() {
>         echo "FATAL:" "$*"
>         exit 1
> }
>
> addtask showdata
> do_showdata[nostamp] =3D "1"
> python do_showdata() {
>         import sys
>         # emit variables and shell functions
>         bb.data.emit_env(sys.__stdout__, d, True)
>         # emit the metadata which isnt valid shell
>         for e in bb.data.keys(d):
>                 if bb.data.getVarFlag(e, 'python', d):
>                         sys.__stdout__.write("\npython %s () {\n%s}\n" % =
(e,
> bb.data.getVar(e, d, 1)))
> }
>
> addtask listtasks
> do_listtasks[nostamp] =3D "1"
> python do_listtasks() {
>         import sys
>         for e in bb.data.keys(d):
>                 if bb.data.getVarFlag(e, 'task', d):
>                         sys.__stdout__.write("%s\n" % e)
> }
>
> addtask build
> do_build[dirs] =3D "${TOPDIR}"
> do_build[nostamp] =3D "1"
> python base_do_build () {
>         bb.note("The included, default BB base.bbclass does not define a
> useful default task.")
>         bb.note("Try running the 'listtasks' task against a .bb to see wh=
at
> tasks are defined.")
> }
>
> EXPORT_FUNCTIONS do_clean do_mrproper do_build
>
> Again, it's more than you need. It's just convenient to use it. I put thi=
s
> file inside the layer but you can also create a classes directory in
> ${TOPDIR} (bbtest in this example). Next, create a layer (meta-bbtest in =
my
> example, name does not matter, meta-* is convention). It needs a
> conf/layer.con file:
>
> layer.conf:
>
> # We have a metadata layer directory, add to BBPATH
> BBPATH .=3D ":${LAYERDIR}"
>
> # We have a recipe directory, add to BBFILES
> BBFILES +=3D "${LAYERDIR}/recipes-*/*/*.bb \
>             ${LAYERDIR}/recipes-*/*/*.bbappend"
>
> BBFILE_COLLECTIONS +=3D "test"
> BBFILE_PATTERN_test :=3D "^${LAYERDIR}/"
> BBFILE_PRIORITY_test =3D "5"
>
> The path expression for the recipes is more complex than necessary, it ju=
st
> follows the convention. Finally a recipe to build the Nano editor:
>
> DESCRIPTION =3D "Recipe to build the 'nano' editor"
>
> PN =3D "nano"
> PV =3D "2.2.6"
>
> SRC_URI =3D "http://www.nano-editor.org/dist/v2.2/nano-2.2.6.tar.gz"
>
> python do_fetch() {
>    bb.note("Downloading source tarball from ${SRC_URI} ...")
>
>    src_uri =3D (bb.data.getVar('SRC_URI', d, True) or "").split()
>    if len(src_uri) =3D=3D 0:
>       bb.fatal("Empty URI")
>
>    try:
>       bb.fetch.init(src_uri, d)
>       bb.fetch.go(d)
>    except FetchError:
>       bb.fatal("Could not fetch source tarball.")
>
>    bb.note("Download successful.")
> }
>
> addtask fetch before do_build
>
>
> python do_unpack() {
>    bb.note("Unpacking source tarball ...")
>
>    os.system("tar x -C ${WORKDIR} -f ${DL_DIR}/${P}.tar.gz")
>
>    bb.note("Unpacked source tarball.")
> }
>
> addtask unpack before do_build after do_fetch
>
>
> python do_configure() {
>    bb.note("Configuring source package ...")
>
>    os.system("cd ${WORKDIR}/${P} && ./configure")
>
>    bb.note("Configured source package.")
> }
>
> addtask configure before do_build after do_unpack
>
>
> python do_compile() {
>    bb.note("Compiling package...")
>
>    os.system("cd ${WORKDIR}/${P} && make")
>
>    bb.note("Compiled package.")
> }
>
> addtask compile before do_build after do_configure
>
>
> Nano is an autotooled package. This recipe simply at a very basic level d=
oes
> what you would do manually. OECore's autotools.bbclass is much more
> sophisticated and so are the fetcher class files.
>
> :rjs
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

