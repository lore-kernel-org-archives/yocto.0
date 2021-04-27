Received: from smtp.vivaldi.net (smtp.vivaldi.net [31.209.137.12])
 by mx.groups.io with SMTP id smtpd.web12.3389.1619560857522157697
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Apr 2021 15:00:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vivaldi.net header.s=default header.b=PD6AfFry;
 spf=pass (domain: vivaldi.net, ip: 31.209.137.12, mailfrom: jchludzinski@vivaldi.net)
Received: from localhost (localhost [127.0.0.1])
	by smtp.vivaldi.net (Postfix) with ESMTP id 4734EBD042
	for <yocto@lists.yoctoproject.org>; Tue, 27 Apr 2021 22:00:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 4734EBD042
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1619560855;
	bh=m9qcUbNzfu6mMWtaBHt8SB+JFtUVOJvXd8uQ4594mVU=;
	h=Date:From:To:Subject:From;
	b=PD6AfFrymkR+hWbm6PcQrN++Se0v4BaUFi0Hn8tUoc7hDEa9KzEtSyyqUeIHZnLW7
	 1AQyAIk3sZ4B41YzzoNLzdFVeKx4tFnq8s4Y8LVx9LAh9H7ZAmUDxA4Xwy8Tk9l2of
	 S8DjwVGBOuMoZzmmgYVcGFWSbZJUqIieOKjJW50N1YOtvLa9bWYwARCzponMLK/z3B
	 rKPvV9WnYSXKlxTalo6R5TxPTJTrpUtOeMxWsh1MuENvW0Jr0KEzXntXYWzOpVOm30
	 LXHS/9Iz77knTZmoYnU41Kfju8Qcd/AWClCoYdyG2ChC+Wy83AVQGOK66qOFC30OF3
	 s3uzHN3W4t7bQ==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
	by localhost (mxo.viv.dc01 [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vyUxjhsOrD97 for <yocto@lists.yoctoproject.org>;
	Tue, 27 Apr 2021 22:00:51 +0000 (UTC)
Date: Tue, 27 Apr 2021 18:00:51 -0400
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 8C583BD040
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1619560851;
	bh=m9qcUbNzfu6mMWtaBHt8SB+JFtUVOJvXd8uQ4594mVU=;
	h=Date:From:To:Subject:From;
	b=SQn68byx7aW7BRN+a0tYffra6LCz4Wd5L3RdYzM2pyFRSDoUXW7BamT9LJ7C8SmKx
	 o7HpJ5odx7IiBrNt453+6+4rycZAWniWheXEZdNHG3M9GNQwCIEAUgsLY7M6S/UN1+
	 4D2DyoZbxWXBDm0jqRP/PNMuunM/9mxoUHaqwAxwL4RtGjLSwgDkqUjbE416l5RxHf
	 uc9MTZnmFTKOd4hC9YU712lnLBZt4BODHYdJvajSArfEJthCnxgIr+BKOktN0LPgcp
	 JM6V4SH5OpdgBYVynQS/mNbRtGsftgSqLkPrqmul2aJDAInv22ftln5KBnnrHPZYOp
	 buh91/Fv/1tBA==
From: "jchludzinski" <jchludzinski@vivaldi.net>
To: Yocto <yocto@lists.yoctoproject.org>
Subject: Bitbake build failures?
User-Agent: Roundcube Webmail/1.4.11
Message-ID: <77c8136227cb22a1fcaf247799f1ca70@vivaldi.net>
X-Sender: jchludzinski@vivaldi.net
Content-Type: multipart/alternative;
 boundary="=_29828ff1671aa5edacf86c6836d3f3d5"

--=_29828ff1671aa5edacf86c6836d3f3d5
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=US-ASCII;
 format=flowed

When I trying using bitbake to build openembedded Linux kernel, it dies 
with these download failures:

NOTE: Fetching uninative binary shim 
http://downloads.yoctoproject.org/releases/uninative/3.0/x86_64-nativesdk-libc.tar.xz;sha256sum=5ec5a9276046e7eceeac749a18b175667384e1f445cd4526300a41404d985a5b 
(will check PREMIRRORS first)
WARNING: Failed to fetch URL 
http://downloads.yoctoproject.org/releases/uninative/3.0/x86_64-nativesdk-libc.tar.xz;sha256sum=5ec5a9276046e7eceeac749a18b175667384e1f445cd4526300a41404d985a5b, 
attempting MIRRORS if available
ERROR: Fetcher failure: Fetch command export PSEUDO_DISABLED=1; export 
DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"; export 
SSH_AUTH_SOCK="/run/user/1000/keyring/ssh"; export 
PATH="/home/jski/poky/scripts:/home/jski/poky/build/tmp/work/core2-64-poky-linux/defaultpkgname/1.0-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux:/home/jski/poky/build/tmp/work/core2-64-poky-linux/defaultpkgname/1.0-r0/recipe-sysroot/usr/bin/crossscripts:/home/jski/poky/build/tmp/work/core2-64-poky-linux/defaultpkgname/1.0-r0/recipe-sysroot-native/usr/sbin:/home/jski/poky/build/tmp/work/core2-64-poky-linux/defaultpkgname/1.0-r0/recipe-sysroot-native/usr/bin:/home/jski/poky/build/tmp/work/core2-64-poky-linux/defaultpkgname/1.0-r0/recipe-sysroot-native/sbin:/home/jski/poky/build/tmp/work/core2-64-poky-linux/defaultpkgname/1.0-r0/recipe-sysroot-native/bin:/home/jski/poky/bitbake/bin:/home/jski/poky/build/tmp/hosttools"; 
export HOME="/home/jski"; /usr/bin/env wget -t 2 -T 30 --passive-ftp 
--no-check-certificate -P 
/home/jski/poky/build/downloads/uninative/5ec5a9276046e7eceeac749a18b175667384e1f445cd4526300a41404d985a5b 
'http://downloads.yoctoproject.org/releases/uninative/3.0/x86_64-nativesdk-libc.tar.xz' 
--progress=dot -v failed with exit code 4, output:
--2021-04-27 01:49:09--  
http://downloads.yoctoproject.org/releases/uninative/3.0/x86_64-nativesdk-libc.tar.xz
Resolving downloads.yoctoproject.org (downloads.yoctoproject.org)... 
failed: Connection timed out.
wget: unable to resolve host address 'downloads.yoctoproject.org'

WARNING: Disabling uninative as unable to fetch uninative tarball: 
Fetcher failure for URL: 
'http://downloads.yoctoproject.org/releases/uninative/3.0/x86_64-nativesdk-libc.tar.xz;sha256sum=5ec5a9276046e7eceeac749a18b175667384e1f445cd4526300a41404d985a5b'. 
Unable to fetch URL from any source.
WARNING: To build your own uninative loader, please bitbake 
uninative-tarball and set UNINATIVE_TARBALL appropriately.

Why do I ALWAYS get these download failures?

--=_29828ff1671aa5edacf86c6836d3f3d5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3DUTF-8" /></head><body style=3D'font-size: 10pt; font-family: Verdana,Gen=
eva,sans-serif'>
<div class=3D"v1pre"><span style=3D"font-size: 12pt;">When I trying using b=
itbake to build openembedded Linux kernel, it dies with these download fail=
ures:</span><br /><br /></div>
<div class=3D"v1pre">
<pre><span><span style=3D"font-size: 12pt;"><span style=3D"color: #ff0000;"=
><span style=3D"color: #000000;">NOTE: Fetching uninative binary shim http:=
//downloads.yoctoproject.org/releases/uninative/3.0/x86_64-nativesdk-libc.t=
ar.xz;sha256sum=3D5ec5a9276046e7eceeac749a18b175667384e1f445cd4526300a41404=
d985a5b</span> (will check PREMIRRORS first)
WARNING: Failed to fetch URL http://downloads.yoctoproject.org/releases/uni=
native/3.0/x86_64-nativesdk-libc.tar.xz;sha256sum=3D5ec5a9276046e7eceeac749=
a18b175667384e1f445cd4526300a41404d985a5b, attempting MIRRORS if available
ERROR: Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; export DB=
US_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1000/bus"; export SSH_AUTH_=
SOCK=3D"/run/user/1000/keyring/ssh"; export PATH=3D"/home/jski/poky/scripts=
:/home/jski/poky/build/tmp/work/core2-64-poky-linux/defaultpkgname/1.0-r0/r=
ecipe-sysroot-native/usr/bin/x86_64-poky-linux:/home/jski/poky/build/tmp/wo=
rk/core2-64-poky-linux/defaultpkgname/1.0-r0/recipe-sysroot/usr/bin/crosssc=
ripts:/home/jski/poky/build/tmp/work/core2-64-poky-linux/defaultpkgname/1.0=
-r0/recipe-sysroot-native/usr/sbin:/home/jski/poky/build/tmp/work/core2-64-=
poky-linux/defaultpkgname/1.0-r0/recipe-sysroot-native/usr/bin:/home/jski/p=
oky/build/tmp/work/core2-64-poky-linux/defaultpkgname/1.0-r0/recipe-sysroot=
-native/sbin:/home/jski/poky/build/tmp/work/core2-64-poky-linux/defaultpkgn=
ame/1.0-r0/recipe-sysroot-native/bin:/home/jski/poky/bitbake/bin:/home/jski=
/poky/build/tmp/hosttools"; export HOME=3D"/home/jski"; /usr/bin/env wget -=
t 2 -T 30 --passive-ftp --no-check-certificate -P /home/jski/poky/build/dow=
nloads/uninative/5ec5a9276046e7eceeac749a18b175667384e1f445cd4526300a41404d=
985a5b 'http://downloads.yoctoproject.org/releases/uninative/3.0/x86_64-nat=
ivesdk-libc.tar.xz' --progress=3Ddot -v failed with exit code 4, output:
--2021-04-27 01:49:09--  http://downloads.yoctoproject.org/releases/uninati=
ve/3.0/x86_64-nativesdk-libc.tar.xz
Resolving downloads.yoctoproject.org (downloads.yoctoproject.org)... failed=
: Connection timed out.
wget: unable to resolve host address &lsquo;downloads.yoctoproject.org&rsqu=
o;
</span>
<span style=3D"color: #ff9900;">WARNING: Disabling uninative as unable to f=
etch uninative tarball: Fetcher failure for URL: 'http://downloads.yoctopro=
ject.org/releases/uninative/3.0/x86_64-nativesdk-libc.tar.xz;sha256sum=3D5e=
c5a9276046e7eceeac749a18b175667384e1f445cd4526300a41404d985a5b'. Unable to =
fetch URL from any source.
WARNING: To build your own uninative loader, please bitbake uninative-tarba=
ll and set UNINATIVE_TARBALL appropriately.<br /><br /></span>Why do I ALWA=
YS get these download failures?</span></span></pre>
</div>
</body></html>

--=_29828ff1671aa5edacf86c6836d3f3d5--
