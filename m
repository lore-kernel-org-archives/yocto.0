Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7A63E00D32; Thu,  2 May 2019 07:55:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f176.google.com (mail-it1-f176.google.com
	[209.85.166.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC32CE00C37
	for <yocto@yoctoproject.org>; Thu,  2 May 2019 07:55:06 -0700 (PDT)
Received: by mail-it1-f176.google.com with SMTP id s3so3815784itk.1
	for <yocto@yoctoproject.org>; Thu, 02 May 2019 07:55:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=uBiIplZyuC2o8/80zvoptdxnQZWCLqq6mEN7KNn34HE=;
	b=BXkGEPLf4zA6c5IVU925XdOledklFjQrDxH9EDAxKq0ejaGYMqUDFeSkA7y3vapeP2
	IXKD8K20QbVqPZR/LWMhlOBQdzD6iTkppVPLPJ6TNz+b5807giZzWq0O0OdTmqv9uENe
	5BG4iedrmAjCV0s3ZGKKLd0jPy/heBEjTiR6tfls9SQz0dvbXzik9OwzZW2KI8XckZhJ
	Lyffob3p42geMiagxblJZ95b1X2v4reV/r0IA6nvXp0393Mhoawyt59gO308oPJzXSQl
	3mZw8D5klh5P/1FIiAMP84CKzOCfPutVMCHaOpY5rBeNlV8ZrK+9nLlJCTEKMW0EVDn5
	vg/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=uBiIplZyuC2o8/80zvoptdxnQZWCLqq6mEN7KNn34HE=;
	b=Wi+C5kCkrIbmN4breDtVrdjE98rdk+vi9KonVCL7tqrxoe/gqfwpRKVlgxyC9twBu4
	fUcKOXwYpVHHK29yt3whjJo1/mXJOYMOOaIlJj3EjXVSXKBWO5LzYTM+m5Om7loT67Db
	itbcpFFOTvNCWlfrREfxNV3K4vMFgUp6DDtYcWBjYwxpOpB0JZuWcLrv9VkkvO5E8mjQ
	WhtHkWGxwau6VOL4Y+VpYmJi+jKEIp1ycUJ1a7XClXxe1idn6MyUiuWmNWq3SiQIRueh
	rQMVT1BMPnNZqq346vm+WXUEKO1Zg0loKKIJNM1tTs/95f091D6g/G+2sOHlOSEmKhKs
	hcBw==
X-Gm-Message-State: APjAAAXwTIRRvynxxHIIaXAGNubEh4CYmK5IhMxyf1c5/d7NkTDPeqXd
	kFMgqToGmhI5Vo4+0f4bzkITxjQS3UOtK1RNEWg200lt
X-Google-Smtp-Source: APXvYqz4TeIjHULGK5T7EVjqTMVMISOqVZLFL8TEYlsbb5Hz0Tg5H13W1RtLDw32iQY/e07sUMkwcnjmKcbuZZZ+Us0=
X-Received: by 2002:a24:7050:: with SMTP id f77mr2569780itc.130.1556808905920; 
	Thu, 02 May 2019 07:55:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:9c06:0:0:0:0:0 with HTTP;
	Thu, 2 May 2019 07:55:05 -0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Fri, 3 May 2019 00:55:05 +1000
Message-ID: <CAA=hcWS8L-dByznaDUALrZ2_Qt_Q0mXJ6uuGoEyQ=EoC2HiHUA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: System service
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
X-List-Received-Date: Thu, 02 May 2019 14:55:07 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

The official ofono.inc recipe defines SYSTEMD_SERVICE_${PN} =
"ofono.service", but when I built the image, the system service does
not start ofono daemon automatically, I have to run the ofono daemon
manually. What I could be missing here? Here is the ofono recipes,
sorry if I need to ask ofono mailing list.

$ cat ofono.inc
HOMEPAGE = "http://www.ofono.org"
SUMMARY  = "open source telephony"
DESCRIPTION = "oFono is a stack for mobile telephony devices on Linux.
oFono supports speaking to telephony devices through specific drivers,
or with generic AT commands."
LICENSE  = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=eb723b61539feef013de476e68b5c50a \

file://src/ofono.h;beginline=1;endline=20;md5=3ce17d5978ef3445def265b98899c2ee"

inherit autotools pkgconfig update-rc.d systemd bluetooth
gobject-introspection-data

DEPENDS  = "dbus glib-2.0 udev mobile-broadband-provider-info"

INITSCRIPT_NAME = "ofono"
INITSCRIPT_PARAMS = "defaults 22"

PACKAGECONFIG ??= "\
    ${@bb.utils.filter('DISTRO_FEATURES', 'systemd', d)} \
    ${@bb.utils.contains('DISTRO_FEATURES', 'bluetooth', 'bluez', '', d)} \
    "
PACKAGECONFIG[systemd] =
"--with-systemdunitdir=${systemd_unitdir}/system/,--with-systemdunitdir="
PACKAGECONFIG[bluez] = "--enable-bluetooth, --disable-bluetooth, ${BLUEZ}"

EXTRA_OECONF += "--enable-test"

SYSTEMD_SERVICE_${PN} = "ofono.service"

do_install_append() {
  install -d ${D}${sysconfdir}/init.d/
  install -m 0755 ${WORKDIR}/ofono ${D}${sysconfdir}/init.d/ofono
}

PACKAGES =+ "${PN}-tests"

RDEPENDS_${PN} += "dbus"
RRECOMMENDS_${PN} += "kernel-module-tun mobile-broadband-provider-info"

FILES_${PN} += "${systemd_unitdir}"
FILES_${PN}-tests = "${libdir}/${BPN}/test"
RDEPENDS_${PN}-tests = "python3 python3-dbus"
RDEPENDS_${PN}-tests += "${@bb.utils.contains('GI_DATA_ENABLED',
'True', 'python3-pygobject', '', d)}"

Thank you.

- jupiter

