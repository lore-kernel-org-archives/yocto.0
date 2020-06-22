Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
 by mx.groups.io with SMTP id smtpd.web12.18491.1592835532314513324
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Jun 2020 07:18:52 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.146.13, mailfrom: trevor.gamblin@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 05MEIoBC023237
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Mon, 22 Jun 2020 07:18:51 -0700 (PDT)
Received: from yow-tgamblin-fedora2.wrs.com (128.224.56.206) by
 ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
 14.3.487.0; Mon, 22 Jun 2020 07:18:50 -0700
From: "Trevor Gamblin" <trevor.gamblin@windriver.com>
To: <yocto@lists.yoctoproject.org>
CC: <richard.purdie@linuxfoundation.org>
Subject: [yocto-autobuilder2][PATCH 1/2] README-Guide: cleanup, clarify setup instructions
Date: Mon, 22 Jun 2020 10:18:47 -0400
Message-ID: <20200622141848.3461211-2-trevor.gamblin@windriver.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200622141848.3461211-1-trevor.gamblin@windriver.com>
References: <20200622141848.3461211-1-trevor.gamblin@windriver.com>
MIME-Version: 1.0
X-MIME-Autoconverted: from 8bit to quoted-printable by mail1.windriver.com id 05MEIoBC023237
Content-Type: text/plain; charset="y"
Content-Transfer-Encoding: quoted-printable

Broke the document up into more sections, and added some info
to make it clear that the same instructions for setting up
the systemd autobuilder can be used to start it manually.

Signed-off-by: Trevor Gamblin <trevor.gamblin@windriver.com>
---
 README-Guide.md | 33 ++++++++++++++++++++++++++++++---
 1 file changed, 30 insertions(+), 3 deletions(-)

diff --git a/README-Guide.md b/README-Guide.md
index 21dd7c1..83e30d0 100644
--- a/README-Guide.md
+++ b/README-Guide.md
@@ -4,6 +4,8 @@ This guide will walk through how to install a stand-alone=
 autobuilder controller
=20
 ## 1) Stand-alone Installation
=20
+### 1.1) Basic Requirements
+
 The final outputs of this section are a controller and worker installed =
in the same server, ready for trimming back to an individual organization=
's needs.
=20
  > NOTE: The guide assumes that your host OS has the packages installed =
to support BitBake for the release(s) you are targeting.=C2=A0 Please ref=
er to the Yocto manual for those packages.
@@ -17,6 +19,8 @@ sudo pip3 install buildbot buildbot-www buildbot-waterf=
all-view buildbot-console
=20
 It is recommended to also install=C2=A0`testtools` and=C2=A0`libccpunit-=
subunit-dev` (via apt, in this case) on the worker in order=C2=A0for cert=
ain image tests to work correctly (e.g., `core-image-sato-sdk:do_testimag=
e`).
=20
+### 1.2) Creating the Autobuilder User's Directory
+
 For a new installation you will need a system user that can run Autobuil=
der2 as well as a couple of repositories: Autobuilder2 itself and a helpe=
r plugin.  As root:
=20
 ```
@@ -27,11 +31,14 @@ buildbot-worker create-worker -r --umask=3D0o22 yocto=
-worker localhost example-wor
 cd yocto-controller
 git clone=C2=A0https://git.yoctoproject.org/git/yocto-autobuilder2=C2=A0=
yoctoabb
 ln -rs yoctoabb/master.cfg master.cfg
-cd ~
+cd -
 git clone=C2=A0https://git.yoctoproject.org/git/yocto-autobuilder-helper
 chown -R pokybuild3:nogroup /home/pokybuild3
 ```
=20
+Note: depending on the configuration of your system, you may need to
+replace "nogroup" with "pokybuild3" for the last command to work.
+
  > **IMPORTANT:** In the above command you created a controller and a wo=
rker, which will attempt to join the controller using=C2=A0`pass` as the =
password.=C2=A0 Feel free to change this, knowing that if you do, you mus=
t change the controller's master configuration file to match.
=20
 At the end of this, your build user's home directory (e.g., `/home/pokyb=
uild3`) should look like this:
@@ -43,6 +50,8 @@ yocto-controller/yoctoabb
 yocto-worker
 ```
=20
+### 1.3) Customizing the Autobuilder Configuration
+
 Next, we need to update the=C2=A0`yocto-controller/yoctoabb/master.cfg` =
towards the bottom where the=C2=A0`title`,=C2=A0`titleURL`, and=C2=A0`bui=
ldbotURL` are all set.  This is also where you would specify a different =
password for binding workers to the master.
=20
 Then, we need to update the=C2=A0`yocto-controller/yoctoabb/config.py` t=
o include our worker.=C2=A0 In that file, find the line where=C2=A0`worke=
rs` is set and add:=C2=A0["example-worker"].=C2=A0=C2=A0_NOTE:_ if your w=
orker's name is different, use that here.=C2=A0 Section 3.1 discusses how=
 to further refine this list of workers.
@@ -61,9 +70,27 @@ Set=C2=A0`BASE_HOMEDIR` should be your build user's ho=
me directory.=C2=A0 (There are she
=20
  > NOTE: The way the build step is written, the worker will pull a fresh=
 copy of the helper from the server.  Therefore=C2=A0these configuration =
files must be committed to the=C2=A0`yocto-autobuilder-helper`=C2=A0repo =
location you have specified in=C2=A0`yoctoabb/config.py`=C2=A0because the=
 worker is given a build step that pulls from that repo (see=C2=A0`yoctoa=
bb/builders.py`).
=20
-Finally, as root,=C2=A0add the=C2=A0`yocto-*.service` files to=C2=A0`/li=
b/systemd/system` (See Appendix A).=C2=A0 Run: `systemctl daemon-reload`.=
=C2=A0 You should now be able to successfully start these services (e.g.,=
 `sudo systemctl start yocto-*`).=C2=A0 The controller may take up to 15 =
seconds to start.
+### 1.4) Starting the Autobuilder
+
+At this point, you can start your Autobuilder controller, worker, and
+janitor in one of two ways: using buildbot manually, or by creating
+systemd service files.
+
+#### 1.4.1) Manually Starting the Autobuilder
+
+Run the following from the pokybuild3 directory:
+
+ 1. yocto-autobuilder-helper/janitor/ab-janitor&
+ 2. buildbot start yocto-controller
+ 3. buildbot-worker start yocto-worker
+
+#### 1.4.2) Creating Service Files
+
+ 1. As root,=C2=A0add the=C2=A0`yocto-*.service` files to=C2=A0`/lib/sys=
temd/system` (See Appendix A).=C2=A0=20
+ 2. Run: `systemctl daemon-reload`.=C2=A0=20
+ 3. You should now be able to successfully start these services (e.g., `=
sudo systemctl start yocto-*`).=C2=A0The controller may take up to 15 sec=
onds to start.
=20
-### 1.1) Configuring the Worker's Hash Equivalency Server
+### 1.5) Configuring the Worker's Hash Equivalency Server
=20
 A key part of the autobuilder setup is the use of a hash equivalency
 server, which is started manually on the Yocto hosts. By default, the=20
--=20
2.26.2

