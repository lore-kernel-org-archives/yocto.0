Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pd0-f171.google.com (mail-pd0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37056E003BF
	for <yocto@yoctoproject.org>; Sat, 24 Aug 2013 11:00:56 -0700 (PDT)
Received: by mail-pd0-f171.google.com with SMTP id g10so1889097pdj.16
	for <yocto@yoctoproject.org>; Sat, 24 Aug 2013 11:00:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version;
	bh=8DPAsIInmUYgyA/hWRlOJaq02EKL/t+UZUrVt8V67yg=;
	b=kWSI9B2i0hrINDCn1p4DV1BAXNY76tC7GyutmmI3bMpnWFEBSeubm+s9nU3UmLwuO2
	HPZ8/i/X8ZgVSR4Zh3Wqlh8WsIjyiCAPg4AaJ6wYBszKBnoNMapXq/ewtmdlS2dI+QHw
	wETcWU1XRuXJhsczt/23cod8wqSFU9Uu49r4QJzva+vn+gwVQY+64aok+687/JgEbMdX
	07x1K3wo8199w9gObkG7bPBTms6WOAd7ihKGrch9C7Gg6p+AgHQ2+MVcxHY3LLB2MLy2
	UWqy7voPCAX7d5JPFAowXttlIdznSYlInhN82LbjazVG2LiQfgC+M+n6O0kxHQ5XWxhl
	R/0w==
X-Received: by 10.67.30.164 with SMTP id kf4mr5500071pad.13.1377367255886;
	Sat, 24 Aug 2013 11:00:55 -0700 (PDT)
Received: from [192.168.1.106] ([94.205.106.26])
	by mx.google.com with ESMTPSA id mr3sm7407498pbb.27.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 24 Aug 2013 11:00:55 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Message-Id: <A9C97D7F-9AB0-4F9A-B933-D09ED5B6748E@gmail.com>
Date: Sat, 24 Aug 2013 22:00:50 +0400
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 6.1 \(1498\))
X-Mailer: Apple Mail (2.1498)
Subject: linux-yocto defaulting to 3.4.52 for new qemuarmhf.conf
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
X-List-Received-Date: Sat, 24 Aug 2013 18:00:57 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
      I created a new qemuarmhf.conf, to build using armv7a vfp and =
neon.=20

In the linux-yocto_3.8.bb recipe, I explicitly specified =
SRCREV_machine_qemuarmhf and added qemuarmhf to the list of =
COMPATIBLE_MACHINES.

For some reason, it still refuses to build using kernel 3.8, and keeps =
defaulting to 3.4.52.

I know I can over-ride it in my local.conf by setting a =
PREFERRED_VERSION_virtual/linux =3D"3.8" , but I'd like to know what =
I've missed, to get it to work by default, without setting the over-ride =
in my local.conf.

Thanks!

Best regards,

Elvis Dowson=

