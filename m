Return-Path: <bertrand.roussel.fr@gmail.com>
Received: from mail-lb0-f195.google.com (mail-lb0-f195.google.com
	[209.85.217.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 001CEE00509
	for <yocto@yoctoproject.org>; Thu, 30 Jan 2014 05:14:37 -0800 (PST)
Received: by mail-lb0-f195.google.com with SMTP id z5so725288lbh.2
	for <yocto@yoctoproject.org>; Thu, 30 Jan 2014 05:14:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:from:date:message-id:subject:to:content-type;
	bh=THO/X0ehIP+VlSu3mIr/EiS7pJQyB05cqfv5h5DVO+w=;
	b=FPqn0qeNozgnhrFbOQjM9+2ptzfQtw7lLvRYhX/hrJ8ppHvke5/Td2DiwUnA9BaAvj
	3a8yYI9rItc3dg2G3VJvAebXfm7ekZ4tAtdfXWPOzfqcP3CzPOiXPq3waXjGgGu3hqiw
	Vnabux01G2muleaeZWOuqc9AJzXtuP72C7/UsWWoFBk76rrAtceYlaw1Xcx4KagwmvcK
	TXNXFlRivpY1IIp4rxHoWRy7tkhSIvfyDR4yOKbUs/sT7SqfRCIIx4G1dW1pl0JZSUPx
	z4RiY2IB3zVR8WkPmHVu8EyCbLe8TBPIkD7fN/APhLIdBZJEsX7mlgjjm+8MeKEQSuQa
	6BqQ==
X-Received: by 10.112.63.193 with SMTP id i1mr911507lbs.54.1391087675613; Thu,
	30 Jan 2014 05:14:35 -0800 (PST)
MIME-Version: 1.0
Sender: bertrand.roussel.fr@gmail.com
Received: by 10.112.27.232 with HTTP; Thu, 30 Jan 2014 05:14:15 -0800 (PST)
From: Bertrand Roussel <bertrand.roussel@cor-net.org>
Date: Thu, 30 Jan 2014 14:14:15 +0100
X-Google-Sender-Auth: ninZpU8TerOV9-RvmBL2a-uJ1L0
Message-ID: <CAF8imWgmu1L6nHBoNFuEQQfnJH+5Uryq6sWmU6iRXM+Q=fg4aw@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Thu, 30 Jan 2014 21:53:58 -0800
Subject: Personalized SDKPATH and sysroot
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 30 Jan 2014 13:14:39 -0000
Content-Type: multipart/alternative; boundary=001a11c3fd10c1a63604f12fd679

--001a11c3fd10c1a63604f12fd679
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

I'm currently playing with Yocto 1.4, and I have few questions about
generated SDKs.

1/ The sysroot seems to be hardcoded in binaries, for instance:
$
/opt/poky/1.4.2/sysroots/x86_64-pokysdk-linux/usr/bin/armv6-vfp-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc
--print-sysroot
/opt/poky/1.4.2/sysroots/armv6-vfp-poky-linux-gnueabi

$ ./poky-eglibc-x86_64-arm-toolchain-1.4.1.sh
Enter target directory for SDK (default: /opt/poky/1.4.2): /tmp/pokysdk
You are about to install the SDK to "/tmp/pokysdk". Proceed[Y/n]?
Extracting SDK...done
Setting it up...done
SDK has been successfully set up and is ready to be used.
$
/tmp/pokysdk/sysroots/x86_64-pokysdk-linux/usr/bin/armv6-vfp-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc
--print-sysroot
/opt/poky/1.4.2/sysroots/armv6-vfp-poky-linux-gnueabi

There is a 'relocate_sdk.py', is it meant to replace this path (it does
look like it) ?
It's replacing some lib-related paths, but the sysroot is kept intact,
enforcing the use of --sysroot to use the toolchain.

Did I miss something ?

2/ I'm using the 'poky' distribution, which specifies the SDKPATH (in
meta-yocto/conf/distro/poky.conf ) as "/opt/${DISTRO}/${SDK_VERSION}".
Is there a way to override this without making a new distribution
inheriting 'poky' ?

I tried to make a new toolchain recipe based on meta-toolchain, and set the
value there, but only a small part of the toolchain ends up in that
directory (gcc for instance, is compiled with the value set in the
poky.conf ).

Thanks!
Bertrand

--001a11c3fd10c1a63604f12fd679
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div><div><div>Hi all,<br><b=
r></div>I&#39;m currently playing with Yocto 1.4, and I have few questions =
about generated SDKs.<br><br></div>1/ The sysroot seems to be hardcoded in =
binaries, for instance:<br>

$ /opt/poky/1.4.2/sysroots/x86_64-pokysdk-linux/usr/bin/armv6-vfp-poky-linu=
x-gnueabi/arm-poky-linux-gnueabi-gcc --print-sysroot<br>/opt/poky/1.4.2/sys=
roots/armv6-vfp-poky-linux-gnueabi<br><br>$ ./<a href=3D"http://poky-eglibc=
-x86_64-arm-toolchain-1.4.1.sh">poky-eglibc-x86_64-arm-toolchain-1.4.1.sh</=
a><br>

Enter target directory for SDK (default: /opt/poky/1.4.2): /tmp/pokysdk=A0 =
<br>You are about to install the SDK to &quot;/tmp/pokysdk&quot;. Proceed[Y=
/n]?<br>Extracting SDK...done<br>Setting it up...done<br>SDK has been succe=
ssfully set up and is ready to be used.<br>

$ /tmp/pokysdk/sysroots/x86_64-pokysdk-linux/usr/bin/armv6-vfp-poky-linux-g=
nueabi/arm-poky-linux-gnueabi-gcc --print-sysroot<br>/opt/poky/1.4.2/sysroo=
ts/armv6-vfp-poky-linux-gnueabi<br><br></div>There is a &#39;relocate_sdk.p=
y&#39;, is it meant to replace this path (it does look like it) ?<br>

</div>It&#39;s replacing some lib-related paths, but the sysroot is kept in=
tact, enforcing the use of --sysroot to use the toolchain.<br><br></div><di=
v>Did I miss something ?<br></div><div><br></div>2/ I&#39;m using the &#39;=
poky&#39; distribution, which specifies the SDKPATH (in meta-yocto/conf/dis=
tro/poky.conf ) as &quot;/opt/${DISTRO}/${SDK_VERSION}&quot;.<br>

</div>Is there a way to override this without making a new distribution inh=
eriting &#39;poky&#39; ?<br><br></div>I tried to make a new toolchain recip=
e based on meta-toolchain, and set the value there, but only a small part o=
f the toolchain ends up in that directory (gcc for instance, is compiled wi=
th the value set in the poky.conf ).<br>

<br></div>Thanks!<br></div>Bertrand<br><div><div><br><br><div><div><div><di=
v><br><br></div></div></div></div></div></div></div>

--001a11c3fd10c1a63604f12fd679--
