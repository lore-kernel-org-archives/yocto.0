Return-Path: <ibtsam.haq.0x01@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5D73E009E2; Thu, 24 May 2018 07:50:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ibtsam.haq.0x01[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f178.google.com (mail-yw0-f178.google.com
	[209.85.161.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC055E009CA
	for <yocto@yoctoproject.org>; Thu, 24 May 2018 07:50:27 -0700 (PDT)
Received: by mail-yw0-f178.google.com with SMTP id g16-v6so638989ywk.0
	for <yocto@yoctoproject.org>; Thu, 24 May 2018 07:50:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=UFyuaH2sK8E61CreIRtA7WsBppHmAeuM8HBkEaCidR8=;
	b=E0KKrs/hJ2Rf8OnHmHG5km5LPgNhUNoS1AQARvQGjJVscXd5RGUt5RSPlD3uBYBe8Q
	CigtIJ8YHTIYkC+I/7W7IuhVAxNBQRHPdy5PtAsl2R8FvtpoAaBkgFHTiJliBin3YZZd
	m1Hsl1fDs2DhQ+KhVog7BFD0TLzhtaBJW/0HDJ/ujQxTlIoFTL0xUGGTivIpSXFw/5Rw
	q8rDkI4YBRVCn88EYVDgat+frJlYRvApgLw0LEjlIHXEooauoG7XNKxvxk4J6eS8FzkP
	nMcUj9mlP01aH2GtB/UdLG5cK2alA0k8XCxI4Xqbby/fqVBa/O2Kzt6NhhxgA18zEc9i
	F7QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=UFyuaH2sK8E61CreIRtA7WsBppHmAeuM8HBkEaCidR8=;
	b=dkj0DSIoog+YzzynY4UBHhd9SWsjD0DJCBiMq0KVXmegZSf3v/kqtfP1T1keHZhJrJ
	W0TBzobStnTOqcbEDLcvd2e+YfwnqUjGzfmGP6O5nRs1A7b7qtHvNkIeeIHIeCQRAZri
	b2poLMuTdXt8bkxkPCShWg6PaDt4Txb/VgeIbvqboBTk1VuByAhaEJkBAnZWBXCMBMLS
	DtEzD7cDxDizwLCqtBgCMbOt3IBj1UET4ZrIkXlyA+p6RXToihl6woYV2mlx1y/HipXC
	XBi4tXS0l8D1zD7Cx8WMzr41tBka+8mWhUsjqE0up/Y2pz7McBhZM+psYI1qeP3epDnD
	JkRQ==
X-Gm-Message-State: ALKqPweytW1EhGzuTYgeXaWi1KIYzNDTnqJMrBX6E/tB/dopVRQv4CMV
	DMzzwWb6PRUP18zwg4JJP0EqviZ5ZnGC21BSnwaXbA==
X-Google-Smtp-Source: AB8JxZo72ORkUD7kbAzHZb+Pft2V9UgZZV+2JC9tyK9czlO2lpHNEHjHnppiqQH7rxs4VrCzUvr3SrYzVLJ9KcJsDws=
X-Received: by 2002:a81:a307:: with SMTP id a7-v6mr4055484ywh.49.1527173426650;
	Thu, 24 May 2018 07:50:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a25:31c5:0:0:0:0:0 with HTTP; Thu, 24 May 2018 07:50:26
	-0700 (PDT)
From: Ibtsam Ul-Haq <ibtsam.haq.0x01@gmail.com>
Date: Thu, 24 May 2018 16:50:26 +0200
Message-ID: <CAPQseg01+CihuVeCSUrDKy4ERN0oHmd6p9rK1XOMZzc5yMe3-g@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: setcap using postinst
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
X-List-Received-Date: Thu, 24 May 2018 14:50:28 -0000
Content-Type: text/plain; charset="UTF-8"

Hi all,

I need help to set capabilities for certain binaries at build time.

I have followed this discussion from 2016:
https://lists.yoctoproject.org/pipermail/yocto/2016-July/030942.html

I am currently using Yocto Krogoth (not allowed to upgrade that for now),
but I have updated pseudo to 1.9.0.

In my image file I have added:
IMAGE_DEPENDS_tar_append = " tar-replacement-native"
EXTRANATIVEPATH += "tar-native"
IMAGE_CMD_TAR = "tar --xattrs --xattrs-include=*"

In my recipe file I have added postinst script:
pkg_postinst_${PN} () {
    setcap cap_sys_time,cap_ipc_owner+ep "$D/${bindir}/mybin"
}

My target device uses an sdcard image, which is created using dd from
the rootfs.ext4 image.

Apparently the postinst script approach is not working for me, I do
not get the capabilities on mybin in a running system. I need the
postinst script to work at rootfs creation time as I do not plan to
keep setcap in the final image, and also want to switch to a read-only
rootfs soon.

I would appreciate if someone could help me to make this work.

Best regards,
Ibtsam Haq

