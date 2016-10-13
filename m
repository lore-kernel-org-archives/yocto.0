Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FFFFE00DF2; Thu, 13 Oct 2016 00:03:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (balazovic.peter[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.50 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f50.google.com (mail-lf0-f50.google.com
	[209.85.215.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A916FE00DF0
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 00:03:50 -0700 (PDT)
Received: by mail-lf0-f50.google.com with SMTP id b81so119020248lfe.1
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 00:03:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=7qF/u7QWgoTH8BSgvvqwF58IyfI1lqVbc3xRFg98igY=;
	b=eMASOEWMu9HN3oQUlHvfs75sa5OVmz3/iQLCIIHIRCUhRn2MFtMTJZ+V/K08Jq+RjM
	hviXTheDPgNQbWC6UGig09Gk9um5BLutNyzyb5syFyyjnvzOo26nddJjbZGb+1PFs43y
	4VUVxHFtWjR3biIKSJ7cmGOml1gi5N8JasVfZdTfqUojfmos+E2ROGARf6doexGEuYRg
	g5TtZ5qY+KfkCxKkd31ViKlZSli+lFjuzDqvOQRjhuI8KNbSPGtpIkwl2NfQnr5aAxbN
	5GDuVkQP0b1CGzdfxicMcr+n6jrkaRGFRDqIRDDGDdSsLnaHeSAcmPM58/C9IkpJfL4e
	DZjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=7qF/u7QWgoTH8BSgvvqwF58IyfI1lqVbc3xRFg98igY=;
	b=Yqzttzohj9jipgKZbZVrvHhHLFzhJhsm5vgjgIIPpldMKC85p5QoGf1bykkoMVGJHL
	OU/zCN0bxXJMIwNsyIR0/tEBbTGgSZGdy2NxDq+wP4firRztCN8iWD6Uq7mIO3aHeqGA
	fyJLtPG6vUWJok3hQBJCtlI8A7+wAgfvIg56o9yF7BvYS8anggWgzuHSMnR6fvA4U1ZU
	M4RIUs5803PmXA0SLtxdbbumQF4pbHNOM7437GxMebS/EUgiL0dPd9goAeMx5ST4KGaE
	EmrLBeyOXe0B+Bk920SGqdZfxe8m3UBqoPCveYHojg47/onZkIjJlOnZnTNtox3gKsI2
	6CoQ==
X-Gm-Message-State: AA6/9Rk57Hy1mbcFVLc/2+GOHABdkc/6dR9Fnx2NTV0Gc2bJh6bQ9DI7cSJRqpRxOJvB6EGLN19rwg49k6NsYA==
X-Received: by 10.28.102.9 with SMTP id a9mr994415wmc.10.1476342228932; Thu,
	13 Oct 2016 00:03:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.104.164 with HTTP; Thu, 13 Oct 2016 00:03:48 -0700 (PDT)
In-Reply-To: <CAP71WjwLvSQFLF9DfF7YUj1ZXN5Y9GaPM8-ivsZz5+P_ZJXqPw@mail.gmail.com>
References: <CAFq4t4i5B5Sk-Bms0zVWr4sU5fgz4zM5pUs-YO8wcCzV5umxog@mail.gmail.com>
	<CAP71WjwLvSQFLF9DfF7YUj1ZXN5Y9GaPM8-ivsZz5+P_ZJXqPw@mail.gmail.com>
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Thu, 13 Oct 2016 09:03:48 +0200
Message-ID: <CAFq4t4iKCo+VpXK_-J15fOE4fGNh8=NxYVvbJLm-9HSzkkU+gQ@mail.gmail.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
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
X-List-Received-Date: Thu, 13 Oct 2016 07:03:53 -0000
Content-Type: multipart/alternative; boundary=001a114b31501f5e1a053eb9b636

--001a114b31501f5e1a053eb9b636
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

> First, you need an extra space when you use _append operator.
I got within my local.conf and building for big size SD card.

IMAGE_ROOTFS_EXTRA_SPACE =3D "25165824"

> So you need to include e2fsprogs-resize2fs

that's what I'm looking for - where to include ...

On Thu, Oct 13, 2016 at 8:49 AM, Nicolas Dechesne <
nicolas.dechesne@linaro.org> wrote:

> Le 13 oct. 2016 08:44, "Peter Balazovic" <balazovic.peter@gmail.com> a
> =C3=A9crit :
> >
> > Dears,
> >
> > I just build the yocto image and within local.conf I got
> >
> > IMAGE_INSTALL_append =3D "e2fsprogs"
>
> First, you need an extra space when you use _append operator.
>
> .
> >
> > but unfortunately I do not get resize2fs utility installed. I do not no=
t
> why?
>
> Then if you look at the recipe each app is packaged separately so that yo=
u
> can pick and choose only the one you need. So you need to include
> e2fsprogs-resize2fs
>
> > this how e2fsprogs_1.42.9.bb looks like
> >
> >
> >
> > require e2fsprogs.inc
> >
> >
> > SRC_URI +=3D "file://acinclude.m4 \
> >             file://remove.ldconfig.call.patch \
> >             file://fix-icache.patch \
> >             file://quiet-debugfs.patch \
> >             file://0001-mke2fs-add-the-ability-to-copy-files-from-a-giv=
en-di.patch
> \
> >             file://0002-misc-create_inode.c-copy-files-recursively.patc=
h
> \
> >             file://0003-misc-create_inode.c-create-special-file.patch \
> >             file://0004-misc-create_inode.c-create-symlink.patch \
> >             file://0005-misc-create_inode.c-copy-regular-file.patch \
> >             file://0006-misc-create_inode.c-create-directory.patch \
> >             file://0007-misc-create_inode.c-set-owner-mode-time-for-the=
-inod.patch
> \
> >             file://0008-mke2fs.c-add-an-option-d-root-directory.patch \
> >             file://0009-misc-create_inode.c-handle-hardlinks.patch \
> >             file://0010-debugfs-use-the-functions-in-misc-create_inode.=
c.patch
> \
> >             file://0011-mke2fs.8.in-update-the-manual-for-the-d-option.=
patch
> \
> >             file://0012-Fix-musl-build-failures.patch \
> >             file://0001-e2fsprogs-fix-cross-compilation-problem.patch \
> >             file://misc-mke2fs.c-return-error-when-failed-to-populate-f=
s.patch
> \
> >             file://cache_inode.patch \
> >             file://CVE-2015-0247.patch \
> >             file://0001-libext2fs-fix-potential-buffer-overflow-in-clos=
efs.patch
> \
> > "
> >
> > SRC_URI[md5sum] =3D "3f8e41e63b432ba114b33f58674563f7"
> > SRC_URI[sha256sum] =3D "2f92ac06e92fa00f2ada3ee67dad01
> 2d74d685537527ad1241d82f2d041f2802"
> >
> > EXTRA_OECONF +=3D "--libdir=3D${base_libdir} --sbindir=3D${base_sbindir=
}
> --enable-elf-shlibs --disable-libuuid --disable-uuidd
> --enable-verbose-makecmds"
> > EXTRA_OECONF_darwin =3D "--libdir=3D${base_libdir} --sbindir=3D${base_s=
bindir}
> --enable-bsd-shlibs"
> >
> > do_configure_prepend () {
> > cp ${WORKDIR}/acinclude.m4 ${S}/
> > }
> >
> > do_install () {
> > oe_runmake 'DESTDIR=3D${D}' install
> > oe_runmake 'DESTDIR=3D${D}' install-libs
> > # We use blkid from util-linux now so remove from here
> > rm -f ${D}${base_libdir}/libblkid*
> > rm -rf ${D}${includedir}/blkid
> > rm -f ${D}${base_libdir}/pkgconfig/blkid.pc
> > rm -f ${D}${base_sbindir}/blkid
> > rm -f ${D}${base_sbindir}/fsck
> > rm -f ${D}${base_sbindir}/findfs
> >
> > # e2initrd_helper and the pkgconfig files belong in libdir
> > if [ ! ${D}${libdir} -ef ${D}${base_libdir} ]; then
> > install -d ${D}${libdir}
> > mv ${D}${base_libdir}/e2initrd_helper ${D}${libdir}
> > mv ${D}${base_libdir}/pkgconfig ${D}${libdir}
> > fi
> >
> > oe_multilib_header ext2fs/ext2_types.h
> > install -d ${D}${base_bindir}
> > mv ${D}${bindir}/chattr ${D}${base_bindir}/chattr.e2fsprogs
> >
> > install -v -m 755 ${S}/contrib/populate-extfs.sh ${D}${base_sbindir}/
> > }
> >
> > do_install_append_class-target() {
> > # Clean host path in compile_et, mk_cmds
> > sed -i -e "s,ET_DIR=3D\"${S}/lib/et\",ET_DIR=3D\"${datadir}/et\",g"
> ${D}${bindir}/compile_et
> > sed -i -e "s,SS_DIR=3D\"${S}/lib/ss\",SS_DIR=3D\"${datadir}/ss\",g"
> ${D}${bindir}/mk_cmds
> > }
> >
> > RDEPENDS_e2fsprogs =3D "e2fsprogs-badblocks"
> > RRECOMMENDS_e2fsprogs =3D "e2fsprogs-mke2fs e2fsprogs-e2fsck"
> >
> > PACKAGES =3D+ "e2fsprogs-e2fsck e2fsprogs-mke2fs e2fsprogs-tune2fs
> e2fsprogs-badblocks e2fsprogs-resize2fs"
> > PACKAGES =3D+ "libcomerr libss libe2p libext2fs"
> >
> > FILES_e2fsprogs-resize2fs =3D "${base_sbindir}/resize2fs*"
> > FILES_e2fsprogs-e2fsck =3D "${base_sbindir}/e2fsck
> ${base_sbindir}/fsck.ext*"
> > FILES_e2fsprogs-mke2fs =3D "${base_sbindir}/mke2fs
> ${base_sbindir}/mkfs.ext* ${sysconfdir}/mke2fs.conf"
> > FILES_e2fsprogs-tune2fs =3D "${base_sbindir}/tune2fs
> ${base_sbindir}/e2label"
> > FILES_e2fsprogs-badblocks =3D "${base_sbindir}/badblocks"
> > FILES_libcomerr =3D "${base_libdir}/libcom_err.so.*"
> > FILES_libss =3D "${base_libdir}/libss.so.*"
> > FILES_libe2p =3D "${base_libdir}/libe2p.so.*"
> > FILES_libext2fs =3D "${libdir}/e2initrd_helper
> ${base_libdir}/libext2fs.so.*"
> > FILES_${PN}-dev +=3D "${datadir}/*/*.awk ${datadir}/*/*.sed
> ${base_libdir}/*.so"
> >
> > BBCLASSEXTEND =3D "native nativesdk"
> >
> > inherit update-alternatives
> >
> > ALTERNATIVE_${PN} =3D "chattr"
> > ALTERNATIVE_PRIORITY =3D "100"
> > ALTERNATIVE_LINK_NAME[chattr] =3D "${base_bindir}/chattr"
> > ALTERNATIVE_TARGET[chattr] =3D "${base_bindir}/chattr.e2fsprogs"
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>
>

--001a114b31501f5e1a053eb9b636
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><p dir=3D"ltr">&gt; First, you need an extra space wh=
en you use _append operator.</p></div><div>I got within my local.conf and b=
uilding for big size SD card.</div><div><br></div><div>IMAGE_ROOTFS_EXTRA_S=
PACE =3D &quot;25165824&quot;<br></div><div><br></div><div>&gt; So you need=
 to include e2fsprogs-resize2fs<br></div><div><br></div><div>that&#39;s wha=
t I&#39;m looking for - where to include ...<br></div><div><div class=3D"gm=
ail_extra"><br><div class=3D"gmail_quote">On Thu, Oct 13, 2016 at 8:49 AM, =
Nicolas Dechesne <span dir=3D"ltr">&lt;<a href=3D"mailto:nicolas.dechesne@l=
inaro.org" target=3D"_blank">nicolas.dechesne@linaro.org</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><span class=3D"gma=
il-"><p dir=3D"ltr"></p>
<p dir=3D"ltr">Le=C2=A013 oct. 2016 08:44, &quot;Peter Balazovic&quot; &lt;=
<a href=3D"mailto:balazovic.peter@gmail.com" target=3D"_blank">balazovic.pe=
ter@gmail.com</a>&gt; a =C3=A9crit=C2=A0:<br>
&gt;<br>
&gt; Dears,<br>
&gt;<br>
&gt; I just build the yocto image and within local.conf I got=C2=A0<br>
&gt;<br>
&gt; IMAGE_INSTALL_append =3D &quot;e2fsprogs&quot;</p>
</span><p dir=3D"ltr">First, you need an extra space when you use _append o=
perator.</p>
<p dir=3D"ltr">.<span class=3D"gmail-"><br>
&gt;<br>
&gt; but unfortunately I do not get resize2fs utility installed. I do not n=
ot why?</span></p>
<p dir=3D"ltr">Then if you look at the recipe each app is packaged separate=
ly so that you can pick and choose only the one you need. So you need to in=
clude e2fsprogs-resize2fs</p>
<p dir=3D"ltr"></p><div><div class=3D"gmail-h5">&gt; this how <a href=3D"ht=
tp://e2fsprogs_1.42.9.bb" target=3D"_blank">e2fsprogs_1.42.9.bb</a> looks l=
ike<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; require e2fsprogs.inc<br>
&gt;<br>
&gt;<br>
&gt; SRC_URI +=3D &quot;file://acinclude.m4 \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://remove.ldconfig.call.=
<wbr>patch \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://fix-icache.patch \<br=
>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://quiet-debugfs.patch \=
<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0001-mke2fs-add-the-<=
wbr>ability-to-copy-files-from-a-<wbr>given-di.patch \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0002-misc-create_inod=
e.<wbr>c-copy-files-recursively.patch \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0003-misc-create_inod=
e.<wbr>c-create-special-file.patch \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0004-misc-create_inod=
e.<wbr>c-create-symlink.patch \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0005-misc-create_inod=
e.<wbr>c-copy-regular-file.patch \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0006-misc-create_inod=
e.<wbr>c-create-directory.patch \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0007-misc-create_inod=
e.<wbr>c-set-owner-mode-time-for-the-<wbr>inod.patch \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0008-mke2fs.c-add-an-=
<wbr>option-d-root-directory.patch \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0009-misc-create_inod=
e.<wbr>c-handle-hardlinks.patch \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0010-debugfs-use-the-=
<wbr>functions-in-misc-create_<wbr>inode.c.patch \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0011-mke2fs.8.in-<wbr=
>update-the-manual-for-the-d-<wbr>option.patch \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0012-Fix-musl-build-<=
wbr>failures.patch \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0001-e2fsprogs-fix-<w=
br>cross-compilation-problem.<wbr>patch \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://misc-mke2fs.c-return-=
<wbr>error-when-failed-to-populate-<wbr>fs.patch \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://cache_inode.patch \<b=
r>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://CVE-2015-0247.patch \=
<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0001-libext2fs-fix-<w=
br>potential-buffer-overflow-in-<wbr>closefs.patch \<br>
&gt; &quot;<br>
&gt;<br>
&gt; SRC_URI[md5sum] =3D &quot;<wbr>3f8e41e63b432ba114b33f58674563<wbr>f7&q=
uot;<br>
&gt; SRC_URI[sha256sum] =3D &quot;<wbr>2f92ac06e92fa00f2ada3ee67dad01<wbr>2=
d74d685537527ad1241d82f2d041f<wbr>2802&quot;<br>
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
&gt; rm -f ${D}${base_libdir}/pkgconfig/<wbr>blkid.pc<br>
&gt; rm -f ${D}${base_sbindir}/blkid<br>
&gt; rm -f ${D}${base_sbindir}/fsck<br>
&gt; rm -f ${D}${base_sbindir}/findfs<br>
&gt;<br>
&gt; # e2initrd_helper and the pkgconfig files belong in libdir<br>
&gt; if [ ! ${D}${libdir} -ef ${D}${base_libdir} ]; then<br>
&gt; install -d ${D}${libdir}<br>
&gt; mv ${D}${base_libdir}/e2initrd_<wbr>helper ${D}${libdir}<br>
&gt; mv ${D}${base_libdir}/pkgconfig ${D}${libdir}<br>
&gt; fi<br>
&gt;<br>
&gt; oe_multilib_header ext2fs/ext2_types.h<br>
&gt; install -d ${D}${base_bindir}<br>
&gt; mv ${D}${bindir}/chattr ${D}${base_bindir}/chattr.<wbr>e2fsprogs<br>
&gt;<br>
&gt; install -v -m 755 ${S}/contrib/populate-extfs.sh ${D}${base_sbindir}/<=
br>
&gt; }<br>
&gt;<br>
&gt; do_install_append_class-<wbr>target() {<br>
&gt; # Clean host path in compile_et, mk_cmds<br>
&gt; sed -i -e &quot;s,ET_DIR=3D\&quot;${S}/lib/et\&quot;,ET_<wbr>DIR=3D\&q=
uot;${datadir}/et\&quot;,g&quot; ${D}${bindir}/compile_et<br>
&gt; sed -i -e &quot;s,SS_DIR=3D\&quot;${S}/lib/ss\&quot;,SS_<wbr>DIR=3D\&q=
uot;${datadir}/ss\&quot;,g&quot; ${D}${bindir}/mk_cmds<br>
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
&gt; FILES_libcomerr =3D &quot;${base_libdir}/libcom_err.so.<wbr>*&quot;<br=
>
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
&gt; ALTERNATIVE_TARGET[chattr] =3D &quot;${base_bindir}/chattr.<wbr>e2fspr=
ogs&quot;<br>
&gt;<br>
&gt;<br></div></div><span class=3D"gmail-HOEnZb"><font color=3D"#888888">
&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><br>
&gt;</font></span><p></p>
</blockquote></div><br></div></div></div>

--001a114b31501f5e1a053eb9b636--
