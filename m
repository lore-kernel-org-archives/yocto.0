Return-Path: <martiert@gmail.com>
Received: from mail-ee0-f43.google.com (mail-ee0-f43.google.com [74.125.83.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D15DE002E9
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 00:18:11 -0700 (PDT)
Received: by mail-ee0-f43.google.com with SMTP id e52so154601eek.2
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 00:18:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:content-type:content-transfer-encoding;
	bh=Ft+Q9zyDoJziy2ohczF6wFUFXCnVWINDZy9+J+ycN/o=;
	b=FTJtSgJrqso7B9WLHXKhdeq6Vs0NEOp6s8hyYscSBmA0LIVdTqZNZLOb+yepz/bK5T
	fdgD31PxY3ZKSi4GXvbOFFxjnyhFhv/nG1qrXb6YdNWqJhz1qFAhYPYk53jME/42hc7L
	1M+FdwhnCvhuSrvbrtUtx3zLmtySKLsxr7vPeMkP2aGv8MN6peg0nOo+Swz0tPSC+oIu
	4Cm2v7WpMrFOgzcfv5F9RUKEvzoC5ZJmJESia51yGaz3qdS9xhJTz4d54VsbFl3bQB+i
	ihlRGQ6V4kTJKm1CHscSf4PHHj2dP5nLmUCSQWD79cUkVQsd4fFVpI5DuEv04TnDksG1
	9nXA==
X-Received: by 10.14.37.7 with SMTP id x7mr17995771eea.38.1375255089982;
	Wed, 31 Jul 2013 00:18:09 -0700 (PDT)
Received: from ?IPv6:2001:420:44ff:fd0e:52e5:49ff:fe32:d20b?
	([2001:420:44ff:fd0e:52e5:49ff:fe32:d20b])
	by mx.google.com with ESMTPSA id i2sm399899eeu.4.2013.07.31.00.18.08
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 31 Jul 2013 00:18:09 -0700 (PDT)
Message-ID: <51F8BAE8.3090805@gmail.com>
Date: Wed, 31 Jul 2013 09:21:12 +0200
From: Martin Ertsaas <martiert@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130705 Thunderbird/17.0.7
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Building linux-yocto kernel in own bsp layer
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
X-List-Received-Date: Wed, 31 Jul 2013 07:18:13 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi.

I'm creating my own bsp layer for omap4 chips (Yes, I know of meta-ti,
but I want to learn how to do this myself :)). I'm trying to use the
linux-yocto 3.4 kernel,
and have gotten it to work locally. I then made a
linux-yocto_3.4.bbappend which contains the following:

COMPATIBLE_MACHINE_pandaboard = "pandaboard"

SRCREV_machine_pandaboard ?= "7eb5fbf903d9db90c3cf371b65e1f2a68d5676d7"

THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-3.4"

SRC_URI += "file://defconfig"

do_configure_prepend() {
        cp ${WORKDIR}/defconfig ${S}/.config
}

Problem I get is, without this configure_prepend, my defconfig is not
copied into .config the kernel folder. With this however, I get a
complaint from the kernel that the kernel directory is not clean and I
have to run make mrproper.

I would greatly appreciate any pointer/help/explanations as to what I
have done wrong here, and how to fix it. Have been struggling for this
for a while now, and have no idea what I have done wrong.

Best regards
Martin Ertsaas

