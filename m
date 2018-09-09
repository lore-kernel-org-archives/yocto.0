Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87EA9E006F1; Sun,  9 Sep 2018 08:59:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rehsack[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1ABEE00460
	for <yocto@yoctoproject.org>; Sun,  9 Sep 2018 08:59:27 -0700 (PDT)
Received: by mail-wm0-f48.google.com with SMTP id f21-v6so19036414wmc.5
	for <yocto@yoctoproject.org>; Sun, 09 Sep 2018 08:59:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
	:references; bh=NZl6ewsSWyb0UCXo9RK1y8V7I1rHWiwpvsr7bK9mLqw=;
	b=YHKqNouNj/ax0MbX1QXEZjN1ITu6LCHfqWv+g8LFIW1okSrk3hBBKTfFv2qN7lBWBP
	wkwBPyvjvx1nL4LoJHXPXYMLBwCacFrJTSK77cVbzeFQ+z1/aEOmdfwFwmw1TpuoU2HF
	gJfIp3mS7ZKQSUb4/7eAJerNFS/KkqVm6JZ1AXEeIhcyHIbOkNxNUVnSnt/SWw1D6csS
	ke0mv+eCkqXAGjc+f4gZ0NClmgdreMEuZL1w6iYf9RA9KPh+Um4kxiTWxvfJKmljuu28
	l810l7jaWjFnvwfoha7ogakXX/IvIbB3dHNGgJ4IsSKsZyqOHnPH9dKz0PFSpSRLxX0g
	QKqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:mime-version:subject:date
	:in-reply-to:cc:to:references;
	bh=NZl6ewsSWyb0UCXo9RK1y8V7I1rHWiwpvsr7bK9mLqw=;
	b=VhQjQq5Mt1uAAbNygWBWr3PvOiCGdeRXZObmRkAL69XQX16UPdzyJRpiNoQ5z6RarN
	FpeGIulVC5FiW8p2x48ZZ8zf0fcqhOl9GuDYZpePbrmbfPtS8bfkmjzeODyPeuvhiN/P
	5ACpMbdGHXwcpvJK8fu3n+HPsbsG1eTBSPgEpBgzVjuSfa2RNbp7OeHLvZ+GjW3LZm87
	2L7uIRyyYr+v5HFB0g1B5MrT5BSQaF6H/esuAyaqQTBkkPx1120orCwZZAco39ZXRjAb
	jCaV+9cPplJ92mt5ma6hSkc9o2aj9IjH9LxhJ3xYPuYLXPxXTHNNYcmynltILQ7nSMlh
	qA2Q==
X-Gm-Message-State: APzg51AhillszTkoSCsUFLwkmlueoMMuwMr/PrZ6YqWRk0Biu0b11P1Q
	aq2h3rfsyIh7GSMkA8iwVCQ=
X-Google-Smtp-Source: ANB0VdZnQShpoaValZcMypOEUgUagkoJMWrMdHPDPS8v/Fkfv44nfJnDRZPnhJz/Q02NkWbtmrwbDw==
X-Received: by 2002:a1c:501:: with SMTP id 1-v6mr11051634wmf.140.1536508766753;
	Sun, 09 Sep 2018 08:59:26 -0700 (PDT)
Received: from ernie.muppets.liwing.de (b2b-78-94-80-58.unitymedia.biz.
	[78.94.80.58]) by smtp.gmail.com with ESMTPSA id
	198-v6sm23091646wmm.0.2018.09.09.08.59.24
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 09 Sep 2018 08:59:25 -0700 (PDT)
From: Jens Rehsack <rehsack@gmail.com>
Message-Id: <7F360AF5-A5DC-443C-A847-B7A323AF9D94@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Date: Sun, 9 Sep 2018 17:59:23 +0200
In-Reply-To: <CANNYZj9d8g_q9FD98JzgY-G+yAhVUkYe8JW8x_UuOEZxiOx5Kw@mail.gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
References: <0AB7262D-C22A-4543-BB67-15F3A1DB2094@gmail.com>
	<CANNYZj9d8g_q9FD98JzgY-G+yAhVUkYe8JW8x_UuOEZxiOx5Kw@mail.gmail.com>
X-Mailer: Apple Mail (2.3445.9.1)
Cc: Yocto discussion list <yocto@yoctoproject.org>
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
X-List-Received-Date: Sun, 09 Sep 2018 15:59:29 -0000
X-Groupsio-MsgNum: 42414
Content-Type: multipart/signed;
	boundary="Apple-Mail=_B73B3CDA-6921-4816-A138-373EEF558266";
	protocol="application/pgp-signature"; micalg=pgp-sha512

--Apple-Mail=_B73B3CDA-6921-4816-A138-373EEF558266
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_8A18B9CF-CAC1-4C48-8A27-23D4C007144A"

--Apple-Mail=_8A18B9CF-CAC1-4C48-8A27-23D4C007144A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



> Am 09.09.2018 um 13:15 schrieb Alexander Kanavin =
<alex.kanavin@gmail.com>:
>=20
> It's right in the message?
>=20
> ERROR: Logfile of failure stored in:
> =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.27709
>=20
> Alex


It's not much what stands there:

Downloading =
file:/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky=
-linux/core-image-minimal-dev/1.0-r0/oe-rootfs-repo/core2-64/libcap-dev_2.=
25-r0_core2-64.ipk.
Installing coreutils-dev (8.30) on root
[...]
Configuring update-rc.d-deupdate-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/diff to =
/usr/bin/diff.diffutils
update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cmp to =
/usr/bin/cmp.diffutils
update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/bin/umount to =
/bin/umount.util-linux
update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/[ to =
/usr/bin/lbracket.coreutils
update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/arch to =
/usr/bin/arch.coreutils
update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/basename to =
/usr/bin/basename.coreutils
update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/chcon to =
/usr/bin/chcon.coreutils
update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cksum to =
/usr/bin/cksum.coreutils
update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/comm to =
/usr/bin/comm.coreutils
update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/csplit to =
/usr/bin/csplit.coreutils
update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cut to =
/usr/bin/cut.coreutils
[...]
update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/mkfifo to =
/usr/bin/mkfifo.coreutils
update-alternatives: renaming nice link from /bin/nice to /usr/bin/nice
mv: cannot stat '/bin/nice': No such file or directory
update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/bin/bash to /bin/bash.bash
[...]
Configuring libgmp10.
Configuring coreutils.
coreutils.postinst returned 1, marking as unpacked only, configuration =
required on target.
Configuring acl.
[...]

The postinst file of coreutils contains only a long list of =
update-alternatives, as many other packages do either.

core-image-minimal contains coreutils as well, but it doesn't fail the =
same way.

Any ideas?

> 2018-09-09 10:58 GMT+02:00 Jens Rehsack <rehsack@gmail.com>:
>> Hi,
>>=20
>> I got following issue when building an image for live-debugging:
>>=20
>> ERROR: updatable-app-dev-image-1.0-r0 do_rootfs: Postinstall =
scriptlets of ['coreutils'] have failed. If the intention is to defer =
them to first boot,
>> then please place them into pkg_postinst_ontarget_${PN} ().
>> Deferring to first boot via 'exit 1' is no longer supported.
>> Details of the failure are in =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/updatable-app-dev-image/1.0-r0/temp/log.do_rootfs.
>> ERROR: updatable-app-dev-image-1.0-r0 do_rootfs: Function failed: =
do_rootfs
>> ERROR: Logfile of failure stored in: =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/updatable-app-dev-image/1.0-r0/temp/log.do_rootfs.14358
>> ERROR: Task =
(/home/sno/gpw-community-bsp/sources/meta-jens/recipes-images/images/updat=
able-app-dev-image.bb:do_rootfs) failed with exit code '1'
>>=20
>> I can reproduce it using core-image-minimal-dev
>>=20
>> WARNING: core-image-minimal-dev-1.0-r0 do_rootfs: coreutils.postinst =
returned 1, marking as unpacked only, configuration required on target.
>> ERROR: core-image-minimal-dev-1.0-r0 do_rootfs: Postinstall =
scriptlets of ['coreutils'] have failed. If the intention is to defer =
them to first boot,
>> then please place them into pkg_postinst_ontarget_${PN} ().
>> Deferring to first boot via 'exit 1' is no longer supported.
>> Details of the failure are in =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.
>> ERROR: core-image-minimal-dev-1.0-r0 do_rootfs: Function failed: =
do_rootfs
>> ERROR: Logfile of failure stored in: =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.27709
>> ERROR: Task =
(/home/sno/gpw-community-bsp/sources/poky/meta/recipes-core/images/core-im=
age-minimal-dev.bb:do_rootfs) failed with exit code '1'
>>=20
>> Any idea where to start debugging?
>>=20
>> Best regards
>> --
>> Jens Rehsack - rehsack@gmail.com
>>=20
>>=20
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>=20

--
Jens Rehsack - rehsack@gmail.com


--Apple-Mail=_8A18B9CF-CAC1-4C48-8A27-23D4C007144A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D""><br =
class=3D""><div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">Am 09.09.2018 um 13:15 schrieb Alexander Kanavin &lt;<a =
href=3D"mailto:alex.kanavin@gmail.com" =
class=3D"">alex.kanavin@gmail.com</a>&gt;:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div class=3D"">It's =
right in the message?<br class=3D""><br class=3D"">ERROR: Logfile of =
failure stored in:<br =
class=3D"">/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fische=
r-poky-linux/core-image-minimal-dev/1.0-r0/temp/log.do_rootfs.27709<br =
class=3D""><br class=3D"">Alex<br =
class=3D""></div></div></blockquote><div><br class=3D""></div><div><br =
class=3D""></div><div>It's not much what stands there:</div><div><br =
class=3D""></div><div><div>Downloading =
file:/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky=
-linux/core-image-minimal-dev/1.0-r0/oe-rootfs-repo/core2-64/libcap-dev_2.=
25-r0_core2-64.ipk.</div><div>Installing coreutils-dev (8.30) on =
root</div><div>[...]</div><div><div>Configuring =
update-rc.d-deupdate-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/diff to =
/usr/bin/diff.diffutils</div><div>update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cmp to =
/usr/bin/cmp.diffutils</div><div>update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/bin/umount to =
/bin/umount.util-linux</div><div>update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/[ to =
/usr/bin/lbracket.coreutils</div><div>update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/arch to =
/usr/bin/arch.coreutils</div><div>update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/basename to =
/usr/bin/basename.coreutils</div><div>update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/chcon to =
/usr/bin/chcon.coreutils</div><div>update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cksum to =
/usr/bin/cksum.coreutils</div><div>update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/comm to =
/usr/bin/comm.coreutils</div><div>update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/csplit to =
/usr/bin/csplit.coreutils</div><div>update-alternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/cut to =
/usr/bin/cut.coreutils</div><div>[...]</div></div></div><div><div>update-a=
lternatives: Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/usr/bin/mkfifo to =
/usr/bin/mkfifo.coreutils</div><div>update-alternatives: renaming nice =
link from /bin/nice to /usr/bin/nice</div><div>mv: cannot stat =
'/bin/nice': No such file or directory</div><div>update-alternatives: =
Linking =
/home/sno/gpw-community-bsp/mops-yocto-platform/tmp/work/fischer-poky-linu=
x/core-image-minimal-dev/1.0-r0/rootfs/bin/bash to =
/bin/bash.bash</div><div>[...]</div></div><div><div>Configuring =
libgmp10.</div><div>Configuring coreutils.</div><div>coreutils.postinst =
returned 1, marking as unpacked only, configuration required on =
target.</div><div>Configuring acl.</div><div>[...]</div><div><br =
class=3D""></div><div>The postinst file of coreutils contains only a =
long list of update-alternatives, as many other packages do =
either.</div><div><br class=3D""></div><div>core-image-minimal contains =
coreutils as well, but it doesn't fail the same way.</div><div><br =
class=3D""></div><div>Any ideas?</div></div><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D""><div class=3D"">2018-09-09 =
10:58 GMT+02:00 Jens Rehsack &lt;<a href=3D"mailto:rehsack@gmail.com" =
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
href=3D"mailto:rehsack@gmail.com" class=3D"">rehsack@gmail.com</a><br =
class=3D""><br class=3D""><br class=3D"">--<br =
class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br class=3D""><br=
 class=3D""></blockquote></div></div></blockquote></div><br =
class=3D""><div class=3D"">
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
<br class=3D""></body></html>=

--Apple-Mail=_8A18B9CF-CAC1-4C48-8A27-23D4C007144A--

--Apple-Mail=_B73B3CDA-6921-4816-A138-373EEF558266
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEGutaqWUYV+tvC/mCRJmWrtzlCp0FAluVQ1sACgkQRJmWrtzl
Cp1EEA//arjbOQ1TUI6ck7ts076znVBC+RhWOOTa47M9HKQZFs6kPK+FqgK++dVP
kSbvIuxvP/oHK8thPk3pZW9vEHj9dr2OcbXCaMlZW7U6uETtuhdLxJmg9Zh5HAr4
xT/vUVUSgMGIvNmHSDepT4l4o/Gb2qWEfSX5KtbnEo2sFQxVnsLZI4vn0ERnC+3n
hPQWp/TI+0loOzK+3hcZb2xFHSFnRxBsCiA5PpCKMJTIiTXcQolSaZmvaTcmPJIQ
MlsOcOxX9d39+xUP1pk/oSHku6HCsSFG99pcy92etRakxP2mx/OmkGSgROUyCJMZ
OWTQIabAtly4Brmkld2pGhy10YFvBzVm0DyrziiiN5LepLCsEOYeOrYbMdKfTfaN
try3MgU3tmiRyFyxzstMKY1bedsyJyLG0ZmR4UUmIM4BzYULS3eUWgutmkcJ3HxO
m2rMApGFCC/jmlzpgqtBJzcPsTIsYGmw5ivSOV4NdcZlxBP0GVreVNalWAsoxeZq
ZUdBemeDNu06QWiE7CPoH97kvhDi4bqggFN1mhrY2jnpyFx15WPhEr0au5Y8gxAq
y9MTIbyGkODK2UEth+k0mxInHOVPXv+66aSWH8HBRZ5AJZ5HuZbi1vm6H6bw+neH
tCSKa5GpKaYhzq656vKz8hEyREtyr1GPVeRAlTiy8ZMguk6sqvU=
=z1hh
-----END PGP SIGNATURE-----

--Apple-Mail=_B73B3CDA-6921-4816-A138-373EEF558266--
