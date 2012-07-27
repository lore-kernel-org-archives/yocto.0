Return-Path: <halstead@happypunch.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C39DE00280
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2012 16:02:13 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so6692026pbb.35
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2012 16:02:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=happypunch.com; s=google;
	h=sender:message-id:date:from:user-agent:mime-version:to:subject
	:x-enigmail-version:content-type:content-transfer-encoding;
	bh=QYljg+zgdUQuJDUb0BCK4Vraf6YYaUg1DGUHJS8N3o0=;
	b=H9lYjT4N6CEw4icJ5DQyaV5EdAXyKPQYDCFdQV7mUB5iZagoYzWbjXjIDkK/scs6xr
	/WZ6IA/EnYpexAeBty4g4kNtRtXdHikRneg90Cw2mmLFpQTikf/lP1NkRGNU/iG60HBq
	GhTOAPqGwfMAvPV72tqYwQzzcFo5AbFZlfjhw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:message-id:date:from:user-agent:mime-version:to:subject
	:x-enigmail-version:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=QYljg+zgdUQuJDUb0BCK4Vraf6YYaUg1DGUHJS8N3o0=;
	b=KaInQvE7IYvf7rsi9cN3uhY+rdo0I868OwEOUJtJJ0tzN3i778F179xx2mKMaQh+V4
	0L3URaAegs2DKUIoksXL2v4p3F4+ctb6Q8S3MhGIJWcB/utTShsXLEmGtzH1Pvq5cXa7
	8w5LAqlMf0fl3kbbadkCDaMkIDZhtPATUa1Jdu/+b49qvlybT++S3NRmX4GkQuHyyCG0
	NqVjQCpyt+oJsZhi9spg0q1hPz8aoD+TOaTqwt1nhyReUzh7zV91JVb3FUBo9hwLdqqL
	i8u4T4xVJ65jjWysFhMxD69e04cz3hb5Uuuajv/bWF+hBzg/z7abk+4zlykzH9rbVT4/
	ZYPA==
Received: by 10.68.220.163 with SMTP id px3mr17363623pbc.167.1343430133015;
	Fri, 27 Jul 2012 16:02:13 -0700 (PDT)
Received: from [192.168.1.57] (static-50-43-56-179.bvtn.or.frontiernet.net.
	[50.43.56.179])
	by mx.google.com with ESMTPS id kh1sm2728281pbc.23.2012.07.27.16.02.11
	(version=SSLv3 cipher=OTHER); Fri, 27 Jul 2012 16:02:12 -0700 (PDT)
Sender: Michael Halstead <halstead@happypunch.com>
Message-ID: <50131DF3.5070302@yoctoproject.org>
Date: Fri, 27 Jul 2012 16:02:11 -0700
From: Michael Halstead <michael@yoctoproject.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: yocto-announce@yoctoproject.org, 
	Yocto Project Discussion <yocto@yoctoproject.org>
X-Enigmail-Version: 1.5a1pre
X-Gm-Message-State: ALoCoQlbM6Q1zbXvvudYRAJ7cLJ0qrwcfmbHdzrEPbAUUtsyuzKbi/DALTRz97rkCdmBQuda44yv
Subject: [ANNOUNCEMENT] Yocto 1.1.2 Released
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 27 Jul 2012 23:02:13 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hello,

We are pleased to announce the new Yocto Project "Edison" point release
1.1.2.

The full test report for this release is available at
https://wiki.yoctoproject.org/wiki/Yocto_1.1.2_Test_Report


You can download this release from either the main Yocto Project download
site:

http://downloads.yoctoproject.org/releases/yocto/yocto-1.1.2/poky-edison-6.0.2.tar.bz2

or the kernel.org mirror:

http://mirrors.kernel.org/yocto/yocto/yocto-1.1.2/poky-edison-6.0.2.tar.bz2

Git tags gpg key information is available at:
http://pgp.mit.edu:11371/pks/lookup?op=vindex&search=0x4C8AF84FCC12440F

Thank you everyone, especially the 1.1.2 maintainer Joshua Lock, for all
their hard work!

Michael Halstead
Yocto Project Systems Administrator
<michael@yoctoproject.org>


- --------------------
edison-6.0.2 Errata
- --------------------

