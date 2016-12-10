Return-Path: <mont3z.claro5@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 195CEE00D80; Sat, 10 Dec 2016 07:52:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mont3z.claro5[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f181.google.com (mail-yw0-f181.google.com
	[209.85.161.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDE06E009BA
	for <yocto@yoctoproject.org>; Sat, 10 Dec 2016 07:52:04 -0800 (PST)
Received: by mail-yw0-f181.google.com with SMTP id i145so35885251ywg.2
	for <yocto@yoctoproject.org>; Sat, 10 Dec 2016 07:52:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=b2TBS6EWc+LPZ0VsvoIfoIAMLwYoEtTCS9y/XeC/9o0=;
	b=hDOTbMXa5yWL24jtucnRf3rh5aLH3FPb93AeRgnBMk7ReNc8Y1thwFspYmmSR+xF3i
	+ITgkd/o8xS6gnq8pYc3i+gtJsuDsK2O4wUvzb3J0NIPqO7hD3f4FWglbJVM7L0wtCjM
	fiDetfiYil9uxXb4FjCKH3+LXydfrHYCKLOsHOox0C8UKYvEHZTAL1Z57bqnk1s2N10F
	w9gYg+oQ00+h/IrpJoX/hw7zm7oaOxtuG/wnCbmdYt3byJPHhq6so5aGx+Id29ildQRt
	/Kts9wEAGoTY/U0n5RZqx4zBibrX8CTxA5UzTu0646I30vvqug9/m2AQzncpMu6ONYPg
	h5zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=b2TBS6EWc+LPZ0VsvoIfoIAMLwYoEtTCS9y/XeC/9o0=;
	b=aCny0Zi3Oq4GH7Cnz9vageav66AopA/WQIXGeO5O5+KLUYGqYS5V9a4goAMSxvuAcC
	lIK1zHeTOXYYagWZ0KwnHsSat4wiLfbkf/tIrxTkZMcf/+hcCHPU3Ez6U042AAFmsuSg
	0N5jJC/j8iiWht+hMnP6atXj1W/f335TJusL8iUWbp4EISERgG8W/6eiZ8bZhg4B502i
	alYSGiLYHwXpn4SGLegRHGvSDadX2blHv9rdDsgKspkLFT7tY2Kr14aarrRuj7eMv+hy
	IJBrQ+GzPTy13abzbQz5l8Ld/D5ZqGhU0oVPba2zHPyAl/U41K1Gd2aa/gFCtyrF1svs
	GSKg==
X-Gm-Message-State: AKaTC01nEKi3yfIkZdVhpYx3vSVw3vWt7AlOcG9L1JftLM/1BC3RPaBoir2pYiXksVJN48BmMxEt5TFnAPc91Q==
X-Received: by 10.129.55.13 with SMTP id e13mr89529246ywa.344.1481385123982;
	Sat, 10 Dec 2016 07:52:03 -0800 (PST)
MIME-Version: 1.0
Received: by 10.129.121.1 with HTTP; Sat, 10 Dec 2016 07:52:03 -0800 (PST)
From: Mont3z Claros <mont3z.claro5@gmail.com>
Date: Sat, 10 Dec 2016 07:52:03 -0800
Message-ID: <CAJ70iBTSsyb9oXvPexe+T=McGQPg7gwVpuRPAnVA2T_RRyv2-g@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Error during webkit compilation for rasberry pi3
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
X-List-Received-Date: Sat, 10 Dec 2016 15:52:10 -0000
Content-Type: text/plain; charset=UTF-8

Hi all,

I don't know what I'm doing wrong but I'm getting an error during
compilation of webkit for raspberry pi3. Please see below the error
and my configurations,

Thanks,
Mont3z

local.conf:
MACHINE = "raspberrypi3"
DISTRO_FEATURES_append = " x11 gles2"
IMAGE_INSTALL_append = " webkitgtk-bin"

Error:
| ERROR: oe_runmake failed
| In file included from
/home/mont3z/yocto/poky/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/webkitgtk/2.14.2-r0/webkitgtk-2.14.2/Source/WebCore/platform/graphics/cairo/GraphicsContext3DCairo.cpp:51:0:
| /home/mont3z/yocto/poky/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/webkitgtk/2.14.2-r0/webkitgtk-2.14.2/Source/WebCore/platform/graphics/opengl/Extensions3DOpenGLES.h:109:5:
error: 'PFNGLFRAMEBUFFERTEXTURE2DMULTISAMPLEIMGPROC' does not name a
type
|      PFNGLFRAMEBUFFERTEXTURE2DMULTISAMPLEIMGPROC
m_glFramebufferTexture2DMultisampleIMG;
|      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

command:
bitbake core-image-sato

bblayes.conf:
BBLAYERS ?= " \
  /home/mont3z/yocto/poky/meta \
  /home/mont3z/yocto/poky/meta-poky \
  /home/mont3z/yocto/poky/meta-yocto-bsp \
  /home/mont3z/yocto/meta-openembedded/meta-oe \
  /home/mont3z/yocto/meta-webkit \
  /home/mont3z/yocto/meta-raspberrypi \
  "

