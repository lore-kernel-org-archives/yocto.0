Return-Path: <kishorepasupula@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C714E00DD5; Sun, 28 Jan 2018 21:05:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kishorepasupula[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.176 listed in list.dnswl.org]
Received: from mail-pf0-f176.google.com (mail-pf0-f176.google.com
	[209.85.192.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C050FE00D75
	for <yocto@yoctoproject.org>; Sun, 28 Jan 2018 21:05:29 -0800 (PST)
Received: by mail-pf0-f176.google.com with SMTP id 17so2518780pfw.11
	for <yocto@yoctoproject.org>; Sun, 28 Jan 2018 21:05:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:subject:to:message-id:date:user-agent:mime-version
	:content-language:content-transfer-encoding;
	bh=yvyNd8svXscWSDvqt9aMX9DmAMqSc/RvVW9P6Vp31Kc=;
	b=VBv9u2HUZ63aWCSDM8lhy0laEeeDKbGT8gjdXHSvegaPCjOwNTV09pYrvSrFaxRpX3
	eAg5yTCThbNW0nSZkj9BdjpDRO/Diu5DWrbAW+Gm39M2mT9ssyd3DMCkfPuNEJgtnTA1
	FBIzQbZl2CsofGROJLGcHMM7S144fr4H6v103fGe0hdb18WnZupn89320hsdhk5sxx9K
	PaS4tFB/ZQe0D2UbKddwA4e8jVtoNH7f5Mrd7UgQVSDF3HVkwTRDblw4miybr88lPLLT
	r99FT8p3DKtE9c7dtJNd6rQ02LSF9lYd5ncHtX2cPpyZSF8pNPy0Qnre1t8STO28dcyQ
	x7wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:subject:to:message-id:date:user-agent
	:mime-version:content-language:content-transfer-encoding;
	bh=yvyNd8svXscWSDvqt9aMX9DmAMqSc/RvVW9P6Vp31Kc=;
	b=O1lDZrihc1FUhwCuzaoQ+lpsu7bMajpOMx4bh0FVmKKCGnQgWIGQhstIdqdOx1d11r
	PnaXTyLMi6HDgIJ7Rne/RdxTimw0b18U2O0wBM4vg+UZmiId4koh1/XaqixeILTUBlGX
	IW+wIXflK1zJFMNCfFKrhnC+XrtJS3Uk/1q7NBBhPS1rehk4sUjxeb5/HrnqcnBvv67e
	FgWbLZ4CIn5e5YbEojRUYbJA/PLJOho8CTGMRjPugrw95pyK7nfAfaiXjL9V78WQWiTL
	vLfXFJUXv96hOo0pfdHdiEyS1ZlrcW06z9CKReUgTmVQcqe7WCHQqglD5WZ76pcvqpYf
	XaIA==
X-Gm-Message-State: AKwxytcuUAM/j7S+8sDsG9QHIEKRW1eqnekxgl/NGxmLxtFTAHbLeVe8
	CwHiNt451v5XMV6utlMr6GnEBy1c
X-Google-Smtp-Source: AH8x226V1jigdyUzk2LpfGf7aKXURW47NF8027ihq5k0DqHA2WAwXXZ9ObREfRdP16eMLHU8dAhJ6g==
X-Received: by 10.99.123.8 with SMTP id w8mr20489632pgc.201.1517202328869;
	Sun, 28 Jan 2018 21:05:28 -0800 (PST)
Received: from [192.168.0.111] ([124.123.42.5])
	by smtp.gmail.com with ESMTPSA id
	u135sm16451663pgc.84.2018.01.28.21.05.27 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 28 Jan 2018 21:05:27 -0800 (PST)
From: kishorepasupula <kishorepasupula@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <8d42e6cb-a90f-3d6d-0e49-c7a5a6a731fb@gmail.com>
Date: Mon, 29 Jan 2018 10:35:25 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
Subject: clutter-CRITICAL **: Unable to initialize clutter: Unable to Initialize the clutter backend: no available drivers found.
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
X-List-Received-Date: Mon, 29 Jan 2018 05:05:30 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit


Hi,

My main objective is to run snappy player 
(https://wiki.gnome.org/Snappy) on target machine (BeagleBone Black) so, 
I wrote a recipe for Snappy player(snappy_1.0.bb) as below

LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=686e6cb566fd6382c9fcc7a557bf4544"

SRCREV = "e73fabce4c397b40d490c74f6a6a0de000804f42"
SRC_URI = "git://git.gnome.org/snappy"
S = "${WORKDIR}/git"

RDEPENDS_${PN} = "gtk+3 gstreamer1.0 glib-2.0 clutter-1.0 
gstreamer1.0-plugins-base libxtst clutter-gst-3.0 clutter-gtk-1.0 libx11 
cairo gdk-pixbuf"

# inherit line
inherit pkgconfig autotools

FILES_${PN} += "${datadir}/*"
Added this recipe name in local.conf

IMAGE_INSTALL_append = " snappy"
The build (bitbake core-image-sato) was successful, when I ran "snappy" 
on target(BeagleBone Black) I am getting below error response.

sh-4.4# snappy
libEGL warning: DRI2: failed to authenticate
libEGL warning: DRI2: failed to authenticate
libEGL warning: DRI2: failed to authenticate

(snappy:763): clutter-CRITICAL **: Unable to initialize clutter: Unable 
to Initialize the clutter backend: no available drivers found.

As per my Understanding in my recipe I have resolved all dependencies 
for Snappy player (such as clutter, gstreamer, gtk etc.). I'm unable to 
figure out why snappy player is throwing error? Can any one guide me on 
this?

PS: Also tried adding  PREFERRED_PROVIDER_virtual/egl ?= "mesa" in 
local.conf but still I'm getting the same error response.

Regards,
Kk.

