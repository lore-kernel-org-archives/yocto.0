Return-Path: <elizabeth.flanagan@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7029FE0072E
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2013 14:53:18 -0800 (PST)
Received: from mail-qc0-f199.google.com ([209.85.216.199])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 21 Jan 2013 14:53:17 -0800
Received: by mail-qc0-f199.google.com with SMTP id b14so4509961qcs.2
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2013 14:53:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-received:date:message-id:subject:from:to
	:content-type:x-gm-message-state;
	bh=l60XWzlCxgNNJo8eqOiuFuKZkax2W2BBJNwdg8HdN34=;
	b=St1LF6SOS2wcFbFWj9Kn7+ZDqpYmHF/nlrI2jRyIMxFiIaEQc4sfvsTiw2wwxCOo7v
	34ZXZGLeekH6hmdSrrw23Am3G6ZJDKDWUGNJo1zXdmkK7FkcFzXrYA36zeqHQl7KLE6r
	2eBq68eyL7JRAKm8Jlb9klyGNP9QO5aP5mBClyrb4QrocS+CmbKiMPGnUY3HHAG8GFHd
	QSjOaQRGdYMgszs68LAhXZukZnNwhR1YHnrE7Mj2++3CBKb2AB4+rK/7zbMiVTp/9LTS
	Icf690oIiYyve+qLQk14sF3MIBGNDPPfVKZuZbXXj8cl0LMjA2c39GuScPqmiNLQDle2
	zv/g==
X-Received: by 10.49.24.135 with SMTP id u7mr24597145qef.4.1358808795765;
	Mon, 21 Jan 2013 14:53:15 -0800 (PST)
MIME-Version: 1.0
X-Received: by 10.49.24.135 with SMTP id u7mr24597138qef.4.1358808795570; Mon,
	21 Jan 2013 14:53:15 -0800 (PST)
Received: by 10.49.128.234 with HTTP; Mon, 21 Jan 2013 14:53:15 -0800 (PST)
Date: Mon, 21 Jan 2013 14:53:15 -0800
Message-ID: <CAPhnLPDMcCw3Roo5axRWKOBXJKiLqyzDRPfNXoo=SKXHZQiV9Q@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org, yocto-announce@yoctoproject.org
X-Gm-Message-State: ALoCoQlRP93M9QgujRhEaBuZv7xb6OyL0Cje3TGNLjkDIZv7hxoYNWDlW+JRg6vv4ZEO6ztxhHI1elG9dxOvT8+VY+33E7Ej2EYCSBA89EG9b0VrkMsM7u29BzIAGBKpcFbM0cpy0RQdnxK7cwyYGV7gW8rnTAPa+g==
Subject: [ANNOUNCEMENT] Yocto 1.2.2 Released
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
X-List-Received-Date: Mon, 21 Jan 2013 22:53:18 -0000
Content-Type: text/plain; charset=ISO-8859-1

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hello,

The latest point release of the Yocto Project, 1.2.2 "denzil", is now
available for download at:

 * http://downloads.yoctoproject.org/releases/yocto/yocto-1.2.2/poky-denzil-7.0.2.tar.bz2
 * http://mirrors.kernel.org/yocto/yocto/yocto-1.2.2/poky-denzil-7.0.2.tar.bz2

Thanks go out to everyone for all their hard work during this release!

Sincerely,

Elizabeth Flanagan
Yocto Build and Release
<elizabeth.flanagan@intel.com>

- --------------------
yocto-1.2.2 Errata
- --------------------
Release Name: eclipse-poky-denzil-7.0.2
Branch:  denzil
Tag:  denzil-7.0.2
Hash:  3c5c3e87fa63e89110abdfed3c5214a67e8383f9
md5:  5b89aaaddb3a205abcb0f3531f90c492
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.2.2/eclipse-poky-denzil-7.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.2.2/eclipse-poky-denzil-7.0.2.tar.bz2

Release Name: meta-intel-denzil-7.0.2
Branch:  denzil
Tag:  denzil-7.0.2
Hash:  8f02d4f8600bbc69a4b5b7bc5128942949f6b8fa
md5:  6939121bebc8ec79688a437dc0d331a7
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.2.2/meta-intel-denzil-7.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.2.2/meta-intel-denzil-7.0.2.tar.bz2

