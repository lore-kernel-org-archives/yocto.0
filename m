Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99284E00DF5; Wed, 12 Oct 2016 23:38:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (balazovic.peter[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.45 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.45 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f45.google.com (mail-lf0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8BFBE00DF0
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2016 23:38:01 -0700 (PDT)
Received: by mail-lf0-f45.google.com with SMTP id x79so122552988lff.0
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2016 23:38:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=74GWPli3Mym7C1UJf05ELja9EJ9INu+jj3e8AUR7W70=;
	b=FsPwPrXwv6mqmxyDFaUF+vlRCZnszgOxWZA7TaT21vBwhsE7T5v0WOpHn7otf3bpbm
	zTLLxldTWJgI2Cwy1zQNSLigX4Ru2ZffxfrL18IGX4TJ54X/Uhba1f/hgrIsFdP18no2
	TGVadnFZdzZMy1YY9Obxsp8C4FbWpK/XxGRdfAXnVXQyT7HSH9KsYWChfDPQEywzEbUw
	ug/X3WI29E0TdltWusEsG+UvrpIRBzZaIaJF+bJxQsnbjEsRwPKOwoQ5oUiNeVebOdo3
	x8zXcwrkezaLbGNT9a9m1h7tn77A6jTTgkc9W+VJybqXEqOPCkHm+zsfAzm0zJ8I8ud+
	wVSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=74GWPli3Mym7C1UJf05ELja9EJ9INu+jj3e8AUR7W70=;
	b=YNdVNEquLt3pK0e4TCWWwK0JyOK1TBoaoX6hzijNUmOZmjUA8zPi3JPN0U95J26baA
	oArcj0Mk1OOK0erwK4EjPr+BBaB8styRQCxxWdjs8oq0KttbijcMjtSfUYvEHlSy9lCE
	W5lAVCJEo+Eg6P6uRoPIV8sWd6R9AK7VYxC7n7QfDzNnq1cXYnc/q0lU2AmPb9PGKRGD
	6365+vfWDibMjtCIOcqqZXH9l/A96E4vQYijiTriwiCGuPSHRFZITsuetmGn3AIeOOtc
	Ce6a7GLEFFXGfd5TlW1tA0ketvA/BcRot3pobGFRXSPpkWkCoCK3IYRktVZ28ErCwN+H
	frOg==
X-Gm-Message-State: AA6/9RmjKd6zHhIZHvkkLWscAX3oShBdaWYjCBOFm8oelVuogKTfFktS8braEB2RU/JzIHOZbDck5f6HWWfKOA==
X-Received: by 10.28.163.196 with SMTP id m187mr896934wme.73.1476340680063;
	Wed, 12 Oct 2016 23:38:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.104.164 with HTTP; Wed, 12 Oct 2016 23:37:59 -0700 (PDT)
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Thu, 13 Oct 2016 08:37:59 +0200
Message-ID: <CAFq4t4i5B5Sk-Bms0zVWr4sU5fgz4zM5pUs-YO8wcCzV5umxog@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: resize2fs
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
X-List-Received-Date: Thu, 13 Oct 2016 06:38:03 -0000
Content-Type: multipart/alternative; boundary=001a114cd9a2cd7f87053eb959ba

--001a114cd9a2cd7f87053eb959ba
Content-Type: text/plain; charset=UTF-8

Dears,

I just build the yocto image and within local.conf I got

IMAGE_INSTALL_append = "e2fsprogs"

but unfortunately I do not get resize2fs utility installed. I do not not
why?

this how e2fsprogs_1.42.9.bb looks like



require e2fsprogs.inc


SRC_URI += "file://acinclude.m4 \
            file://remove.ldconfig.call.patch \
            file://fix-icache.patch \
            file://quiet-debugfs.patch \

file://0001-mke2fs-add-the-ability-to-copy-files-from-a-given-di.patch \
            file://0002-misc-create_inode.c-copy-files-recursively.patch \
            file://0003-misc-create_inode.c-create-special-file.patch \
            file://0004-misc-create_inode.c-create-symlink.patch \
            file://0005-misc-create_inode.c-copy-regular-file.patch \
            file://0006-misc-create_inode.c-create-directory.patch \

file://0007-misc-create_inode.c-set-owner-mode-time-for-the-inod.patch \
            file://0008-mke2fs.c-add-an-option-d-root-directory.patch \
            file://0009-misc-create_inode.c-handle-hardlinks.patch \

file://0010-debugfs-use-the-functions-in-misc-create_inode.c.patch \

file://0011-mke2fs.8.in-update-the-manual-for-the-d-option.patch \
            file://0012-Fix-musl-build-failures.patch \
            file://0001-e2fsprogs-fix-cross-compilation-problem.patch \

file://misc-mke2fs.c-return-error-when-failed-to-populate-fs.patch \
            file://cache_inode.patch \
            file://CVE-2015-0247.patch \

file://0001-libext2fs-fix-potential-buffer-overflow-in-closefs.patch \
"

SRC_URI[md5sum] = "3f8e41e63b432ba114b33f58674563f7"
SRC_URI[sha256sum] =
"2f92ac06e92fa00f2ada3ee67dad012d74d685537527ad1241d82f2d041f2802"

EXTRA_OECONF += "--libdir=${base_libdir} --sbindir=${base_sbindir}
--enable-elf-shlibs --disable-libuuid --disable-uuidd
--enable-verbose-makecmds"
EXTRA_OECONF_darwin = "--libdir=${base_libdir} --sbindir=${base_sbindir}
--enable-bsd-shlibs"

do_configure_prepend () {
cp ${WORKDIR}/acinclude.m4 ${S}/
}

do_install () {
oe_runmake 'DESTDIR=${D}' install
oe_runmake 'DESTDIR=${D}' install-libs
# We use blkid from util-linux now so remove from here
rm -f ${D}${base_libdir}/libblkid*
rm -rf ${D}${includedir}/blkid
rm -f ${D}${base_libdir}/pkgconfig/blkid.pc
rm -f ${D}${base_sbindir}/blkid
rm -f ${D}${base_sbindir}/fsck
rm -f ${D}${base_sbindir}/findfs

# e2initrd_helper and the pkgconfig files belong in libdir
if [ ! ${D}${libdir} -ef ${D}${base_libdir} ]; then
install -d ${D}${libdir}
mv ${D}${base_libdir}/e2initrd_helper ${D}${libdir}
mv ${D}${base_libdir}/pkgconfig ${D}${libdir}
fi

oe_multilib_header ext2fs/ext2_types.h
install -d ${D}${base_bindir}
mv ${D}${bindir}/chattr ${D}${base_bindir}/chattr.e2fsprogs

install -v -m 755 ${S}/contrib/populate-extfs.sh ${D}${base_sbindir}/
}

do_install_append_class-target() {
# Clean host path in compile_et, mk_cmds
sed -i -e "s,ET_DIR=\"${S}/lib/et\",ET_DIR=\"${datadir}/et\",g"
${D}${bindir}/compile_et
sed -i -e "s,SS_DIR=\"${S}/lib/ss\",SS_DIR=\"${datadir}/ss\",g"
${D}${bindir}/mk_cmds
}

RDEPENDS_e2fsprogs = "e2fsprogs-badblocks"
RRECOMMENDS_e2fsprogs = "e2fsprogs-mke2fs e2fsprogs-e2fsck"

PACKAGES =+ "e2fsprogs-e2fsck e2fsprogs-mke2fs e2fsprogs-tune2fs
e2fsprogs-badblocks e2fsprogs-resize2fs"
PACKAGES =+ "libcomerr libss libe2p libext2fs"

FILES_e2fsprogs-resize2fs = "${base_sbindir}/resize2fs*"
FILES_e2fsprogs-e2fsck = "${base_sbindir}/e2fsck ${base_sbindir}/fsck.ext*"
FILES_e2fsprogs-mke2fs = "${base_sbindir}/mke2fs ${base_sbindir}/mkfs.ext*
${sysconfdir}/mke2fs.conf"
FILES_e2fsprogs-tune2fs = "${base_sbindir}/tune2fs ${base_sbindir}/e2label"
FILES_e2fsprogs-badblocks = "${base_sbindir}/badblocks"
FILES_libcomerr = "${base_libdir}/libcom_err.so.*"
FILES_libss = "${base_libdir}/libss.so.*"
FILES_libe2p = "${base_libdir}/libe2p.so.*"
FILES_libext2fs = "${libdir}/e2initrd_helper ${base_libdir}/libext2fs.so.*"
FILES_${PN}-dev += "${datadir}/*/*.awk ${datadir}/*/*.sed
${base_libdir}/*.so"

BBCLASSEXTEND = "native nativesdk"

inherit update-alternatives

ALTERNATIVE_${PN} = "chattr"
ALTERNATIVE_PRIORITY = "100"
ALTERNATIVE_LINK_NAME[chattr] = "${base_bindir}/chattr"
ALTERNATIVE_TARGET[chattr] = "${base_bindir}/chattr.e2fsprogs"

--001a114cd9a2cd7f87053eb959ba
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dears,<div><br></div><div>I just build the yocto image and=
 within local.conf I got=C2=A0</div><div><br></div><div>IMAGE_INSTALL_appen=
d =3D &quot;e2fsprogs&quot;</div><div><br></div><div>but unfortunately I do=
 not get resize2fs utility installed. I do not not why?</div><div><br></div=
><div>this how <a href=3D"http://e2fsprogs_1.42.9.bb">e2fsprogs_1.42.9.bb</=
a> looks like</div><div><br></div><div><br></div><div><br></div><div><div>r=
equire e2fsprogs.inc</div><div><br></div><div><br></div><div>SRC_URI +=3D &=
quot;file://acinclude.m4 \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 file://remove.ldconfig.call.patch \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 file://fix-icache.patch \</div><div>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 file://quiet-debugfs.patch \</div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0001-mke2fs-add-the-ability-to-copy-file=
s-from-a-given-di.patch \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 file://0002-misc-create_inode.c-copy-files-recursively.patch \</div><di=
v>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0003-misc-create_inode.c=
-create-special-file.patch \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 file://0004-misc-create_inode.c-create-symlink.patch \</div><div>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0005-misc-create_inode.c-copy=
-regular-file.patch \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 f=
ile://0006-misc-create_inode.c-create-directory.patch \</div><div>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0007-misc-create_inode.c-set-owne=
r-mode-time-for-the-inod.patch \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 file://0008-mke2fs.c-add-an-option-d-root-directory.patch \</div=
><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0009-misc-create_ino=
de.c-handle-hardlinks.patch \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 file://0010-debugfs-use-the-functions-in-misc-create_inode.c.patch \=
</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0011-mke2fs.8.i=
n-update-the-manual-for-the-d-option.patch \</div><div>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 file://0012-Fix-musl-build-failures.patch \</div><div=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0001-e2fsprogs-fix-cross-=
compilation-problem.patch \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 file://misc-mke2fs.c-return-error-when-failed-to-populate-fs.patch \=
</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://cache_inode.pat=
ch \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://CVE-2015-02=
47.patch \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0001-=
libext2fs-fix-potential-buffer-overflow-in-closefs.patch \</div><div>&quot;=
</div><div><br></div><div>SRC_URI[md5sum] =3D &quot;3f8e41e63b432ba114b33f5=
8674563f7&quot;</div><div>SRC_URI[sha256sum] =3D &quot;2f92ac06e92fa00f2ada=
3ee67dad012d74d685537527ad1241d82f2d041f2802&quot;</div><div><br></div><div=
>EXTRA_OECONF +=3D &quot;--libdir=3D${base_libdir} --sbindir=3D${base_sbind=
ir} --enable-elf-shlibs --disable-libuuid --disable-uuidd --enable-verbose-=
makecmds&quot;</div><div>EXTRA_OECONF_darwin =3D &quot;--libdir=3D${base_li=
bdir} --sbindir=3D${base_sbindir} --enable-bsd-shlibs&quot;</div><div><br><=
/div><div>do_configure_prepend () {</div><div><span class=3D"gmail-Apple-ta=
b-span" style=3D"white-space:pre">	</span>cp ${WORKDIR}/acinclude.m4 ${S}/<=
/div><div>}</div><div><br></div><div>do_install () {</div><div><span class=
=3D"gmail-Apple-tab-span" style=3D"white-space:pre">	</span>oe_runmake &#39=
;DESTDIR=3D${D}&#39; install</div><div><span class=3D"gmail-Apple-tab-span"=
 style=3D"white-space:pre">	</span>oe_runmake &#39;DESTDIR=3D${D}&#39; inst=
all-libs</div><div><span class=3D"gmail-Apple-tab-span" style=3D"white-spac=
e:pre">	</span># We use blkid from util-linux now so remove from here</div>=
<div><span class=3D"gmail-Apple-tab-span" style=3D"white-space:pre">	</span=
>rm -f ${D}${base_libdir}/libblkid*</div><div><span class=3D"gmail-Apple-ta=
b-span" style=3D"white-space:pre">	</span>rm -rf ${D}${includedir}/blkid</d=
iv><div><span class=3D"gmail-Apple-tab-span" style=3D"white-space:pre">	</s=
pan>rm -f ${D}${base_libdir}/pkgconfig/blkid.pc</div><div><span class=3D"gm=
ail-Apple-tab-span" style=3D"white-space:pre">	</span>rm -f ${D}${base_sbin=
dir}/blkid</div><div><span class=3D"gmail-Apple-tab-span" style=3D"white-sp=
ace:pre">	</span>rm -f ${D}${base_sbindir}/fsck</div><div><span class=3D"gm=
ail-Apple-tab-span" style=3D"white-space:pre">	</span>rm -f ${D}${base_sbin=
dir}/findfs</div><div><br></div><div><span class=3D"gmail-Apple-tab-span" s=
tyle=3D"white-space:pre">	</span># e2initrd_helper and the pkgconfig files =
belong in libdir</div><div><span class=3D"gmail-Apple-tab-span" style=3D"wh=
ite-space:pre">	</span>if [ ! ${D}${libdir} -ef ${D}${base_libdir} ]; then<=
/div><div><span class=3D"gmail-Apple-tab-span" style=3D"white-space:pre">		=
</span>install -d ${D}${libdir}</div><div><span class=3D"gmail-Apple-tab-sp=
an" style=3D"white-space:pre">		</span>mv ${D}${base_libdir}/e2initrd_helpe=
r ${D}${libdir}</div><div><span class=3D"gmail-Apple-tab-span" style=3D"whi=
te-space:pre">		</span>mv ${D}${base_libdir}/pkgconfig ${D}${libdir}</div><=
div><span class=3D"gmail-Apple-tab-span" style=3D"white-space:pre">	</span>=
fi</div><div><br></div><div><span class=3D"gmail-Apple-tab-span" style=3D"w=
hite-space:pre">	</span>oe_multilib_header ext2fs/ext2_types.h</div><div><s=
pan class=3D"gmail-Apple-tab-span" style=3D"white-space:pre">	</span>instal=
l -d ${D}${base_bindir}</div><div><span class=3D"gmail-Apple-tab-span" styl=
e=3D"white-space:pre">	</span>mv ${D}${bindir}/chattr ${D}${base_bindir}/ch=
attr.e2fsprogs</div><div><br></div><div><span class=3D"gmail-Apple-tab-span=
" style=3D"white-space:pre">	</span>install -v -m 755 ${S}/contrib/populate=
-extfs.sh ${D}${base_sbindir}/</div><div>}</div><div><br></div><div>do_inst=
all_append_class-target() {</div><div><span class=3D"gmail-Apple-tab-span" =
style=3D"white-space:pre">	</span># Clean host path in compile_et, mk_cmds<=
/div><div><span class=3D"gmail-Apple-tab-span" style=3D"white-space:pre">	<=
/span>sed -i -e &quot;s,ET_DIR=3D\&quot;${S}/lib/et\&quot;,ET_DIR=3D\&quot;=
${datadir}/et\&quot;,g&quot; ${D}${bindir}/compile_et</div><div><span class=
=3D"gmail-Apple-tab-span" style=3D"white-space:pre">	</span>sed -i -e &quot=
;s,SS_DIR=3D\&quot;${S}/lib/ss\&quot;,SS_DIR=3D\&quot;${datadir}/ss\&quot;,=
g&quot; ${D}${bindir}/mk_cmds</div><div>}</div><div><br></div><div>RDEPENDS=
_e2fsprogs =3D &quot;e2fsprogs-badblocks&quot;</div><div>RRECOMMENDS_e2fspr=
ogs =3D &quot;e2fsprogs-mke2fs e2fsprogs-e2fsck&quot;</div><div><br></div><=
div>PACKAGES =3D+ &quot;e2fsprogs-e2fsck e2fsprogs-mke2fs e2fsprogs-tune2fs=
 e2fsprogs-badblocks e2fsprogs-resize2fs&quot;</div><div>PACKAGES =3D+ &quo=
t;libcomerr libss libe2p libext2fs&quot;</div><div><br></div><div>FILES_e2f=
sprogs-resize2fs =3D &quot;${base_sbindir}/resize2fs*&quot;</div><div>FILES=
_e2fsprogs-e2fsck =3D &quot;${base_sbindir}/e2fsck ${base_sbindir}/fsck.ext=
*&quot;</div><div>FILES_e2fsprogs-mke2fs =3D &quot;${base_sbindir}/mke2fs $=
{base_sbindir}/mkfs.ext* ${sysconfdir}/mke2fs.conf&quot;</div><div>FILES_e2=
fsprogs-tune2fs =3D &quot;${base_sbindir}/tune2fs ${base_sbindir}/e2label&q=
uot;</div><div>FILES_e2fsprogs-badblocks =3D &quot;${base_sbindir}/badblock=
s&quot;</div><div>FILES_libcomerr =3D &quot;${base_libdir}/libcom_err.so.*&=
quot;</div><div>FILES_libss =3D &quot;${base_libdir}/libss.so.*&quot;</div>=
<div>FILES_libe2p =3D &quot;${base_libdir}/libe2p.so.*&quot;</div><div>FILE=
S_libext2fs =3D &quot;${libdir}/e2initrd_helper ${base_libdir}/libext2fs.so=
.*&quot;</div><div>FILES_${PN}-dev +=3D &quot;${datadir}/*/*.awk ${datadir}=
/*/*.sed ${base_libdir}/*.so&quot;</div><div><br></div><div>BBCLASSEXTEND =
=3D &quot;native nativesdk&quot;</div><div><br></div><div>inherit update-al=
ternatives</div><div><br></div><div>ALTERNATIVE_${PN} =3D &quot;chattr&quot=
;</div><div>ALTERNATIVE_PRIORITY =3D &quot;100&quot;</div><div>ALTERNATIVE_=
LINK_NAME[chattr] =3D &quot;${base_bindir}/chattr&quot;</div><div>ALTERNATI=
VE_TARGET[chattr] =3D &quot;${base_bindir}/chattr.e2fsprogs&quot;</div></di=
v><div><br></div></div>

--001a114cd9a2cd7f87053eb959ba--
