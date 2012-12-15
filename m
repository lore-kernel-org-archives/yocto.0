Return-Path: <elvis.dowson@gmail.com>
Received: from mail-da0-f48.google.com (mail-da0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E942CE006CC
	for <yocto@yoctoproject.org>; Sat, 15 Dec 2012 09:29:42 -0800 (PST)
Received: by mail-da0-f48.google.com with SMTP id k18so1899599dae.35
	for <yocto@yoctoproject.org>; Sat, 15 Dec 2012 09:29:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version:x-mailer;
	bh=LJzr9HRQbNbhOqdgq7wkER/X5ujVYyDWEhmvR1sb6YM=;
	b=vfv/9ek8bTTvTWFFOzRQHxGROV9HV9deTmpTRlw3o4lgnqrfXpNx/MFMySk+N8aukk
	vavl3EgOO+YE7ag5oAYoKzcVyy2XF+yAO9r7rsdCz3en2wkQAOfZpM6UZDxb3sl+YL+9
	MtfOFfLdwjSHvLl/iyReJCxW42UNXimiJpdXhqHqyykY0/HmMoO40uKJX/pBZP7lpM8c
	sNqbDkMg7JNemNofonQMlCFitPwVdnq+lN9g+tHdNsnKf9LhHzJutU1P+fOSbRbRvKCa
	FtZGzwz+Ylcsm7d6IlrTpUh8RPLtPHM0zzT9GNctFIn8T6mBExNa0z6A5HNhJbKy5Uiz
	rCzw==
Received: by 10.69.0.101 with SMTP id ax5mr26328443pbd.105.1355592582613;
	Sat, 15 Dec 2012 09:29:42 -0800 (PST)
Received: from [192.168.1.100] ([94.205.106.4])
	by mx.google.com with ESMTPS id kl3sm5015435pbc.15.2012.12.15.09.29.40
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 15 Dec 2012 09:29:42 -0800 (PST)
From: Elvis Dowson <elvis.dowson@gmail.com>
Message-Id: <9F0914A0-68FF-4245-B881-EF8155026D45@gmail.com>
Date: Sat, 15 Dec 2012 21:29:35 +0400
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
X-Mailer: Apple Mail (2.1499)
Subject: Using SRC_URI_append with SOC_FAMILY
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 15 Dec 2012 17:29:43 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
      I have defined the following variables defined =20

SOC_FAMILY =3D virtex-5 in my virtex-5.inc file, which is included by my =
virtex-5-ml507-powerpc-440.conf machine configuration file.

I have defined MACHINE=3Dvirtex-4-ml507-powerpc-440 in my local.conf =
file

In my u-boot-xilinx.git recipe, I have defined=20

FILESPATH =3D "${@base_set_filespath([ =
'${FILE_DIRNAME}/${PN}/${SOC_FAMILY}' ], d)}"
COMPATIBLE_MACHINE =3D "(virtex-5|microblaze)"

I will have multiple machine configurations, each of which will use =
either the virtex-5 or microblaze SOC_FAMILY.

How can I specify SRC_URI_append, so that it appends based on the =
SOC_FAMILY, rather than the machine configuration.

Setting SRC_URI_append_virtex-5 doesn't work (SOC_FAMILY), since the =
MACHINE configuration is set to virtex-5-ml507-powerpc-440.

I don't want to end up specifying =
SRC_URI_append_virtex-5-ml507-powerpc-440, and so forth for each and =
every MACHINE configuration that is based on a single SOC_FAMILY.

What should I do to achieve the desired results, and optimize the recipe =
so that it appends patches, based on the SOC_FAMILY, rather than the =
MACHINE configuraiton.

Best regards,

Elvis Dowson=

