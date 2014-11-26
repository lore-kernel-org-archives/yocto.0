Return-Path: <ayoub.zaki@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F8ABE00961; Wed, 26 Nov 2014 06:03:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ayoub.zaki[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f53.google.com (mail-la0-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 541AFE00942
	for <yocto@yoctoproject.org>; Wed, 26 Nov 2014 06:03:51 -0800 (PST)
Received: by mail-la0-f53.google.com with SMTP id gm9so2549247lab.12
	for <yocto@yoctoproject.org>; Wed, 26 Nov 2014 06:03:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=2Xcw34KvzWQtbas+FBxIOjWDM1bzvd7/XhztUjbfS3c=;
	b=Myyy3GT1F5EB9qazBlQ1TUY378SoPrpw0zQFM4tpibtkBmAfR24eN4VZY6Dmqj5Hrn
	L6w3piuM39P4RQTHs/GjFylxO/a8x/BROGoaWo63XOOnMhqgrNZplOJHzXm4sc+OGFkl
	MV4Lh46yE3/hfn3ne/9FSaAk2LDb1PpcIUaqWZ/a1CRT6snyn4gRb+ylfDAw4U9Fke6Q
	K6rbhIxaf2jalXBpe8ddCxC6rr8lACY1XAF7MZbyAhAEMMKmynfNT2tOtyJHQ0UQpQIr
	2ZVoE3CzFhzyxsbMz3KDW6SfY25sduMKZXLRI9V+OTlUi5MjLR9YEk26ZCQpFPes80GQ
	bJSA==
MIME-Version: 1.0
X-Received: by 10.112.130.132 with SMTP id oe4mr34112004lbb.82.1417010630452; 
	Wed, 26 Nov 2014 06:03:50 -0800 (PST)
Received: by 10.25.36.198 with HTTP; Wed, 26 Nov 2014 06:03:50 -0800 (PST)
Date: Wed, 26 Nov 2014 15:03:50 +0100
Message-ID: <CA+-BmJZ=8TOkq0onBPwf1RALNf5iqbqy8+BHPhogrqCJ4ZJO=g@mail.gmail.com>
From: Ayoub Zaki <ayoub.zaki@googlemail.com>
To: yocto@yoctoproject.org
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
X-List-Received-Date: Wed, 26 Nov 2014 14:03:55 -0000
Content-Type: multipart/alternative; boundary=047d7b3a84c0456adc0508c37faf

--047d7b3a84c0456adc0508c37faf
Content-Type: text/plain; charset=UTF-8

I have built an image using yocto dizzy 1.7 running on beaglebone using
systemd as init system and I noticed a misbehaviour while inserting
different removable storage device (sd cards /usb sticsk) using
vfat/ext3/ext4 FS that it does not correctly get mounted and the mount
points under /run/media/$name stay empty.

I debugged the automount script triggered by udev on insert/remove :
/etc/udev/scripts/mount.sh and it seems that it's correctly running and
mounting the media but somehow something is running after and unmounting
the media device !

This behaviour was NOT observed with yocto daisy 1.6.

Any help/hint is appreciated !

--047d7b3a84c0456adc0508c37faf
Content-Type: text/html; charset=UTF-8

<div dir="ltr"><div>I have built an image using yocto dizzy 1.7 running on beaglebone 
using systemd as init system and I noticed a misbehaviour while 
inserting different removable storage device (sd cards /usb sticsk) 
using vfat/ext3/ext4 FS that it does not correctly get mounted and the 
mount points under /run/media/$name stay empty.<br><br></div><div>I 
debugged the automount script triggered by udev on insert/remove : 
/etc/udev/scripts/mount.sh and it seems that it&#39;s correctly running and 
mounting the media but somehow something is running after and unmounting the media device !<br><br></div><div>This behaviour was NOT observed with yocto daisy 1.6.<br><br></div>Any help/hint is appreciated !<br></div>

--047d7b3a84c0456adc0508c37faf--
