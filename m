Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pd0-f175.google.com (mail-pd0-f175.google.com
	[209.85.192.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BE75E003FA
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2013 21:49:38 -0700 (PDT)
Received: by mail-pd0-f175.google.com with SMTP id q10so1411689pdj.20
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2013 21:49:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version;
	bh=Nql34MN05dUOyyOjSK67ve6iYuL/9ZDe4r1MbqDn48Y=;
	b=N0jDGpXwJB8sjXHkDmgD/79KoZ8quKhrsr5Mk9ztd8+7W0TJ0jAXHRbCNZS5mHK6/s
	ktV/BkZczTQzquQ7Cvitmr1YH8CETfUrB5NORIAtP4l058tMYGqtHLihdnUZNdmhsbR3
	sCkU4YZq8Vc1y1SB+f+gGxk5OXXgukPumBesIOIv7qmYpjxRLxckn4DLo5cOHukwOfDC
	JvNs4KquNDfSvaxa7D1+KV+svpQuClKLWp8Y/OCNo2OtGONPkGv9ZVBu5g8P28DwTcdR
	oanG5MK9hX9VPUvj98e/YfPuTViFYHwdgQqX4h0qoGuQ9E59ldu+3MWHUMHmfhTvvSbG
	0iLw==
X-Received: by 10.66.252.129 with SMTP id zs1mr2515719pac.113.1377319776813;
	Fri, 23 Aug 2013 21:49:36 -0700 (PDT)
Received: from [192.168.1.106] ([94.205.106.26])
	by mx.google.com with ESMTPSA id py4sm3503471pbb.33.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 23 Aug 2013 21:49:36 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Message-Id: <1B0819AA-2F91-43E6-8199-5F0BC135BFDE@gmail.com>
Date: Sat, 24 Aug 2013 08:49:31 +0400
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 6.1 \(1498\))
X-Mailer: Apple Mail (2.1498)
Subject: Installing yocto built qemu binaries and sdk toolchain to another machine
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
X-List-Received-Date: Sat, 24 Aug 2013 04:49:39 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
      What should I do to relocate and install the qemu binaries and sdk =
toolchain built using yocto, to another machine?=20

The target machine has a fresh Ubuntu 12.04 installation, and I'd like =
to be able to run the Yocto generated qemu binaries inside it.

Best regards,

Elvis Dowson=

