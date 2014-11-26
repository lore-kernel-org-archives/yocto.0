Return-Path: <ayoub.zaki@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE447E00953; Wed, 26 Nov 2014 05:53:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ayoub.zaki[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.52 listed in list.dnswl.org]
Received: from mail-la0-f52.google.com (mail-la0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 069FFE0086F
	for <yocto@yoctoproject.org>; Wed, 26 Nov 2014 05:53:31 -0800 (PST)
Received: by mail-la0-f52.google.com with SMTP id q1so2444049lam.25
	for <yocto@yoctoproject.org>; Wed, 26 Nov 2014 05:53:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=jpAkzomB6U0xXD4jXlZB/45jm+8YmbRGMcDgqH9BRQQ=;
	b=gRE3dyvDcKR+paL2MrNTC+YWYaPOcvuNIqH+TVlzNqzT8TqTHnPgiQg+lHp3A4Zc19
	a+PN13i43EgICKMMQtW4YF7xb3TvSnVAaHe9HaWGZ6PcmKIaFK6Ta87DXUqyxk7Xy4HW
	45juZtiAgRbO5GVD0uaMeqAI9ZhuAErHqlO5oL7JZUWLVywljVqWjWZKFdwpvfrJlm78
	a+qzXLklhIT9WcxKh/tXD5oEdIi30ysHbGuhUKHvadJgDBv5VAA7H/OuvljaeMCJLyum
	UiRo3tNFPnvlYkvAePVBrhIR5eplnOANDoAcKh+Qiapt353TTvdKTxc5GDRWK+8zLx7B
	AxqQ==
MIME-Version: 1.0
X-Received: by 10.152.170.131 with SMTP id am3mr33686116lac.15.1417010009474; 
	Wed, 26 Nov 2014 05:53:29 -0800 (PST)
Received: by 10.25.36.198 with HTTP; Wed, 26 Nov 2014 05:53:29 -0800 (PST)
Date: Wed, 26 Nov 2014 14:53:29 +0100
Message-ID: <CA+-BmJaZArp7_nGGN5_TgjSWdnONmR6ZXa4rt_T5vtF+YzUnfw@mail.gmail.com>
From: Ayoub Zaki <ayoub.zaki@googlemail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Wed, 26 Nov 2014 09:56:15 -0800
Subject: dizzy 1.7 udev automount misbehaviour
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
X-List-Received-Date: Wed, 26 Nov 2014 13:53:37 -0000
Content-Type: multipart/alternative; boundary=089e0112c588420deb0508c35ab5

--089e0112c588420deb0508c35ab5
Content-Type: text/plain; charset=UTF-8

I have built an image using yocto dizzy 1.7 running on beaglebone using
systemd as init system and I noticed a misbehaviour while inserting
different removable storage device (sd cards /usb sticsk) using
vfat/ext3/ext4 FS that it does not correctly get mounted and the mount
points under /run/media/$name stay empty.

I debugged the automount script triggered by udev on insert/remove :
/etc/udev/scripts/mount.sh and it seems that it's correctly running and
mounting the media but somehow something is running after and unmounting it
and leaving the mount points empty !

This behaviour is NOT observed with yocto daisy 1.6.

Any help/hint is appreciated !

--089e0112c588420deb0508c35ab5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I have built an image using yocto dizzy 1.7 running o=
n beaglebone using systemd as init system and I noticed a misbehaviour whil=
e inserting different removable storage device (sd cards /usb sticsk) using=
 vfat/ext3/ext4 FS that it does not correctly get mounted and the mount poi=
nts under /run/media/$name stay empty.<br><br></div><div>I debugged the aut=
omount script triggered by udev on insert/remove : /etc/udev/scripts/mount.=
sh and it seems that it&#39;s correctly running and mounting the media but =
somehow something is running after and unmounting it and leaving the mount =
points empty !<br><br></div><div>This behaviour is NOT observed with yocto =
daisy 1.6.<br><br></div><div>Any help/hint is appreciated !<br><br><br></di=
v><div><br></div><div><em></em><br></div><div><br></div></div>

--089e0112c588420deb0508c35ab5--
