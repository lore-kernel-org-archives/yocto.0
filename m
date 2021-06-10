Subject: Exporting custom kernel header file to SDK #sdk #kernel
To: yocto@lists.yoctoproject.org
From: "Lukasz Domowy" <lukasz.odw39@gmail.com>
X-Originating-Location: GB (62.209.55.132)
X-Originating-Platform: Windows Chrome 90
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 10 Jun 2021 09:21:16 -0700
Message-ID: <e7NE.1623342076809324827.1h6U@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="FIpx7UMGxw5Y4MINpHw8"

--FIpx7UMGxw5Y4MINpHw8
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I wrote a kernel driver which exposes some header to userspace application=
. Application engineers use generated SDK, so I'd like to export that heade=
r file as part of SDK.
I added my header to <kernel>/include/uapi/linux/ and thought it would be =
enouogh - as during SDK generation it would be copied to SDK.

I use Yocto 3.2.2 and custom recipe for kernel 5.10.

I generated SDK and installed it, but to my surprise:
- my header is missing at <SDK install path>/sysroots/cortexa9hf-neon-poky=
-linux-gnueabi/usr/include/linux/
- <SDK install path>/sysroots/cortexa9hf-neon-poky-linux-gnueabi/usr/inclu=
de/linux/version.h contains:
#define LINUX_VERSION_CODE 329728
which means kernel version 5.8 (why not 5.10?)

It looks like SDK takes default Yocto gatesgarth kernel version (5.8) to S=
DK, not my kernel version.=C2=A0PREFERRED_PROVIDER_virtual/kernel is proper=
ly set and right kernel version is built (at tmp/deploy/images)
What am I doing wrong?

I would appreciate any hints. Thank you in advance.

Best regards,
Lukasz

--FIpx7UMGxw5Y4MINpHw8
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello,</div>
<div>&nbsp;</div>
<div>I wrote a kernel driver which exposes some header to userspace applic=
ation. Application engineers use generated SDK, so I'd like to export that =
header file as part of SDK.</div>
<div>I added my header to &lt;kernel&gt;/include/uapi/linux/ and thought i=
t would be enouogh - as during SDK generation it would be copied to SDK.&nb=
sp;</div>
<div>&nbsp;</div>
<div>I use Yocto 3.2.2 and custom recipe for kernel 5.10.</div>
<div>&nbsp;</div>
<div>I generated SDK and installed it, but to my surprise:</div>
<div>- my header is missing at &lt;SDK install path&gt;/sysroots/cortexa9h=
f-neon-poky-linux-gnueabi/usr/include/linux/</div>
<div>- &lt;SDK install path&gt;/sysroots/cortexa9hf-neon-poky-linux-gnueab=
i/usr/include/linux/version.h contains:</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; #define LINUX_VERSION_CODE 329728</div>
<div>which means kernel version 5.8 (why not 5.10?)</div>
<div><br />It looks like SDK takes default Yocto gatesgarth kernel version=
 (5.8) to SDK, not my kernel version.&nbsp;PREFERRED_PROVIDER_virtual/kerne=
l is properly set and right kernel version is built (at tmp/deploy/images)<=
/div>
<div>What am I doing wrong?<br /><br />I would appreciate any hints. Thank=
 you in advance.<br /><br />Best regards,<br />Lukasz</div>

--FIpx7UMGxw5Y4MINpHw8--