Release Name: eclipse-poky-edison-6.0.2 
Branch:  edison
Tag:  edison-6.0.2
Hash:  826e8b3bd14d945fafef3073884524a04bfa7f7c
md5:  f462da45012d59d2e2948e2e6a6906e2  eclipse-poky-edison-6.0.2.tar.bz2
Download Locations:
 
http://downloads.yoctoproject.org/releases/yocto/yocto-1.1.2/eclipse-poky-edison-6.0.2.tar.bz2
 
http://mirrors.kernel.org/yocto/yocto/yocto-1.1.2/eclipse-poky-edison-6.0.2.tar.bz2



Release Name: meta-qt3-edison-6.0.2 
Branch:  edison
Tag:  edison-6.0.2
Hash:  0c3153242344e5113a50002939d36a2b739cc497
md5:  3a6dd4f556db5ca3ff55be09d4937b46  meta-qt3-edison-6.0.2.tar.bz2
Download Locations:
 
http://downloads.yoctoproject.org/releases/yocto/yocto-1.1.2/meta-qt3-edison-6.0.2.tar.bz2
 
http://mirrors.kernel.org/yocto/yocto/yocto-1.1.2/meta-qt3-edison-6.0.2.tar.bz2



Release Name: poky-edison-6.0.2 
Branch:  edison
Tag:  edison-6.0.2
Hash:  8886aee5b9741c05886994967d9ecf420331c600
md5:  9974cb0751268b2fc14b6a27461c7d15  poky-edison-6.0.2.tar.bz2
Download Locations:
 
http://downloads.yoctoproject.org/releases/yocto/yocto-1.1.2/poky-edison-6.0.2.tar.bz2
 
http://mirrors.kernel.org/yocto/yocto/yocto-1.1.2/poky-edison-6.0.2.tar.bz2



- --------------------
Features
- --------------------

* Enhanced useradd class including fixes for the following issues:
  - Ensure -native recipes don't depend on target recipes
  - Fixes for useradd recipes when using shared state
  - Retry commands to avoid races around lock contention
* Improved download reliability by adding checksums to several recipes
* More robust image creation include:
  - Fixed creation of large (>1GB) live images [YOCTO #2138]
  - Account for FAT fs overhead in image size [YOCTO #1852]
  - Ensure rootfs generation dependencies are built for live images
[YOCTO #2246]
* Several fixes for running on new distributions, inc:
  - Support building on 3.3 and newer kernel version [YOCTO #2236]
  - Handle new location of sys/time.h on Debian based systems
  - Support building apt-native with modern toolchains for deb based systems
  - Distributions with GCC 4.7 or newer will not be supported for Poky
Edison

- --------------------
Known Issues
- --------------------

    Bug 2015 - [emenlow]X is black when resume from S3 standby mode
    Bug 2742 - ioatdma error happened on jasperforest platform with
edison branch
    Bug 2748 - launch qemu failed due to can not find GLIBC_2.14 with
edison branch
    Bug 2694 - [QEMU-X86_64]zypper refresh fail
    Bug 2746 - mklibs-native failed to compile fedora17-X86_64

    ** In general host OS's with GCC 4.7 won't be able to build Edison


-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.14 (GNU/Linux)

iQEcBAEBAgAGBQJQEbk9AAoJEEyK+E/MEkQPV3UIAJb4JQQ4ckPqFgNpyHzpBiGX
vgGHU/5CgH8O+lAFaMp32E2Mw6hspo4w8qhKeh0bn6U+isDIR3+eO/qiRZmGizT7
e8Qw49oZmyTwj8n9tvLbDnQAM8469FmukYiq2ML/JUxHdbCjRpSVRXDqJGhSZNDF
BpTtVgccNO8H5UGRjz0LW8TyCTbes3KFtEQ4cQZNtoHi6dBNOLFwGncCyDW+MW9+
uIqCNDCdRvoDCOYbfNzQkgRe3TNyhrxfZofBZkLRATlS8mMSk09lkbR39XsHHjPl
/AqWwWTFQU8mEHo2lLPqduTkbKB8xg1ma3xQguA4V8TVyhjrefEj5wJCmMPU4KQ=
=CqgW
-----END PGP SIGNATURE-----


