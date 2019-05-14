Return-Path: <pascal.bach@siemens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82722E00DD5; Tue, 14 May 2019 08:39:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [192.35.17.2 listed in list.dnswl.org]
X-Greylist: delayed 797 seconds by postgrey-1.32 at yocto-www;
	Tue, 14 May 2019 08:38:59 PDT
Received: from thoth.sbs.de (thoth.sbs.de [192.35.17.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 160AAE00754
	for <yocto@yoctoproject.org>; Tue, 14 May 2019 08:38:59 -0700 (PDT)
Received: from mail1.sbs.de (mail1.sbs.de [192.129.41.35])
	by thoth.sbs.de (8.15.2/8.15.2) with ESMTPS id x4EFPeFI021137
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <yocto@yoctoproject.org>; Tue, 14 May 2019 17:25:40 +0200
Received: from DEFTHW99ERMMSX.ww902.siemens.net
	(defthw99ermmsx.ww902.siemens.net [139.22.70.142])
	by mail1.sbs.de (8.15.2/8.15.2) with ESMTPS id x4EFPeb6024459
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <yocto@yoctoproject.org>; Tue, 14 May 2019 17:25:40 +0200
Received: from DEFTHW99ER0MSX.ww902.siemens.net (139.22.70.175) by
	DEFTHW99ERMMSX.ww902.siemens.net (139.22.70.142) with Microsoft SMTP
	Server (TLS) id 14.3.435.0; Tue, 14 May 2019 17:25:40 +0200
Received: from DENBGAT9EL2MSX.ww902.siemens.net ([169.254.9.102]) by
	DEFTHW99ER0MSX.ww902.siemens.net ([139.22.70.175]) with mapi id
	14.03.0435.000; Tue, 14 May 2019 17:25:39 +0200
From: "Bach, Pascal" <pascal.bach@siemens.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Issue with useradd-staticids and sstate-cache
Thread-Index: AdUKZqfcJGPDys1IRK2w2G+N63cb9w==
Date: Tue, 14 May 2019 15:25:38 +0000
Message-ID: <355BE46A91031048906B695426A8D8E62EA61AA8@DENBGAT9EL2MSX.ww902.siemens.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [139.22.70.27]
MIME-Version: 1.0
Cc: "Freihofer, Adrian" <adrian.freihofer@siemens.com>
Subject: Issue with useradd-staticids and sstate-cache
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
X-List-Received-Date: Tue, 14 May 2019 15:39:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello

We ran into an issue when trying to switch to useradd-staticids that looks =
like it could be a bug with sstate. We are running thud.

The issue appeared on our CI builds which have a shared sstate-cache (SSTAT=
E_DIR) but otherwise start with a clean build (no tmp directory).

We tried to add static user ids by setting USERADDEXTENSION =3D "useradd-st=
aticids" and providing the required passwd and group files.
Locally everything worked fine.=20

But the CI servers produced the following error:

DEBUG: Executing shell function useradd_sysroot
/build/tmp/work/corei7-64-ccp-linux/dbus/1.12.10-r0/recipe-sysroot-native/u=
sr/sbin/useradd
Running groupadd commands...
NOTE: dbus: Performing groupadd with [--root /build/tmp/work/corei7-64-ccp-=
linux/dbus/1.12.10-r0/recipe-sysroot --gid 998 --system netdev]
groupadd: GID '998' already exists
ERROR: dbus: groupadd command did not succeed.

Looking at the /etc/group file in recipes-sysroot it contains:

systemd-network:!:998:

which obviously conflicts with what we have set in our static user group:

netdev:x:998:
systemd-network:x:994:

Looking at the logs I think the recipe-sysroots is coming from sstate cache=
 (via do_populate_sysroot_setscene task).

When running the same build with static user ids on the same CI server with=
 a different (empty) SSTATE_DIR everything works.

Now I have several questions regarding this:
1. Is switching to static user ids without cleaning sstate cache a supporte=
d uses case? The documentation mentions deleting TMPDIR but it doesn't ment=
ion sstate.
2. Is this an sstate bug that should be investigated further?
3. Does somebody know of a solution for this issue beside cleaning the enti=
re sstate cache?

Regards
Pascal

