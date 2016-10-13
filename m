Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F44AE00E23; Wed, 12 Oct 2016 23:49:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.177 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f177.google.com (mail-qk0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 507AEE00E21
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2016 23:49:19 -0700 (PDT)
Received: by mail-qk0-f177.google.com with SMTP id n189so69978406qke.0
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2016 23:49:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=bz36gkVk/UJyyM8yW+SgonkwfK7Mf7nScSJqtjUl2LE=;
	b=Pt1RdrKug9IhwxwkflkxQjwPJsM/Ix7eV1zpCc+NAJj7CDZqPj8+HlPmHPFonSPcug
	b6N9vjv+Cfyu/hZ8MycdDlBTGbu2Je5RAT32tI6dyZnydVsHINTVfxpFi3t7oPDXJDvI
	w9J2y9ZuZzL00KaiEWt5C9nOEWFc2+qK5QuiM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=bz36gkVk/UJyyM8yW+SgonkwfK7Mf7nScSJqtjUl2LE=;
	b=H7Wb42cHKH2YEReaIpry3AJaTLtPRMNUL2Kk8uIYSBxES7VCobv3rqiJKe6nFkPomq
	v3S9UhaYK2O2KJtzmM4qKGQ37X+KAucmNt6rp+EGjawcrneAekVzjTF4bQrj+u4zOZFg
	BovQoKWm+wHSAsJY7s9Efo7ZccbVtHmnAVHaloIb/yLh6TO3k6Df0u932fAGuxYcjZhV
	3YijwNa8zN9ZIZIWk2ufVWBcDv6VLLffuLZUfhhWeRXWHVXV44EQyI2HPIM2vPF/wRxE
	rK8Y30kOkc8zdCSOfnax0GV3j6dyWazYtYepobb17aqZflqUoY+aRQJE3hI9uWw6u9h9
	uLJA==
X-Gm-Message-State: AA6/9RlIDz9i9Dd9y5euOVwjARNbzc2fW8OwFByyagVe6IUgd9gJPNTyaWFp047Aq+Krp/o1VHjWfpCtw5Rh8dca
X-Received: by 10.55.98.75 with SMTP id w72mr5514030qkb.91.1476341358378; Wed,
	12 Oct 2016 23:49:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.104.42 with HTTP; Wed, 12 Oct 2016 23:49:17 -0700 (PDT)
Received: by 10.140.104.42 with HTTP; Wed, 12 Oct 2016 23:49:17 -0700 (PDT)
In-Reply-To: <CAFq4t4i5B5Sk-Bms0zVWr4sU5fgz4zM5pUs-YO8wcCzV5umxog@mail.gmail.com>
References: <CAFq4t4i5B5Sk-Bms0zVWr4sU5fgz4zM5pUs-YO8wcCzV5umxog@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 13 Oct 2016 08:49:17 +0200
Message-ID: <CAP71WjwLvSQFLF9DfF7YUj1ZXN5Y9GaPM8-ivsZz5+P_ZJXqPw@mail.gmail.com>
To: Peter Balazovic <balazovic.peter@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: resize2fs
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
X-List-Received-Date: Thu, 13 Oct 2016 06:49:21 -0000
Content-Type: multipart/alternative; boundary=94eb2c05bae43bda43053eb9829f

--94eb2c05bae43bda43053eb9829f
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Le 13 oct. 2016 08:44, "Peter Balazovic" <balazovic.peter@gmail.com> a
=C3=A9crit :
>
> Dears,
>
> I just build the yocto image and within local.conf I got
>
> IMAGE_INSTALL_append =3D "e2fsprogs"

First, you need an extra space when you use _append operator.

.
>
> but unfortunately I do not get resize2fs utility installed. I do not not
why?

Then if you look at the recipe each app is packaged separately so that you
can pick and choose only the one you need. So you need to include
e2fsprogs-resize2fs

> this how e2fsprogs_1.42.9.bb looks like
>
>
>
> require e2fsprogs.inc
>
>
> SRC_URI +=3D "file://acinclude.m4 \
>             file://remove.ldconfig.call.patch \
>             file://fix-icache.patch \
>             file://quiet-debugfs.patch \
>
file://0001-mke2fs-add-the-ability-to-copy-files-from-a-given-di.patch \
>             file://0002-misc-create_inode.c-copy-files-recursively.patch =
\
>             file://0003-misc-create_inode.c-create-special-file.patch \
>             file://0004-misc-create_inode.c-create-symlink.patch \
>             file://0005-misc-create_inode.c-copy-regular-file.patch \
>             file://0006-misc-create_inode.c-create-directory.patch \
>
file://0007-misc-create_inode.c-set-owner-mode-time-for-the-inod.patch \
>             file://0008-mke2fs.c-add-an-option-d-root-directory.patch \
>             file://0009-misc-create_inode.c-handle-hardlinks.patch \
>
file://0010-debugfs-use-the-functions-in-misc-create_inode.c.patch \
>
file://0011-mke2fs.8.in-update-the-manual-for-the-d-option.patch \
>             file://0012-Fix-musl-build-failures.patch \
>             file://0001-e2fsprogs-fix-cross-compilation-problem.patch \
>
file://misc-mke2fs.c-return-error-when-failed-to-populate-fs.patch \
>             file://cache_inode.patch \
>             file://CVE-2015-0247.patch \
>
file://0001-libext2fs-fix-potential-buffer-overflow-in-closefs.patch \
> "
>
> SRC_URI[md5sum] =3D "3f8e41e63b432ba114b33f58674563f7"
> SRC_URI[sha256sum] =3D
"2f92ac06e92fa00f2ada3ee67dad012d74d685537527ad1241d82f2d041f2802"
>
> EXTRA_OECONF +=3D "--libdir=3D${base_libdir} --sbindir=3D${base_sbindir}
--enable-elf-shlibs --disable-libuuid --disable-uuidd
--enable-verbose-makecmds"
> EXTRA_OECONF_darwin =3D "--libdir=3D${base_libdir} --sbindir=3D${base_sbi=
ndir}
--enable-bsd-shlibs"
>
> do_configure_prepend () {
> cp ${WORKDIR}/acinclude.m4 ${S}/
> }
>
> do_install () {
> oe_runmake 'DESTDIR=3D${D}' install
> oe_runmake 'DESTDIR=3D${D}' install-libs
> # We use blkid from util-linux now so remove from here
> rm -f ${D}${base_libdir}/libblkid*
> rm -rf ${D}${includedir}/blkid
> rm -f ${D}${base_libdir}/pkgconfig/blkid.pc
> rm -f ${D}${base_sbindir}/blkid
> rm -f ${D}${base_sbindir}/fsck
> rm -f ${D}${base_sbindir}/findfs
>
> # e2initrd_helper and the pkgconfig files belong in libdir
> if [ ! ${D}${libdir} -ef ${D}${base_libdir} ]; then
> install -d ${D}${libdir}
> mv ${D}${base_libdir}/e2initrd_helper ${D}${libdir}
> mv ${D}${base_libdir}/pkgconfig ${D}${libdir}
> fi
>
> oe_multilib_header ext2fs/ext2_types.h
> install -d ${D}${base_bindir}
> mv ${D}${bindir}/chattr ${D}${base_bindir}/chattr.e2fsprogs
>
> install -v -m 755 ${S}/contrib/populate-extfs.sh ${D}${base_sbindir}/
> }
>
> do_install_append_class-target() {
> # Clean host path in compile_et, mk_cmds
> sed -i -e "s,ET_DIR=3D\"${S}/lib/et\",ET_DIR=3D\"${datadir}/et\",g"
${D}${bindir}/compile_et
> sed -i -e "s,SS_DIR=3D\"${S}/lib/ss\",SS_DIR=3D\"${datadir}/ss\",g"
${D}${bindir}/mk_cmds
> }
>
> RDEPENDS_e2fsprogs =3D "e2fsprogs-badblocks"
> RRECOMMENDS_e2fsprogs =3D "e2fsprogs-mke2fs e2fsprogs-e2fsck"
>
> PACKAGES =3D+ "e2fsprogs-e2fsck e2fsprogs-mke2fs e2fsprogs-tune2fs
e2fsprogs-badblocks e2fsprogs-resize2fs"
> PACKAGES =3D+ "libcomerr libss libe2p libext2fs"
>
> FILES_e2fsprogs-resize2fs =3D "${base_sbindir}/resize2fs*"
> FILES_e2fsprogs-e2fsck =3D "${base_sbindir}/e2fsck
${base_sbindir}/fsck.ext*"
> FILES_e2fsprogs-mke2fs =3D "${base_sbindir}/mke2fs
${base_sbindir}/mkfs.ext* ${sysconfdir}/mke2fs.conf"
> FILES_e2fsprogs-tune2fs =3D "${base_sbindir}/tune2fs
${base_sbindir}/e2label"
> FILES_e2fsprogs-badblocks =3D "${base_sbindir}/badblocks"
> FILES_libcomerr =3D "${base_libdir}/libcom_err.so.*"
> FILES_libss =3D "${base_libdir}/libss.so.*"
> FILES_libe2p =3D "${base_libdir}/libe2p.so.*"
> FILES_libext2fs =3D "${libdir}/e2initrd_helper
${base_libdir}/libext2fs.so.*"
> FILES_${PN}-dev +=3D "${datadir}/*/*.awk ${datadir}/*/*.sed
${base_libdir}/*.so"
>
> BBCLASSEXTEND =3D "native nativesdk"
>
> inherit update-alternatives
>
> ALTERNATIVE_${PN} =3D "chattr"
> ALTERNATIVE_PRIORITY =3D "100"
> ALTERNATIVE_LINK_NAME[chattr] =3D "${base_bindir}/chattr"
> ALTERNATIVE_TARGET[chattr] =3D "${base_bindir}/chattr.e2fsprogs"
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c05bae43bda43053eb9829f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"></p>
<p dir=3D"ltr">Le=C2=A013 oct. 2016 08:44, &quot;Peter Balazovic&quot; &lt;=
<a href=3D"mailto:balazovic.peter@gmail.com">balazovic.peter@gmail.com</a>&=
gt; a =C3=A9crit=C2=A0:<br>
&gt;<br>
&gt; Dears,<br>
&gt;<br>
&gt; I just build the yocto image and within local.conf I got=C2=A0<br>
&gt;<br>
&gt; IMAGE_INSTALL_append =3D &quot;e2fsprogs&quot;</p>
<p dir=3D"ltr">First, you need an extra space when you use _append operator=
.</p>
<p dir=3D"ltr">.<br>
&gt;<br>
&gt; but unfortunately I do not get resize2fs utility installed. I do not n=
ot why?</p>
<p dir=3D"ltr">Then if you look at the recipe each app is packaged separate=
ly so that you can pick and choose only the one you need. So you need to in=
clude e2fsprogs-resize2fs</p>
<p dir=3D"ltr">&gt; this how <a href=3D"http://e2fsprogs_1.42.9.bb">e2fspro=
gs_1.42.9.bb</a> looks like<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; require e2fsprogs.inc<br>
&gt;<br>
&gt;<br>
&gt; SRC_URI +=3D &quot;file://acinclude.m4 \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://remove.ldconfig.call.=
patch \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://fix-icache.patch \<br=
>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://quiet-debugfs.patch \=
<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0001-mke2fs-add-the-a=
bility-to-copy-files-from-a-given-di.patch \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0002-misc-create_inod=
e.c-copy-files-recursively.patch \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0003-misc-create_inod=
e.c-create-special-file.patch \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0004-misc-create_inod=
e.c-create-symlink.patch \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0005-misc-create_inod=
e.c-copy-regular-file.patch \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0006-misc-create_inod=
e.c-create-directory.patch \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0007-misc-create_inod=
e.c-set-owner-mode-time-for-the-inod.patch \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0008-mke2fs.c-add-an-=
option-d-root-directory.patch \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0009-misc-create_inod=
e.c-handle-hardlinks.patch \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0010-debugfs-use-the-=
functions-in-misc-create_inode.c.patch \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0011-mke2fs.8.in-upda=
te-the-manual-for-the-d-option.patch \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0012-Fix-musl-build-f=
ailures.patch \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0001-e2fsprogs-fix-cr=
oss-compilation-problem.patch \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://misc-mke2fs.c-return-=
error-when-failed-to-populate-fs.patch \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://cache_inode.patch \<b=
r>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://CVE-2015-0247.patch \=
<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0001-libext2fs-fix-po=
tential-buffer-overflow-in-closefs.patch \<br>
&gt; &quot;<br>
&gt;<br>
&gt; SRC_URI[md5sum] =3D &quot;3f8e41e63b432ba114b33f58674563f7&quot;<br>
&gt; SRC_URI[sha256sum] =3D &quot;2f92ac06e92fa00f2ada3ee67dad012d74d685537=
527ad1241d82f2d041f2802&quot;<br>
&gt;<br>
&gt; EXTRA_OECONF +=3D &quot;--libdir=3D${base_libdir} --sbindir=3D${base_s=
bindir} --enable-elf-shlibs --disable-libuuid --disable-uuidd --enable-verb=
ose-makecmds&quot;<br>
&gt; EXTRA_OECONF_darwin =3D &quot;--libdir=3D${base_libdir} --sbindir=3D${=
base_sbindir} --enable-bsd-shlibs&quot;<br>
&gt;<br>
&gt; do_configure_prepend () {<br>
&gt; cp ${WORKDIR}/acinclude.m4 ${S}/<br>
&gt; }<br>
&gt;<br>
&gt; do_install () {<br>
&gt; oe_runmake &#39;DESTDIR=3D${D}&#39; install<br>
&gt; oe_runmake &#39;DESTDIR=3D${D}&#39; install-libs<br>
&gt; # We use blkid from util-linux now so remove from here<br>
&gt; rm -f ${D}${base_libdir}/libblkid*<br>
&gt; rm -rf ${D}${includedir}/blkid<br>
&gt; rm -f ${D}${base_libdir}/pkgconfig/blkid.pc<br>
&gt; rm -f ${D}${base_sbindir}/blkid<br>
&gt; rm -f ${D}${base_sbindir}/fsck<br>
&gt; rm -f ${D}${base_sbindir}/findfs<br>
&gt;<br>
&gt; # e2initrd_helper and the pkgconfig files belong in libdir<br>
&gt; if [ ! ${D}${libdir} -ef ${D}${base_libdir} ]; then<br>
&gt; install -d ${D}${libdir}<br>
&gt; mv ${D}${base_libdir}/e2initrd_helper ${D}${libdir}<br>
&gt; mv ${D}${base_libdir}/pkgconfig ${D}${libdir}<br>
&gt; fi<br>
&gt;<br>
&gt; oe_multilib_header ext2fs/ext2_types.h<br>
&gt; install -d ${D}${base_bindir}<br>
&gt; mv ${D}${bindir}/chattr ${D}${base_bindir}/chattr.e2fsprogs<br>
&gt;<br>
&gt; install -v -m 755 ${S}/contrib/populate-extfs.sh ${D}${base_sbindir}/<=
br>
&gt; }<br>
&gt;<br>
&gt; do_install_append_class-target() {<br>
&gt; # Clean host path in compile_et, mk_cmds<br>
&gt; sed -i -e &quot;s,ET_DIR=3D\&quot;${S}/lib/et\&quot;,ET_DIR=3D\&quot;$=
{datadir}/et\&quot;,g&quot; ${D}${bindir}/compile_et<br>
&gt; sed -i -e &quot;s,SS_DIR=3D\&quot;${S}/lib/ss\&quot;,SS_DIR=3D\&quot;$=
{datadir}/ss\&quot;,g&quot; ${D}${bindir}/mk_cmds<br>
&gt; }<br>
&gt;<br>
&gt; RDEPENDS_e2fsprogs =3D &quot;e2fsprogs-badblocks&quot;<br>
&gt; RRECOMMENDS_e2fsprogs =3D &quot;e2fsprogs-mke2fs e2fsprogs-e2fsck&quot=
;<br>
&gt;<br>
&gt; PACKAGES =3D+ &quot;e2fsprogs-e2fsck e2fsprogs-mke2fs e2fsprogs-tune2f=
s e2fsprogs-badblocks e2fsprogs-resize2fs&quot;<br>
&gt; PACKAGES =3D+ &quot;libcomerr libss libe2p libext2fs&quot;<br>
&gt;<br>
&gt; FILES_e2fsprogs-resize2fs =3D &quot;${base_sbindir}/resize2fs*&quot;<b=
r>
&gt; FILES_e2fsprogs-e2fsck =3D &quot;${base_sbindir}/e2fsck ${base_sbindir=
}/fsck.ext*&quot;<br>
&gt; FILES_e2fsprogs-mke2fs =3D &quot;${base_sbindir}/mke2fs ${base_sbindir=
}/mkfs.ext* ${sysconfdir}/mke2fs.conf&quot;<br>
&gt; FILES_e2fsprogs-tune2fs =3D &quot;${base_sbindir}/tune2fs ${base_sbind=
ir}/e2label&quot;<br>
&gt; FILES_e2fsprogs-badblocks =3D &quot;${base_sbindir}/badblocks&quot;<br=
>
&gt; FILES_libcomerr =3D &quot;${base_libdir}/libcom_err.so.*&quot;<br>
&gt; FILES_libss =3D &quot;${base_libdir}/libss.so.*&quot;<br>
&gt; FILES_libe2p =3D &quot;${base_libdir}/libe2p.so.*&quot;<br>
&gt; FILES_libext2fs =3D &quot;${libdir}/e2initrd_helper ${base_libdir}/lib=
ext2fs.so.*&quot;<br>
&gt; FILES_${PN}-dev +=3D &quot;${datadir}/*/*.awk ${datadir}/*/*.sed ${bas=
e_libdir}/*.so&quot;<br>
&gt;<br>
&gt; BBCLASSEXTEND =3D &quot;native nativesdk&quot;<br>
&gt;<br>
&gt; inherit update-alternatives<br>
&gt;<br>
&gt; ALTERNATIVE_${PN} =3D &quot;chattr&quot;<br>
&gt; ALTERNATIVE_PRIORITY =3D &quot;100&quot;<br>
&gt; ALTERNATIVE_LINK_NAME[chattr] =3D &quot;${base_bindir}/chattr&quot;<br=
>
&gt; ALTERNATIVE_TARGET[chattr] =3D &quot;${base_bindir}/chattr.e2fsprogs&q=
uot;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br>
&gt;</p>

--94eb2c05bae43bda43053eb9829f--
