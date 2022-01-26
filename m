Return-Path: <hrsourabh011@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9033CC28CF5
	for <webhook@archiver.kernel.org>; Wed, 26 Jan 2022 07:16:30 +0000 (UTC)
Subject: Fetch private gitlab repo using ssh with Yocto recipe #bitbake
To: yocto@lists.yoctoproject.org
From: hrsourabh011@gmail.com
X-Originating-Location: Sesslach, Bavaria, DE (217.24.55.250)
X-Originating-Platform: Windows Firefox 91
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 25 Jan 2022 23:16:29 -0800
Message-ID: <uhQ4.1643181389477081324.P09X@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="MGFNrF3YjCbSuQqyWPkI"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Jan 2022 07:16:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55975

--MGFNrF3YjCbSuQqyWPkI
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am trying to fetch a private gitlab repo within Yocto image recipe using =
SSH protocol. In my image recipe I have passed SRC_URI as:

SRC_URI =3D " \
       gitsm://git@git.example.com:2224/blah/blah/blah/blah;protocol=3Dssh;=
branch=3Dmaster \
" But this results in the error:

ERROR: Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; export PA=
TH=3D"/root /build-swu-v2/tmp/sysroots-uninative/x86_64-linux/usr/bin:/root=
/sources/poky/scripts: /root/build-swu-v2/tmp/work/cortexa7t2hf-neon-vfpv4-=
poky-linux-gnueabi/awsclient/1.4- r0/recipe-sysroot-native/usr/bin/arm-poky=
-linux-gnueabi:/root/build-swu-v2/tmp /work/cortexa7t2hf-neon-vfpv4-poky-li=
nux-gnueabi/awsclient/1.4-r0/recipe-sysroot/usr/bin /crossscripts:/root/bui=
ld-swu-v2/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi /awsclient/1.=
4-r0/recipe-sysroot-native/usr/sbin:/root/build-swu-v2/tmp/work/cortexa7t2h=
f- neon-vfpv4-poky-linux-gnueabi/awsclient/1.4-r0/recipe-sysroot-native/usr=
/bin:/root/build- swu-v2/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueab=
i/awsclient/1.4-r0/recipe-sysroot- native/sbin:/root/build-swu-v2/tmp/work/=
cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi /awsclient/1.4-r0/recipe-sysroot=
-native/bin:/root/sources/poky/bitbake/bin:/root/build-swu- v2/tmp/hosttool=
s"; export HOME=3D"/root"; LANG=3DC git -c core.fsyncobjectfiles=3D0 clone =
--bare  --mirror "ssh://git@git.osb-connagtive.com:2224/iot/products/iot-de=
vice-suite_client/aws- iot-client" /root/downloads//git2/git@git.example.co=
m:2224/blah/blah/blah/blah --progress failed with exit code 128, no output
ERROR: Bitbake Fetcher Error: FetchError('Unable to fetch URL from any sour=
ce.',  'gitsm://git@git.example.com:2224/blah/blah/blah/blah;protocol=3Dssh=
;branch=3Dmaster')
DEBUG: Python function base_do_fetch finished

But I am able to clone the repo using git clone.

SSH key is already added to the Gitlab. There is no config file in my ~/.ss=
h. Do I need to create a config file? What should be the content of the con=
fig file?

Can anyone please let me know how to resolve this?

Thanks in advance.

--MGFNrF3YjCbSuQqyWPkI
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am trying to fetch a private gitlab repo within Yocto image recipe using =
SSH protocol. In my image recipe I have passed <code>SRC_URI</code> as:<br =
/><br />
<pre><code>SRC_URI =3D " \
        gitsm://git@git.example.com:2224/blah/blah/blah/blah;protocol=3Dssh=
;branch=3Dmaster \
"</code></pre>
But this results in the error:<br /><br />
<pre><code>ERROR: Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1=
; export PATH=3D"/root /build-swu-v2/tmp/sysroots-uninative/x86_64-linux/us=
r/bin:/root/sources/poky/scripts: /root/build-swu-v2/tmp/work/cortexa7t2hf-=
neon-vfpv4-poky-linux-gnueabi/awsclient/1.4- r0/recipe-sysroot-native/usr/b=
in/arm-poky-linux-gnueabi:/root/build-swu-v2/tmp /work/cortexa7t2hf-neon-vf=
pv4-poky-linux-gnueabi/awsclient/1.4-r0/recipe-sysroot/usr/bin /crossscript=
s:/root/build-swu-v2/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi /a=
wsclient/1.4-r0/recipe-sysroot-native/usr/sbin:/root/build-swu-v2/tmp/work/=
cortexa7t2hf- neon-vfpv4-poky-linux-gnueabi/awsclient/1.4-r0/recipe-sysroot=
-native/usr/bin:/root/build- swu-v2/tmp/work/cortexa7t2hf-neon-vfpv4-poky-l=
inux-gnueabi/awsclient/1.4-r0/recipe-sysroot- native/sbin:/root/build-swu-v=
2/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi /awsclient/1.4-r0/rec=
ipe-sysroot-native/bin:/root/sources/poky/bitbake/bin:/root/build-swu- v2/t=
mp/hosttools"; export HOME=3D"/root"; LANG=3DC git -c core.fsyncobjectfiles=
=3D0 clone --bare  --mirror "ssh://git@git.osb-connagtive.com:2224/iot/prod=
ucts/iot-device-suite_client/aws- iot-client" /root/downloads//git2/git@git=
.example.com:2224/blah/blah/blah/blah --progress failed with exit code 128,=
 no output
ERROR: Bitbake Fetcher Error: FetchError('Unable to fetch URL from any sour=
ce.',  'gitsm://git@git.example.com:2224/blah/blah/blah/blah;protocol=3Dssh=
;branch=3Dmaster')
DEBUG: Python function base_do_fetch finished</code></pre>
<br />
<p>But I am able to clone the repo using <code>git clone</code>.</p>
<p>SSH key is already added to the Gitlab. There is no config file in my <c=
ode>~/.ssh</code>. Do I need to create a config file? What should be the co=
ntent of the config file?</p>
<p>Can anyone please let me know how to resolve this?</p>
<p>Thanks in advance.</p>

--MGFNrF3YjCbSuQqyWPkI--

