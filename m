Return-Path: <tagliapietra.alessandro@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5F9DC6370C
	for <webhook@archiver.kernel.org>; Mon, 11 Apr 2022 17:18:01 +0000 (UTC)
Subject: Skipping already-stripped check doesn't work
To: yocto@lists.yoctoproject.org
From: "Alessandro Tagliapietra" <tagliapietra.alessandro@gmail.com>
X-Originating-Location: Las Vegas, Nevada, US (72.207.140.105)
X-Originating-Platform: Linux Chrome 100
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 11 Apr 2022 09:13:55 -0700
Message-ID: <M3Kh.1649693635080134995.ltMY@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="WVhrH5OmdEmPeFIifh8n"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Apr 2022 17:18:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56718

--WVhrH5OmdEmPeFIifh8n
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I've created an npm package recipe for node-red-node-serialport ( https://w=
ww.npmjs.com/package/node-red-node-serialport ) using

devtool add "npm://registry.npmjs.org;package=3Dnode-red-node-serialport;ve=
rsion=3D1.0.1"

which generated this ( https://gist.github.com/alex88/e0e1bca5ac07137229839=
120f8bfe273 ) recipe.

The problem is when building I get

>=20
> WARNING: node-red-node-serialport-1.0.1-r0 do_compile: Use of configs
> argument of NpmEnvironment.run() function is deprecated. Please use args
> argument instead.
> WARNING: node-red-node-serialport-1.0.1-r0 do_compile: Use of configs
> argument of NpmEnvironment.run() function is deprecated. Please use args
> argument instead.
> ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File
> '/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/=
bindings-cpp/prebuilds/android-arm/node.napi.armv7.node'
> from node-red-node-serialport was already stripped, this will prevent
> future debugging! [already-stripped]
> ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File
> '/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/=
bindings-cpp/prebuilds/android-arm64/node.napi.armv8.node'
> from node-red-node-serialport was already stripped, this will prevent
> future debugging! [already-stripped]
> ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File
> '/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/=
bindings-cpp/prebuilds/linux-arm/node.napi.armv6.node'
> from node-red-node-serialport was already stripped, this will prevent
> future debugging! [already-stripped]
> ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File
> '/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/=
bindings-cpp/prebuilds/linux-arm/node.napi.armv7.node'
> from node-red-node-serialport was already stripped, this will prevent
> future debugging! [already-stripped]
> ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File
> '/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/=
bindings-cpp/prebuilds/linux-arm64/node.napi.armv8.node'
> from node-red-node-serialport was already stripped, this will prevent
> future debugging! [already-stripped]
> ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File
> '/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/=
bindings-cpp/prebuilds/linux-x64/node.napi.glibc.node'
> from node-red-node-serialport was already stripped, this will prevent
> future debugging! [already-stripped]
> ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File
> '/usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/=
bindings-cpp/prebuilds/linux-x64/node.napi.musl.node'
> from node-red-node-serialport was already stripped, this will prevent
> future debugging! [already-stripped]
> ERROR: node-red-node-serialport-1.0.1-r0 do_package: Fatal QA errors
> found, failing task.
> ERROR: Logfile of failure stored in:
> /home/alex/Projects/yocto/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-lin=
ux-gnueabi/node-red-node-serialport/1.0.1-r0/temp/log.do_package.75444
>=20
> ERROR: Task
> (/home/alex/Projects/yocto/meta-things5/recipes-devtools/node-red-node-se=
rialport/node-red-node-serialport_1.0.1.bb:do_package)
> failed with exit code '1'
>=20

I've tried to add

INSANE_SKIP_${PN} +=3D "already-stripped"

in the recipe and in a bbappend but I still get the error.

Why? I need to get this out asap so any help is appreciated.

--WVhrH5OmdEmPeFIifh8n
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I've created an npm package recipe for <a href=3D"https://www.npmjs.com/pac=
kage/node-red-node-serialport" target=3D"_blank" rel=3D"noopener">node-red-=
node-serialport</a> using<br /><br />
<div>devtool add "npm://registry.npmjs.org;package=3Dnode-red-node-serialpo=
rt;version=3D1.0.1"<br /><br />which generated <a href=3D"https://gist.gith=
ub.com/alex88/e0e1bca5ac07137229839120f8bfe273" target=3D"_blank" rel=3D"no=
opener">this</a> recipe.<br /><br />The problem is when building I get&nbsp=
;<br /><br />
<blockquote>
<div>WARNING: node-red-node-serialport-1.0.1-r0 do_compile: Use of configs =
argument of NpmEnvironment.run() function is deprecated. Please use args ar=
gument instead.</div>
<div>WARNING: node-red-node-serialport-1.0.1-r0 do_compile: Use of configs =
argument of NpmEnvironment.run() function is deprecated. Please use args ar=
gument instead.</div>
<div>ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File '/=
usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bind=
ings-cpp/prebuilds/android-arm/node.napi.armv7.node' from node-red-node-ser=
ialport was already stripped, this will prevent future debugging! [already-=
stripped]</div>
<div>ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File '/=
usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bind=
ings-cpp/prebuilds/android-arm64/node.napi.armv8.node' from node-red-node-s=
erialport was already stripped, this will prevent future debugging! [alread=
y-stripped]</div>
<div>ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File '/=
usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bind=
ings-cpp/prebuilds/linux-arm/node.napi.armv6.node' from node-red-node-seria=
lport was already stripped, this will prevent future debugging! [already-st=
ripped]</div>
<div>ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File '/=
usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bind=
ings-cpp/prebuilds/linux-arm/node.napi.armv7.node' from node-red-node-seria=
lport was already stripped, this will prevent future debugging! [already-st=
ripped]</div>
<div>ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File '/=
usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bind=
ings-cpp/prebuilds/linux-arm64/node.napi.armv8.node' from node-red-node-ser=
ialport was already stripped, this will prevent future debugging! [already-=
stripped]</div>
<div>ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File '/=
usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bind=
ings-cpp/prebuilds/linux-x64/node.napi.glibc.node' from node-red-node-seria=
lport was already stripped, this will prevent future debugging! [already-st=
ripped]</div>
<div>ERROR: node-red-node-serialport-1.0.1-r0 do_package: QA Issue: File '/=
usr/lib/node_modules/node-red-node-serialport/node_modules/@serialport/bind=
ings-cpp/prebuilds/linux-x64/node.napi.musl.node' from node-red-node-serial=
port was already stripped, this will prevent future debugging! [already-str=
ipped]</div>
<div>ERROR: node-red-node-serialport-1.0.1-r0 do_package: Fatal QA errors f=
ound, failing task.</div>
<div>ERROR: Logfile of failure stored in: /home/alex/Projects/yocto/build/t=
mp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/node-red-node-serialport=
/1.0.1-r0/temp/log.do_package.75444</div>
<div>ERROR: Task (/home/alex/Projects/yocto/meta-things5/recipes-devtools/n=
ode-red-node-serialport/node-red-node-serialport_1.0.1.bb:do_package) faile=
d with exit code '1'</div>
</blockquote>
<div>I've tried to add<br /><br />INSANE_SKIP_${PN} +=3D "already-stripped"=
<br /><br />in the recipe and in a bbappend but I still get the error.<br /=
><br />Why? I need to get this out asap so any help is appreciated.</div>
</div>

--WVhrH5OmdEmPeFIifh8n--

