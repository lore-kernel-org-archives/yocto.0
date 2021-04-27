Received: from smtp.vivaldi.net (smtp.vivaldi.net [31.209.137.12])
 by mx.groups.io with SMTP id smtpd.web10.4560.1619503289761447411
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Apr 2021 23:01:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vivaldi.net header.s=default header.b=SfWDrHV6;
 spf=pass (domain: vivaldi.net, ip: 31.209.137.12, mailfrom: jchludzinski@vivaldi.net)
Received: from localhost (localhost [127.0.0.1])
	by smtp.vivaldi.net (Postfix) with ESMTP id 02CFDBD025
	for <yocto@lists.yoctoproject.org>; Tue, 27 Apr 2021 06:01:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 02CFDBD025
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1619503287;
	bh=c0oT2BWQ5EnsDf0XXKD1uIuQ3zmVmUoWnx+xMVKlm2g=;
	h=Date:From:To:Subject:From;
	b=SfWDrHV6buDRDU17889UjxXjYL0ZsuEt3YRZiIV2eTE1YmAEjNQrKOcqPCJlSBdZt
	 i3bkgSypzr/H2u3THrLsbJvyh3h3KIYTwGm1hiiBROVxENrT56vkaZ7ilScHkFfEo2
	 f3Dt/+c4whGNjMRHBPTSCoVcunyScsgLI8g3WORqmIajJ6blTXLW5bSkCmylPFJ9Mu
	 tNLnB+4qEqsU+I0QbB92+C0rk40+f97BCL5lhSxT4pRaKeTJi613e66J7hWC5dD8aa
	 hVuZRyx92vxBHEF6Tutq7L+lWsv0unMFIUoCaLN0/cZT9ubyQwGlYZz6Y9yX08pJbk
	 FBbv4feEOGjSg==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
	by localhost (mxo.viv.dc01 [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rI1sPZ1-w67w for <yocto@lists.yoctoproject.org>;
	Tue, 27 Apr 2021 06:01:24 +0000 (UTC)
Date: Tue, 27 Apr 2021 02:01:24 -0400
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 8E0E7BD018
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1619503284;
	bh=c0oT2BWQ5EnsDf0XXKD1uIuQ3zmVmUoWnx+xMVKlm2g=;
	h=Date:From:To:Subject:From;
	b=cKS4J9we6Xlyys75yRarEWFIkc8t4wX/PmP7mzGrtxgAuodL8ncDhQZHz6la+AQM3
	 0m70WVifmVaLITcZaALkpehlPHGO+taAw5ncymHZi+LfFDZTnNO6+3ZXYyJGtSZymp
	 SrAEoHy+RU9rUFB+3FtOxHxAAJ8DjWtSvaVZzigceiaaunFl3stcYs3GtPbkefIqKG
	 +OC4fWjy8AlMWvLirrIW8on01Nzs2Kmazpe80C6Ju/WvZPOc6R3ixzcqAlVOd230cV
	 J4F+cX1wah7n3M+ce3zAkYcI1dV4qeCM19UWxyTZIy6Ago2GH4P8MoZivUN82kY6ij
	 BWMVCe92KCdxg==
From: "jchludzinski" <jchludzinski@vivaldi.net>
To: Yocto <yocto@lists.yoctoproject.org>
Subject: ERROR: Fetcher failure: Fetch command export...
User-Agent: Roundcube Webmail/1.4.11
Message-ID: <5bdffd88cda11c8ca92eb10bb2d7fe25@vivaldi.net>
X-Sender: jchludzinski@vivaldi.net
Content-Type: multipart/alternative;
 boundary="=_99af2c1672662d8e58c1ed23b26072f0"

--=_99af2c1672662d8e58c1ed23b26072f0
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

Why?

--=_99af2c1672662d8e58c1ed23b26072f0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3DUTF-8" /></head><body style=3D'font-size: 10pt; font-family: Verdana,Gen=
eva,sans-serif'>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
When I trying using bitbake to build openembedded Linux kernel, it dies wit=
h these download failures:<br /><br /></div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">
<pre><span style=3D"font-size: 11pt;"><span style=3D"font-family: 'courier =
new', courier, monospace;">NOTE: Fetching uninative binary shim http://down=
loads.yoctoproject.org/releases/uninative/3.0/x86_64-nativesdk-libc.tar.xz;=
sha256sum=3D5ec5a9276046e7eceeac749a18b175667384e1f445cd4526300a41404d985a5=
b (will check PREMIRRORS first)
<span style=3D"color: #a2734c;">WARNING</span>: <span style=3D"color: #a273=
4c;">Failed to fetch URL http://downloads.yoctoproject.org/releases/uninati=
ve/3.0/x86_64-nativesdk-libc.tar.xz;sha256sum=3D5ec5a9276046e7eceeac749a18b=
175667384e1f445cd4526300a41404d985a5b, attempting MIRRORS if available</spa=
n>
<span style=3D"color: #c01c28;">ERROR</span>: <span style=3D"color: #c01c28=
;">Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; export DBUS_S=
ESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1000/bus"; export SSH_AUTH_SOCK=
=3D"/run/user/1000/keyring/ssh"; export PATH=3D"/home/jski/poky/scripts:/ho=
me/jski/poky/build/tmp/work/core2-64-poky-linux/defaultpkgname/1.0-r0/recip=
e-sysroot-native/usr/bin/x86_64-poky-linux:/home/jski/poky/build/tmp/work/c=
ore2-64-poky-linux/defaultpkgname/1.0-r0/recipe-sysroot/usr/bin/crossscript=
s:/home/jski/poky/build/tmp/work/core2-64-poky-linux/defaultpkgname/1.0-r0/=
recipe-sysroot-native/usr/sbin:/home/jski/poky/build/tmp/work/core2-64-poky=
-linux/defaultpkgname/1.0-r0/recipe-sysroot-native/usr/bin:/home/jski/poky/=
build/tmp/work/core2-64-poky-linux/defaultpkgname/1.0-r0/recipe-sysroot-nat=
ive/sbin:/home/jski/poky/build/tmp/work/core2-64-poky-linux/defaultpkgname/=
1.0-r0/recipe-sysroot-native/bin:/home/jski/poky/bitbake/bin:/home/jski/pok=
y/build/tmp/hosttools"; export HOME=3D"/home/jski"; /usr/bin/env wget -t 2 =
-T 30 --passive-ftp --no-check-certificate -P /home/jski/poky/build/downloa=
ds/uninative/5ec5a9276046e7eceeac749a18b175667384e1f445cd4526300a41404d985a=
5b 'http://downloads.yoctoproject.org/releases/uninative/3.0/x86_64-natives=
dk-libc.tar.xz' --progress=3Ddot -v failed with exit code 4, output:</span>
<span style=3D"color: #c01c28;">--2021-04-27 01:49:09--  http://downloads.y=
octoproject.org/releases/uninative/3.0/x86_64-nativesdk-libc.tar.xz</span>
<span style=3D"color: #c01c28;">Resolving downloads.yoctoproject.org (downl=
oads.yoctoproject.org)... failed: Connection timed out.</span>
<span style=3D"color: #c01c28;">wget: unable to resolve host address &lsquo=
;downloads.yoctoproject.org&rsquo;</span>

<span style=3D"color: #a2734c;">WARNING</span>: <span style=3D"color: #a273=
4c;">Disabling uninative as unable to fetch uninative tarball: Fetcher fail=
ure for URL: 'http://downloads.yoctoproject.org/releases/uninative/3.0/x86_=
64-nativesdk-libc.tar.xz;sha256sum=3D5ec5a9276046e7eceeac749a18b175667384e1=
f445cd4526300a41404d985a5b'. Unable to fetch URL from any source.</span>
<span style=3D"color: #a2734c;">WARNING</span>: </span><span style=3D"color=
: #a2734c;"><span style=3D"font-family: 'courier new', courier, monospace;"=
>To build your own uninative loader, please bitbake uninative-tarball and s=
et UNINATIVE_TARBALL appropriately.</span><br /><br /></span><span style=3D=
"color: #000000; font-size: 12pt;">Why?</span></span></pre>
</div>
</body></html>

--=_99af2c1672662d8e58c1ed23b26072f0--
