Return-Path: <m.vinci@serma.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A2C1C433EF
	for <webhook@archiver.kernel.org>; Wed,  9 Feb 2022 11:14:40 +0000 (UTC)
Subject: #yocto #zeus Best practices for packaging third party recipe tool
 output in another recipe on the building host
To: yocto@lists.yoctoproject.org
From: "VINCI Maxime" <m.vinci@serma.com>
X-Originating-Location: FR (176.157.200.65)
X-Originating-Platform: Linux Firefox 96
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 09 Feb 2022 03:14:40 -0800
Message-ID: <WYRz.1644405280027529657.DTMT@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="1zy93ffvOmoEnPCX0ZxZ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Feb 2022 11:14:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56115

--1zy93ffvOmoEnPCX0ZxZ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi, I am quite new to Yocto/BitBake and I have a bit of a headache trying t=
o figure out the best way to make use of a native tool in the following con=
text:

I have one recipe that fetch and build third party libs and binaries, let's=
 call it X.
I have another recipe that also fetch and build third party libs and binari=
es, those depending on X's libs, let's call it Y.
Y needs to run post installation scripts to generate some config files.
Those scripts are calling some of X's binaries to generate those files, the=
refore I added a dependency on X-native to be able to run those scripts on =
the building machine.
At the moment, I include those scripts in do_install[postfuncs] of Y-native=
 recipe while adding it as dependency in Y recipe, as I wish those to files=
 to be part of Y package.

Assuming what I am doing until there is alright (correct me if not), here c=
omes my issue:
The way X is configured/compiled involves specifying the path where it will=
 write any file it generates/manage (currently based on the 'datadir' prefi=
x).
This implies that building X-native will also prefix this path with STAGING=
_DIR_NATIVE in X recipe context.
So, after using X-native binaries from within Y-native recipe I end up gene=
rating files in the wrong STAGING_DIR_NATIVE (ie. X recipe context), being =
unable to easily retrieve those as it's outside of Y recipe context.

Am I missing something here ?
I read about pkg_postinst and deferring them after sysroot creation, but th=
is is not what I need if I wish to package to config files, right ?
If there are no other solution, I may resort not to package them and use th=
is to generate them at image/sdk creation, but this does not seems clean to=
 me.

Also, I wish not to patch X sources to enable some sort of runtime output p=
ath configuration.

--1zy93ffvOmoEnPCX0ZxZ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi, I am quite new to Yocto/BitBake and I have a bit of a headache trying t=
o figure out the best way to make use of a native tool in the following con=
text:<br /><br />I have one recipe that fetch and build third party libs an=
d binaries, let's call it X.<br />I have another recipe that also fetch and=
 build third party libs and binaries, those depending on X's libs, let's ca=
ll it Y.<br />Y needs to run post installation scripts to generate some con=
fig files.<br />Those scripts are calling some of X's binaries to generate =
those files, therefore I added a dependency on X-native to be able to run t=
hose scripts on the building machine.<br />At the moment, I include those s=
cripts in do_install[postfuncs] of Y-native recipe while adding it as depen=
dency in Y recipe, as I wish those to files to be part of Y package.<br /><=
br />Assuming what I am doing until there is alright (correct me if not), h=
ere comes my issue: <br />The way X is configured/compiled involves specify=
ing the path where it will write any file it generates/manage (currently ba=
sed on the 'datadir' prefix).<br />This implies that building X-native will=
 also prefix this path with STAGING_DIR_NATIVE in X recipe context.<br />So=
, after using X-native binaries from within Y-native recipe I end up genera=
ting files in the wrong STAGING_DIR_NATIVE (ie. X recipe context), being un=
able to easily retrieve those as it's outside of Y recipe context.<br /><br=
 />Am I missing something here ?<br />I read about pkg_postinst and deferri=
ng them after sysroot creation, but this is not what I need if I wish to pa=
ckage to config files, right ?<br />If there are no other solution, I may r=
esort not to package them and use this to generate them at image/sdk creati=
on, but this does not seems clean to me.<br /><br />Also, I wish not to pat=
ch X sources to enable some sort of runtime output path configuration.

--1zy93ffvOmoEnPCX0ZxZ--

