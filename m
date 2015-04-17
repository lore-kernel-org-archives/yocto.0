Return-Path: <matt.schuckmann@planar.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 208C7E008DC; Fri, 17 Apr 2015 14:26:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [63.128.21.105 listed in list.dnswl.org]
Received: from us-smtp-delivery-105.mimecast.com
	(us-smtp-delivery-105.mimecast.com [63.128.21.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4456E0085D
	for <yocto@yoctoproject.org>; Fri, 17 Apr 2015 14:26:27 -0700 (PDT)
Received: from msxbvt03.planar.net (199.244.171.48 [199.244.171.48]) by
	us-mta-8.us.mimecast.lan; Fri, 17 Apr 2015 17:26:23 -0400
Received: from MSXBEBVT12.planar.net ([::1]) by msxbvt03.planar.net ([::1])
	with mapi; Fri, 17 Apr 2015 14:23:54 -0700
From: Matt Schuckmann <Matt.Schuckmann@planar.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Fri, 17 Apr 2015 14:23:53 -0700
Thread-Topic: Problems enabling systemd
Thread-Index: AdB5VM3qf3hXHYo/Tg2PconqO9XiCg==
Message-ID: <4B07ADD556F70043925DA2E9C5D4346D2FDCA585B2@MSXBEBVT12.planar.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-MC-Unique: liSlMHIbTi2CpYoCGxis-w-6
Subject: Problems enabling systemd
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
X-List-Received-Date: Fri, 17 Apr 2015 21:26:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

I've got an image for a AM3352 system based on Dylan and Arago and I'm tryi=
ng to switch to systemd for init.=20

So far I haven't had much luck.=20
First off I'm getting different results depending on where I turn it on.=20
I'm turning it on via the following 2 lines:=20

DISTRO_FEATURES_append =3D " systemd"
VIRTUAL-RUNTIME_init_manager =3D "systemd"=20

If I place these lines in my_image.bb file I seem to get a partial install =
of systemd, systemd_udev is there and seems to run but that's about it, the=
re is no systemctrl journalctl and the sysvinit init scripts still seem to =
be called.=20

If I place these lines in either local.conf or my_distrobution.conf all of =
the systemd utility seem to get installed and systemd startups up but it's =
clearly not configured correctly. For starters the systemd dbus isn't getti=
ng created and that seems to lead to a whole host of other problems, includ=
ing journald constant spewing the following error messages:=20

[   55.926223] systemd-journald[715]: Failed to write entry, ignoring: Argu=
ment list too long
[   55.936931] systemd-journald[715]: Failed to rotate /run/log/journal/c37=
feca280b74ec583564afcc2a93f0a/system.journal: No such file or directory
[   55.950911] systemd-journald[715]: Failed to write entry, ignoring: Argu=
ment list too long
[   55.961580] systemd-journald[715]: Failed to rotate /run/log/journal/c37=
feca280b74ec583564afcc2a93f0a/system.journal: No such file or directory
[   55.975568] systemd-journald[715]: Failed to write entry, ignoring: Argu=
ment list too long
[   55.986329] systemd-journald[715]: Failed to rotate /run/log/journal/c37=
feca280b74ec583564afcc2a93f0a/system.journal: No such file or directory

I don't know if it matters but this system has no display at all, it's a st=
rictly embedded installation.=20

Can anybody make any suggestions on what might be wrong?=20

Thanks,
Matt S.=20


