Received: from mx02.optimcloud.com (mx02.optimcloud.com [46.23.93.22])
 by mx.groups.io with SMTP id smtpd.web11.25711.1603627035285941744
 for <yocto@lists.yoctoproject.org>;
 Sun, 25 Oct 2020 04:57:18 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@optimcloud.com header.s=obsd header.b=u7RVL4WL;
 spf=none, err=SPF record not found (domain: optimcloud.com, ip: 46.23.93.22, mailfrom: yocto@optimcloud.com)
Received: from mx02.optimcloud.com (localhost [127.0.0.1])
	by mx02.optimcloud.com (OpenSMTPD) with ESMTP id f409df49
	for <yocto@lists.yoctoproject.org>;
	Sun, 25 Oct 2020 12:57:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=optimcloud.com; h=to
	:from:subject:message-id:date:mime-version:content-type; s=obsd;
	 bh=8RB6V9NpuArFYeQWITkwWWs9XEXEy6okTcXKoFamqyI=; b=u7RVL4WLv9H0
	HN+oNO4ddfVbUpjQ80+tJLgxuBBPy079G5b4Wurt8qszDFlskLYu1dH6PkG+ow8Z
	u7O5DhU43jNST2KacSaKubpgm/XW9Oou7V2KzRejzwgdgmTI6wN0stYowv4kArVd
	1cK8YsDLrlMcjs0pOJbwFuDP12IeabhTCXo0YY3a6Z+IcTKFNX3y6cR46zkrfAPf
	adHexHD9pRedjL0ofUrORblBQJ63qbF9ZsRsDxZDbAwv7JVyQJmIz0e8jvu1PPKQ
	oNAp2oSOphyNSNohE24G0h7w49QgWvJz3ACacdQVUR+lUtNDhu9BB/5Bg7uz/pjb
	/xI3HOKWcg==
DomainKey-Signature: a=rsa-sha1; c=nofws; d=optimcloud.com; h=to:from
	:subject:message-id:date:mime-version:content-type; q=dns; s=
	obsd; b=ytfK7biLIUkk+uIxQd/DJpceZw7u57nmZvajixw4L3nGQD0cVCdtfKvC
	kS8/irQzVaRu2lrcVq7ET5C0/N1RBgR3s7pzkY59dXQQn6qpzejtQcuMFX8j2/gi
	kyan0K6ycYYr4KC1Z1AMp/aXB8Cw4WXCe9Vxet9pDEgCzgLrmEpMbMIrSgN7Uhiq
	HE0vMs91PuYrEVCNvp1ay/F9oo1C267SKFkGqCejg4m+y/pJgXBrGUQj8Aj9g2Be
	vFmCanovpAtQam2BssNPBz1yLMFGWJtWal9lNbDhUo237C6J5SMudSOOWxo+KZum
	fIfOH+YgsN6VBxlSdSE4XWKDySd5pg==
Received: 
	by mx02.optimcloud.com (OpenSMTPD) with ESMTPSA id a886804b (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO) auth=yes user=yocto@optimcloud.com
	for <yocto@lists.yoctoproject.org>;
	Sun, 25 Oct 2020 12:57:10 +0100 (CET)
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
From: "Yocto" <yocto@optimcloud.com>
Subject: libxcb_1.14.bb:do_compile fails
Message-ID: <7b56772d-83f6-cbb3-40a2-2929894368eb@optimcloud.com>
Date: Sun, 25 Oct 2020 18:57:06 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
X-Groupsio-MsgNum: 51176
Content-Type: multipart/mixed;
 boundary="------------A7E2E50018338E019C6C73D3"
Content-Language: en-US

--------------A7E2E50018338E019C6C73D3
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Build Configuration:
BB_VERSION           = "1.48.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "fedora-33"
TARGET_SYS           = "x86_64-overc-linux"
MACHINE              = "intel-corei7-64"
DISTRO               = "overc"
DISTRO_VERSION       = "1.0"
TUNE_FEATURES        = "m64 corei7"
TARGET_FPU           = ""
meta
meta-poky
meta-yocto-bsp       = "gatesgarth:4e4a302e37ac06543e9983773cdb4caf7728330d"
meta-oe
meta-python
meta-networking
meta-filesystems
meta-multimedia
meta-perl            = "master:1a53121ff54732648a4ee1e96643106d4d36c524"
meta-overc
meta-cube            = "master:af81bc7ec63e96aa7816b523b75ad9f29f9dfcf0"
meta-intel           = "master:4ee7bc0ab408db7388374e86920ffa378b7b4535"
meta-virtualization  = "master:7a8167fa82621dd606260450b1e648e50a1d79ab"
meta-cloud-services  = "master:4f6cd1d6664ca1a51bdc742291fe4bf83ecf2a92"
meta-security        = "master:e8c9e69c80ea2c525250e07db1024d8e34f1f0f8"
meta-selinux         = "master:6e1100d29aec118df2025c46c77f4c8aa8da4e76"
meta-gnome
meta-xfce            = "master:1a53121ff54732648a4ee1e96643106d4d36c524"
meta-awnix           = "master:c616414c6ed4f6f2ab75703ce5a3e84acacd3c47"
workspace            = "master:24e9d2b6651ae06a10917d5ad05755e59c30f26a"


