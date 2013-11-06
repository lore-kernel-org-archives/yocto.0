Return-Path: <arigead@gmail.com>
Received: from mail-wg0-f51.google.com (mail-wg0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3D7BE017CA
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2013 13:41:25 -0800 (PST)
Received: by mail-wg0-f51.google.com with SMTP id l18so105132wgh.6
	for <yocto@yoctoproject.org>; Wed, 06 Nov 2013 13:41:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:subject:message-id:mime-version:content-type
	:content-disposition:content-transfer-encoding:user-agent;
	bh=gPYJjLP7fSu7zI0GSpk+YfwoFwBOLPdDzOHHpnD+dLw=;
	b=0bAjb4OA0h5rKv4KgBpAwFSaZfMCX7uKBc3d/RA7cdeobEWHE0gXCoxYHKTiGPh/0f
	KB5DGeh0YnavZE1QQOnR8ysJ8p+VXp+/5tkyPbFWgvHBGGcpGEahnZOcRA93bTb8EnO3
	mqL41fNf9zHMeJnKvxanTw9Z39GvGGAlGyzzA0HpHLafpjAqoponZd/XO1WrEWHWzN2t
	CKQx6KJm04q1pKCm6hm++9cq3qDESmtTHvZHMHGI2fjBlViVT5zTtX5aRezhQGrX9lbO
	RKsYdHZh9ZqEsy4Ow7stpCaTtwOUtrSkizignfcIJbKfPzrIzOnhj1i8kq2IGQ5EThrq
	BGzg==
X-Received: by 10.194.89.233 with SMTP id br9mr4335180wjb.15.1383774084660;
	Wed, 06 Nov 2013 13:41:24 -0800 (PST)
Received: from griso.site ([109.77.237.105])
	by mx.google.com with ESMTPSA id ey4sm438742wic.11.2013.11.06.13.41.22
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 06 Nov 2013 13:41:23 -0800 (PST)
Date: Wed, 6 Nov 2013 21:40:41 +0000
From: John Whitmore <arigead@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <20131106214039.GA16472@griso.site>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Changing Config for linux-raspberrypi
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
X-List-Received-Date: Wed, 06 Nov 2013 21:41:29 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Was struggling with the documentation on making chages to the config file used
by the raspberrypi linux kernel. I'd got my own layer with a two line append file:

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}"
KERNEL_DEFCONFIG = "defconfig"

I'd got my defconfig config file into the directory structure under my layer. 

.
├── conf
│   └── layer.conf
└── recipes-kernel
    └── linux
        ├── linux-raspberrypi
        │   └── defconfig
        └── linux-raspberrypi_3.6.11.bbappend.jfw


So all looked good to me thankfully "<kergoth>" on the #yocto IRC Channel
pointed me to bitbake -e linux-raspberrypi and I was able to check stuff
out. Took me a while but I eventually found the problem.

The origional recipe "linux-raspberrypi_3.6.11.bb" contains the lines:

do_configure_prepend() {
	install -m 0644 ${S}/arch/${ARCH}/configs/${KERNEL_DEFCONFIG} ${WORKDIR}/defconfig || die "No default configuration for ${MACHINE} / ${KERNEL_DEFCONFIG} available."
}

So even though my append is changing the FILESEXTRAPATHS and KERNEL_DEFCONFIG
values it makes no difference at all. Well luckily I did manage to change the
name of KERNEL_DEFCONFIG so when the above "install" command was executed it
produced errors all over the place. If that hadn't happened I'd have got a
kernel with none of my changes and there'd have been naughty words.

So given that the text book approach to making changes to the kernel, outlined
in section "2.2.1. Creating the Append File" of the Linux Kernel Development
Manual has been subverted. How do I change the kernel config?

Can I do my own do_configure_prepend() in my bbappend to prepend the recipe's do_configure_prepend()
and get my config file into the place it's going to install from? That sounds
really messy to me but I'm new.

That seems the only alternative short of re-writing the linux-raspberrypi
recipe which doesn't sound too good either.

If somebody could point me in the right direction on how to make changes to
the kernel in this case I'd be very grateful.

Thanks a million for any advice. 


