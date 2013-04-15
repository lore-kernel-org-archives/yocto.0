Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f172.google.com (mail-ve0-f172.google.com
	[209.85.128.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99C3DE0140A
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2013 00:58:17 -0700 (PDT)
Received: by mail-ve0-f172.google.com with SMTP id db10so1033118veb.31
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2013 00:58:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type:x-gm-message-state;
	bh=eS25FnQ7ZEWSWjCduOsb2Rl5fl1PtI3tq7tuw3MgoZk=;
	b=C2CH09uK7zBCTt0/L3uLcjzYE4FyGLKkLiHpMyKZ8Q3NRrXeLgAG5zi9lAWPRUAAwn
	+zzxcZ8D2rEtOyeCQ5OLxPlg0ENXVuZ+I2aj3IKc8k5q8yTAcVlhXEthP9JlzgTPBEGa
	kzE6wi4bHWbhEkOIHiA0+haJoR3gAjiSeehOsx3bHALIbxEL7Fs2NbRVxKlPFwXCjq9a
	iruhyo88K582T0HZa2KXorVhVfc33ydGnkEP9906cUF7MdyyuHQsZIady1FACu4jHIyF
	QbLDK1ozft7CxHrCXxPslaTUFqBwJ/+IRD7/sMFQI04w/85jkqjzN5ZG1XufTbJWM44O
	kZ3w==
MIME-Version: 1.0
X-Received: by 10.220.188.70 with SMTP id cz6mr15240129vcb.20.1366012696223;
	Mon, 15 Apr 2013 00:58:16 -0700 (PDT)
Received: by 10.52.163.74 with HTTP; Mon, 15 Apr 2013 00:58:16 -0700 (PDT)
Date: Mon, 15 Apr 2013 00:58:16 -0700
Message-ID: <CAPhnLPA2vA7=9WOATcmO4pRct07Gsn1kYUmKJvm_0ccf-nbArw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	yocto-announce@yoctoproject.org
X-Gm-Message-State: ALoCoQletqABryp7a2ZmLZckqPDigDeMUI8iqOFAfRzT99OhXUxZALSu2ELxp+cnpNKM06dbsmqu
Subject: Yocto Project 1.3.1 "danny-8.0.1" Released
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
X-List-Received-Date: Mon, 15 Apr 2013 07:58:17 -0000
Content-Type: multipart/alternative; boundary=089e0129512684825504da619df0

--089e0129512684825504da619df0
Content-Type: text/plain; charset=ISO-8859-1

All, the mirrors aren't quite synced yet, but they should be soon.


-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

We are pleased to release the first point release for the Yocto
Project's "danny"
release. This point release is available for download at:
http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3.1/poky-danny-8.0.1.tar.gz

Thanks to everyone for all their hard work.

- --
Elizabeth Flanagan
Yocto Project
Build and Release

- --------------------
yocto-1.3.1 Errata
- --------------------
Release Name: eclipse-poky-danny-8.0.1
Branch:  danny
Tag:  danny-8.0.1
Hash:  b75686c144fe8014912f644d36434254aabc3182
md5:  7c5b9c2bc8cad9d6e9b0faf37dcd7ad5  eclipse-poky-danny-8.0.1.tar.gz
Download Locations:http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3.1/eclipse-poky-danny-8.0.1.tar.gzhttp://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3.1/eclipse-poky-danny-8.0.1.tar.gz

Release Name: meta-intel-danny-8.0.1
Branch:  danny
Tag:  danny-8.0.1
Hash:  3c5818c96fa3c62369311b7d91d54a9154e3b888
md5:  e522ab3ba845f9f812ae0b5135849072  meta-intel-danny-8.0.1.tar.gz
Download Locations:http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3.1/meta-intel-danny-8.0.1.tar.gzhttp://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3.1/meta-intel-danny-8.0.1.tar.gz

Release Name: meta-qt3-danny-8.0.1
Branch:  danny
Tag:  danny-8.0.1
Hash:  c86fb1727ae09526c442ec29fffde3f010aa70eb
md5:  204a9d61927c19b2917e83da2db6d3f2  meta-qt3-danny-8.0.1.tar.gz
Download Locations:http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3.1/meta-qt3-danny-8.0.1.tar.gzhttp://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3.1/meta-qt3-danny-8.0.1.tar.gz

Release Name: poky-danny-8.0.1
Branch:  danny
Tag:  danny-8.0.1
Hash:  b0574887b45dcd5d5c90335dac5e1509ed8a2eff
md5:  732f5c6ee469a1a91788c53f5d04d60a  poky-danny-8.0.1.tar.gz
Download Locations:http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3.1/poky-danny-8.0.1.tar.gzhttp://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3.1/poky-danny-8.0.1.tar.gz

- --------------------
Features
- --------------------
- - LTTNG 2.0 is integrated, replacing the unusable LTTNG 0.9.7.
- - Installation from a live image works
- - The build output from a bitbake -f run are not ignored later
- - Disable disk usage monitor on btrfs and other file systems that don't
  support statvfs.f_files, as bitbake was incorrectly believing that the
  filesystem was always full.
- - Improve license manifest collection
- - Add Debian 7.0 as a tested distribution

- --------------------
Security fixes:
- --------------------
CVE-2012-5195
CVE-2012-2135
CVE-2012-2871
CVE-2012-4025
CVE-2011-3146
CVE-2011-3170
CVE-2011-2896
CVE-2012-5519
CVE-2012-4024
CVE-2012-4504

- --------------------
Fixed Bugs
- --------------------
3655: runqemu-extract-sdk is unable to extract rootfs if
      meta-toolchain isn't installed in the default directory
3756: crosstap and stap fail in core-image-sato-sdk (pre 1.4M3)
3792: Missed development packages using IMAGE_FEATURES+="dev-pkgs"
3558: guile fails to compile in world build - maybe parallelism issue
3549: rt-tests: do_compile failed with "ld: cannot find -lrttest"
3580: Security Advisory - libxml2 - CVE-2012-2871
3564: Security Advisory - squashfs - CVE-2012-4025
3233: error when selecting kernel version 3.4 in yocto bsp tool
3731: yocto-bsp creates kernel bbappend files that override settings
      even when other machines are active
3581: Security Advisory - librsvg - CVE-2011-3146
3583: Security Advisory - cups - CVE-2011-3170
3582: Security Advisory - cups - CVE-2011-2896
3579: Security Advisory - cups - CVE-2012-5519
2502: mDNS resolving is very slow
2138: live image fails to boot if size exceeds 1 GB
3413: [Performance] Use the profiling and tracing tools to see where
      build performance might be improved
3513: Security Advisory - squashfs - CVE-2012-4024
3503: additions to IMAGE_INSTALL_append go unnoticed
3484: do_package_write_* reexecuted on checksum change even with OEBasic
3398: Can not build any image. Hob freezes after selecting an base image.
2645: [DOC] The ADT documentation should be improved to include
      additional command line instructions
3487: Security Advisory - libproxy - CVE-2012-4504

- --------------------
Known Issues
- --------------------
Depending on configuration and existing sstate, images may try to
install both lttng-ust and lttng2-ust into an image, which will fail.
To work around this, bitbake -ccleansstate all of the lttng recipes.
This will be resolved in danny 8.0.2
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.14 (GNU/Linux)

iQEcBAEBAgAGBQJRa6TYAAoJEEyK+E/MEkQPnR0H/j31ZQ5Dp6g9Iz34N4Qkm4zO
kj0AUz5Nyi3R3BWMUjdvJeA4WO9ZzwfnuF+/vSKQ//DMZMehY4bveEhgv3Dg7NPN
fRW3KIZPE85lqaAmFcHNqfwxYhOSZnq4ZCLJ1w3UTXhUqCDyw/0eIN/lRnS9UWRo
xfnK62QJzzu+LJvtjGAosjg6RipSIw3GK6feBBR+/paiu+Rd90+vt2I61sEo5yO6
fP7r24ADYMzYHP7v6904469WpVJQYbIwT0qJFC/BAMUnlSUBxqRpJe/ax3PSGVsw
azla0EsV/IK7gLeeRdldnwy+ppbgdvysxf8F+8pK9z1RLXhSDRDjIbYF8zXJ7N0=
=r3UX
-----END PGP SIGNATURE-----

--089e0129512684825504da619df0
Content-Type: text/html; charset=ISO-8859-1

<div dir="ltr"><pre>All, the mirrors aren&#39;t quite synced yet, but they should be soon.<br></pre><pre><br>-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

We are pleased to release the first point release for the Yocto Project&#39;s &quot;danny&quot;
release. This point release is available for download at:

<a href="http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3.1/poky-danny-8.0.1.tar.gz">http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3.1/poky-danny-8.0.1.tar.gz</a>

Thanks to everyone for all their hard work.

- --
Elizabeth Flanagan
Yocto Project
Build and Release

- --------------------
yocto-1.3.1 Errata
- --------------------
Release Name: eclipse-poky-danny-8.0.1
Branch:  danny
Tag:  danny-8.0.1
Hash:  b75686c144fe8014912f644d36434254aabc3182
md5:  7c5b9c2bc8cad9d6e9b0faf37dcd7ad5  eclipse-poky-danny-8.0.1.tar.gz
Download Locations:
<a href="http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3.1/eclipse-poky-danny-8.0.1.tar.gz">http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3.1/eclipse-poky-danny-8.0.1.tar.gz</a>
<a href="http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3.1/eclipse-poky-danny-8.0.1.tar.gz">http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3.1/eclipse-poky-danny-8.0.1.tar.gz</a>

Release Name: meta-intel-danny-8.0.1
Branch:  danny
Tag:  danny-8.0.1
Hash:  3c5818c96fa3c62369311b7d91d54a9154e3b888
md5:  e522ab3ba845f9f812ae0b5135849072  meta-intel-danny-8.0.1.tar.gz
Download Locations:
<a href="http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3.1/meta-intel-danny-8.0.1.tar.gz">http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3.1/meta-intel-danny-8.0.1.tar.gz</a>
<a href="http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3.1/meta-intel-danny-8.0.1.tar.gz">http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3.1/meta-intel-danny-8.0.1.tar.gz</a>

Release Name: meta-qt3-danny-8.0.1
Branch:  danny
Tag:  danny-8.0.1
Hash:  c86fb1727ae09526c442ec29fffde3f010aa70eb
md5:  204a9d61927c19b2917e83da2db6d3f2  meta-qt3-danny-8.0.1.tar.gz
Download Locations:
<a href="http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3.1/meta-qt3-danny-8.0.1.tar.gz">http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3.1/meta-qt3-danny-8.0.1.tar.gz</a>
<a href="http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3.1/meta-qt3-danny-8.0.1.tar.gz">http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3.1/meta-qt3-danny-8.0.1.tar.gz</a>

Release Name: poky-danny-8.0.1
Branch:  danny
Tag:  danny-8.0.1
Hash:  b0574887b45dcd5d5c90335dac5e1509ed8a2eff
md5:  732f5c6ee469a1a91788c53f5d04d60a  poky-danny-8.0.1.tar.gz
Download Locations:
<a href="http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3.1/poky-danny-8.0.1.tar.gz">http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.3.1/poky-danny-8.0.1.tar.gz</a>
<a href="http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3.1/poky-danny-8.0.1.tar.gz">http://mirrors.kernel.org/yocto/yocto/milestones/yocto-1.3.1/poky-danny-8.0.1.tar.gz</a>

- --------------------
Features
- --------------------
- - LTTNG 2.0 is integrated, replacing the unusable LTTNG 0.9.7.
- - Installation from a live image works
- - The build output from a bitbake -f run are not ignored later
- - Disable disk usage monitor on btrfs and other file systems that don&#39;t
  support statvfs.f_files, as bitbake was incorrectly believing that the
  filesystem was always full.
- - Improve license manifest collection
- - Add Debian 7.0 as a tested distribution

- --------------------
Security fixes:
- --------------------
CVE-2012-5195
CVE-2012-2135
CVE-2012-2871
CVE-2012-4025
CVE-2011-3146
CVE-2011-3170
CVE-2011-2896
CVE-2012-5519
CVE-2012-4024
CVE-2012-4504

- --------------------
Fixed Bugs
- --------------------
3655: runqemu-extract-sdk is unable to extract rootfs if
      meta-toolchain isn&#39;t installed in the default directory
3756: crosstap and stap fail in core-image-sato-sdk (pre 1.4M3)
3792: Missed development packages using IMAGE_FEATURES+=&quot;dev-pkgs&quot;
3558: guile fails to compile in world build - maybe parallelism issue
3549: rt-tests: do_compile failed with &quot;ld: cannot find -lrttest&quot;
3580: Security Advisory - libxml2 - CVE-2012-2871
3564: Security Advisory - squashfs - CVE-2012-4025
3233: error when selecting kernel version 3.4 in yocto bsp tool
3731: yocto-bsp creates kernel bbappend files that override settings
      even when other machines are active
3581: Security Advisory - librsvg - CVE-2011-3146
3583: Security Advisory - cups - CVE-2011-3170
3582: Security Advisory - cups - CVE-2011-2896
3579: Security Advisory - cups - CVE-2012-5519
2502: mDNS resolving is very slow
2138: live image fails to boot if size exceeds 1 GB
3413: [Performance] Use the profiling and tracing tools to see where
      build performance might be improved
3513: Security Advisory - squashfs - CVE-2012-4024
3503: additions to IMAGE_INSTALL_append go unnoticed
3484: do_package_write_* reexecuted on checksum change even with OEBasic
3398: Can not build any image. Hob freezes after selecting an base image.
2645: [DOC] The ADT documentation should be improved to include
      additional command line instructions
3487: Security Advisory - libproxy - CVE-2012-4504

- --------------------
Known Issues
- --------------------
Depending on configuration and existing sstate, images may try to
install both lttng-ust and lttng2-ust into an image, which will fail.
To work around this, bitbake -ccleansstate all of the lttng recipes.
This will be resolved in danny 8.0.2
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.14 (GNU/Linux)

iQEcBAEBAgAGBQJRa6TYAAoJEEyK+E/MEkQPnR0H/j31ZQ5Dp6g9Iz34N4Qkm4zO
kj0AUz5Nyi3R3BWMUjdvJeA4WO9ZzwfnuF+/vSKQ//DMZMehY4bveEhgv3Dg7NPN
fRW3KIZPE85lqaAmFcHNqfwxYhOSZnq4ZCLJ1w3UTXhUqCDyw/0eIN/lRnS9UWRo
xfnK62QJzzu+LJvtjGAosjg6RipSIw3GK6feBBR+/paiu+Rd90+vt2I61sEo5yO6
fP7r24ADYMzYHP7v6904469WpVJQYbIwT0qJFC/BAMUnlSUBxqRpJe/ax3PSGVsw
azla0EsV/IK7gLeeRdldnwy+ppbgdvysxf8F+8pK9z1RLXhSDRDjIbYF8zXJ7N0=
=r3UX
-----END PGP SIGNATURE-----
</pre></div>

--089e0129512684825504da619df0--
