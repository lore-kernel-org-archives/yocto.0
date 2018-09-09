Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 160C5E006F1; Sun,  9 Sep 2018 10:23:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
	[209.85.221.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78682E00460
	for <yocto@yoctoproject.org>; Sun,  9 Sep 2018 10:23:02 -0700 (PDT)
Received: by mail-wr1-f54.google.com with SMTP id u12-v6so19443845wrr.4
	for <yocto@yoctoproject.org>; Sun, 09 Sep 2018 10:23:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=yy9I4NHioa74aNGheHzJW5xNJFO8NntJv7it123VsMc=;
	b=X+8UUd6rEOM3OGL/PMbLLpwpHhmzK6NDw/QvzkxfJSq4ico1inckeFqvyFvsOq2EOL
	9d9Ksn45yTJA879gP1LW89kgbC8jN4BbwWv3ephEo1iJVFWQfPXcRD9/fDZIrdn3Qu81
	qduTUBTMLGGh4QiABQOs3MPXR/Z/GuFu4zxFHH4rsj3sOLZBuysYzmFH9F/s4a4dpC1a
	AvHQ6wxb+NkenK4QDoj6LvHI/Tg0BLZue2S3iJrpB+8EgJY/1UT3i6Aa7vsqgGvr7cHE
	83W0ACiclKQ3cr4wTdJN6w/WVdNQJ/HCA0ArWEpt5TOUHXXoqlTmag3RYJZanNf3mLB0
	AwoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=yy9I4NHioa74aNGheHzJW5xNJFO8NntJv7it123VsMc=;
	b=G4JcCRU/sSrAk+Dye2rTcCBqqdz77eS/94pkkyMojAziOJY3ue2B4uVYt8UP7b5Tzj
	M7Yn6uYVuQTEWhvOgq0pznuWliYOyoXM5st4fg2pRgTsXnmlGGRkbF+6OWIt9aLnsWHH
	kkofs3In6ZIUGLjs8wetO/Z/WP1tT18HMFgkIgv8JHdm2bvQiAxm/S+OSNHypLfuTx0q
	TaQe7cucFYwPVly/Be1FRJz8oXfSRI3b2UASCo9YdWg6BEjQ/eqksP1cBL0jo0ZGzvBu
	ojQ3qVr+CVXszc7PJGJcqLbvmTZRjyY+lfSOVyzooKO+qZm7a86cHxSZ91+CStcKVTQ5
	qnmg==
X-Gm-Message-State: APzg51BZSD4qOYVRXYovf0hmqW8xsx+Mg7RoSB/y4B6xdnUhbcbH3Ibz
	CYB4idNyON/xYlGZkOfdVhCLdUozAUyK9D1738g=
X-Google-Smtp-Source: ANB0VdbnsUanMyQTqh/lptSUjCPMDnY9al/f09lKVq/xkhPCk9r+1c7W12SOhg2/cwGqH5x60ap1yrft0YQw5f0wPb4=
X-Received: by 2002:a5d:574b:: with SMTP id
	q11-v6mr12430506wrw.272.1536513781519; 
	Sun, 09 Sep 2018 10:23:01 -0700 (PDT)
MIME-Version: 1.0
References: <0AB7262D-C22A-4543-BB67-15F3A1DB2094@gmail.com>
	<CANNYZj9d8g_q9FD98JzgY-G+yAhVUkYe8JW8x_UuOEZxiOx5Kw@mail.gmail.com>
	<7F360AF5-A5DC-443C-A847-B7A323AF9D94@gmail.com>
In-Reply-To: <7F360AF5-A5DC-443C-A847-B7A323AF9D94@gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Sun, 9 Sep 2018 19:22:50 +0200
Message-ID: <CA+chaQcy_VHA7yGhhVULW5=jMVfP2tNEJKWi-KSgS_zwNjZUTg@mail.gmail.com>
To: Jens Rehsack <rehsack@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Postinstall scriptlets of ['coreutils'] have failed
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
X-List-Received-Date: Sun, 09 Sep 2018 17:23:04 -0000
Content-Type: multipart/alternative; boundary="00000000000023e1aa0575737e42"

--00000000000023e1aa0575737e42
Content-Type: text/plain; charset="UTF-8"

There are 2 packages using u-a for nice, but one is using {bindir} and 2nd
one is using {base_bindir}

coreutils is using bindir, find what's using ${base_bindir} and change one
of them to use the same u-a link as the other one.

On Sun, Sep 9, 2018 at 5:59 PM Jens Rehsack <rehsack@gmail.com> wrote:

>
>
> Am 09.09.2018 um 13:15 schrieb Alexander Kanavin <alex.kanavin@gmail.com>:
>
> It's right in the message?
>
> ERROR: Logfile of failure stored in:
>
> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.27709
>
> Alex
>
>
>
> It's not much what stands there:
>
> Downloading
> file:/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/oe-rootfs-repo/core2-64/libcap-dev_2.25-r0_core2-64.ipk.
> Installing coreutils-dev (8.30) on root
> [...]
> Configuring update-rc.d-deupdate-alternatives: Linking
> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/diff
> to /usr/bin/diff.diffutils
> update-alternatives: Linking
> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cmp
> to /usr/bin/cmp.diffutils
> update-alternatives: Linking
> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/bin/umount
> to /bin/umount.util-linux
> update-alternatives: Linking
> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/[
> to /usr/bin/lbracket.coreutils
> update-alternatives: Linking
> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/arch
> to /usr/bin/arch.coreutils
> update-alternatives: Linking
> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/basename
> to /usr/bin/basename.coreutils
> update-alternatives: Linking
> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/chcon
> to /usr/bin/chcon.coreutils
> update-alternatives: Linking
> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cksum
> to /usr/bin/cksum.coreutils
> update-alternatives: Linking
> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/comm
> to /usr/bin/comm.coreutils
> update-alternatives: Linking
> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/csplit
> to /usr/bin/csplit.coreutils
> update-alternatives: Linking
> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cut
> to /usr/bin/cut.coreutils
> [...]
> update-alternatives: Linking
> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/mkfifo
> to /usr/bin/mkfifo.coreutils
> update-alternatives: renaming nice link from /bin/nice to /usr/bin/nice
> mv: cannot stat '/bin/nice': No such file or directory
> update-alternatives: Linking
> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/bin/bash
> to /bin/bash.bash
> [...]
> Configuring libgmp10.
> Configuring coreutils.
> coreutils.postinst returned 1, marking as unpacked only, configuration
> required on target.
> Configuring acl.
> [...]
>
> The postinst file of coreutils contains only a long list of
> update-alternatives, as many other packages do either.
>
> core-image-minimal contains coreutils as well, but it doesn't fail the
> same way.
>
> Any ideas?
>
> 2018-09-09 10:58 GMT+02:00 Jens Rehsack <rehsack@gmail.com>:
>
> Hi,
>
> I got following issue when building an image for live-debugging:
>
> ERROR: updatable-app-dev-image-1.0-r0 do_rootfs: Postinstall scriptlets of
> ['coreutils'] have failed. If the intention is to defer them to first boot,
> then please place them into pkg_postinst_ontarget_${PN} ().
> Deferring to first boot via 'exit 1' is no longer supported.
> Details of the failure are in
> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/updatable-app-dev-image/1.0-r0/temp/log.do_rootfs.
> ERROR: updatable-app-dev-image-1.0-r0 do_rootfs: Function failed: do_rootfs
> ERROR: Logfile of failure stored in:
> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/updatable-app-dev-image/1.0-r0/temp/log.do_rootfs.14358
> ERROR: Task
> (/home/sno/gpw-community-bsp/sources/meta-jens/recipes-images/images/updatable-app-dev-image.bb:do_rootfs)
> failed with exit code '1'
>
> I can reproduce it using core-image-minimal-dev
>
> WARNING: core-image-minimal-dev-1.0-r0 do_rootfs: coreutils.postinst
> returned 1, marking as unpacked only, configuration required on target.
> ERROR: core-image-minimal-dev-1.0-r0 do_rootfs: Postinstall scriptlets of
> ['coreutils'] have failed. If the intention is to defer them to first boot,
> then please place them into pkg_postinst_ontarget_${PN} ().
> Deferring to first boot via 'exit 1' is no longer supported.
> Details of the failure are in
> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.
> ERROR: core-image-minimal-dev-1.0-r0 do_rootfs: Function failed: do_rootfs
> ERROR: Logfile of failure stored in:
> /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.27709
> ERROR: Task
> (/home/sno/gpw-community-bsp/sources/poky/meta/recipes-core/images/core-image-minimal-dev.bb:do_rootfs)
> failed with exit code '1'
>
> Any idea where to start debugging?
>
> Best regards
> --
> Jens Rehsack - rehsack@gmail.com
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
> --
> Jens Rehsack - rehsack@gmail.com
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--00000000000023e1aa0575737e42
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">There are 2 packages using u-a for nice, but one is using =
{bindir} and 2nd one is using {base_bindir}<div><br></div><div>coreutils is=
 using bindir, find what&#39;s using ${base_bindir} and change one of them =
to use the same u-a link as the other one.</div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr">On Sun, Sep 9, 2018 at 5:59 PM Jens Rehsack &lt;=
<a href=3D"mailto:rehsack@gmail.com">rehsack@gmail.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><div style=3D"word-wrap:break-word;line-=
break:after-white-space"><br><div><br><blockquote type=3D"cite"><div>Am 09.=
09.2018 um 13:15 schrieb Alexander Kanavin &lt;<a href=3D"mailto:alex.kanav=
in@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt;:</div><br cl=
ass=3D"m_-7610403655000841370Apple-interchange-newline"><div><div>It&#39;s =
right in the message?<br><br>ERROR: Logfile of failure stored in:<br>/home/=
sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-=
image-minimal-dev/1.0-r0/temp/log.do_rootfs.27709<br><br>Alex<br></div></di=
v></blockquote><div><br></div><div><br></div><div>It&#39;s not much what st=
ands there:</div><div><br></div><div><div>Downloading file:/home/sno/gpw-co=
mmunity-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-mini=
mal-dev/1.0-r0/oe-rootfs-repo/core2-64/libcap-dev_2.25-r0_core2-64.ipk.</di=
v><div>Installing coreutils-dev (8.30) on root</div><div>[...]</div><div><d=
iv>Configuring update-rc.d-deupdate-alternatives: Linking /home/sno/gpw-com=
munity-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minim=
al-dev/1.0-r0/rootfs/usr/bin/diff to /usr/bin/diff.diffutils</div><div>upda=
te-alternatives: Linking /home/sno/gpw-community-bsp/mops-yocto-platform/tm=
p/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cmp =
to /usr/bin/cmp.diffutils</div><div>update-alternatives: Linking /home/sno/=
gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-imag=
e-minimal-dev/1.0-r0/rootfs/bin/umount to /bin/umount.util-linux</div><div>=
update-alternatives: Linking /home/sno/gpw-community-bsp/mops-yocto-platfor=
m/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/=
[ to /usr/bin/lbracket.coreutils</div><div>update-alternatives: Linking /ho=
me/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/co=
re-image-minimal-dev/1.0-r0/rootfs/usr/bin/arch to /usr/bin/arch.coreutils<=
/div><div>update-alternatives: Linking /home/sno/gpw-community-bsp/mops-yoc=
to-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootf=
s/usr/bin/basename to /usr/bin/basename.coreutils</div><div>update-alternat=
ives: Linking /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fisc=
her-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/chcon to /usr/b=
in/chcon.coreutils</div><div>update-alternatives: Linking /home/sno/gpw-com=
munity-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minim=
al-dev/1.0-r0/rootfs/usr/bin/cksum to /usr/bin/cksum.coreutils</div><div>up=
date-alternatives: Linking /home/sno/gpw-community-bsp/mops-yocto-platform/=
tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/co=
mm to /usr/bin/comm.coreutils</div><div>update-alternatives: Linking /home/=
sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-=
image-minimal-dev/1.0-r0/rootfs/usr/bin/csplit to /usr/bin/csplit.coreutils=
</div><div>update-alternatives: Linking /home/sno/gpw-community-bsp/mops-yo=
cto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/root=
fs/usr/bin/cut to /usr/bin/cut.coreutils</div><div>[...]</div></div></div><=
div><div>update-alternatives: Linking /home/sno/gpw-community-bsp/mops-yoct=
o-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/rootfs=
/usr/bin/mkfifo to /usr/bin/mkfifo.coreutils</div><div>update-alternatives:=
 renaming nice link from /bin/nice to /usr/bin/nice</div><div>mv: cannot st=
at &#39;/bin/nice&#39;: No such file or directory</div><div>update-alternat=
ives: Linking /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fisc=
her-poky-linux/core-image-minimal-dev/1.0-r0/rootfs/bin/bash to /bin/bash.b=
ash</div><div>[...]</div></div><div><div>Configuring libgmp10.</div><div>Co=
nfiguring coreutils.</div><div>coreutils.postinst returned 1, marking as un=
packed only, configuration required on target.</div><div>Configuring acl.</=
div><div>[...]</div><div><br></div><div>The postinst file of coreutils cont=
ains only a long list of update-alternatives, as many other packages do eit=
her.</div><div><br></div><div>core-image-minimal contains coreutils as well=
, but it doesn&#39;t fail the same way.</div><div><br></div><div>Any ideas?=
</div></div><br><blockquote type=3D"cite"><div><div>2018-09-09 10:58 GMT+02=
:00 Jens Rehsack &lt;<a href=3D"mailto:rehsack@gmail.com" target=3D"_blank"=
>rehsack@gmail.com</a>&gt;:<br><blockquote type=3D"cite">Hi,<br><br>I got f=
ollowing issue when building an image for live-debugging:<br><br>ERROR: upd=
atable-app-dev-image-1.0-r0 do_rootfs: Postinstall scriptlets of [&#39;core=
utils&#39;] have failed. If the intention is to defer them to first boot,<b=
r>then please place them into pkg_postinst_ontarget_${PN} ().<br>Deferring =
to first boot via &#39;exit 1&#39; is no longer supported.<br>Details of th=
e failure are in /home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/f=
ischer-poky-linux/updatable-app-dev-image/1.0-r0/temp/log.do_rootfs.<br>ERR=
OR: updatable-app-dev-image-1.0-r0 do_rootfs: Function failed: do_rootfs<br=
>ERROR: Logfile of failure stored in: /home/sno/gpw-community-bsp/mops-yoct=
o-platform/tmp/work/fischer-poky-linux/updatable-app-dev-image/1.0-r0/temp/=
log.do_rootfs.14358<br>ERROR: Task (/home/sno/gpw-community-bsp/sources/met=
a-jens/recipes-images/images/updatable-app-dev-image.bb:do_rootfs) failed w=
ith exit code &#39;1&#39;<br><br>I can reproduce it using core-image-minima=
l-dev<br><br>WARNING: core-image-minimal-dev-1.0-r0 do_rootfs: coreutils.po=
stinst returned 1, marking as unpacked only, configuration required on targ=
et.<br>ERROR: core-image-minimal-dev-1.0-r0 do_rootfs: Postinstall scriptle=
ts of [&#39;coreutils&#39;] have failed. If the intention is to defer them =
to first boot,<br>then please place them into pkg_postinst_ontarget_${PN} (=
).<br>Deferring to first boot via &#39;exit 1&#39; is no longer supported.<=
br>Details of the failure are in /home/sno/gpw-community-bsp/mops-yocto-pla=
tform/tmp/work/fischer-poky-linux/core-image-minimal-dev/1.0-r0/temp/log.do=
_rootfs.<br>ERROR: core-image-minimal-dev-1.0-r0 do_rootfs: Function failed=
: do_rootfs<br>ERROR: Logfile of failure stored in: /home/sno/gpw-community=
-bsp/mops-yocto-platform/tmp/work/fischer-poky-linux/core-image-minimal-dev=
/1.0-r0/temp/log.do_rootfs.27709<br>ERROR: Task (/home/sno/gpw-community-bs=
p/sources/poky/meta/recipes-core/images/core-image-minimal-dev.bb:do_rootfs=
) failed with exit code &#39;1&#39;<br><br>Any idea where to start debuggin=
g?<br><br>Best regards<br>--<br>Jens Rehsack - <a href=3D"mailto:rehsack@gm=
ail.com" target=3D"_blank">rehsack@gmail.com</a><br><br><br>--<br>_________=
______________________________________<br>yocto mailing list<br><a href=3D"=
mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a>=
<br><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_bl=
ank">https://lists.yoctoproject.org/listinfo/yocto</a><br><br></blockquote>=
</div></div></blockquote></div><br><div>
<div style=3D"color:rgb(0,0,0);letter-spacing:normal;text-align:start;text-=
indent:0px;text-transform:none;white-space:normal;word-spacing:0px;word-wra=
p:break-word"><div style=3D"color:rgb(0,0,0);letter-spacing:normal;text-ali=
gn:start;text-indent:0px;text-transform:none;white-space:normal;word-spacin=
g:0px;word-wrap:break-word"><div>--=C2=A0</div><div>Jens Rehsack - <a href=
=3D"mailto:rehsack@gmail.com" target=3D"_blank">rehsack@gmail.com</a></div>=
</div></div>
</div>
<br></div>-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--00000000000023e1aa0575737e42--
