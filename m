Return-Path: <jpdoyon@newtrax.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5076C433F5
	for <webhook@archiver.kernel.org>; Tue,  5 Oct 2021 20:59:21 +0000 (UTC)
Subject: Getting absolute paths in yocto generated native binary #bitbake
 #native #toolchain #sdk
To: yocto@lists.yoctoproject.org
From: "Jean-Pierre Doyon" <jpdoyon@newtrax.com>
X-Originating-Location: Chambly, Quebec, CA (45.45.117.54)
X-Originating-Platform: Windows Chrome 94
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 05 Oct 2021 13:59:21 -0700
Message-ID: <NG6b.1633467561448539724.rwQW@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="17dbqtuwVejQ8razqN1x"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Oct 2021 20:59:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54970

--17dbqtuwVejQ8razqN1x
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm attempting to create a USB first boot tarball for our custom iMX6 board=
 that would contain the imx-usb-loader executable, config files and u-boot/=
SPL files. The goal being to deploy that to the production machine to progr=
am the empty boards right after being assembled.

While I had plenty of hurdles figuring out how to do this (I'm still pretty=
 newbie with Yocyo), I managed to get everything just the way I wanted it. =
But when I get the tarball to the production machine, which runs the exact =
same Ubuntu 18.04 LTS Linux as the build machine, the imx_usb tool won't ru=
n. The reason being that it's missing some library. Running LDD on the exec=
utable turns up this:

=E2=94=94=E2=94=80$> ldd usr/bin/imx_usb
   linux-vdso.so.1 =3D>  (0x00007ffd7031d000)
   libusb-1.0.so.0 =3D> /lib/x86_64-linux-gnu/libusb-1.0.so.0 (0x00007f986a=
47e000)
   libc.so.6 =3D> /lib/x86_64-linux-gnu/libc.so.6 (0x00007f986a0b4000)
   libudev.so.1 =3D> /lib/x86_64-linux-gnu/libudev.so.1 (0x00007f986a86c000=
)
   libpthread.so.0 =3D> /lib/x86_64-linux-gnu/libpthread.so.0 (0x00007f9869=
e97000)
   /home/jpdoyon/newtrax-layersetup-dunfell/build/tmp/sysroots-uninative/x8=
6_64-linux/lib/ld-linux-x86-64.so.2 =3D> /lib64/ld-linux-x86-64.so.2 (0x000=
07f986a696000)
   librt.so.1 =3D> /lib/x86_64-linux-gnu/librt.so.1 (0x00007f9869c8f000)

Why is the ld-linux-x86-64.so.2 using an absolute path while all the other =
libraries aren't?

If I install the library in the location above, then the executable starts =
working... So how do I make sure Yocto doesn't do this?

--17dbqtuwVejQ8razqN1x
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p style=3D"margin-bottom: var(--s-prose-spacing); padding: 0px; border: 0p=
x; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-st=
retch: inherit; line-height: inherit; font-family: -apple-system, BlinkMacS=
ystemFont, 'Segoe UI', 'Liberation Sans', sans-serif; font-size: 15px; vert=
ical-align: baseline; box-sizing: inherit; clear: both; color: #232629;">I'=
m attempting to create a USB first boot tarball for our custom iMX6 board t=
hat would contain the imx-usb-loader executable, config files and u-boot/SP=
L files. The goal being to deploy that to the production machine to program=
 the empty boards right after being assembled.</p>
<p style=3D"margin-bottom: var(--s-prose-spacing); padding: 0px; border: 0p=
x; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-st=
retch: inherit; line-height: inherit; font-family: -apple-system, BlinkMacS=
ystemFont, 'Segoe UI', 'Liberation Sans', sans-serif; font-size: 15px; vert=
ical-align: baseline; box-sizing: inherit; clear: both; color: #232629;">Wh=
ile I had plenty of hurdles figuring out how to do this (I'm still pretty n=
ewbie with Yocyo), I managed to get everything just the way I wanted it. Bu=
t when I get the tarball to the production machine, which runs the exact sa=
me Ubuntu 18.04 LTS Linux as the build machine, the imx_usb tool won't run.=
 The reason being that it's missing some library. Running LDD on the execut=
able turns up this:</p>
<pre style=3D"margin-bottom: calc(var(--s-prose-spacing) + 0.4em); padding:=
 12px; font-variant-numeric: inherit; font-variant-east-asian: inherit; fon=
t-stretch: inherit; line-height: 1.30769; font-family: var(--ff-mono); vert=
ical-align: baseline; box-sizing: inherit; width: auto; max-height: 600px; =
background-color: var(--highlight-bg); border-radius: 5px; overflow-wrap: n=
ormal; color: var(--highlight-color); border: 0px initial initial;"><code s=
tyle=3D"margin: 0px; border: 0px; font-style: inherit; font-variant: inheri=
t; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-=
family: var(--ff-mono); font-size: 13px; vertical-align: baseline; box-sizi=
ng: inherit; white-space: inherit;">=E2=94=94=E2=94=80$&gt; ldd usr/bin/imx=
_usb
    linux-vdso.so.1 =3D&gt;  (0x00007ffd7031d000)
    libusb-1.0.so.0 =3D&gt; /lib/x86_64-linux-gnu/libusb-1.0.so.0 (0x00007f=
986a47e000)
    libc.so.6 =3D&gt; /lib/x86_64-linux-gnu/libc.so.6 (0x00007f986a0b4000)
    libudev.so.1 =3D&gt; /lib/x86_64-linux-gnu/libudev.so.1 (0x00007f986a86=
c000)
    libpthread.so.0 =3D&gt; /lib/x86_64-linux-gnu/libpthread.so.0 (0x00007f=
9869e97000)
    /home/jpdoyon/newtrax-layersetup-dunfell/build/tmp/sysroots-uninative/x=
86_64-linux/lib/ld-linux-x86-64.so.2 =3D&gt; /lib64/ld-linux-x86-64.so.2 (0=
x00007f986a696000)
    librt.so.1 =3D&gt; /lib/x86_64-linux-gnu/librt.so.1 (0x00007f9869c8f000=
)
</code></pre>
<p style=3D"margin-bottom: var(--s-prose-spacing); padding: 0px; border: 0p=
x; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-st=
retch: inherit; line-height: inherit; font-family: -apple-system, BlinkMacS=
ystemFont, 'Segoe UI', 'Liberation Sans', sans-serif; font-size: 15px; vert=
ical-align: baseline; box-sizing: inherit; clear: both; color: #232629;">Wh=
y is the ld-linux-x86-64.so.2 using an absolute path while all the other li=
braries aren't?</p>
<p style=3D"margin-bottom: 0px; padding: 0px; border: 0px; font-variant-num=
eric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; lin=
e-height: inherit; font-family: -apple-system, BlinkMacSystemFont, 'Segoe U=
I', 'Liberation Sans', sans-serif; font-size: 15px; vertical-align: baselin=
e; box-sizing: inherit; clear: both; color: #232629;">If I install the libr=
ary in the location above, then the executable starts working... So how do =
I make sure Yocto doesn't do this?</p>

--17dbqtuwVejQ8razqN1x--

