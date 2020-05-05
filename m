Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web12.5373.1588708335593282225
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 May 2020 12:52:15 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: trevor.gamblin@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 045Jp8c0017022
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Tue, 5 May 2020 12:51:44 -0700
Received: from yow-tgamblin-fedora2.wrs.com (128.224.56.206) by
 ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
 14.3.487.0; Tue, 5 May 2020 12:51:33 -0700
From: "Trevor Gamblin" <trevor.gamblin@windriver.com>
To: <yocto@lists.yoctoproject.org>
CC: <timothy.t.orling@linux.intel.com>
Subject: [yocto][yocto-autobuilder2][PATCH] README-Guide: fix typos, add hashserv setup
Date: Tue, 5 May 2020 15:51:33 -0400
Message-ID: <20200505195133.3739946-1-trevor.gamblin@windriver.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
X-MIME-Autoconverted: from 8bit to quoted-printable by mail5.wrs.com id 045Jp8c0017022
Content-Type: text/plain; charset="y"
Content-Transfer-Encoding: quoted-printable

Added some instructions on setting up the hash equivalency server for
an autobuilder instance that operates independently of the Yocto one.
This all still assumes that the user is planning on running the controlle=
r,
worker, and janitor on the same build host, although the hash equivalency
server itself doesn't need to be.

Also made some minor changes to the list of packages to install to suppor=
t
the autobuilder on Ubuntu, since there were some typos in the package nam=
es.

Signed-off-by: Trevor Gamblin <trevor.gamblin@windriver.com>
---
 README-Guide.md | 42 ++++++++++++++++++++++++++++++++++++++----
 1 file changed, 38 insertions(+), 4 deletions(-)

diff --git a/README-Guide.md b/README-Guide.md
index 70f1433..21dd7c1 100644
--- a/README-Guide.md
+++ b/README-Guide.md
@@ -11,8 +11,8 @@ The final outputs of this section are a controller and =
worker installed in the s
 The latest version of BuildBot is written in Python 3, so installation v=
ia=C2=A0pip3:
=20
 ```
-apt install python-pip3 git build-essential python3-pip virtualenv encha=
ng npm
-sudo pip3 install buildbot buildbot-www buildbot-waterfall-view buildbot=
-console-view buildbot-grid-view
+apt install git build-essential python3-pip virtualenv enchant npm
+sudo pip3 install buildbot buildbot-www buildbot-waterfall-view buildbot=
-console-view buildbot-grid-view buildbot-worker
 ```
=20
 It is recommended to also install=C2=A0`testtools` and=C2=A0`libccpunit-=
subunit-dev` (via apt, in this case) on the worker in order=C2=A0for cert=
ain image tests to work correctly (e.g., `core-image-sato-sdk:do_testimag=
e`).
@@ -63,7 +63,41 @@ Set=C2=A0`BASE_HOMEDIR` should be your build user's ho=
me directory.=C2=A0 (There are she
=20
 Finally, as root,=C2=A0add the=C2=A0`yocto-*.service` files to=C2=A0`/li=
b/systemd/system` (See Appendix A).=C2=A0 Run: `systemctl daemon-reload`.=
=C2=A0 You should now be able to successfully start these services (e.g.,=
 `sudo systemctl start yocto-*`).=C2=A0 The controller may take up to 15 =
seconds to start.
=20
-### 1.1) Special Notes for the Worker Environment
+### 1.1) Configuring the Worker's Hash Equivalency Server
+
+A key part of the autobuilder setup is the use of a hash equivalency
+server, which is started manually on the Yocto hosts. By default, the=20
+config.json file that is pulled along with yocto-autobuilder-helper=20
+contains "BB_HASHSERVE =3D 'typhoon.yocto.io:8686'", which will likely=20
+cause a custom autobuilder instance to hang while trying to communicate=20
+with the hash equivalency server. As mentioned in the previous section,=20
+any configuration changes made need to be committed to the=20
+yocto-autobuilder-helper repo that your worker will pull from. A simple
+way to start the hash equivalency server and properly configure your
+workers is done with the following steps:
+
+1. Clone a copy of the poky distribution repo from
+   https://git.yoctoproject.org/cgit/cgit.cgi/poky/
+2. Source the oe-init-build-env script into your build directory
+3. Run "bitbake-hashserv --bind <PORT>:<IP>" from the build directory
+4. Clone a copy of
+   https://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder-helper/,
+   then create config-local.json by copying config.json (and removing=20
+   sections that aren't required). Since the contents of config-local.js=
on=20
+   are an overlay for those in config.json, this will preserve as much o=
f=20
+   the initial configuration as possible.
+5. Change the BB_HASHSERVE value in config-local.json to point to the IP=
=20
+   and port you specified in step 3
+6. Commit the changes in the local yocto-autobuilder-helper repository
+7. In <autobuilderpath>/yocto-controller/yoctoabb/config.py, change the
+   entry for "yocto-autobuilder-helper" under "repos" to point at your
+   local copy of the yocto-autobuilder-helper repository.
+
+After these steps have been taken, the workers that you start should
+attach to your local hash equivalency server and be able to complete a
+target build.
+
+### 1.2) Special Notes for the Worker Environment
=20
 The QEMU=C2=A0tap interfaces also need to be generated and owned by the =
worker's user (created above).=C2=A0 One way to this is to compile the `m=
eta/recipes-devtools/qemu/qemu-helper/tunctl.c`=C2=A0file and run it _N_ =
times on the worker's host.=C2=A0 See the related `qemu-helper-native` re=
cipe for instructions.=C2=A0 The resulting executable would be run _N_ ti=
mes (e.g., 8), so for example:=C2=A0`sudo=C2=A0tunctl -u $(id -u pokybuil=
d3) -g $(id -g pokybuild3) -t tun0`.
=20
@@ -281,4 +315,4 @@ Group=3Dnogroup
=20
 [Install]
 WantedBy=3Dmulti-user.target
-```
\ No newline at end of file
+```
--=20
2.25.4

