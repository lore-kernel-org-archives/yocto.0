Return-Path: <tsoos99@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C98DC54ED1
	for <webhook@archiver.kernel.org>; Sun, 25 May 2025 01:53:21 +0000 (UTC)
Subject: How to upgrade rust? #rust #scarthgap #sdk
To: yocto@lists.yoctoproject.org
From: =?UTF-8?B?VGFtw6FzIFNvw7Nz?= <tsoos99@gmail.com>
X-Originating-Location: Budapest, HU (89.223.204.162)
X-Originating-Platform: Mac Chrome 136
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 24 May 2025 18:53:14 -0700
Message-ID: <GR0d.1748137994057198920.MOMS@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="dvhh8ySNd7rLLjaVtE71"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 25 May 2025 01:53:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65418

--dvhh8ySNd7rLLjaVtE71
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi.

I'm trying to upgrade rust on Scarthgap. The current version is 1.75.0. So =
I tried to get to 1.76.0.
I ran devtool upgrade rust-llvm, which seemed to work. I resolved some conf=
licts and was able to build it.
Then I tried devtool upgrade rust. After getting past the conflicts again I=
 get the following error:
ERROR: rust-1.76.0-r0 do_rust_setup_snapshot: ExecutionError('/home/tamas/p=
oky/build/tmp/work/cortexa8t2hf-neon-zeus-linux-gnueabi/rust/1.76.0/temp/ru=
n.do_rust_setup_snapshot.2027011', 127, None, None)
ERROR: Logfile of failure stored in: /home/tamas/poky/build/tmp/work/cortex=
a8t2hf-neon-zeus-linux-gnueabi/rust/1.76.0/temp/log.do_rust_setup_snapshot.=
2027011
Log data follows:
| DEBUG: Executing shell function do_rust_setup_snapshot
| /home/tamas/poky/build/tmp/work/cortexa8t2hf-neon-zeus-linux-gnueabi/rust=
/1.76.0/temp/run.do_rust_setup_snapshot.2027011: 152: /home/tamas/poky/buil=
d/tmp/work/cortexa8t2hf-neon-zeus-linux-gnueabi/rust/1.76.0/rust-snapshot-c=
omponents/*/install.sh: not found
| WARNING: exit code 127 from a shell command.
ERROR: Task (/home/tamas/poky/build/workspace/recipes/rust/rust_1.76.0.bb:d=
o_rust_setup_snapshot) failed with exit code '1'

This part of the recipe didn't seem to have changed. I'm out of ideas. What=
 could be going wrong here?

Ultimately I need nativesdk-rust for my app development. Trying to build th=
at results in another error:
ERROR: nativesdk-rust-1.76.0-r0 do_patch: Applying patch 'zlib-off64_t.patc=
h' on target directory '/home/tamas/poky/build/tmp/work/x86_64-nativesdk-po=
kysdk-linux/nativesdk-rust/1.76.0/rustc-1.76.0-src'
CmdError('quilt --quiltrc /home/tamas/poky/build/tmp/work/x86_64-nativesdk-=
pokysdk-linux/nativesdk-rust/1.76.0/recipe-sysroot-native/etc/quiltrc push'=
, 0, 'stdout: Applying patch zlib-off64_t.patch
patching file vendor/libz-sys/src/zlib/gzguts.h
patching file vendor/libz-sys/.cargo-checksum.json
Hunk #1 FAILED at 1.
1 out of 1 hunk FAILED -- rejects in file vendor/libz-sys/.cargo-checksum.j=
son
Patch zlib-off64_t.patch does not apply (enforce with -f)
stderr: ')
ERROR: Logfile of failure stored in: /home/tamas/poky/build/tmp/work/x86_64=
-nativesdk-pokysdk-linux/nativesdk-rust/1.76.0/temp/log.do_patch.2028507
ERROR: Task (virtual:nativesdk:/home/tamas/poky/build/workspace/recipes/rus=
t/rust_1.76.0.bb:do_patch) failed with exit code '1'

--dvhh8ySNd7rLLjaVtE71
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi.&nbsp;</div>
<div>&nbsp;</div>
<div>I'm trying to upgrade rust on Scarthgap. The current version is 1.75.0=
. So I tried to get to 1.76.0.</div>
<div>I ran devtool upgrade rust-llvm, which seemed to work. I resolved some=
 conflicts and was able to build it.</div>
<div>Then I tried devtool upgrade rust. After getting past the conflicts ag=
ain I get the following error:</div>
<div><span style=3D"color: #34495e;">ERROR: rust-1.76.0-r0 do_rust_setup_sn=
apshot: ExecutionError('/home/tamas/poky/build/tmp/work/cortexa8t2hf-neon-z=
eus-linux-gnueabi/rust/1.76.0/temp/run.do_rust_setup_snapshot.2027011', 127=
, None, None)</span><br /><span style=3D"color: #34495e;">ERROR: Logfile of=
 failure stored in: /home/tamas/poky/build/tmp/work/cortexa8t2hf-neon-zeus-=
linux-gnueabi/rust/1.76.0/temp/log.do_rust_setup_snapshot.2027011</span><br=
 /><span style=3D"color: #34495e;">Log data follows:</span><br /><span styl=
e=3D"color: #34495e;">| DEBUG: Executing shell function do_rust_setup_snaps=
hot</span><br /><span style=3D"color: #34495e;">| /home/tamas/poky/build/tm=
p/work/cortexa8t2hf-neon-zeus-linux-gnueabi/rust/1.76.0/temp/run.do_rust_se=
tup_snapshot.2027011: 152: /home/tamas/poky/build/tmp/work/cortexa8t2hf-neo=
n-zeus-linux-gnueabi/rust/1.76.0/rust-snapshot-components/*/install.sh: not=
 found</span><br /><span style=3D"color: #34495e;">| WARNING: exit code 127=
 from a shell command.</span><br /><span style=3D"color: #34495e;">ERROR: T=
ask (/home/tamas/poky/build/workspace/recipes/rust/rust_1.76.0.bb:do_rust_s=
etup_snapshot) failed with exit code '1'</span></div>
<div>&nbsp;</div>
<div>This part of the recipe didn't seem to have changed. I'm out of ideas.=
 What could be going wrong here?&nbsp;</div>
<div>&nbsp;</div>
<div>Ultimately I need nativesdk-rust for my app development. Trying to bui=
ld that results in another error:</div>
<div>
<div><span style=3D"color: #34495e;">ERROR: nativesdk-rust-1.76.0-r0 do_pat=
ch: Applying patch 'zlib-off64_t.patch' on target directory '/home/tamas/po=
ky/build/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-rust/1.76.0/rust=
c-1.76.0-src'</span><br /><span style=3D"color: #34495e;">CmdError('quilt -=
-quiltrc /home/tamas/poky/build/tmp/work/x86_64-nativesdk-pokysdk-linux/nat=
ivesdk-rust/1.76.0/recipe-sysroot-native/etc/quiltrc push', 0, 'stdout: App=
lying patch zlib-off64_t.patch</span><br /><span style=3D"color: #34495e;">=
patching file vendor/libz-sys/src/zlib/gzguts.h</span><br /><span style=3D"=
color: #34495e;">patching file vendor/libz-sys/.cargo-checksum.json</span><=
br /><span style=3D"color: #34495e;">Hunk #1 FAILED at 1.</span><br /><span=
 style=3D"color: #34495e;">1 out of 1 hunk FAILED -- rejects in file vendor=
/libz-sys/.cargo-checksum.json</span><br /><span style=3D"color: #34495e;">=
Patch zlib-off64_t.patch does not apply (enforce with -f)</span></div>
<div><span style=3D"color: #34495e;">stderr: ')</span><br /><span style=3D"=
color: #34495e;">ERROR: Logfile of failure stored in: /home/tamas/poky/buil=
d/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-rust/1.76.0/temp/log.do=
_patch.2028507</span><br /><span style=3D"color: #34495e;">ERROR: Task (vir=
tual:nativesdk:/home/tamas/poky/build/workspace/recipes/rust/rust_1.76.0.bb=
:do_patch) failed with exit code '1'</span></div>
</div>

--dvhh8ySNd7rLLjaVtE71--

