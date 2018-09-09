Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F415E006F1; Sun,  9 Sep 2018 11:47:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.221.54 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (rehsack[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
	[209.85.221.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D89EBE00460
	for <yocto@yoctoproject.org>; Sun,  9 Sep 2018 11:47:39 -0700 (PDT)
Received: by mail-wr1-f54.google.com with SMTP id s14-v6so10641534wrw.6
	for <yocto@yoctoproject.org>; Sun, 09 Sep 2018 11:47:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
	:references; bh=FPUWMw0SYCr84BVb3DbFIn6Yh+ZYmSGMAQKc0hhJgXs=;
	b=WsGN2fJwFcuRHLGLAAt12lAELLBHvS0MW9mSP8ryvlWvX1bWr5acyCwNc6s42luiFH
	K1xzL6kwl396RsqpaPVksAmOlwzhyPgdfNetazRGFI5foGMUPTPhAX1lzMJfdeyUzpGA
	ANaWw8KlMAn7LLlOxLi+UpPdEOUif7egQnUeV5BjY95LqRA4k78ee8l4aV1q7atFd4ux
	r82ViCvsMqwNE5anXXEhXCyZD72E9fH7riDf+JPxO5M++xidi6ZnM6AZ+1kIQgoDziPm
	koCZgW9Ce1OXq7QNmaiVISlCsfLtqhs66XAPSNHIX1ae/y/cgZw3CsSip+I9pYEMmBk/
	hUrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:mime-version:subject:date
	:in-reply-to:cc:to:references;
	bh=FPUWMw0SYCr84BVb3DbFIn6Yh+ZYmSGMAQKc0hhJgXs=;
	b=SG6cWdzICfNOOi89DUjs5IjOlGgCVpOg/JrgRV3kVLLQ+MdYGOece+icE7N8QJR7lE
	vE5cX5zcYlw+X/2adPeFEPudGNw8/zCzI23TYyhWjYvPSkokBjmKzZJ63iJNY4KlJ7Dl
	AXyBc1S+H6ULdUe9hiB7QzWUKkd2ChXJzBsx5yNCnIi00q7IrvuSeF8CQzvSL1Xj0KCb
	udDer1SgnCeazNZZhr+2qqYvI/hh43Oyt0c0eJsjNFmjjyoSZvjRXDZ6sdaZZlX5MvvY
	WRKlDUwZdPUa+bZ4ygCjWqZqB89C/O7fMdS5EFec+S/X1aLugWjdcY6ApInaIiwnYo2b
	/HNw==
X-Gm-Message-State: APzg51BQLUgEnxSYhBVYMI4KkdzBHfRUlb4JV6A0I+WoqUCCyA05wILv
	qmSqw1i+V/ARYPnCLs1yfn4=
X-Google-Smtp-Source: ANB0Vdb9HvEIJQ0CW/yv7n8jTPeq3b0wLtt2e7u9wEFmAeDyfmICLfbNljiw/cWowLPc/Vh764CrAQ==
X-Received: by 2002:adf:b2f3:: with SMTP id
	g106-v6mr12917120wrd.53.1536518858930; 
	Sun, 09 Sep 2018 11:47:38 -0700 (PDT)
Received: from ernie.muppets.liwing.de (b2b-78-94-80-58.unitymedia.biz.
	[78.94.80.58]) by smtp.gmail.com with ESMTPSA id
	a37-v6sm30163451wrc.21.2018.09.09.11.47.37
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 09 Sep 2018 11:47:38 -0700 (PDT)
From: Jens Rehsack <rehsack@gmail.com>
Message-Id: <3C4A4AAD-4CD4-408F-A0BF-0DE592E64D0B@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Date: Sun, 9 Sep 2018 20:47:36 +0200
In-Reply-To: <CA+chaQdK_ciN-unOxb5AXkmwqMUm0y4Z5cjL3wDu0bzDYkPb5A@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
References: <0AB7262D-C22A-4543-BB67-15F3A1DB2094@gmail.com>
	<CANNYZj9d8g_q9FD98JzgY-G+yAhVUkYe8JW8x_UuOEZxiOx5Kw@mail.gmail.com>
	<7F360AF5-A5DC-443C-A847-B7A323AF9D94@gmail.com>
	<CA+chaQcy_VHA7yGhhVULW5=jMVfP2tNEJKWi-KSgS_zwNjZUTg@mail.gmail.com>
	<CA+chaQdK_ciN-unOxb5AXkmwqMUm0y4Z5cjL3wDu0bzDYkPb5A@mail.gmail.com>
X-Mailer: Apple Mail (2.3445.9.1)
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
X-List-Received-Date: Sun, 09 Sep 2018 18:47:42 -0000
X-Groupsio-MsgNum: 42417
Content-Type: multipart/signed;
	boundary="Apple-Mail=_70697E43-AFC3-4A04-92F0-1037F3F2E7BE";
	protocol="application/pgp-signature"; micalg=pgp-sha512

--Apple-Mail=_70697E43-AFC3-4A04-92F0-1037F3F2E7BE
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_B4DA9075-D351-4D89-A676-8E75762F5B03"

--Apple-Mail=_B4DA9075-D351-4D89-A676-8E75762F5B03
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

So far, so good.

They way to fix that seems either to check why busybox uses =
${base_bindir} nowadays in favor of ${bindir} and fix either busybox or =
coreutils or attr.

What drives me nuts is not only the failure after the busybox update - =
why does core-image-minimal builds successful while =
core-image-minimal-dev fails?

Cheers,
Jens

> Am 09.09.2018 um 19:27 schrieb Martin Jansa <martin.jansa@gmail.com>:
>=20
> busybox is most likely the one providing it in ${base_bindir}
>=20
> Recent busybox upgrade probably moved this file.
>=20
> There is also conflict on /usr/bin/setfattr between busybox and attr =
now.
>=20
> On Sun, Sep 9, 2018 at 7:22 PM Martin Jansa <martin.jansa@gmail.com =
<mailto:martin.jansa@gmail.com>> wrote:
> There are 2 packages using u-a for nice, but one is using {bindir} and =
2nd one is using {base_bindir}
>=20
> coreutils is using bindir, find what's using ${base_bindir} and change =
one of them to use the same u-a link as the other one.
>=20
> On Sun, Sep 9, 2018 at 5:59 PM Jens Rehsack <rehsack@gmail.com =
<mailto:rehsack@gmail.com>> wrote:
>=20
>=20
>> Am 09.09.2018 um 13:15 schrieb Alexander Kanavin =
<alex.kanavin@gmail.com <mailto:alex.kanavin@gmail.com>>:
>>=20
>> It's right in the message?
>>=20
>> ERROR: Logfile of failure stored in:
>> =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.27709
>>=20
>> Alex
>=20
>=20
> It's not much what stands there:
>=20
> Downloading =
file:/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky=
-linux/core-image-minimal-dev/1.0-r0/oe-rootfs-repo/core2-64/libcap-dev_2.=
25-r0_core2-64.ipk.
> Installing coreutils-dev (8.30) on root
> [...]
> Configuring update-rc.d-deupdate-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/diff to =
/usr/bin/diff.diffutils
> update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cmp to =
/usr/bin/cmp.diffutils
> update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/bin/umount to =
/bin/umount.util-linux
> update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/[ to =
/usr/bin/lbracket.coreutils
> update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/arch to =
/usr/bin/arch.coreutils
> update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/basename to =
/usr/bin/basename.coreutils
> update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/chcon to =
/usr/bin/chcon.coreutils
> update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cksum to =
/usr/bin/cksum.coreutils
> update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/comm to =
/usr/bin/comm.coreutils
> update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/csplit to =
/usr/bin/csplit.coreutils
> update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cut to =
/usr/bin/cut.coreutils
> [...]
> update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/mkfifo to =
/usr/bin/mkfifo.coreutils
> update-alternatives: renaming nice link from /bin/nice to =
/usr/bin/nice
> mv: cannot stat '/bin/nice': No such file or directory
> update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/bin/bash to /bin/bash.bash
> [...]
> Configuring libgmp10.
> Configuring coreutils.
> coreutils.postinst returned 1, marking as unpacked only, configuration =
required on target.
> Configuring acl.
> [...]
>=20
> The postinst file of coreutils contains only a long list of =
update-alternatives, as many other packages do either.
>=20
> core-image-minimal contains coreutils as well, but it doesn't fail the =
same way.
>=20
> Any ideas?
>=20
>> 2018-09-09 10:58 GMT+02:00 Jens Rehsack <rehsack@gmail.com =
<mailto:rehsack@gmail.com>>:
>>> Hi,
>>>=20
>>> I got following issue when building an image for live-debugging:
>>>=20
>>> ERROR: updatable-app-dev-image-1.0-r0 do_rootfs: Postinstall =
scriptlets of ['coreutils'] have failed. If the intention is to defer =
them to first boot,
>>> then please place them into pkg_postinst_ontarget_${PN} ().
>>> Deferring to first boot via 'exit 1' is no longer supported.
>>> Details of the failure are in =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/updatable-app-dev-image/1.0-r0/temp/log.do_rootfs.
>>> ERROR: updatable-app-dev-image-1.0-r0 do_rootfs: Function failed: =
do_rootfs
>>> ERROR: Logfile of failure stored in: =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/updatable-app-dev-image/1.0-r0/temp/log.do_rootfs.14358
>>> ERROR: Task =
(/home/sno/gpw-community-bsp/sources/meta-jens/recipes-images/images/updat=
able-app-dev-image.bb:do_rootfs) failed with exit code '1'
>>>=20
>>> I can reproduce it using core-image-minimal-dev
>>>=20
>>> WARNING: core-image-minimal-dev-1.0-r0 do_rootfs: coreutils.postinst =
returned 1, marking as unpacked only, configuration required on target.
>>> ERROR: core-image-minimal-dev-1.0-r0 do_rootfs: Postinstall =
scriptlets of ['coreutils'] have failed. If the intention is to defer =
them to first boot,
>>> then please place them into pkg_postinst_ontarget_${PN} ().
>>> Deferring to first boot via 'exit 1' is no longer supported.
>>> Details of the failure are in =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.
>>> ERROR: core-image-minimal-dev-1.0-r0 do_rootfs: Function failed: =
do_rootfs
>>> ERROR: Logfile of failure stored in: =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.27709
>>> ERROR: Task =
(/home/sno/gpw-community-bsp/sources/poky/meta/recipes-core/images/core-im=
age-minimal-dev.bb:do_rootfs) failed with exit code '1'
>>>=20
>>> Any idea where to start debugging?
>>>=20
>>> Best regards
>>> --
>>> Jens Rehsack - rehsack@gmail.com <mailto:rehsack@gmail.com>
>>>=20
>>>=20
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>
>>>=20
>=20
> --
> Jens Rehsack - rehsack@gmail.com <mailto:rehsack@gmail.com>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--
Jens Rehsack - rehsack@gmail.com


--Apple-Mail=_B4DA9075-D351-4D89-A676-8E75762F5B03
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D"">So =
far, so good.<div class=3D""><br class=3D""></div><div class=3D"">They =
way to fix that seems either to check why busybox uses ${base_bindir} =
nowadays in favor of ${bindir} and fix either busybox or coreutils or =
attr.</div><div class=3D""><br class=3D""></div><div class=3D"">What =
drives me nuts is not only the failure after the busybox update - why =
does core-image-minimal builds successful while core-image-minimal-dev =
fails?</div><div class=3D""><br class=3D""></div><div =
class=3D"">Cheers,</div><div class=3D"">Jens<br class=3D""><div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D"">Am =
09.09.2018 um 19:27 schrieb Martin Jansa &lt;<a =
href=3D"mailto:martin.jansa@gmail.com" =
class=3D"">martin.jansa@gmail.com</a>&gt;:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D""><div dir=3D"ltr" class=3D"">busybox is most likely the one =
providing it in ${base_bindir}<div class=3D""><br class=3D""></div><div =
class=3D"">Recent busybox upgrade probably moved this file.</div><div =
class=3D""><br class=3D""></div><div class=3D"">There is also conflict =
on&nbsp;/usr/bin/setfattr between busybox and attr =
now.</div></div></div><br class=3D""><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"">On Sun, Sep 9, 2018 at 7:22 PM Martin Jansa =
&lt;<a href=3D"mailto:martin.jansa@gmail.com" =
class=3D"">martin.jansa@gmail.com</a>&gt; wrote:<br =
class=3D""></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr" =
class=3D"">There are 2 packages using u-a for nice, but one is using =
{bindir} and 2nd one is using {base_bindir}<div class=3D""><br =
class=3D""></div><div class=3D"">coreutils is using bindir, find what's =
using ${base_bindir} and change one of them to use the same u-a link as =
the other one.</div></div><br class=3D""><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"">On Sun, Sep 9, 2018 at 5:59 PM Jens Rehsack =
&lt;<a href=3D"mailto:rehsack@gmail.com" target=3D"_blank" =
class=3D"">rehsack@gmail.com</a>&gt; wrote:<br =
class=3D""></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div =
style=3D"word-wrap:break-word;line-break:after-white-space" class=3D""><br=
 class=3D""><div class=3D""><br class=3D""><blockquote type=3D"cite" =
class=3D""><div class=3D"">Am 09.09.2018 um 13:15 schrieb Alexander =
Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank" =
class=3D"">alex.kanavin@gmail.com</a>&gt;:</div><br =
class=3D"m_7760255497084367731m_-7610403655000841370Apple-interchange-newl=
ine"><div class=3D""><div class=3D"">It's right in the message?<br =
class=3D""><br class=3D"">ERROR: Logfile of failure stored in:<br =
class=3D"">/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fische=
r-poky-linux/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.27709<br =
class=3D""><br class=3D"">Alex<br class=3D""></div></div></blockquote><div=
 class=3D""><br class=3D""></div><div class=3D""><br class=3D""></div><div=
 class=3D"">It's not much what stands there:</div><div class=3D""><br =
class=3D""></div><div class=3D""><div class=3D"">Downloading =
file:/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky=
-linux/core-image-minimal-dev/1.0-r0/oe-rootfs-repo/core2-64/libcap-dev_2.=
25-r0_core2-64.ipk.</div><div class=3D"">Installing coreutils-dev (8.30) =
on root</div><div class=3D"">[...]</div><div class=3D""><div =
class=3D"">Configuring update-rc.d-deupdate-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/diff to =
/usr/bin/diff.diffutils</div><div class=3D"">update-alternatives: =
Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cmp to =
/usr/bin/cmp.diffutils</div><div class=3D"">update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/bin/umount to =
/bin/umount.util-linux</div><div class=3D"">update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/[ to =
/usr/bin/lbracket.coreutils</div><div class=3D"">update-alternatives: =
Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/arch to =
/usr/bin/arch.coreutils</div><div class=3D"">update-alternatives: =
Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/basename to =
/usr/bin/basename.coreutils</div><div class=3D"">update-alternatives: =
Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/chcon to =
/usr/bin/chcon.coreutils</div><div class=3D"">update-alternatives: =
Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cksum to =
/usr/bin/cksum.coreutils</div><div class=3D"">update-alternatives: =
Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/comm to =
/usr/bin/comm.coreutils</div><div class=3D"">update-alternatives: =
Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/csplit to =
/usr/bin/csplit.coreutils</div><div class=3D"">update-alternatives: =
Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cut to =
/usr/bin/cut.coreutils</div><div class=3D"">[...]</div></div></div><div =
class=3D""><div class=3D"">update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/mkfifo to =
/usr/bin/mkfifo.coreutils</div><div class=3D"">update-alternatives: =
renaming nice link from /bin/nice to /usr/bin/nice</div><div =
class=3D"">mv: cannot stat '/bin/nice': No such file or =
directory</div><div class=3D"">update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/bin/bash to =
/bin/bash.bash</div><div class=3D"">[...]</div></div><div class=3D""><div =
class=3D"">Configuring libgmp10.</div><div class=3D"">Configuring =
coreutils.</div><div class=3D"">coreutils.postinst returned 1, marking =
as unpacked only, configuration required on target.</div><div =
class=3D"">Configuring acl.</div><div class=3D"">[...]</div><div =
class=3D""><br class=3D""></div><div class=3D"">The postinst file of =
coreutils contains only a long list of update-alternatives, as many =
other packages do either.</div><div class=3D""><br class=3D""></div><div =
class=3D"">core-image-minimal contains coreutils as well, but it doesn't =
fail the same way.</div><div class=3D""><br class=3D""></div><div =
class=3D"">Any ideas?</div></div><br class=3D""><blockquote type=3D"cite" =
class=3D""><div class=3D""><div class=3D"">2018-09-09 10:58 GMT+02:00 =
Jens Rehsack &lt;<a href=3D"mailto:rehsack@gmail.com" target=3D"_blank" =
class=3D"">rehsack@gmail.com</a>&gt;:<br class=3D""><blockquote =
type=3D"cite" class=3D"">Hi,<br class=3D""><br class=3D"">I got =
following issue when building an image for live-debugging:<br =
class=3D""><br class=3D"">ERROR: updatable-app-dev-image-1.0-r0 =
do_rootfs: Postinstall scriptlets of ['coreutils'] have failed. If the =
intention is to defer them to first boot,<br class=3D"">then please =
place them into pkg_postinst_ontarget_${PN} ().<br class=3D"">Deferring =
to first boot via 'exit 1' is no longer supported.<br class=3D"">Details =
of the failure are in =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/updatable-app-dev-image/1.0-r0/temp/log.do_rootfs.<br class=3D"">ERROR: =
updatable-app-dev-image-1.0-r0 do_rootfs: Function failed: do_rootfs<br =
class=3D"">ERROR: Logfile of failure stored in: =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/updatable-app-dev-image/1.0-r0/temp/log.do_rootfs.14358<br =
class=3D"">ERROR: Task =
(/home/sno/gpw-community-bsp/sources/meta-jens/recipes-images/images/updat=
able-app-dev-image.bb:do_rootfs) failed with exit code '1'<br =
class=3D""><br class=3D"">I can reproduce it using =
core-image-minimal-dev<br class=3D""><br class=3D"">WARNING: =
core-image-minimal-dev-1.0-r0 do_rootfs: coreutils.postinst returned 1, =
marking as unpacked only, configuration required on target.<br =
class=3D"">ERROR: core-image-minimal-dev-1.0-r0 do_rootfs: Postinstall =
scriptlets of ['coreutils'] have failed. If the intention is to defer =
them to first boot,<br class=3D"">then please place them into =
pkg_postinst_ontarget_${PN} ().<br class=3D"">Deferring to first boot =
via 'exit 1' is no longer supported.<br class=3D"">Details of the =
failure are in =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.<br class=3D"">ERROR: =
core-image-minimal-dev-1.0-r0 do_rootfs: Function failed: do_rootfs<br =
class=3D"">ERROR: Logfile of failure stored in: =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.27709<br =
class=3D"">ERROR: Task =
(/home/sno/gpw-community-bsp/sources/poky/meta/recipes-core/images/core-im=
age-minimal-dev.bb:do_rootfs) failed with exit code '1'<br class=3D""><br =
class=3D"">Any idea where to start debugging?<br class=3D""><br =
class=3D"">Best regards<br class=3D"">--<br class=3D"">Jens Rehsack - <a =
href=3D"mailto:rehsack@gmail.com" target=3D"_blank" =
class=3D"">rehsack@gmail.com</a><br class=3D""><br class=3D""><br =
class=3D"">--<br =
class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" =
class=3D"">yocto@yoctoproject.org</a><br class=3D""><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a><br =
class=3D""><br class=3D""></blockquote></div></div></blockquote></div><br =
class=3D""><div class=3D"">
<div style=3D"letter-spacing: normal; text-align: start; text-indent: =
0px; text-transform: none; white-space: normal; word-spacing: 0px; =
word-wrap: break-word;" class=3D""><div style=3D"letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; word-wrap: break-word;" class=3D""><div =
class=3D"">--&nbsp;</div><div class=3D"">Jens Rehsack - <a =
href=3D"mailto:rehsack@gmail.com" target=3D"_blank" =
class=3D"">rehsack@gmail.com</a></div></div></div>
</div>
<br class=3D""></div>-- <br class=3D"">
_______________________________________________<br class=3D"">
yocto mailing list<br class=3D"">
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" =
class=3D"">yocto@yoctoproject.org</a><br class=3D"">
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
rel=3D"noreferrer" target=3D"_blank" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a><br =
class=3D"">
</blockquote></div>
</blockquote></div>
</div></blockquote></div><br class=3D""><div class=3D"">
<div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; orphans: =
auto; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><div class=3D"">--&nbsp;</div><div class=3D"">Jens Rehsack - =
<a href=3D"mailto:rehsack@gmail.com" =
class=3D"">rehsack@gmail.com</a></div></div></div>
</div>
<br class=3D""></div></body></html>=

--Apple-Mail=_B4DA9075-D351-4D89-A676-8E75762F5B03--

--Apple-Mail=_70697E43-AFC3-4A04-92F0-1037F3F2E7BE
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEGutaqWUYV+tvC/mCRJmWrtzlCp0FAluVasgACgkQRJmWrtzl
Cp057Q//ZbFbSN8RjtGD+XM2umOfORWD428hWYllMHrPq69EufpbJVXrShN6roKY
gOa3s7cCTX0cOZVNQUR/ogRlW8TtxL187mxOlS4dnOKqVUFRbcWo2ZFKYCrDLEfA
pTPrdSxD56AjM0DJnmAgc1mXCCu87Vx1+Bsfl0jL0wNQ5VSvavHDz0nfeS4MoHAf
i2l97ztlAEFQr7j7pU9hZOUBcLxZYgTa1TqsrAffWWdkSdzgJYa8XS25kwWv+0rn
SuPMbafOFoNMr5fD5X9jSMAUHwso5weNuekEKAgMf51wPU27gSURcDhlye8ZInQh
x8hZcZSbympshyD9z7RmfqzdwadbIDWer90PtV4xYqcxEj7unUGouNas/hiZU9eQ
LmtbRYwv0+bttlp2YjSxuaV7AbCDUSTrStp7/jUWIfoyFa3MbDcGtBPA7WFurL+P
1BhWYDTBu8NjlgNSusXkOlohQ2UggKnkusEz3ibmY7Eq/zpM6eIxj/Ew7J8OTeR+
ToUVHzwPksOBBV0fxGtGfsV+I8YNenHrhRW0v1aRHvDRCd9fQqrSCM8HhdMXzCI7
pm+ApYEnlGxOiBUpFo0V9Ydnhnit8xpRuVc7A0eDQTWuSg5H0iFSk2GiQZy3c7w5
ya0Mxx6F5n4yB3b6lh+RfozjYfnb8CU+xZ8WiXI7/4wgZZWUiDo=
=ccT7
-----END PGP SIGNATURE-----

--Apple-Mail=_70697E43-AFC3-4A04-92F0-1037F3F2E7BE--
