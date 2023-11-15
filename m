Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 162AEC07548
	for <webhook@archiver.kernel.org>; Wed, 15 Nov 2023 07:29:28 +0000 (UTC)
Subject: Re: Architecture did not match
To: yocto@lists.yoctoproject.org
From: "MOHAMMED HASSAN" <hassanchattarki@gmail.com>
X-Originating-Location: Hyderabad, Telangana, IN (183.82.1.74)
X-Originating-Platform: Linux Chrome 119
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 14 Nov 2023 23:29:19 -0800
References: <CAMKF1spXPtHghSQw3iV-a8fNy_N+i01dSjD7mtOWHjNGrfLK-Q@mail.gmail.com>
In-Reply-To: <CAMKF1spXPtHghSQw3iV-a8fNy_N+i01dSjD7mtOWHjNGrfLK-Q@mail.gmail.com>
Message-ID: <2967.1700033359581845961@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="SZXYpYjpPn68YVX0YjV0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Nov 2023 07:29:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61687

--SZXYpYjpPn68YVX0YjV0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 14, 2023 at 11:17 PM, Khem Raj wrote:

>=20
> add lib32-testing-firmware in your image instead of testing-firmware
>=20
>=20

NOTE: lib32-gst-plugin-video-sink: compiling from external source tree /Yoc=
to_sdk/yocto_sdk/aml-comp/multimedia/gst-plugin-video-sink
NOTE: lib32-gst-plugin-aml-v4l2dec: compiling from external source tree /Yo=
cto_sdk/yocto_sdk/aml-comp/multimedia/gst-plugin-aml-v4l2dec
NOTE: u-boot: compiling from external source tree /Yocto_sdk/yocto_sdk/aml-=
comp/uboot
ERROR: lib32-testing-firmware-0.1-r0 do_package_qa: QA Issue: Architecture =
did not match (x86-64, expected ARM) on /work/armv7at2hf-neon-pokymllib32-l=
inux-gnueabi/lib32-testing-firmware/0.1-r0/packages-split/lib32-testing-fir=
mware/home/root/Edge/node_modules/@serialport/bindings-cpp/prebuilds/linux-=
x64/node.napi.musl.node
Architecture did not match (x86-64, expected ARM) on /work/armv7at2hf-neon-=
pokymllib32-linux-gnueabi/lib32-testing-firmware/0.1-r0/packages-split/lib3=
2-testing-firmware/home/root/Edge/node_modules/@serialport/bindings-cpp/pre=
builds/linux-x64/node.napi.glibc.node
Architecture did not match (AArch64, expected ARM) on /work/armv7at2hf-neon=
-pokymllib32-linux-gnueabi/lib32-testing-firmware/0.1-r0/packages-split/lib=
32-testing-firmware/home/root/Edge/node_modules/@serialport/bindings-cpp/pr=
ebuilds/android-arm64/node.napi.armv8.node
Architecture did not match (AArch64, expected ARM) on /work/armv7at2hf-neon=
-pokymllib32-linux-gnueabi/lib32-testing-firmware/0.1-r0/packages-split/lib=
32-testing-firmware/home/root/Edge/node_modules/@serialport/bindings-cpp/pr=
ebuilds/linux-arm64/node.napi.armv8.node [arch]
WARNING: lib32-testing-firmware-0.1-r0 do_package_qa: QA Issue: /home/root/=
Edge/install.sh contained in package lib32-testing-firmware requires /bin/b=
ash, but no providers found in RDEPENDS_lib32-testing-firmware? [file-rdeps=
]
ERROR: lib32-testing-firmware-0.1-r0 do_package_qa: QA run found fatal erro=
rs. Please consider fixing them.
ERROR: Logfile of failure stored in: /Yocto_sdk/yocto_sdk/tmp/work/armv7at2=
hf-neon-pokymllib32-linux-gnueabi/lib32-testing-firmware/0.1-r0/temp/log.do=
_package_qa.52476
ERROR: Task (virtual:multilib:lib32:/Yocto_sdk/yocto_sdk/meta-blaze/recipes=
-example/testing-firmware/testing-firmware_0.1.bb:do_package_qa) failed wit=
h exit code '1'
NOTE: Tasks Summary: Attempted 7801 tasks of which 7737 didn't need to be r=
erun and 1 failed.
NOTE: Writing buildhistory
NOTE: Writing buildhistory took: 1 seconds