anyone else coming across this ??

virtual:native:/var/home/dingo/overc/poky/meta/recipes-graphics/xorg-lib/libxcb_1.14.bb:do_compile

ImportError: cannot import name 'gcd' from 'fractions' 
(/usr/lib64/python3.9/fractions.py)

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.


Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.



--------------A7E2E50018338E019C6C73D3
Content-Type: text/x-log; charset=UTF-8;
 name="failed.log"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="failed.log"

DEBUG: Executing python function autotools_aclocals
DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc', 'bit-64', 'x86_64-linux', 'common']
DEBUG: Python function autotools_aclocals finished
DEBUG: Executing shell function do_compile
NOTE: make -j 36
Making all in src
make[1]: Entering directory '/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src'
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/xproto.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/bigreq.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/xc_misc.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/composite.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/damage.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/dpms.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/dri2.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/dri3.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/present.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/glx.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/randr.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/record.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/render.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/res.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/screensaver.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/shape.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/shm.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/sync.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/xevie.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/xf86dri.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/xfixes.xml

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
    from xcbgen.state import Module
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/xinerama.xml

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
    from xcbgen.state import Module
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
make[1]: *** [Makefile:1402: glx.c] Error 1
make[1]: *** Waiting for unfinished jobs....
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)
    from xcbgen.state import Module
    from xcbgen.state import Module
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
    from xcbgen.state import Module
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.


Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
    from xcbgen.state import Module
Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
    from xcbgen.state import Module
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen import matcher
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
    from xcbgen.state import Module
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)
make[1]: *** [Makefile:1402: xproto.c] Error 1
make[1]: *** [Makefile:1402: bigreq.c] Error 1
make[1]: *** [Makefile:1402: xc_misc.c] Error 1
make[1]: *** [Makefile:1402: damage.c] Error 1

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
    from xcbgen.state import Module
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
make[1]: *** [Makefile:1402: record.c] Error 1
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
make[1]: *** [Makefile:1402: dpms.c] Error 1
    from xcbgen.state import Module
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
    from xcbgen.state import Module
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)
make[1]: *** [Makefile:1402: dri3.c] Error 1
make[1]: *** [Makefile:1402: dri2.c] Error 1
make[1]: *** [Makefile:1402: composite.c] Error 1
make[1]: *** [Makefile:1402: present.c] Error 1

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
    from xcbgen.state import Module
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
    from xcbgen.state import Module
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)
make[1]: *** [Makefile:1402: randr.c] Error 1

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
    from xcbgen.state import Module
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)
    from xcbgen.state import Module
    from xcbgen.state import Module
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)
make[1]: *** [Makefile:1402: xfixes.c] Error 1
make[1]: *** [Makefile:1402: render.c] Error 1
make[1]: *** [Makefile:1402: screensaver.c] Error 1
make[1]: *** [Makefile:1402: res.c] Error 1

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
    from xcbgen.state import Module
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)
make[1]: *** [Makefile:1402: shape.c] Error 1

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
    from xcbgen.state import Module
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
    from xcbgen.state import Module
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)
make[1]: *** [Makefile:1402: sync.c] Error 1

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
    from xcbgen.state import Module
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.


Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
    from xcbgen.state import Module
Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)
    from xcbgen.state import Module
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
    from xcbgen import matcher
make[1]: *** [Makefile:1402: xf86dri.c] Error 1
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)
make[1]: *** [Makefile:1402: xinerama.c] Error 1
make[1]: *** [Makefile:1402: xevie.c] Error 1
make[1]: *** [Makefile:1402: shm.c] Error 1
make[1]: Leaving directory '/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src'
make: *** [Makefile:788: all-recursive] Error 1
ERROR: oe_runmake failed
WARNING: /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/temp/run.do_compile.3630317:191 exit 1 from 'exit 1'
WARNING: Backtrace (BB generated script): 
	#1: bbfatal_log, /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/temp/run.do_compile.3630317, line 191
	#2: die, /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/temp/run.do_compile.3630317, line 172
	#3: oe_runmake, /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/temp/run.do_compile.3630317, line 161
	#4: autotools_do_compile, /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/temp/run.do_compile.3630317, line 156
	#5: do_compile, /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/temp/run.do_compile.3630317, line 151
	#6: main, /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/temp/run.do_compile.3630317, line 195
