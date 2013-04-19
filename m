Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D5C2E01496;
	Fri, 19 Apr 2013 00:44:56 -0700 (PDT)
Received: by mail-pa0-f47.google.com with SMTP id bj1so186660pad.20
	for <multiple recipients>; Fri, 19 Apr 2013 00:44:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:content-type:content-transfer-encoding:subject:date
	:message-id:cc:to:mime-version:x-mailer;
	bh=lwrl2tXNqtwuvaufz3N7Qu96CvY24zf2dXMT5Y0UggI=;
	b=ZwDS6GKcgC9Qq8aYO3m+rUj0B3hkX6kDovVRj//No0ZaXRlD64IcRo/Iv6ZX2UXmgz
	3YinJ3KHs5zdO3SnQOJ31ObYygBTHPe6TseDUFBiOvhC+To/SEpmWWIvmSv5+XMYuQH1
	xu9lO2m+oSNaJ2zg6vGLyeyCAb5eWruf//WrZcjnEPxauekJP/jbsISmtPOoV4XSn9fb
	gakaWvCDrj9R5vfFR52OZqqf76mGfMGXgzhSQt8WN1nXjcePvS5pQeKov4Lo9h7Fd+tZ
	8PBx4d/fw2qvkS3O/WuexqLX426EUVEErmmVx60KHgv6oO5KluUPgxtBpWXmpXzFMoHb
	CYBA==
X-Received: by 10.68.113.101 with SMTP id ix5mr17746397pbb.142.1366357496149; 
	Fri, 19 Apr 2013 00:44:56 -0700 (PDT)
Received: from [192.168.1.100] ([94.205.106.101])
	by mx.google.com with ESMTPS id lo7sm13768693pab.19.2013.04.19.00.44.53
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 19 Apr 2013 00:44:55 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Fri, 19 Apr 2013 11:44:49 +0400
Message-Id: <FB1FE6F3-40EC-4711-95D0-5633B0103297@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
X-Mailer: Apple Mail (2.1503)
Cc: meta-xilinx Mailing List <meta-xilinx@yoctoproject.org>
Subject: [meta-xilinx] PREFERRED_VERSION_linux-libc-headers = "3.6" getting ignored
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
X-List-Received-Date: Fri, 19 Apr 2013 07:44:56 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
       In my zynq-7-default-versions.inc file, I have the following =
definitions for preferred versions

PREFERRED_VERSION_virtual/kernel ?=3D "3.6"
PREFERRED_VERSION_linux-libc-headers =3D "3.6"
PREFERRED_VERSION_u-boot =3D "2012.10"

However, when I build core-image-minimal, =
PREFERRED_VERSION_linux-libc-headers =3D "3.6" gets ignored and it goes =
ahead and builds linux-libc-headers_3.8.bb

Is it only effective if specified in the local.conf file?

Elvis Dowson=