Summary: 1 task failed:

Still the same error but now the architecture is shown different.

--SZXYpYjpPn68YVX0YjV0
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 14, 2023 at 11:17 PM, Khem Raj wrote:<br />
<blockquote>add lib32-testing-firmware in your image instead of testing-fir=
mware<br /><br /></blockquote>
<div>NOTE: lib32-gst-plugin-video-sink: compiling from external source tree=
 /Yocto_sdk/yocto_sdk/aml-comp/multimedia/gst-plugin-video-sink</div>
<div>NOTE: lib32-gst-plugin-aml-v4l2dec: compiling from external source tre=
e /Yocto_sdk/yocto_sdk/aml-comp/multimedia/gst-plugin-aml-v4l2dec</div>
<div>NOTE: u-boot: compiling from external source tree /Yocto_sdk/yocto_sdk=
/aml-comp/uboot</div>
<div>ERROR: lib32-testing-firmware-0.1-r0 do_package_qa: QA Issue: Architec=
ture did not match (x86-64, expected ARM) on /work/armv7at2hf-neon-pokymlli=
b32-linux-gnueabi/lib32-testing-firmware/0.1-r0/packages-split/lib32-testin=
g-firmware/home/root/Edge/node_modules/@serialport/bindings-cpp/prebuilds/l=
inux-x64/node.napi.musl.node</div>
<div>Architecture did not match (x86-64, expected ARM) on /work/armv7at2hf-=
neon-pokymllib32-linux-gnueabi/lib32-testing-firmware/0.1-r0/packages-split=
/lib32-testing-firmware/home/root/Edge/node_modules/@serialport/bindings-cp=
p/prebuilds/linux-x64/node.napi.glibc.node</div>
<div>Architecture did not match (AArch64, expected ARM) on /work/armv7at2hf=
-neon-pokymllib32-linux-gnueabi/lib32-testing-firmware/0.1-r0/packages-spli=
t/lib32-testing-firmware/home/root/Edge/node_modules/@serialport/bindings-c=
pp/prebuilds/android-arm64/node.napi.armv8.node</div>
<div>Architecture did not match (AArch64, expected ARM) on /work/armv7at2hf=
-neon-pokymllib32-linux-gnueabi/lib32-testing-firmware/0.1-r0/packages-spli=
t/lib32-testing-firmware/home/root/Edge/node_modules/@serialport/bindings-c=
pp/prebuilds/linux-arm64/node.napi.armv8.node [arch]</div>
<div>WARNING: lib32-testing-firmware-0.1-r0 do_package_qa: QA Issue: /home/=
root/Edge/install.sh contained in package lib32-testing-firmware requires /=
bin/bash, but no providers found in RDEPENDS_lib32-testing-firmware? [file-=
rdeps]</div>
<div>ERROR: lib32-testing-firmware-0.1-r0 do_package_qa: QA run found fatal=
 errors. Please consider fixing them.</div>
<div>ERROR: Logfile of failure stored in: /Yocto_sdk/yocto_sdk/tmp/work/arm=
v7at2hf-neon-pokymllib32-linux-gnueabi/lib32-testing-firmware/0.1-r0/temp/l=
og.do_package_qa.52476</div>
<div>ERROR: Task (virtual:multilib:lib32:/Yocto_sdk/yocto_sdk/meta-blaze/re=
cipes-example/testing-firmware/testing-firmware_0.1.bb:do_package_qa) faile=
d with exit code '1'</div>
<div>NOTE: Tasks Summary: Attempted 7801 tasks of which 7737 didn't need to=
 be rerun and 1 failed.</div>
<div>NOTE: Writing buildhistory</div>
<div>NOTE: Writing buildhistory took: 1 seconds</div>
<div>&nbsp;</div>
<div>Summary: 1 task failed:</div>
<div><br />Still the same error but now the architecture is shown different=
.<br /><br /></div>

--SZXYpYjpPn68YVX0YjV0--