ERROR: Execution of '/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/temp/run.do_compile.3630317' failed with exit code 1:
Making all in src
make[1]: Entering directory '/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src'
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/xproto.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/bigreq.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/xc_misc.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/composite.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/damage.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/dpms.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/dri2.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/dri3.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/present.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/glx.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/randr.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/record.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/render.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/res.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/screensaver.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/shape.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/shm.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/sync.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/xevie.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/xf86dri.xml
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/xfixes.xml

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
    from xcbgen.state import Module
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)
python3 ../../libxcb-1.14/src/c_client.py	-c "libxcb 1.14" -l "X Version 11" \
	-s "3" -p /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages \
	 \
	/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/share/xcb/xinerama.xml

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
    from xcbgen.state import Module
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
make[1]: *** [Makefile:1402: glx.c] Error 1
make[1]: *** Waiting for unfinished jobs....
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)
    from xcbgen.state import Module
    from xcbgen.state import Module
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
    from xcbgen.state import Module
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.


Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
    from xcbgen.state import Module
Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
    from xcbgen.state import Module
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen import matcher
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
    from xcbgen.state import Module
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)
make[1]: *** [Makefile:1402: xproto.c] Error 1
make[1]: *** [Makefile:1402: bigreq.c] Error 1
make[1]: *** [Makefile:1402: xc_misc.c] Error 1
make[1]: *** [Makefile:1402: damage.c] Error 1

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
    from xcbgen.state import Module
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
make[1]: *** [Makefile:1402: record.c] Error 1
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
make[1]: *** [Makefile:1402: dpms.c] Error 1
    from xcbgen.state import Module
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
    from xcbgen.state import Module
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)
make[1]: *** [Makefile:1402: dri3.c] Error 1
make[1]: *** [Makefile:1402: dri2.c] Error 1
make[1]: *** [Makefile:1402: composite.c] Error 1
make[1]: *** [Makefile:1402: present.c] Error 1

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
    from xcbgen.state import Module
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
    from xcbgen.state import Module
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)
make[1]: *** [Makefile:1402: randr.c] Error 1

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
    from xcbgen.state import Module
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)
    from xcbgen.state import Module
    from xcbgen.state import Module
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)
make[1]: *** [Makefile:1402: xfixes.c] Error 1
make[1]: *** [Makefile:1402: render.c] Error 1
make[1]: *** [Makefile:1402: screensaver.c] Error 1
make[1]: *** [Makefile:1402: res.c] Error 1

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
    from xcbgen.state import Module
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)
make[1]: *** [Makefile:1402: shape.c] Error 1

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
    from xcbgen.state import Module
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
    from xcbgen.state import Module
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)
make[1]: *** [Makefile:1402: sync.c] Error 1

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
    from xcbgen.state import Module
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)

Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.


Failed to load the xcbgen Python package!
Make sure that xcb/proto installed it on your Python path.
If not, you will need to create a .pth file or define $PYTHONPATH
to extend the path.
Refer to the README file in xcb/proto for more info.

Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
    from xcbgen.state import Module
Traceback (most recent call last):
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src/../../libxcb-1.14/src/c_client.py", line 3338, in <module>
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
    from xcbgen import matcher
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)
    from xcbgen.state import Module
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/state.py", line 7, in <module>
    from xcbgen import matcher
make[1]: *** [Makefile:1402: xf86dri.c] Error 1
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/matcher.py", line 12, in <module>
    from xcbgen.xtypes import *
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/xtypes.py", line 5, in <module>
    from xcbgen.align import Alignment, AlignmentLog
  File "/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/recipe-sysroot-native/usr/lib/pkgconfig/../../../usr/lib/python3.8/site-packages/xcbgen/align.py", line 5, in <module>
    from fractions import gcd
ImportError: cannot import name 'gcd' from 'fractions' (/usr/lib64/python3.9/fractions.py)
make[1]: *** [Makefile:1402: xinerama.c] Error 1
make[1]: *** [Makefile:1402: xevie.c] Error 1
make[1]: *** [Makefile:1402: shm.c] Error 1
make[1]: Leaving directory '/var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/build/src'
make: *** [Makefile:788: all-recursive] Error 1
WARNING: /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/temp/run.do_compile.3630317:191 exit 1 from 'exit 1'
WARNING: Backtrace (BB generated script): 
	#1: bbfatal_log, /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/temp/run.do_compile.3630317, line 191
	#2: die, /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/temp/run.do_compile.3630317, line 172
	#3: oe_runmake, /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/temp/run.do_compile.3630317, line 161
	#4: autotools_do_compile, /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/temp/run.do_compile.3630317, line 156
	#5: do_compile, /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/temp/run.do_compile.3630317, line 151
	#6: main, /var/home/dingo/overc/build/tmp/work/x86_64-linux/libxcb-native/1.14-r0/temp/run.do_compile.3630317, line 195

Backtrace (metadata-relative locations):
	#1: bbfatal_log, /var/home/dingo/overc/poky/meta/classes/logging.bbclass, line 72
	#2: die, /var/home/dingo/overc/poky/meta/classes/base.bbclass, line 56
	#3: oe_runmake, /var/home/dingo/overc/poky/meta/classes/base.bbclass, line 65
	#4: autotools_do_compile, /var/home/dingo/overc/poky/meta/classes/autotools.bbclass, line 243
	#5: do_compile, autogenerated, line 2

--------------A7E2E50018338E019C6C73D3--