Release Name: meta-qt3-denzil-7.0.2
Branch:  denzil
Tag:  denzil-7.0.2
Hash:  f8475d5c5935695d4d1dfff1d7be30f49e162094
md5:  eabb129f5d9edd50609a4afdb0a73e27
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.2.2/meta-qt3-denzil-7.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.2.2/meta-qt3-denzil-7.0.2.tar.bz2

Release Name: poky-denzil-7.0.2
Branch:  denzil
Tag:  denzil-7.0.2
Hash:  3456295898bf157e40ea1f8c335f0b7285d3d8a7
md5:  4a60c87d02fbdfe4ee9aed4258b99c4c
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.2.2/poky-denzil-7.0.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.2.2/poky-denzil-7.0.2.tar.bz2

- --------------------
Features
- --------------------
* HOB fixes and improvements when working behind a network proxy
* Bitbake fetcher improvements in error-handling
* Performance fixes to improve write speeds on live images
* Updated to build properly on host OSes that use eglibc 2.16
* Fix for kernel menuconfig bug that was not triggering a rebuild after a
* config change
* linux-dtb: support multi-dtb build support
* Enable SSL support in curl (to allow git clones from https URIs)
* shadow: use 'users' group by default
* Buildhistory fixes
* yocto-bsp compatability improvements and bugfixes
* opkg-utils upgrade to add python v2.6 compatability
* Documentation updates
* Many fixes for edge case builds

- --------------------
Recipe Upgrades:
- --------------------
* libxml2 upgraded to 2.8.0 (security)
* openssl upgraded to 1.0.0j (security)
* xinetd upgraded to 2.3.15 (security)
* xz upgraded to 5.1.1alpha (compatability, fetcher)
* python-pygtk upgraded to 2.24.0 (compatability, build appliance
* improvements)
* bluez4 upgraded to 4.101 (compatability with other layers)
* bluez-hcidump upgraded to 2.4 (compatability with other layers)
* gst-plugin-bluetooth upgraded to 4.101 (compatability with other layers)
* pulseaudio upgraded to 2.1 (compatability with other layers)
* libcanberra upgraded to 0.29 (compatability with other layers)
* libatomics-ops upgraded to 7.2 (fix broken build)

- --------------------
Security Issues addressed
- --------------------
* CUPS: CVE-2011-2896
* freetype: CVE-2012-5668, 5669, and 5670
* libproxy: CVE-2012-4504
* librsvg: CVE-2011-3146
* libxml2: CVE-2011-1944, CVE-2012-2871
* openssl: CVE-2012-2333
* squashfs-tools: CVE-2012-4024 and 4025
* xinetd: CVE-2012-0862

- --------------------
Known Issues
- --------------------
Bug 3714 - hjl-tools missing from github.com for x32 kernel builds
Bug 3453 - Build fails when building multilib with ipk packaging
Bug 3686 - Errors when building headless build for eclipse-plugin 1.2.2
Bug 3693 - BUILDDIR error - when selecting kernel version in yocto bsp tool
for denzil (A fix for this is expected to be added to the denzil branch
in coming weeks)
Bug 3690 - Clutter - Unable to find suitable fbconfig for the GLX context
Bug 3695 - incorrect message when using ABORT in disk space monitoring
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.14 (GNU/Linux)

iQEcBAEBAgAGBQJQ/atYAAoJEEyK+E/MEkQP+EYH/RAlHqGMbn5/+ZGwtSNQbtVH
7c4SE+EOVQ+adbTiz6JR0mIJOBcHb3QxTkUQdTgkqvZqcTQU/a8mqNKxIateMDpz
iJLUBG6BGoP/8ljhsYBsWYPLqtJsqO47N4t77VLAjeToin6fjClTA7yFdhLIAQ8j
4alUxBvvTbCLCuAS/+OtOuXzOSzdBpB9cBlTbXIy0NdTK3gMYiCQlBj94M7TvC3E
UeB6tYUymXDKAb5rsuKKQ70WeSgN6U16MBCoD+UsTUNQnjZrFLdqxPBdaP6guxAp
Jg0ZmXCyZ+7NMNOH4kHnz2A2byihmCWALGNFm3tDyAim3DMlJDwbwGdv4kbMe+c=
=U46t
-----END PGP SIGNATURE-----

