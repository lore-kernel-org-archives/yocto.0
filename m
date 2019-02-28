Return-Path: <utsavjain0511@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61F01E00D00; Wed, 27 Feb 2019 18:08:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (utsavjain0511[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.171 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com
	[209.85.214.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E59DEE00C1B
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 18:08:14 -0800 (PST)
Received: by mail-pl1-f171.google.com with SMTP id m10so8920286plt.10
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 18:08:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=BueZsLTVJOcdaUgwfkoDect/xgvXLEV4YNgDgGG3Bqc=;
	b=URwRoMKiEp5IUhfQ0IZDLRTWHYDRY266SqpbVRYLLLpwSrEhlTvdcBPTIEXoza/4ix
	XJWOeaywDVIH2gT6q8sJVt6JEvtC2V1St82bFqanYNGS4bZVkvQ8hSedgCNkbKMKTXnK
	i/pYymjT2SqNuPTTRy/ZIKSoz/meRisyWagBL+j+nfVGO2zUcS9y5mxsBUxUtaBvPh1K
	lSEYlZCrIzqqvy8Pcj+OwM1Z2SsULkNbGWFStLitWSYSPkhy8J75z0ISdGwKrju9vl2h
	MZh49eYYujsSnRg8FvkxeZIt/DSPqT3AWVDP39ikBvY5JsEnxYwQrSKV6YJkubDY9qmq
	qL1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=BueZsLTVJOcdaUgwfkoDect/xgvXLEV4YNgDgGG3Bqc=;
	b=mzuDuI+uFg6T75B1v2ilu9e0c0vroupgfvTsNCP382kfww5x3859IiMc3LG3hK3VQ6
	zdgeeBaKZ5lX6DTMZsHcaA49fgL+wg8FVbhm0v4d0ff+wZJQyomiCGX6mG8p5dq43084
	/fOsVBWqHV2VyKgV5jSqLCN29tjEguBtxnTdXlc6pZ+V4/QdTg8Az+8C+ia/tgW0OnLe
	6xngtEOCVxM5AFPzJOanZGNsjO3sTgPrwVFYJVZ+5EgkeEZkG0QDWFj3KFza+gDO6fSP
	u8jxG+hOGYUPhrPoP2RuynA9mE2ibdvxPBJxXYHCy+90n9xl1c8xHzP6buK+FhAT7Gnl
	5sNA==
X-Gm-Message-State: AHQUAuYu6tkjUX6t1yXPJ7E9QplRwREAPmp7WTQCLAzaTnMMpNoajg+i
	1DVRNPZAvsu1eG7zHR/jzVHUTpYa8Qkokmu56ZEINZIW
X-Google-Smtp-Source: AHgI3IbMdEcwTv20mko/yUwvE04qAVuZRoTXAFs6zQW6g6oBjkLACKN40TAu41zVZ7qNYUkl76XCqISBqy5+YsBJwto=
X-Received: by 2002:a17:902:bd06:: with SMTP id
	p6mr5468956pls.130.1551319694027; 
	Wed, 27 Feb 2019 18:08:14 -0800 (PST)
MIME-Version: 1.0
From: Utsav Jain <utsavjain0511@gmail.com>
Date: Wed, 27 Feb 2019 18:08:03 -0800
Message-ID: <CAEAE6wOo4b4VeCfcrjduuCv9vB3oLuETJNtOKrtY_oB2e53yDQ@mail.gmail.com>
To: yocto@yoctoproject.org, andrei@gherzan.ro
X-Mailman-Approved-At: Thu, 28 Feb 2019 08:21:22 -0800
Subject: Enabling BLE on RPI 3B+ using meta-rasperrypi recipe
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
X-List-Received-Date: Thu, 28 Feb 2019 02:08:15 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I am using meta-raspberrypi
https://github.com/agherzan/meta-raspberrypi recipe to build an image
for RPI 3B+ . I want to enable bluetooth on the device.

My local.conf looks something like this

CONF_VERSION = "1"
ENABLE_UART = "1"
ENABLE_RPI3_SERIAL_CONSOLE = "1"
SERIAL_CONSOLES = "115200;ttyAMA0"
MACHINE = "raspberrypi3-64"


CORE_OS = " \
    bluez5 \
    openssh openssh-keygen openssh-sftp-server \
    tzdata \
"

WIFI_SUPPORT = " \
    crda \
    iw \
    wpa-supplicant \
"

DEV_SDK_INSTALL = " \
    python3 \
    pi-bluetooth \
    python3-modules \
    python3-pip  \
    python3-pygobject \
    python3-dbus \
    dbus-glib \
    gobject-introspection \
"

DEV_EXTRAS = " \
    ntp \
    ntp-tickadj \
"

EXTRA_TOOLS_INSTALL = " \
    bzip2 \
    ethtool \
    i2c-tools \
    iperf3 \
    iproute2 \
    iptables \
    less \
    netcat \
    procps \
    sysfsutils \
    tcpdump \
    unzip \
    util-linux \
    zip \
    dbus \
"


PREFERRED_VERSION_linux-raspberrypi = "4.%"
DISTRO_FEATURES_remove = "x11 wayland"

DISTRO_FEATURES_append = " bluez5 bluetooth wifi systemd"

IMAGE_INSTALL_append = " \
    ${CORE_OS} \
    ${DEV_SDK_INSTALL} \
    ${DEV_EXTRAS} \
    ${EXTRA_TOOLS_INSTALL} \
    ${WIFI_SUPPORT} \
"

VIRTUAL-RUNTIME_init_manager = "systemd"

PACKAGE_EXCLUDE_append = " packagegroup-core-ssh-dropbear"

I am not able to attach the device to the HCI interface.

bluetoothctl -- devices return "No default controller available"

I am very new to both Yocto and RPI distro. Any help in pointing to
the right firmware or init scripts to fix this is appreciated. Thanks.

-- 
Regards ,
Utsav

