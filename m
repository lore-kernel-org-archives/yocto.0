Return-Path: <javier@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3B96E00AF2; Tue, 10 Nov 2015 06:45:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,HEXHASH_WORD,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [54.187.51.154 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 HEXHASH_WORD Multiple instances of word + hexadecimal hash
Received: from lists.s-osg.org (lists.s-osg.org [54.187.51.154])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17127E00ACF
	for <yocto@yoctoproject.org>; Tue, 10 Nov 2015 06:45:37 -0800 (PST)
Received: from minerva.localdomain (unknown [200.3.249.195])
	by lists.s-osg.org (Postfix) with ESMTPSA id C8AFB462A0;
	Tue, 10 Nov 2015 06:45:34 -0800 (PST)
From: Javier Martinez Canillas <javier@osg.samsung.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 10 Nov 2015 11:45:18 -0300
Message-Id: <1447166720-13316-1-git-send-email-javier@osg.samsung.com>
X-Mailer: git-send-email 2.4.3
MIME-Version: 1.0
Cc: Derek Foreman <derekf@osg.samsung.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>, yocto@yoctoproject.org,
	Javier Martinez Canillas <javier@osg.samsung.com>
Subject: [meta-raspberrypi][PATCH v3 0/2] Add support for 4.2 kernel with vc4 DRM/KMS driver
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
X-List-Received-Date: Tue, 10 Nov 2015 14:45:39 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hello Andrei,

This series adds support for Eric Anholt's v4.2 kernel, that has support
for the vc4 DRM/KMS driver, which is the new open source graphics driver
stack for the Raspberry Pi to be used instead of the userland driver.

This is a third version of the series which addresses feedback provided
by Andreas Müller, Khem Raj and you. The first version and second version
of the series can be found at [0] and [1]. Some of the v2 patches have
been dropped since are no longer necessary so the delta is smaller in v3.

The v4.2 kernel is under heavy development so is a work-in-progress and
should not be used in production. That's why it's not set as the default
virtual/kernel provider but the user can change the default providers in
case that wants to use the VC4 DRM/KMS driver.

But even when it's still a development kernel, having the recipe in the
meta-raspberrypi will allow people to test it. We have been using it in
the Tizen RPi2 port [2] for some time. The patches in the series are:

Patch 1/2 adds a recipe for the 4.2 and some patches to make it build.

Patch 2/2 Adds a section to the README that explains that two gfx stacks
are available and that the user can change the default providers.

To test it, besides this series I picked some patches from Andreas' git
tree that are in his vc4-3 branch [3]:

f5865b4b1bc4 libsdl2: enable glesv2
c8666982c1bc xserver-xf86-config: setup for VC4 hardware acceleration
b1082f5aeebe rpi-base.inc: add xf86-video-modesetting and xserver-xorg-extension-glx to XSERVER
5568cd057d07 xserver-xorg: align to vc4 needs
d9881d3ccb58 mesa: align to vc4 needs

and also needed to bump the mesa SRCREV to master HEAD (commit sha1
51694072218b5ae84b5d8f98ee2172d7c5d61b31).

X starts and also I'm able to run the glmark2-es benchmark and the VC4
EGL rendering is used:

root@raspberrypi2:~# glmark2-es2
=======================================================
    glmark2 2014.03
=======================================================
    OpenGL Information
    GL_VENDOR:     Broadcom
    GL_RENDERER:   Gallium 0.4 on VC4
    GL_VERSION:    OpenGL ES 2.0 Mesa 11.1.0-devel (git-51694072218b)
=======================================================
[build] use-vbo=false: FPS: 36 FrameTime: 27.778 ms
[build] use-vbo=true: FPS: 38 FrameTime: 26.316 ms
[texture] texture-filter=nearest: FPS: 39 FrameTime: 25.641 ms
[texture] texture-filter=linear: FPS: 38 FrameTime: 26.316 ms
[texture] texture-filter=mipmap: FPS: 38 FrameTime: 26.316 ms

In theory this kernel should have KMS support but setting a different mode
than the one configured in the firmware config.txt did not work for me.
Only xrandr --output HDMI-0 --auto works and xrandr --output HDMI-0 --mode
using a different mode than the config.txt does not work.

But I think that could be solved as a follow up once these patches are
merged.

[0]: https://www.mail-archive.com/yocto@yoctoproject.org/msg25164.html
[1]: https://lists.yoctoproject.org/pipermail/yocto/2015-August/026151.html
[2]: http://blogs.s-osg.org/tizen-rpi2-now-supporting-3d-acceleration/
[3]: git://github.com/schnitzeltony/meta-raspberrypi.git

Best regards,
Javier

Changes in v3:
- Update to latest vc4-kms-v3d-rpi2 branch sha1. Suggested by Andreas Müller.
- Drop patches that were already merged in the vc4-kms-v3d-rpi2 branch.
- Bump Linux version from 4.1 to 4.2.
- Add explanation in the README graphics section how to choose the kernel
  that has vc4 DRM/KMS support. Suggested by Khem Raj and Andrei Gherzan.

Changes in v2:
- Add a linux-raspberrypi-vc4 recipe insted of a linux-raspberrypi one.
  Suggested by Petter Mabäcker, Andreas Müller and Andrei Gherzan.
- Split the readme change in a separate patch. Suggested by Andrei Gherzan.
- Don't make the vc4 patches inclusion conditional since will always be
  needed when choosing the recipe. Suggested by Andrei Gherzan.

Derek Foreman (1):
  linux-raspberrypi: Add a 4.2.3 linux kernel with vc4 support

Javier Martinez Canillas (1):
  README: Add a section about graphic stacks

 README                                             | 17 +++++++++
 ..._defconfig-Enable-config-options-for-vc4-.patch | 40 ++++++++++++++++++++++
 .../0002-bcm2708-Fix-DTC-build-error.patch         | 38 ++++++++++++++++++++
 .../linux/linux-raspberrypi-vc4/defconfig          |  1 +
 recipes-kernel/linux/linux-raspberrypi-vc4_4.2.bb  |  9 +++++
 5 files changed, 105 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-vc4/0001-ARM-bcm2709_defconfig-Enable-config-options-for-vc4-.patch
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-vc4/0002-bcm2708-Fix-DTC-build-error.patch
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-vc4/defconfig
 create mode 100644 recipes-kernel/linux/linux-raspberrypi-vc4_4.2.bb

-- 
2.4.3


