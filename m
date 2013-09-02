Return-Path: <paul.betafive@gmail.com>
Received: from mail-wg0-f51.google.com (mail-wg0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BF77E01419
	for <yocto@yoctoproject.org>; Mon,  2 Sep 2013 13:12:10 -0700 (PDT)
Received: by mail-wg0-f51.google.com with SMTP id a12so526846wgh.6
	for <yocto@yoctoproject.org>; Mon, 02 Sep 2013 13:12:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id;
	bh=UJ5EJEjTWe6bdj+sxrf5CndI5BgRpZGu11lg6H1dRTo=;
	b=uOe+w9IAFn7FY7o0b65JhzIoz2/mWKzsGCfx2H8h6knOS1fQXppsAA/3JpqMfPy077
	fs58+ZgNFhkGb827AHawESq2ikhsHxgC+7sTwjioWb2fCAoPY5Hcmm7wyzyPdhn33vrO
	0tkI5f8Xid8bS51Oc5jQwiQ0okWWS/t6NDG1ZRkR4ooDpaRPXbFviMJKTAyykHm0D/kA
	m1oUuqL4CnRQYHeI5++rpi4A+es11QyV9ke9PJ6nU+Qmvo4GGPppa8iDsi6poBOcBMyr
	Jor5B6vMjghsPBnZt+VpyrOuOnN6UVNPcFnz4roYAbnl9jArtgX1OTPFLWQmy9xSyE/B
	4vcQ==
X-Received: by 10.194.80.39 with SMTP id o7mr7306052wjx.39.1378152729263;
	Mon, 02 Sep 2013 13:12:09 -0700 (PDT)
Received: from turn.betafive.co.uk (94-192-12-83.zone6.bethere.co.uk.
	[94.192.12.83])
	by mx.google.com with ESMTPSA id a8sm20789514wie.6.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 02 Sep 2013 13:12:08 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: yocto@yoctoproject.org
Date: Mon,  2 Sep 2013 21:11:48 +0100
Message-Id: <1378152710-10291-1-git-send-email-paul@paulbarker.me.uk>
X-Mailer: git-send-email 1.8.4
Subject: [meta-raspberrypi][PATCH v2 0/2] rpi-sdimg compression
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
X-List-Received-Date: Mon, 02 Sep 2013 20:12:16 -0000

I've incorporated the changes recommended by Andrei against the first version of
the patch. Whilst editing the README file I noticed that the IMAGE_FSTYPES
example didn't make sense (or include a closing double-quote) so I've fixed this
as well.

Currently running a build test with a 3.8.y series kernel - I'll post the patch
to add that recipe once it's confirmed working.

Paul Barker (2):
  sdcard_image-rpi.bbclass: Allow optional compression
  README: Fix IMAGE_FSTYPES example

 README                           |  4 +++-
 classes/sdcard_image-rpi.bbclass | 20 ++++++++++++++++++++
 2 files changed, 23 insertions(+), 1 deletion(-)

-- 
1.8.4


