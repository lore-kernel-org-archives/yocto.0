Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web11.18528.1592835581050493724
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Jun 2020 07:19:41 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: trevor.gamblin@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 05MEJ2gL028941
	(version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Mon, 22 Jun 2020 07:19:12 -0700
Received: from yow-tgamblin-fedora2.wrs.com (128.224.56.206) by
 ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
 14.3.487.0; Mon, 22 Jun 2020 07:18:51 -0700
From: "Trevor Gamblin" <trevor.gamblin@windriver.com>
To: <yocto@lists.yoctoproject.org>
CC: <richard.purdie@linuxfoundation.org>
Subject: [yocto-autobuilder2][PATCH 2/2] README-Guide: wrap lines at 80 characters
Date: Mon, 22 Jun 2020 10:18:48 -0400
Message-ID: <20200622141848.3461211-3-trevor.gamblin@windriver.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200622141848.3461211-1-trevor.gamblin@windriver.com>
References: <20200622141848.3461211-1-trevor.gamblin@windriver.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="y"
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Trevor Gamblin <trevor.gamblin@windriver.com>
---
 README-Guide.md | 454 ++++++++++++++++++++++++++++++++++++------------
 1 file changed, 341 insertions(+), 113 deletions(-)

diff --git a/README-Guide.md b/README-Guide.md
index 83e30d0..aaefd02 100644
--- a/README-Guide.md
+++ b/README-Guide.md
@@ -1,14 +1,20 @@
 # Installing and Maintaining the Yocto Autobuilder 2
=20
-This guide will walk through how to install a stand-alone autobuilder cont=
roller and worker, and then reconfigure it with new builds, etc.=C2=A0 The =
guide was written with the help of Richard Purdie under the context of a he=
adless Ubuntu 18.04.02 Server installation.
+This guide will walk through how to install a stand-alone autobuilder cont=
roller
+and worker, and then reconfigure it with new builds, etc.=C2=A0 The guide =
was written
+with the help of Richard Purdie under the context of a headless Ubuntu 18.=
04.02
+Server installation.
=20
 ## 1) Stand-alone Installation
=20
 ### 1.1) Basic Requirements
=20
-The final outputs of this section are a controller and worker installed in=
 the same server, ready for trimming back to an individual organization's n=
eeds.
+The final outputs of this section are a controller and worker installed in=
 the
+same server, ready for trimming back to an individual organization's needs.
=20
- > NOTE: The guide assumes that your host OS has the packages installed to=
 support BitBake for the release(s) you are targeting.=C2=A0 Please refer t=
o the Yocto manual for those packages.
+ > NOTE: The guide assumes that your host OS has the packages installed to
+ > support BitBake for the release(s) you are targeting.=C2=A0 Please refe=
r to the
+ > Yocto manual for those packages.
=20
 The latest version of BuildBot is written in Python 3, so installation via=
=C2=A0pip3:
=20
@@ -17,11 +23,15 @@ apt install git build-essential python3-pip virtualenv =
enchant npm
 sudo pip3 install buildbot buildbot-www buildbot-waterfall-view buildbot-c=
onsole-view buildbot-grid-view buildbot-worker
 ```
=20
-It is recommended to also install=C2=A0`testtools` and=C2=A0`libccpunit-su=
bunit-dev` (via apt, in this case) on the worker in order=C2=A0for certain =
image tests to work correctly (e.g., `core-image-sato-sdk:do_testimage`).
+It is recommended to also install=C2=A0`testtools` and=C2=A0`libccpunit-su=
bunit-dev` (via
+apt, in this case) on the worker in order=C2=A0for certain image tests to =
work
+correctly (e.g., `core-image-sato-sdk:do_testimage`).
=20
 ### 1.2) Creating the Autobuilder User's Directory
=20
-For a new installation you will need a system user that can run Autobuilde=
r2 as well as a couple of repositories: Autobuilder2 itself and a helper pl=
ugin.  As root:
+For a new installation you will need a system user that can run Autobuilde=
r2 as
+well as a couple of repositories: Autobuilder2 itself and a helper plugin.=
  As
+root:
=20
 ```
 useradd -m --system pokybuild3
@@ -39,9 +49,13 @@ chown -R pokybuild3:nogroup /home/pokybuild3
 Note: depending on the configuration of your system, you may need to
 replace "nogroup" with "pokybuild3" for the last command to work.
=20
- > **IMPORTANT:** In the above command you created a controller and a work=
er, which will attempt to join the controller using=C2=A0`pass` as the pass=
word.=C2=A0 Feel free to change this, knowing that if you do, you must chan=
ge the controller's master configuration file to match.
+ > **IMPORTANT:** In the above command you created a controller and a work=
er,
+ > which will attempt to join the controller using=C2=A0`pass` as the pass=
word.=C2=A0 Feel
+ > free to change this, knowing that if you do, you must change the contro=
ller's
+ > master configuration file to match.
=20
-At the end of this, your build user's home directory (e.g., `/home/pokybui=
ld3`) should look like this:
+At the end of this, your build user's home directory (e.g., `/home/pokybui=
ld3`)
+should look like this:
=20
 ```
 yocto-autobuilder-helper
@@ -52,23 +66,50 @@ yocto-worker
=20
 ### 1.3) Customizing the Autobuilder Configuration
=20
-Next, we need to update the=C2=A0`yocto-controller/yoctoabb/master.cfg` to=
wards the bottom where the=C2=A0`title`,=C2=A0`titleURL`, and=C2=A0`buildbo=
tURL` are all set.  This is also where you would specify a different passwo=
rd for binding workers to the master.
+Next, we need to update the=C2=A0`yocto-controller/yoctoabb/master.cfg` to=
wards the
+bottom where the=C2=A0`title`,=C2=A0`titleURL`, and=C2=A0`buildbotURL` are=
 all set.  This is
+also where you would specify a different password for binding workers to t=
he
+master.
=20
-Then, we need to update the=C2=A0`yocto-controller/yoctoabb/config.py` to =
include our worker.=C2=A0 In that file, find the line where=C2=A0`workers` =
is set and add:=C2=A0["example-worker"].=C2=A0=C2=A0_NOTE:_ if your worker'=
s name is different, use that here.=C2=A0 Section 3.1 discusses how to furt=
her refine this list of workers.
+Then, we need to update the=C2=A0`yocto-controller/yoctoabb/config.py` to =
include our
+worker.=C2=A0 In that file, find the line where=C2=A0`workers` is set and
+add:=C2=A0["example-worker"].=C2=A0=C2=A0_NOTE:_ if your worker's name is =
different, use that
+here.=C2=A0 Section 3.1 discusses how to further refine this list of worke=
rs.
=20
- > **IMPORTANT:**=C2=A0You should also take this time to edit the=C2=A0`sh=
aredrepodir` and=C2=A0`publish_dest` variables to be in your build user's h=
ome as well.=C2=A0 You will need to create these directories since the rela=
ted code that will check for if they exist _will not_ also attempt to creat=
e them (and the server will crash on start).
+ > **IMPORTANT:**=C2=A0You should also take this time to edit the=C2=A0`sh=
aredrepodir`
+ > and=C2=A0`publish_dest` variables to be in your build user's home as we=
ll.=C2=A0 You
+ > will need to create these directories since the related code that will =
check
+ > for if they exist _will not_ also attempt to create them (and the serve=
r will
+ > crash on start).
=20
-Next, if you do not want to edit the original `yocto-autobuilder-helper/co=
nfig.json`, you can overlay your own by creating, for instance,=C2=A0`yocto=
-autobuilder-helper/config-local.json`.=C2=A0 _NOTE:_ there is no way for y=
our overlay to _remove_ builders or other attributes, so this route is real=
ly more about extenending the original set of builders.
+Next, if you do not want to edit the original
+`yocto-autobuilder-helper/config.json`, you can overlay your own by creati=
ng,
+for instance,=C2=A0`yocto-autobuilder-helper/config-local.json`.=C2=A0 _NO=
TE:_ there is no
+way for your overlay to _remove_ builders or other attributes, so this rou=
te is
+really more about extenending the original set of builders.
=20
 Here are some suggestions for the sake of :
=20
- 1. In the original=C2=A0`config.json`, find all instances=C2=A0of whateve=
r `BASE_HOMEDIR`=C2=A0was set to, for example=C2=A0`/home/pokybuild3`.=C2=
=A0 Copy those variables to your=C2=A0`config-local.json`=C2=A0replace=C2=
=A0`/home/pokybuild3` with=C2=A0`${BASE_HOMEDIR}`.=C2=A0=C2=A0These will be=
 variables like=C2=A0`BUILDPERF_STATEDIR`=C2=A0and=C2=A0`EXTRAPLAINCMDS`.
-Set=C2=A0`BASE_HOMEDIR` should be your build user's home directory.=C2=A0 =
(There are shell scripts where this is assumed.)
- 2. Add `BASE_SHAREDDIR` and `BASE_PUBLISHDIR` such that they are subtrees=
 of your=C2=A0`BASE_HOMEDIR`, e.g.,=C2=A0`${BASE_HOMEDIR}/srv/autobuilder.y=
oursite.com`.
- 3. Change your=C2=A0`WEBPUBLISH_URL` to match your=C2=A0`config.py` defin=
ition for=C2=A0`buildbotURL`.
- 4. In order for this to work, you must export=C2=A0`ABHELPER_JSON=3D"conf=
ig.json config-local.json"` into the environment of the controller and jani=
tor services (the example service scripts included below already have this).
-
- > NOTE: The way the build step is written, the worker will pull a fresh c=
opy of the helper from the server.  Therefore=C2=A0these configuration file=
s must be committed to the=C2=A0`yocto-autobuilder-helper`=C2=A0repo locati=
on you have specified in=C2=A0`yoctoabb/config.py`=C2=A0because the worker =
is given a build step that pulls from that repo (see=C2=A0`yoctoabb/builder=
s.py`).
+ 1. In the original=C2=A0`config.json`, find all instances=C2=A0of whatever
+    `BASE_HOMEDIR`=C2=A0was set to, for example=C2=A0`/home/pokybuild3`.=
=C2=A0 Copy those
+    variables to your=C2=A0`config-local.json`=C2=A0replace=C2=A0`/home/po=
kybuild3`
+    with=C2=A0`${BASE_HOMEDIR}`.=C2=A0=C2=A0These will be variables
+    like=C2=A0`BUILDPERF_STATEDIR`=C2=A0and=C2=A0`EXTRAPLAINCMDS`.  Set=C2=
=A0`BASE_HOMEDIR` should
+    be your build user's home directory.=C2=A0 (There are shell scripts wh=
ere this is
+    assumed.)
+ 2. Add `BASE_SHAREDDIR` and `BASE_PUBLISHDIR` such that they are subtrees=
 of
