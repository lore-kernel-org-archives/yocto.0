Return-Path: <diersen-hannes@web.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7177CC3DA49
	for <webhook@archiver.kernel.org>; Sun, 14 Jul 2024 16:06:10 +0000 (UTC)
Subject: Pokysdk-linux libc cannot find a version of GLIBC
To: yocto@lists.yoctoproject.org
From: diersen-hannes@web.de
X-Originating-Location: Bremerhaven, Bremen, DE (178.1.51.187)
X-Originating-Platform: Linux Chrome 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 14 Jul 2024 09:06:03 -0700
Message-ID: <fAsZ.1720973163119081849.mXQ4@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Lqt6KKrrGGvIpZhmyJgA"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 14 Jul 2024 16:06:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63491

--Lqt6KKrrGGvIpZhmyJgA
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I am using ZephyrSDK to develop some embedded software. I have tried to ins=
tall it on my "new" laptop, which is now running Fedora 40. From my underst=
anding, Zephyr uses PokySDK to create the build environment for cross-compi=
lation. However, I cannot get it working.

As I mentioned in this issue on the Zephyr project page ( https://github.co=
m/zephyrproject-rtos/sdk-ng/issues/741 ), I encounter an error when trying =
to build. The error message is as follows:

/home/hannes/zephyr-sdk-0.16.8/sysroots/x86_64-pokysdk-linux/usr/bin/dtc: /=
home/hannes/zephyr-sdk-0.16.8/sysroots/x86_64-pokysdk-linux/lib/libc.so.6: =
version `GLIBC_2.38 ' not found (required by /lib64/libstdc++.so.6) /home/h=
annes/zephyr-sdk-0.16.8/sysroots/x86_64-pokysdk-linux/usr/bin/dtc: /home/ha=
nnes/zephyr-sdk-0.16.8/sysroots/x86_64-pokysdk-linux/lib/libc.so.6: version=
 `GLIBC_2.33' not found (required by /lib64/libstdc++.so.6) /home/hannes/ze=
phyr-sdk-0.16.8/sysroots/x86_64-pokysdk-linux/usr/bin/dtc: /home/hannes/zep=
hyr-sdk-0.16.8/sysroots/x86_64-pokysdk-linux/lib/libc.so.6: version `GLIBC_=
2.32 ' not found (required by /lib64/libstdc++.so.6) /home/hannes/zephyr-sd=
k-0.16.8/sysroots/x86_64-pokysdk-linux/usr/bin/dtc: /home/hannes/zephyr-sdk=
-0.16.8/sysroots/x86_64-pokysdk-linux/lib/libc.so.6: version `GLIBC_2.36' n=
ot found (required by /lib64/libstdc++.so.6) /home/hannes/zephyr-sdk-0.16.8=
/sysroots/x86_64-pokysdk-linux/usr/bin/dtc: /home/hannes/zephyr-sdk-0.16.8/=
sysroots/x86_64-pokysdk-linux/lib/libc.so.6: version `GLIBC_2.34 ' not foun=
d (required by /lib64/libstdc++.so.6)

Unfortunately, my issue has received only a small number of replies. Runnin=
g ldd --version shows that I have GLIBC 2.38 installed on my PC. I tried to=
 create a symlink to my local GLIBC installation, but it didn=E2=80=99t hel=
p.

In any case, this shouldn=E2=80=99t be necessary since PokySDK should provi=
de all the necessary libraries needed for cross-compiling, or am I misunder=
standing something?

I hope this is the right place to ask, as I am unsure how to resolve this i=
ssue.

Best regards, Hannes

--Lqt6KKrrGGvIpZhmyJgA
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hello,</p>
<p>I am using ZephyrSDK to develop some embedded software. I have tried to =
install it on my "new" laptop, which is now running Fedora 40. From my unde=
rstanding, Zephyr uses PokySDK to create the build environment for cross-co=
mpilation. However, I cannot get it working.</p>
<p>As I mentioned in this issue on the Zephyr project page (<a href=3D"http=
s://github.com/zephyrproject-rtos/sdk-ng/issues/741" target=3D"_new" rel=3D=
"noreferrer">https://github.com/zephyrproject-rtos/sdk-ng/issues/741</a>), =
I encounter an error when trying to build. The error message is as follows:=
</p>
<div class=3D"dark bg-gray-950 rounded-md border-[0.5px] border-token-borde=
r-medium">
<div class=3D"flex items-center relative text-token-text-secondary bg-token=
-main-surface-secondary px-4 py-2 text-xs font-sans justify-between rounded=
-t-md">&nbsp;</div>
<div class=3D"overflow-y-auto p-4" dir=3D"ltr"><code class=3D"!whitespace-p=
re hljs language-bash">/home/hannes/zephyr-sdk-0.16.8/sysroots/x86_64-pokys=
dk-linux/usr/bin/dtc: /home/hannes/zephyr-sdk-0.16.8/sysroots/x86_64-pokysd=
k-linux/lib/libc.so.6: version `GLIBC_2.38<span class=3D"hljs-string">' not=
 found (required by /lib64/libstdc++.so.6)
/home/hannes/zephyr-sdk-0.16.8/sysroots/x86_64-pokysdk-linux/usr/bin/dtc: /=
home/hannes/zephyr-sdk-0.16.8/sysroots/x86_64-pokysdk-linux/lib/libc.so.6: =
version `GLIBC_2.33'</span> not found (required by /lib64/libstdc++.so.6)
/home/hannes/zephyr-sdk-0.16.8/sysroots/x86_64-pokysdk-linux/usr/bin/dtc: /=
home/hannes/zephyr-sdk-0.16.8/sysroots/x86_64-pokysdk-linux/lib/libc.so.6: =
version `GLIBC_2.32<span class=3D"hljs-string">' not found (required by /li=
b64/libstdc++.so.6)
/home/hannes/zephyr-sdk-0.16.8/sysroots/x86_64-pokysdk-linux/usr/bin/dtc: /=
home/hannes/zephyr-sdk-0.16.8/sysroots/x86_64-pokysdk-linux/lib/libc.so.6: =
version `GLIBC_2.36'</span> not found (required by /lib64/libstdc++.so.6)
/home/hannes/zephyr-sdk-0.16.8/sysroots/x86_64-pokysdk-linux/usr/bin/dtc: /=
home/hannes/zephyr-sdk-0.16.8/sysroots/x86_64-pokysdk-linux/lib/libc.so.6: =
version `GLIBC_2.34<span class=3D"hljs-string">' not found (required by /li=
b64/libstdc++.so.6)
<br /></span></code></div>
</div>
<p>Unfortunately, my issue has received only a small number of replies. Run=
ning <code>ldd --version</code> shows that I have GLIBC 2.38 installed on m=
y PC. I tried to create a symlink to my local GLIBC installation, but it di=
dn&rsquo;t help.</p>
<p>In any case, this shouldn&rsquo;t be necessary since PokySDK should prov=
ide all the necessary libraries needed for cross-compiling, or am I misunde=
rstanding something?</p>
<p>I hope this is the right place to ask, as I am unsure how to resolve thi=
s issue.</p>
<p>Best regards, Hannes</p>

--Lqt6KKrrGGvIpZhmyJgA--

