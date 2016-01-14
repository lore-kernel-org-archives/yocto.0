Return-Path: <scott@jumpnowtek.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A6CDE00BE8; Thu, 14 Jan 2016 07:01:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_05,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0103]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [173.203.187.118 listed in list.dnswl.org]
X-Greylist: delayed 416 seconds by postgrey-1.32 at yocto-www;
	Thu, 14 Jan 2016 07:01:41 PST
Received: from smtp118.iad3a.emailsrvr.com (smtp118.iad3a.emailsrvr.com
	[173.203.187.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1207E008C8
	for <yocto@yoctoproject.org>; Thu, 14 Jan 2016 07:01:41 -0800 (PST)
Received: from smtp31.relay.iad3a.emailsrvr.com (localhost.localdomain
	[127.0.0.1])
	by smtp31.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id
	469D7380F04
	for <yocto@yoctoproject.org>; Thu, 14 Jan 2016 09:54:45 -0500 (EST)
Received: from app1.wa-webapps.iad3a (relay-webapps.rsapps.net
	[172.27.255.140])
	by smtp31.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id
	3C047380DD0
	for <yocto@yoctoproject.org>; Thu, 14 Jan 2016 09:54:45 -0500 (EST)
X-Sender-Id: scott@jumpnowtek.com
Received: from app1.wa-webapps.iad3a (relay-webapps.rsapps.net
	[172.27.255.140]) by 0.0.0.0:25 (trex/5.5.4);
	Thu, 14 Jan 2016 09:54:45 -0500
Received: from jumpnowtek.com (localhost.localdomain [127.0.0.1])
	by app1.wa-webapps.iad3a (Postfix) with ESMTP id 299EC380045
	for <yocto@yoctoproject.org>; Thu, 14 Jan 2016 09:54:45 -0500 (EST)
Received: by apps.rackspace.com (Authenticated sender: scott@jumpnowtek.com,
	from: scott@jumpnowtek.com) 
	with HTTP; Thu, 14 Jan 2016 09:54:45 -0500 (EST)
Date: Thu, 14 Jan 2016 09:54:45 -0500 (EST)
From: "Scott Ellis" <scott@jumpnowtek.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Type: plain
X-Auth-ID: scott@jumpnowtek.com
Message-ID: <1452783285.1696717@apps.rackspace.com>
X-Mailer: webmail/11.6.10-RC
Subject: [PATCH][coreutils] Add attr build dependency
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
X-List-Received-Date: Thu, 14 Jan 2016 15:01:46 -0000
Content-Type: text/plain;charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Fixes this warning:=0A=0AWARNING: QA Issue: coreutils rdepends on libattr, =
but it isn't a build dependency? [build-deps]=0A=0ASigned-off-by: Scott Ell=
is <scott@jumpnowtek.com>=0A---=0A meta/recipes-core/coreutils/coreutils_8.=
24.bb | 2 +-=0A 1 file changed, 1 insertion(+), 1 deletion(-)=0A=0Adiff --g=
it a/meta/recipes-core/coreutils/coreutils_8.24.bb b/meta/recipes-core/core=
utils/coreutils_8.24.bb=0Aindex f042346..47a25f3 100644=0A--- a/meta/recipe=
s-core/coreutils/coreutils_8.24.bb=0A+++ b/meta/recipes-core/coreutils/core=
utils_8.24.bb=0A@@ -7,7 +7,7 @@ BUGTRACKER =3D "http://debbugs.gnu.org/core=
utils"=0A LICENSE =3D "GPLv3+"=0A LIC_FILES_CHKSUM =3D "file://COPYING;md5=
=3Dd32239bcb673463ab874e80d47fae504\=0A                     file://src/ls.c=
;beginline=3D5;endline=3D16;md5=3D38b79785ca88537b75871782a2a3c6b8"=0A-DEPE=
NDS =3D "gmp libcap"=0A+DEPENDS =3D "attr gmp libcap"=0A DEPENDS_class-nati=
ve =3D ""=0A=0A inherit autotools gettext texinfo=0A--=0A2.5.0