+    your=C2=A0`BASE_HOMEDIR`, e.g.,=C2=A0`${BASE_HOMEDIR}/srv/autobuilder.=
yoursite.com`.
+ 3. Change your=C2=A0`WEBPUBLISH_URL` to match your=C2=A0`config.py` defin=
ition
+    for=C2=A0`buildbotURL`.
+ 4. In order for this to work, you must export=C2=A0`ABHELPER_JSON=3D"conf=
ig.json
+    config-local.json"` into the environment of the controller and janitor
+    services (the example service scripts included below already have this=
).
+
+ > NOTE: The way the build step is written, the worker will pull a fresh c=
opy of
+ > the helper from the server.  Therefore=C2=A0these configuration files m=
ust be
+ > committed to the=C2=A0`yocto-autobuilder-helper`=C2=A0repo location you=
 have specified
+ > in=C2=A0`yoctoabb/config.py`=C2=A0because the worker is given a build s=
tep that pulls
+ > from that repo (see=C2=A0`yoctoabb/builders.py`).
=20
 ### 1.4) Starting the Autobuilder
=20
@@ -86,21 +127,23 @@ Run the following from the pokybuild3 directory:
=20
 #### 1.4.2) Creating Service Files
=20
- 1. As root,=C2=A0add the=C2=A0`yocto-*.service` files to=C2=A0`/lib/syste=
md/system` (See Appendix A).=C2=A0=20
+ 1. As root,=C2=A0add the=C2=A0`yocto-*.service` files to=C2=A0`/lib/syste=
md/system` (See
+    Appendix A).=C2=A0=20
  2. Run: `systemctl daemon-reload`.=C2=A0=20
- 3. You should now be able to successfully start these services (e.g., `su=
do systemctl start yocto-*`).=C2=A0The controller may take up to 15 seconds=
 to start.
+ 3. You should now be able to successfully start these services (e.g., `su=
do
+    systemctl start yocto-*`).=C2=A0The controller may take up to 15 secon=
ds to
+    start.
=20
 ### 1.5) Configuring the Worker's Hash Equivalency Server
=20
-A key part of the autobuilder setup is the use of a hash equivalency
-server, which is started manually on the Yocto hosts. By default, the=20
-config.json file that is pulled along with yocto-autobuilder-helper=20
-contains "BB_HASHSERVE =3D 'typhoon.yocto.io:8686'", which will likely=20
-cause a custom autobuilder instance to hang while trying to communicate=20
-with the hash equivalency server. As mentioned in the previous section,=20
-any configuration changes made need to be committed to the=20
-yocto-autobuilder-helper repo that your worker will pull from. A simple
-way to start the hash equivalency server and properly configure your
+A key part of the autobuilder setup is the use of a hash equivalency serve=
r,
+which is started manually on the Yocto hosts. By default, the config.json =
file
+that is pulled along with yocto-autobuilder-helper contains "BB_HASHSERVE =
=3D
+'typhoon.yocto.io:8686'", which will likely cause a custom autobuilder ins=
tance
+to hang while trying to communicate with the hash equivalency server. As
+mentioned in the previous section, any configuration changes made need to =
be
+committed to the yocto-autobuilder-helper repo that your worker will pull =
from.
+A simple way to start the hash equivalency server and properly configure y=
our
 workers is done with the following steps:
=20
 1. Clone a copy of the poky distribution repo from
@@ -108,27 +151,32 @@ workers is done with the following steps:
 2. Source the oe-init-build-env script into your build directory
 3. Run "bitbake-hashserv --bind <PORT>:<IP>" from the build directory
 4. Clone a copy of
