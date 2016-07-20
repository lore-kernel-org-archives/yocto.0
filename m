Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1ADCCE00D8F; Wed, 20 Jul 2016 02:31:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CD71E00D82
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2016 02:31:36 -0700 (PDT)
Received: by mail-wm0-f48.google.com with SMTP id q128so48354747wma.1
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2016 02:31:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=from:to:subject:date:message-id;
	bh=3dXjTMMBiJT+3/xTIopGKnYKBil77CXk45onwdIfeow=;
	b=kI5U9oKGtnkIAw/io7sjQ6vTPWVCcYsH1XVKFmoesohHn4eKC5kz6KTFqcnnmprTJ7
	0ysR7k3IgB/2DpooSlzN4Hr39ec65PoipmNZJKNA1p2YWUUZECP8sZHnlpNTudDve0nz
	ffeeZIT5WZNSWvamlOnCK73v62WBLGChfoj8U67JAJfOaSihpLIZRelbbA3n+mo9PyIX
	GCFDQEqpjh9wSxJX5NYynPBzaLRkFu+aSpe8mvRZIg2oNJyqA1cQBmMtd52k6ltpi7gH
	EJickHnSb43lLcrwSAjpTzY0aMZKBjaUlDHb0nlqP2N5XJT3w6/+p4FvS7HxooT4F/Np
	WGDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=3dXjTMMBiJT+3/xTIopGKnYKBil77CXk45onwdIfeow=;
	b=OQNsgsQ9qfWXI5XyDXNPxgv2CIuCtIr2qXEwoBzA01q9GT2QlbilSa5TSmo3/Nhgoz
	lY6B+s0wPmrhu7KdggohS0g48Ke9FW1ciP0NRKONk2o4qn+Ew+f8Jj9zvboohcqqux0g
	UQWYhljrsVT+t+jRWAM5da4BtbGesUDwDY2ZL+qT0EilNKlFfIZWVM87gis8BZb96D+N
	oZegeeHZDTT+0Ab+QvhJi007QWgxYI7H1Qp6l5A/f2/hqcbt+H5do3Dkuy5/MVlECevd
	LJok8pv+PMqrWH6hlrPV0jigy+COUVuhUrS9fJewfVQ6Ud3zNpgbwq/54jZm+tPHAm0I
	zPEQ==
X-Gm-Message-State: ALyK8tLOsDG5EMp2rH6ECh8rUSKzBZVg0uXGQS3lyh3v+5wyom9z95qbzaoAnuLokvzrcA==
X-Received: by 10.28.69.80 with SMTP id s77mr10110696wma.92.1469007094978;
	Wed, 20 Jul 2016 02:31:34 -0700 (PDT)
Received: from localhost.localdomain (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114]) by smtp.gmail.com with ESMTPSA id
	v189sm30409313wmv.12.2016.07.20.02.31.34 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 20 Jul 2016 02:31:34 -0700 (PDT)
From: "piotr.lewicki" <piotr.lewicki@elfin.de>
To: yocto@yoctoproject.org
Date: Wed, 20 Jul 2016 11:31:14 +0200
Message-Id: <1469007075-4945-1-git-send-email-piotr.lewicki@elfin.de>
X-Mailer: git-send-email 2.7.4
Subject: [meta-raspberrypi][PATCH 00/01] Fix bundling initramfs to kernel
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
X-List-Received-Date: Wed, 20 Jul 2016 09:31:42 -0000


Fixes error:
| /home/piotr.lewicki/yocto-raspberry/2016-07-18/build/tmp/work/raspberrypi3-poky-linux-gnueabi/linux-raspberrypi/1_4.4.13+gitAUTOINC+680be5e27a-r0/temp/run.do_bundle_initramfs.19144: 152: /home/piotr.lewicki/yocto-raspberry/2016-07-18/build/tmp/work/raspberrypi3-poky-linux-gnueabi/linux-raspberrypi/1_4.4.13+gitAUTOINC+680be5e27a-r0/temp/run.do_bundle_initramfs.19144: /home/piotr.lewicki/yocto-raspberry/2016-07-18/build/tmp/sysroots/x86_64-linux/usr/bin/mkknlimg: not found
| WARNING: exit code 127 from a shell command.
| ERROR: Function failed: do_bundle_initramfs (log file is located at /home/piotr.lewicki/yocto-raspberry/2016-07-18/build/tmp/work/raspberrypi3-poky-linux-gnueabi/linux-raspberrypi/1_4.4.13+gitAUTOINC+680be5e27a-r0/temp/log.do_bundle_initramfs.19144)

After removing rpi-mkimage from the layer tool mkknlimg is not available (and not needed with kernels 4.4+).
To fix execution of do_bundle_initramfs task I have removed lines appended to this task in linux-raspberrypi.inc.

Tested with kernel 4.4.13.

Unfortunately I don't know how this works with older kernels (3.18 and 4.1) but since we don't have mkknlimg anymore-
bundling initramfs should also fail there.