-   https://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder-helper/,
-   then create config-local.json by copying config.json (and removing=20
-   sections that aren't required). Since the contents of config-local.json=
=20
-   are an overlay for those in config.json, this will preserve as much of=
=20
-   the initial configuration as possible.
-5. Change the BB_HASHSERVE value in config-local.json to point to the IP=20
-   and port you specified in step 3
+   https://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder-helper/, t=
hen
+   create config-local.json by copying config.json (and removing sections =
that
+   aren't required). Since the contents of config-local.json are an overla=
y for
+   those in config.json, this will preserve as much of the initial configu=
ration
+   as possible.
+5. Change the BB_HASHSERVE value in config-local.json to point to the IP a=
nd
+   port you specified in step 3
 6. Commit the changes in the local yocto-autobuilder-helper repository
-7. In <autobuilderpath>/yocto-controller/yoctoabb/config.py, change the
-   entry for "yocto-autobuilder-helper" under "repos" to point at your
-   local copy of the yocto-autobuilder-helper repository.
+7. In <autobuilderpath>/yocto-controller/yoctoabb/config.py, change the en=
try
+   for "yocto-autobuilder-helper" under "repos" to point at your local cop=
y of
+   the yocto-autobuilder-helper repository.
=20
-After these steps have been taken, the workers that you start should
-attach to your local hash equivalency server and be able to complete a
-target build.
+After these steps have been taken, the workers that you start should attac=
h to
+your local hash equivalency server and be able to complete a target build.
=20
-### 1.2) Special Notes for the Worker Environment
+### 1.6) Special Notes for the Worker Environment
=20
-The QEMU=C2=A0tap interfaces also need to be generated and owned by the wo=
rker's user (created above).=C2=A0 One way to this is to compile the `meta/=
recipes-devtools/qemu/qemu-helper/tunctl.c`=C2=A0file and run it _N_ times =
on the worker's host.=C2=A0 See the related `qemu-helper-native` recipe for=
 instructions.=C2=A0 The resulting executable would be run _N_ times (e.g.,=
 8), so for example:=C2=A0`sudo=C2=A0tunctl -u $(id -u pokybuild3) -g $(id =
-g pokybuild3) -t tun0`.
+The QEMU=C2=A0tap interfaces also need to be generated and owned by the wo=
rker's user
+(created above).=C2=A0 One way to this is to compile the
+`meta/recipes-devtools/qemu/qemu-helper/tunctl.c`=C2=A0file and run it _N_=
 times on
+the worker's host.=C2=A0 See the related `qemu-helper-native` recipe for
+instructions.=C2=A0 The resulting executable would be run _N_ times (e.g.,=
 8), so for
+example:=C2=A0`sudo=C2=A0tunctl -u $(id -u pokybuild3) -g $(id -g pokybuil=
d3) -t tun0`.
=20
-Another way to create these interface is to let the build fail once, then =
issue a command like this from a user with sudo permissions on the worker:
+Another way to create these interface is to let the build fail once, then =
issue
+a command like this from a user with sudo permissions on the worker:
=20
 ```
 sudo /home/pokybuild3/yocto-worker/qemuarm/build/scripts/runqemu-gen-tapde=
vs \
@@ -137,37 +185,77 @@ sudo /home/pokybuild3/yocto-worker/qemuarm/build/scri=
pts/runqemu-gen-tapdevs \
 =C2=A0 =C2=A0 /home/pokybuild3/yocto-worker/qemuarm/build/build/tmp/sysroo=
ts-components/x86_64/qemu-helper-native/usr/bin
 ```
=20
-In the above command, we assume the a build named=C2=A0qemuarm failed.=C2=
=A0 The value of=C2=A08=C2=A0is the number of tap interfaces to create on t=
he worker.
+In the above command, we assume the a build named=C2=A0qemuarm failed.=C2=
=A0 The value
+of=C2=A08=C2=A0is the number of tap interfaces to create on the worker.
=20
 ## 2) Basics
=20
-This section is an overview of operation and a few basic configuration fil=
e relationships.  See Section 3 for more detailed instructions.
+This section is an overview of operation and a few basic configuration file
+relationships.  See Section 3 for more detailed instructions.
=20
 ### 2.1) Start / Stop the Master and Worker Services
=20
-Per the installation in Section 1, both the Master and Worker are running =
on the same host and the service files (Appendix A) maintain that assumptio=
n.  To start all services:
+Per the installation in Section 1, both the Master and Worker are running =
on the
+same host and the service files (Appendix A) maintain that assumption.  To=
 start
+all services:
=20
 ```
 sudo systemctl start yocto-controller yocto-worker yocto-janitor
 ```
=20
-Depending on your web front-end setup (reverse proxy, etc.), you should no=
w be able to access the BuildBot web UI at the address you specified in=C2=
=A0`yoctoabb/master.cfg` during the installation (e.g., https://localhost:8=
010).
+Depending on your web front-end setup (reverse proxy, etc.), you should no=
w be
+able to access the BuildBot web UI at the address you specified
+in=C2=A0`yoctoabb/master.cfg` during the installation (e.g., https://local=
host:8010).
=20
 ### 2.2) Build Schedule Types
=20
-The=C2=A0`yoctoabb/schedulers.py` defines three main types of build schedu=
les: triggerable, force, and nightly.=C2=A0 The=C2=A0`wait-quick` and=C2=A0=
`wait-full` schedules are triggerable, and each has a specific list of buil=
ders that are defined in the `yoctoabb/config.py`=C2=A0variables: `trigger_=
builders_wait_quick`=C2=A0and=C2=A0`trigger_builders_wait_full`, respective=
ly.=C2=A0 Each of the builders in those lists also have a force schedule fo=
r manual runs.=C2=A0 To run all of them, the=C2=A0`a-quick` and=C2=A0`a-ful=
l` schedules exist; those names are also the names of the builders.=C2=A0 F=
inally, there is one nightly build defined which runs the=C2=A0a-quick buil=
der against the=C2=A0`HEAD` of the various master branches to help maintain=
 freshness of the shared state and downloads caches.
+The=C2=A0`yoctoabb/schedulers.py` defines three main types of build schedu=
les:
+triggerable, force, and nightly.=C2=A0 The=C2=A0`wait-quick` and=C2=A0`wai=
t-full` schedules are
+triggerable, and each has a specific list of builders that are defined in =
the
+`yoctoabb/config.py`=C2=A0variables:
+`trigger_builders_wait_quick`=C2=A0and=C2=A0`trigger_builders_wait_full`, =
respectively.=C2=A0
+Each of the builders in those lists also have a force schedule for manual =
runs.=C2=A0
+To run all of them, the=C2=A0`a-quick` and=C2=A0`a-full` schedules exist; =
those names are
+also the names of the builders.=C2=A0 Finally, there is one nightly build =
defined
+which runs the=C2=A0a-quick builder against the=C2=A0`HEAD` of the various=
 master branches
+to help maintain freshness of the shared state and downloads caches.
=20
 ### 2.3) Running a Triggered Build Manually
=20
-Assuming you have the controller and worker running, log into the BuildBot=
 web server on port 8010.=C2=A0 Click on the=C2=A0Builds,=C2=A0Builders lef=
t menu.=C2=A0 It should populate the main panel (right) with a table showin=
g all builders defined between the=C2=A0`yoctoabb/config.py` and the combin=
ation of any config JSON files loaded for=C2=A0`yocto-autobuilder-helper` (=
e.g., `config.json`).=C2=A0 The status of associated workers is shown with =
a bubble graph on the far right of this panel.=C2=A0 One should be green,=
=C2=A0 yours, because it's associated in=C2=A0`yoctoabb/config.py`,=C2=A0`b=
uilder_to_workers` map to that build by being one of the default builders.
-
-Select one of the builders, for example=C2=A0`beaglebone`.=C2=A0 At the to=
p right, you will see=C2=A0_Force Build_=C2=A0(this is a force because all =
builders in the `yoctoabb/config.py` `subbuilders` list get a _Force=C2=A0S=
cheduler_, per=C2=A0`yoctoabb/schedulers.py`).=C2=A0 Click that button and =
fill in your name (as=C2=A0_you <your@email.com>_) and a reason for forcing=
 a build.=C2=A0 Scroll to the bottom, setting branches and revisions you wa=
nt along the way, and press=C2=A0_Start Build_.
-
-Your browser will automatically navigate to the builder's status as the wo=
rker begins executing the build.
+Assuming you have the controller and worker running, log into the BuildBot=
 web
+server on port 8010.=C2=A0 Click on the=C2=A0Builds,=C2=A0Builders left me=
nu.=C2=A0 It should
+populate the main panel (right) with a table showing all builders defined
+between the=C2=A0`yoctoabb/config.py` and the combination of any config JS=
ON files
+loaded for=C2=A0`yocto-autobuilder-helper` (e.g., `config.json`).=C2=A0 Th=
e status of
+associated workers is shown with a bubble graph on the far right of this p=
anel.=C2=A0
+One should be green,=C2=A0 yours, because it's associated
+in=C2=A0`yoctoabb/config.py`,=C2=A0`builder_to_workers` map to that build =
by being one of
+the default builders.
+
+Select one of the builders, for example=C2=A0`beaglebone`.=C2=A0 At the to=
p right, you
+will see=C2=A0_Force Build_=C2=A0(this is a force because all builders in =
the
+`yoctoabb/config.py` `subbuilders` list get a _Force=C2=A0Scheduler_,
+per=C2=A0`yoctoabb/schedulers.py`).=C2=A0 Click that button and fill in yo=
ur name (as=C2=A0_you
+<your@email.com>_) and a reason for forcing a build.=C2=A0 Scroll to the b=
ottom,
+setting branches and revisions you want along the way, and press=C2=A0_Sta=
rt Build_.
+
+Your browser will automatically navigate to the builder's status as the wo=
rker
+begins executing the build.
=20
 ### 2.4) Shared State and Downloads Mirrors
=20
-One of the main useful features of having this build server is to speed up=
 builds at development workstations.=C2=A0 Both of these are defined by the=
=C2=A0`yocto-autobuilder-json/config.json` (or your extra configuration if =
following the standalone installation instructions above).=C2=A0 The main v=
ariables are=C2=A0`BASE_SHAREDIR` and=C2=A0`BASE_PUBLISHDIR`.=C2=A0 These t=
wo are re-used in the bitbake configuration variables=C2=A0DLDIR and=C2=A0S=
STATEDIR to help individual builds re-use prior work.=C2=A0 The default is =
to append=C2=A0`BASE_SHAREDDIR` with=C2=A0`current_sources` and=C2=A0`pub/s=
state`, respectively.  These paths can be shared by NFS, HTTPS, etc.  In th=
e example below, we're using https and assuming that a static file server h=
as been configured to share the former under `yocto_downloads` and the latt=
er as `yocto_sstate`.  To use these at a developer's station, set the follo=
wing in the `build/conf/local.conf`:
+One of the main useful features of having this build server is to speed up
+builds at development workstations.=C2=A0 Both of these are defined by
+the=C2=A0`yocto-autobuilder-json/config.json` (or your extra configuration=
 if
+following the standalone installation instructions above).=C2=A0 The main =
variables
+are=C2=A0`BASE_SHAREDIR` and=C2=A0`BASE_PUBLISHDIR`.=C2=A0 These two are r=
e-used in the bitbake
+configuration variables=C2=A0DLDIR and=C2=A0SSTATEDIR to help individual b=
uilds re-use
+prior work.=C2=A0 The default is to append=C2=A0`BASE_SHAREDDIR` with=C2=
=A0`current_sources`
+and=C2=A0`pub/sstate`, respectively.  These paths can be shared by NFS, HT=
TPS, etc.
+In the example below, we're using https and assuming that a static file se=
rver
+has been configured to share the former under `yocto_downloads` and the la=
tter
+as `yocto_sstate`.  To use these at a developer's station, set the followi=
ng in
+the `build/conf/local.conf`:
=20
 ```
 SSTATE_MIRRORS ?=3D "file://.* http://your.site.com/yocto_sstate/PATH;down=
loadfilename=3DPATH \n"
@@ -179,99 +267,239 @@ PREMIRRORS_prepend =3D "\
 "
 ```
=20
-The developers have stated that this single shared state and downloads cac=
he can be shared across multiple tagged versions of Poky, so there is no ne=
ed to maintain separate paths for different releases.
+The developers have stated that this single shared state and downloads cac=
he can
+be shared across multiple tagged versions of Poky, so there is no need to
+maintain separate paths for different releases.
=20
- > Full Disclosure: In practice, the author has not seen a single successf=
ul cache query from the shared state mirror, as seen through the web server=
 logs, despite using the same revision of branches at the server and deskto=
p.  YMMV.=C2=A0 The downloads mirror however worked as expected.
+ > Full Disclosure: In practice, the author has not seen a single successf=
ul
+ > cache query from the shared state mirror, as seen through the web server
+ > logs, despite using the same revision of branches at the server and des=
ktop.
+ > YMMV.=C2=A0 The downloads mirror however worked as expected.
=20
 ### 2.5) Clearing Build History, Old Workers
=20
- > _TODO:_ This is really heavy-handed; it removes all history.=C2=A0 You =
could try your luck at directly editing the state.sqlite file.
+ > _TODO:_ This is really heavy-handed; it removes all history.=C2=A0 You =
could try
+ > your luck at directly editing the state.sqlite file.
=20
-All of the build history and worker related information is stored in a dat=
abase,=C2=A0`yocto-controller/state.sqlite`.=C2=A0 From the=C2=A0`yocto-con=
troller` directory, while it isn't runnign, delete the database and recreat=
e it:=C2=A0`buildbot upgrade-master`.  Then restart the controller.
+All of the build history and worker related information is stored in a
+database,=C2=A0`yocto-controller/state.sqlite`.=C2=A0 From the=C2=A0`yocto=
-controller`
+directory, while it isn't runnign, delete the database and recreate
+it:=C2=A0`buildbot upgrade-master`.  Then restart the controller.
=20
 # 3) Configuration
=20
-As mentioned before, BuildBot is the underlying tool that Autobuilder2 use=
s.=C2=A0 It's a python3-based framework that consists of a master and multi=
ple workers that may be remotely connected.=C2=A0 Per this guide, both are =
installed on the same host under `/home/pokybuild3`.
-
-The configuration for the controller is in `/home/pokybuild3/yocto-control=
ler`.=C2=A0 This directory also contains the Yocto Project's Autobuilder so=
urce code (in=C2=A0`yoctoabb`) and master configuration file,=C2=A0`master.=
cfg`.=C2=A0 The `master.cfg` is a python file that pulls in other configura=
tion data from the Autobuilder source code directory.=C2=A0 Based on commen=
ts in the `yoctoabb/master.cfg`, provisions have been made so that you can =
run `buildbot sighup` from this directory, which would cause the configurat=
ion to reload without taking down the controller.=C2=A0 This configuration =
data file primarily controls the web server and what port(s) are open for w=
orkers.=C2=A0 It also controls authentication and notification services (by=
 way of importing `services.py` and=C2=A0`www.py`, see=C2=A0BuildBot's own =
documentation for answers).
-
-The main=C2=A0`yoctoabb/config.py` pairs up with the=C2=A0`yocto-autobuild=
er-helper/config.json`=C2=A0to define the relationship between what builds =
exist and what those builds _do_ in terms of steps to run.=C2=A0 There is a=
 lot of duplication between these two scripts that must be managed manually=
, especially as it pertains to builders, the layer repositories each needs,=
 and the locations of those layer repositories.
-
-Another interesting thing about this configuration is that only one branch=
 of the=C2=A0`yocto-autobuilder-helper` is ever pulled even if you manually=
 specify a different branch for a non-triggered build.  For example, manual=
ly Force Building `beaglebone` does not give you a chance to change yocto-a=
utobuilder-helper branches but doing the same for `a-quick` would.  So if y=
ou have a repository that contains multiple layers and for=C2=A0`rocko` you=
 need one of them, but for=C2=A0`thud`=C2=A0you need 2, your builder will f=
ail if you run the build on `rocko` because the worker will try to use the =
`thud` build instructions...the only ones it knows unless you are using mul=
tiple branches of `yocto-autobuilder-helper` (`thud`, `warrior`, etc.) and =
running `a-quick` forced builds or configured additional `nightly` builds f=
or different branchs.  There is also no way, from a single configuration JS=
ON stack, to specify a builder being only compatible with a specific layer =
branch other than having multiple branches and omitting that builder from t=
he incompatible branches, then forcing a trigger build.  This is controlled=
 by `schedulers.py`, so it's not a limitation; instead consider this a _fla=
g_ of something you probably want to change if you have to maintain multipl=
e branches in regression.
-
-The remaining portion of this section will focus on the changes required t=
o the various configuration files to accomplish specific tasks, which will =
hopefully provide some guardrails and sign posts along the way for when you=
 do something wrong.
+As mentioned before, BuildBot is the underlying tool that Autobuilder2 use=
s.=C2=A0
+It's a python3-based framework that consists of a master and multiple work=
ers
+that may be remotely connected.=C2=A0 Per this guide, both are installed o=
n the same
+host under `/home/pokybuild3`.
+
+The configuration for the controller is in `/home/pokybuild3/yocto-control=
ler`.=C2=A0
+This directory also contains the Yocto Project's Autobuilder source code
+(in=C2=A0`yoctoabb`) and master configuration file,=C2=A0`master.cfg`.=C2=
=A0 The `master.cfg`
+is a python file that pulls in other configuration data from the Autobuild=
er
+source code directory.=C2=A0 Based on comments in the `yoctoabb/master.cfg=
`,
+provisions have been made so that you can run `buildbot sighup` from this
+directory, which would cause the configuration to reload without taking do=
wn the
+controller.=C2=A0 This configuration data file primarily controls the web =
server and
+what port(s) are open for workers.=C2=A0 It also controls authentication a=
nd
+notification services (by way of importing `services.py` and=C2=A0`www.py`,
+see=C2=A0BuildBot's own documentation for answers).
+
+The main=C2=A0`yoctoabb/config.py` pairs up with
+the=C2=A0`yocto-autobuilder-helper/config.json`=C2=A0to define the relatio=
nship between
+what builds exist and what those builds _do_ in terms of steps to run.=C2=
=A0 There is
+a lot of duplication between these two scripts that must be managed manual=
ly,
+especially as it pertains to builders, the layer repositories each needs, =
and
+the locations of those layer repositories.
+
+Another interesting thing about this configuration is that only one branch=
 of
+the=C2=A0`yocto-autobuilder-helper` is ever pulled even if you manually sp=
ecify a
+different branch for a non-triggered build.  For example, manually Force
+Building `beaglebone` does not give you a chance to change
+yocto-autobuilder-helper branches but doing the same for `a-quick` would. =
 So if
+you have a repository that contains multiple layers and for=C2=A0`rocko` y=
ou need one
+of them, but for=C2=A0`thud`=C2=A0you need 2, your builder will fail if yo=
u run the build
+on `rocko` because the worker will try to use the `thud` build
+instructions...the only ones it knows unless you are using multiple branch=
es of
+`yocto-autobuilder-helper` (`thud`, `warrior`, etc.) and running `a-quick`
+forced builds or configured additional `nightly` builds for different bran=
chs.
+There is also no way, from a single configuration JSON stack, to specify a
+builder being only compatible with a specific layer branch other than havi=
ng
+multiple branches and omitting that builder from the incompatible branches=
, then
+forcing a trigger build.  This is controlled by `schedulers.py`, so it's n=
ot a
+limitation; instead consider this a _flag_ of something you probably want =
to
+change if you have to maintain multiple branches in regression.
+
+The remaining portion of this section will focus on the changes required t=
o the
+various configuration files to accomplish specific tasks, which will hopef=
ully
+provide some guardrails and sign posts along the way for when you do somet=
hing
+wrong.
=20
 ## 3.1) Repositories
=20
-There are two main areas where repositories are defined.=C2=A0 The first i=
s in=C2=A0`yoctoabb/config.py`, which provides builders with a default set =
of repositories stored locally at the worker.=C2=A0 The second place is mor=
e nuanced, in your=C2=A0`config.json` stack of the=C2=A0`yocto-autobuilder-=
helper`=C2=A0under the=C2=A0`repo-defaults`.=C2=A0=C2=A0This map defines a =
duplicate of that information, which is consumed by the=C2=A0layer-config=
=C2=A0and run-config=C2=A0scripts by way of the `NEEDREPOS` and `ADDLAYER` =
lists on a given template or override.
-
-The=C2=A0`NEEDREPOS` behavior ensures that the copies of your meta layers =
are organized in the `BUILDDIR/../` correctly, and then if=C2=A0`no-layer-a=
dd` is set to=C2=A0`false`=C2=A0(or omitted), will automatically call=C2=A0=
`bitbake-layers add-layer...` to update your build's=C2=A0`bblayers.conf` f=
ile.=C2=A0 This process goes in order of build dependencies.=C2=A0 The cont=
ent of=C2=A0`NEEDREPOS` can be either a repo that is a layer, or a repo tha=
t contains multiple layers.=C2=A0 In the latter case, specifying=C2=A0`meta=
-openembedded/meta-oe` will copy the whole repo=C2=A0`meta-openembedded` an=
d then call=C2=A0`bitbake-layers add-layer...` for only the sub-layer,=C2=
=A0`meta-oe` (assuming you've set `no-layer-add` to `false` for that repo; =
the default is `true`).
-
-The=C2=A0`ADDLAYER` behavior is similar but is processed during the=C2=A0`=
run-config` step that executes all of your steps.=C2=A0 You can add this va=
riable at the _step_ level (it does not work at the builder level; `run-con=
fig` doesn't pick it up).=C2=A0 Each list item in this variable takes the f=
orm:=C2=A0`${BUILDDIR}/../path/to/layer`.
-
- > **IMPORTANT:** The order of these two lists matter!=C2=A0 If you add a =
layer that has unmet dependencies on other layers (i.e., they're not in `bb=
layers.conf` yet), the next repo/layer in the list will fail to add because=
 you've technically broken your layer configuration (bitbake cannot parse i=
t because dependencies are missing).
-
- > **IMPORTANT:**=C2=A0If you allowed `NEEDREPOS` to update your `bblayers=
.conf` file, then you do not need to use `ADDLAYER` as it'll be redundant.
+There are two main areas where repositories are defined.=C2=A0 The first is
+in=C2=A0`yoctoabb/config.py`, which provides builders with a default set of
+repositories stored locally at the worker.=C2=A0 The second place is more =
nuanced, in
+your=C2=A0`config.json` stack of the=C2=A0`yocto-autobuilder-helper`=C2=A0=
under
+the=C2=A0`repo-defaults`.=C2=A0=C2=A0This map defines a duplicate of that =
information, which is
+consumed by the=C2=A0layer-config=C2=A0and run-config=C2=A0scripts by way =
of the `NEEDREPOS`
+and `ADDLAYER` lists on a given template or override.
+
+The=C2=A0`NEEDREPOS` behavior ensures that the copies of your meta layers =
are
+organized in the `BUILDDIR/../` correctly, and then if=C2=A0`no-layer-add`=
 is set
+to=C2=A0`false`=C2=A0(or omitted), will automatically call=C2=A0`bitbake-l=
ayers add-layer...`
+to update your build's=C2=A0`bblayers.conf` file.=C2=A0 This process goes =
in order of
+build dependencies.=C2=A0 The content of=C2=A0`NEEDREPOS` can be either a =
repo that is a
+layer, or a repo that contains multiple layers.=C2=A0 In the latter case,
+specifying=C2=A0`meta-openembedded/meta-oe` will copy the whole
+repo=C2=A0`meta-openembedded` and then call=C2=A0`bitbake-layers add-layer=
...` for only
+the sub-layer,=C2=A0`meta-oe` (assuming you've set `no-layer-add` to `fals=
e` for that
+repo; the default is `true`).
+
+The=C2=A0`ADDLAYER` behavior is similar but is processed during the=C2=A0`=
run-config` step
+that executes all of your steps.=C2=A0 You can add this variable at the _s=
tep_ level
+(it does not work at the builder level; `run-config` doesn't pick it up).=
=C2=A0 Each
+list item in this variable takes the form:=C2=A0`${BUILDDIR}/../path/to/la=
yer`.
+
+ > **IMPORTANT:** The order of these two lists matter!=C2=A0 If you add a =
layer that
+ > has unmet dependencies on other layers (i.e., they're not in `bblayers.=
conf`
+ > yet), the next repo/layer in the list will fail to add because you've
+ > technically broken your layer configuration (bitbake cannot parse it be=
cause
+ > dependencies are missing).
+
+ > **IMPORTANT:**=C2=A0If you allowed `NEEDREPOS` to update your `bblayers=
.conf`
+ > file, then you do not need to use `ADDLAYER` as it'll be redundant.
=20
 ## 3.2) Workers
=20
-As stated previously, this is exclusively defined by the=C2=A0`yoctoabb/co=
nfig.py` file.=C2=A0 In it, there is a section of workers that culminate in=
to a final map that defines build names vs. compatible workers, with=C2=A0d=
efault=C2=A0carrying the generic meaning that it should be applicable to an=
y build.=C2=A0 Ultimately the list of workers defined in this configuration=
 can be also thought of as _users_ of the system because a worker will fail=
 to join the master if it's not in this list or provides an incorrect passw=
ord (variable: `worker_password`).
+As stated previously, this is exclusively defined by the=C2=A0`yoctoabb/co=
nfig.py`
+file.=C2=A0 In it, there is a section of workers that culminate into a fin=
al map that
+defines build names vs. compatible workers, with=C2=A0default=C2=A0carryin=
g the generic
+meaning that it should be applicable to any build.=C2=A0 Ultimately the li=
st of
+workers defined in this configuration can be also thought of as _users_ of=
 the
+system because a worker will fail to join the master if it's not in this l=
ist or
+provides an incorrect password (variable: `worker_password`).
=20
-You will also notice in the standard configuration file that there are wor=
kers in the cluster for CentOS and Ubuntu, etc. since they're testing build=
 host OS -specific things.
+You will also notice in the standard configuration file that there are wor=
kers
+in the cluster for CentOS and Ubuntu, etc. since they're testing build hos=
t OS
+-specific things.
=20
-If you would like to trim this list down to just the workers you have at y=
our site:
+If you would like to trim this list down to just the workers you have at y=
our
+site:
=20
- 1. You can safely remove any of the `workers_*`=C2=A0lists since they're =
only used locally to the=C2=A0`config.py`.
- 2. Retain the following related variables:=C2=A0`workers`,=C2=A0`all_work=
ers`,=C2=A0`builder_to_workers`.  They're used elsewhere.
+ 1. You can safely remove any of the `workers_*`=C2=A0lists since they're =
only used
+    locally to the=C2=A0`config.py`.
+ 2. Retain the following related
+    variables:=C2=A0`workers`,=C2=A0`all_workers`,=C2=A0`builder_to_worker=
s`.  They're used
+    elsewhere.
=20
 ## 3.3) Builds and Builders
=20
-This section details how to configure new builds, and thus, new builders.=
=C2=A0 There are two main files involved in this relationship:=C2=A0`yoctoa=
bb/config.py` and the configuration JSON files you specified for=C2=A0`yoct=
o-autobuilder-helper`.=C2=A0 Only builds that exist in both places will act=
ually be visible and usable at the UI.=C2=A0 The remaining subsections belo=
w are general guidelines for how these various files interact.
+This section details how to configure new builds, and thus, new builders.=
=C2=A0 There
+are two main files involved in this relationship:=C2=A0`yoctoabb/config.py=
` and the
+configuration JSON files you specified for=C2=A0`yocto-autobuilder-helper`=
.=C2=A0 Only
+builds that exist in both places will actually be visible and usable at th=
e UI.=C2=A0
+The remaining subsections below are general guidelines for how these vario=
us
+files interact.
=20
 **Removing Builders:**
=20
- 1. You must keep the=C2=A0`buildertorepos` and=C2=A0`repos` maps.=C2=A0 T=
he former provides a top-level set of builders and must include a key for=
=C2=A0default.=C2=A0 This map indicates which source code repositories to i=
nstall for a given builder by way of a repository name.=C2=A0 The complimen=
t to this map is=C2=A0`repos`, the list of repository locations and revisio=
ns.=C2=A0
- 2. You must keep the=C2=A0`subbuilders`=C2=A0list because it is used by=
=C2=A0`yoctoabb/builders.py` and=C2=A0`yoctoabb/schedulers.py`.
- 3. You must keep the=C2=A0`a-quick` and=C2=A0`a-full` builds unless you a=
re also modifying=C2=A0`yoctoabb/builders.py`, `generate-test-result-index.=
py`, and `schedulers.py`=C2=A0to remove those references as well.
- 4. For any build you remove from `yoctoabb/config.py`, you should also re=
move in your=C2=A0`yocto-autobuilder-helper/config.json` file (if not purel=
y for the sake of being tidy).
+ 1. You must keep the=C2=A0`buildertorepos` and=C2=A0`repos` maps.=C2=A0 T=
he former provides a
+    top-level set of builders and must include a key for=C2=A0default.=C2=
=A0 This map
+    indicates which source code repositories to install for a given builde=
r by
+    way of a repository name.=C2=A0 The compliment to this map is=C2=A0`re=
pos`, the list
+    of repository locations and revisions.=C2=A0
+ 2. You must keep the=C2=A0`subbuilders`=C2=A0list because it is used
+    by=C2=A0`yoctoabb/builders.py` and=C2=A0`yoctoabb/schedulers.py`.
+ 3. You must keep the=C2=A0`a-quick` and=C2=A0`a-full` builds unless you a=
re also
+    modifying=C2=A0`yoctoabb/builders.py`, `generate-test-result-index.py`=
, and
+    `schedulers.py`=C2=A0to remove those references as well.
+ 4. For any build you remove from `yoctoabb/config.py`, you should also re=
move
+    in your=C2=A0`yocto-autobuilder-helper/config.json` file (if not purel=
y for the
+    sake of being tidy).
=20
 **Adding Builders:**
=20
- 1. If the build will only be manually run: add it to the `yoctoabb/config=
.py`=C2=A0subbuilders list.
- 2. If the build will be run by either of the default=C2=A0`a-quick` or=C2=
=A0`a-full` builds, add the name instead to the=C2=A0`trigger_builders_wait=
_[quick|full]` list of your choice.=C2=A0 If you want both, add it to `the=
=C2=A0trigger_builders_wait_shared` list.
- 3. If you have added a build that has requirements differing from the=C2=
=A0`yocto-autobuilder-helper/config.json`=C2=A0`defaults`=C2=A0map, create =
an entry for the builder in `the=C2=A0overrides` map fill in the details (s=
ee below for more suggestions).
- 4. If the build has a set of layer repositories that differs from the=C2=
=A0`default` list in the=C2=A0`yoctoabb/config.py`=C2=A0`buildertorepos`=C2=
=A0map, you need to add a reference to its needs in that map.
- 5. If the the repositories the builder requires are not listed in the=C2=
=A0`yoctoabb/config.py` `repos` map, add it under the same name with its de=
fault branch.
- 6. If you have added repositories, you should also add it to the=C2=A0`yo=
cto-autobuilder-helper/config.json`=C2=A0`repo-defaults` map.
- 7. You should create `an=C2=A0overrides` for the builder that specifies=
=C2=A0`NEEDSREPOS` to identify those layers and=C2=A0`ADDLAYER` for any lay=
ers that have the=C2=A0`no-layer-add` flag set to=C2=A0`false` in the=C2=A0=
`repo-defaults` map.
- 8. If these needs are shared among multiple builders, consider adding the=
se changes instead to a new, named template in the=C2=A0`templates`=C2=A0ma=
p and then for each affected builder, set the value of its `overrides` `TEM=
PLATE` to that named template.
+ 1. If the build will only be manually run: add it to the
+    `yoctoabb/config.py`=C2=A0subbuilders list.
+ 2. If the build will be run by either of the default=C2=A0`a-quick` or=C2=
=A0`a-full`
+    builds, add the name instead to the=C2=A0`trigger_builders_wait_[quick=
|full]`
+    list of your choice.=C2=A0 If you want both, add it to
+    `the=C2=A0trigger_builders_wait_shared` list.
+ 3. If you have added a build that has requirements differing from
+    the=C2=A0`yocto-autobuilder-helper/config.json`=C2=A0`defaults`=C2=A0m=
ap, create an entry
+    for the builder in `the=C2=A0overrides` map fill in the details (see b=
elow for
+    more suggestions).
+ 4. If the build has a set of layer repositories that differs from the=C2=
=A0`default`
+    list in the=C2=A0`yoctoabb/config.py`=C2=A0`buildertorepos`=C2=A0map, =
you need to add a
+    reference to its needs in that map.
+ 5. If the the repositories the builder requires are not listed in
+    the=C2=A0`yoctoabb/config.py` `repos` map, add it under the same name =
with its
+    default branch.
+ 6. If you have added repositories, you should also add it to
+    the=C2=A0`yocto-autobuilder-helper/config.json`=C2=A0`repo-defaults` m=
ap.
+ 7. You should create `an=C2=A0overrides` for the builder that specifies=
=C2=A0`NEEDSREPOS`
+    to identify those layers and=C2=A0`ADDLAYER` for any layers that have
+    the=C2=A0`no-layer-add` flag set to=C2=A0`false` in the=C2=A0`repo-def=
aults` map.
+ 8. If these needs are shared among multiple builders, consider adding the=
se
+    changes instead to a new, named template in the=C2=A0`templates`=C2=A0=
map and then for
+    each affected builder, set the value of its `overrides` `TEMPLATE` to =
that
+    named template.
=20
 **Anatomy: _overrides_ and _templates_**
=20
-All of these guidelines pertain to the=C2=A0`yocto-autobuilder-helper/conf=
ig.json` file (and any overlay configurations you have).=C2=A0 The main dif=
ference between these two items is that an=C2=A0`overrides` entry can speci=
fy=C2=A0the `TEMPLATE` variable, the value of which must exist in the=C2=A0=
`templates` map.=C2=A0 There is no provision for template stacking (i.e., a=
dding=C2=A0`TEMPLATE` to a template has no effect).=C2=A0 Otherwise as the =
names imply the=C2=A0`overrides`=C2=A0values will take precedence over any =
named template and the=C2=A0`defaults`.
+All of these guidelines pertain to the=C2=A0`yocto-autobuilder-helper/conf=
ig.json`
+file (and any overlay configurations you have).=C2=A0 The main difference =
between
+these two items is that an=C2=A0`overrides` entry can specify=C2=A0the `TE=
MPLATE`
+variable, the value of which must exist in the=C2=A0`templates` map.=C2=A0=
 There is no
+provision for template stacking (i.e., adding=C2=A0`TEMPLATE` to a templat=
e has no
+effect).=C2=A0 Otherwise as the names imply the=C2=A0`overrides`=C2=A0valu=
es will take
+precedence over any named template and the=C2=A0`defaults`.
=20
  > NOTE: This is not a comprehensive list.
=20
  1. Top-level variables:
-   1. `BUILDINFO`=C2=A0=E2=80=93 boolean=C2=A0=E2=80=93 If enabled, the va=
lues of `BUILDINFOVARS` are added to the list of variables in the build env=
ironment.
-   2. `BUILDHISTORY`=C2=A0=E2=80=93 boolean=C2=A0=E2=80=93 Enables=C2=A0`I=
NHERIT +=3D 'buildhistory'` BitBake behavior.
-   3. `BUILDINFOVARS`=C2=A0=E2=80=93 list=C2=A0=E2=80=93 For inheriting fr=
om=C2=A0`image-buildinfo`=C2=A0to save off additional build variables.
+   1. `BUILDINFO`=C2=A0=E2=80=93 boolean=C2=A0=E2=80=93 If enabled, the va=
lues of `BUILDINFOVARS` are
+      added to the list of variables in the build environment.
+   2. `BUILDHISTORY`=C2=A0=E2=80=93 boolean=C2=A0=E2=80=93 Enables=C2=A0`I=
NHERIT +=3D 'buildhistory'` BitBake
+      behavior.
+   3. `BUILDINFOVARS`=C2=A0=E2=80=93 list=C2=A0=E2=80=93 For inheriting fr=
om=C2=A0`image-buildinfo`=C2=A0to save off
+      additional build variables.
    4. `DISTRO`=C2=A0=E2=80=93 string=C2=A0=E2=80=93 Distro conf to use fro=
m the layer in the build.
-   5. `DLDIR`=C2=A0=E2=80=93 string=C2=A0=E2=80=93=C2=A0Set the bitbake `D=
L_DIR` to where downloads should be stored (e.g., `"DL_DIR =3D 'some_path'"=
`).
-   6. `PACKAGE_CLASSES`=C2=A0=E2=80=93 string=C2=A0=E2=80=93 Set to the va=
lue of the Yocto `PACKAGE_CLASSES` variable
-   7. `SDKEXTRAS` =E2=80=93 list=C2=A0=E2=80=93 Unknown.=C2=A0 To some end=
, the example appends `SSTATE_MIRRORS` with the Yocto Project's shared stat=
e release mirror.
+   5. `DLDIR`=C2=A0=E2=80=93 string=C2=A0=E2=80=93=C2=A0Set the bitbake `D=
L_DIR` to where downloads should be
+      stored (e.g., `"DL_DIR =3D 'some_path'"`).
+   6. `PACKAGE_CLASSES`=C2=A0=E2=80=93 string=C2=A0=E2=80=93 Set to the va=
lue of the Yocto
+      `PACKAGE_CLASSES` variable
+   7. `SDKEXTRAS` =E2=80=93 list=C2=A0=E2=80=93 Unknown.=C2=A0 To some end=
, the example appends
+      `SSTATE_MIRRORS` with the Yocto Project's shared state release mirro=
r.
    8. `SDKMACHINE`=C2=A0=E2=80=93 string=C2=A0=E2=80=93 Examples are `x86_=
64`, `i686`, etc.
-   9. `SENDERRORS`=C2=A0=E2=80=93 boolean=C2=A0=E2=80=93 Executes the `upl=
oad-error-reports` script which ultimately runs the `send-error-report` scr=
ipt (from `poky/scripts`) to upload the results to a log server.
-   10. `SSTATEDIR`=C2=A0=E2=80=93 list=C2=A0=E2=80=93 Presumably a list of=
 additions to the `SSTATE_DIR` variable where each item in the list appends=
 or removes that variable.
-   11. `SSTATEDIR_RELEASE`=C2=A0=E2=80=93 list=C2=A0=E2=80=93 Presumably a=
 list of additions to the `SSTATE_DIR` variable during release builds
-   12. `WRITECONFIG`=C2=A0=E2=80=93 boolean=C2=A0=E2=80=93 If enabled, the=
=C2=A0`setup-config`=C2=A0script is run.=C2=A0=C2=A0**Required** if specify=
ing=C2=A0`extravars`.
-   13. `extravars`=C2=A0=E2=80=93 list=C2=A0=E2=80=93 Contains additional =
BitBake varaibles that will be added to the tail of `build/conf/auto.conf`.
+   9. `SENDERRORS`=C2=A0=E2=80=93 boolean=C2=A0=E2=80=93 Executes the `upl=
oad-error-reports` script which
+      ultimately runs the `send-error-report` script (from `poky/scripts`)=
 to
+      upload the results to a log server.
+   10. `SSTATEDIR`=C2=A0=E2=80=93 list=C2=A0=E2=80=93 Presumably a list of=
 additions to the `SSTATE_DIR`
+       variable where each item in the list appends or removes that variab=
le.
+   11. `SSTATEDIR_RELEASE`=C2=A0=E2=80=93 list=C2=A0=E2=80=93 Presumably a=
 list of additions to the
+       `SSTATE_DIR` variable during release builds
+   12. `WRITECONFIG`=C2=A0=E2=80=93 boolean=C2=A0=E2=80=93 If enabled, the=
=C2=A0`setup-config`=C2=A0script is
+       run.=C2=A0=C2=A0**Required** if specifying=C2=A0`extravars`.
+   13. `extravars`=C2=A0=E2=80=93 list=C2=A0=E2=80=93 Contains additional =
BitBake varaibles that will be
+       added to the tail of `build/conf/auto.conf`.
  2. _stepN_ -level variables:
-   1. `ADDLAYER`=C2=A0=E2=80=93 list=C2=A0=E2=80=93 These named layers wil=
l be added to the `bblayers.conf` file.=C2=A0 At the end of the step, the l=
ayers will be removed in reverse order.=C2=A0 This is useful if your=C2=A0`=
repo-defaults`=C2=A0-defined repository has `no-layer-add`=C2=A0set to=C2=
=A0`true`.=C2=A0 This will log as=C2=A0_stepN**a**_.
-   2. `BBTARGETS`=C2=A0=E2=80=93 string =E2=80=93 BitBake arguments passed=
 to the bitbake, e.g., core-image-minimal.=C2=A0 These will be appended wit=
h=C2=A0-k (continue) so that all targets will be attempted rather than stop=
ping at the first error.=C2=A0 This will log as _stepN**b**_.
-   3. `SANITYTARGETS`=C2=A0=E2=80=93 string=C2=A0=E2=80=93 BitBake targets=
 that will be run in an emulated environment for testing.=C2=A0 This will l=
og as=C2=A0_stepN**c**_.
-   4. `EXTRACMDS`=C2=A0=E2=80=93 list =E2=80=93 List of commands to run wi=
thin the BitBake environment (e.g.,=C2=A0wic).=C2=A0 This will log as=C2=A0=
_stepN**d**_.
-   5. `EXTRAPLAINCMDS`=C2=A0=E2=80=93 list=C2=A0=E2=80=93 List of commands=
 to run=C2=A0without=C2=A0sourcing the=C2=A0oe-init-build-env=C2=A0script.=
=C2=A0 This will log as=C2=A0_stepN**d**_.
+   1. `ADDLAYER`=C2=A0=E2=80=93 list=C2=A0=E2=80=93 These named layers wil=
l be added to the
+      `bblayers.conf` file.=C2=A0 At the end of the step, the layers will =
be removed
+      in reverse order.=C2=A0 This is useful if your=C2=A0`repo-defaults`=
=C2=A0-defined
+      repository has `no-layer-add`=C2=A0set to=C2=A0`true`.=C2=A0 This wi=
ll log
+      as=C2=A0_stepN**a**_.
+   2. `BBTARGETS`=C2=A0=E2=80=93 string =E2=80=93 BitBake arguments passed=
 to the bitbake, e.g.,
+      core-image-minimal.=C2=A0 These will be appended with=C2=A0-k (conti=
nue) so that all
+      targets will be attempted rather than stopping at the first error.=
=C2=A0 This
+      will log as _stepN**b**_.
+   3. `SANITYTARGETS`=C2=A0=E2=80=93 string=C2=A0=E2=80=93 BitBake targets=
 that will be run in an emulated
+      environment for testing.=C2=A0 This will log as=C2=A0_stepN**c**_.
+   4. `EXTRACMDS`=C2=A0=E2=80=93 list =E2=80=93 List of commands to run wi=
thin the BitBake
+      environment (e.g.,=C2=A0wic).=C2=A0 This will log as=C2=A0_stepN**d*=
*_.
+   5. `EXTRAPLAINCMDS`=C2=A0=E2=80=93 list=C2=A0=E2=80=93 List of commands=
 to run=C2=A0without=C2=A0sourcing
+      the=C2=A0oe-init-build-env=C2=A0script.=C2=A0 This will log as=C2=A0=
_stepN**d**_.
=20
 ## Appendix A - Systemd Services
=20
--=20
2.26.2

