Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f53.google.com (mail-pb0-f53.google.com
	[209.85.160.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 446EEE00716
	for <yocto@yoctoproject.org>; Sat, 19 Jan 2013 10:24:13 -0800 (PST)
Received: by mail-pb0-f53.google.com with SMTP id un1so1958427pbc.12
	for <yocto@yoctoproject.org>; Sat, 19 Jan 2013 10:24:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:content-type:content-transfer-encoding:subject
	:message-id:date:to:mime-version:x-mailer;
	bh=FfjVBVPPk6/TcmTG/kB04j+5YU8dJ5P+K7nNcynGl5I=;
	b=XzhEPp8h2A9l62Xw+5tZd9jeozRfJbp7HdB8uDMJKhSIc093Pc4pBrvGX9JL/JTan0
	2gkwTdGymoklYNHMQOSi1JgaTsm1LD/95OwQoTKXR9b8y4NhIkv49hhN62/rJg6ve5pp
	IDie8AivtVg4Me2DaB0GnSFJxDy2vA/TuUlGnHFVWJg4Np/RsPznJzkN2MK0yC140Od+
	ZhE2OETYuS1Qq5Src72/itf/jhW/Myq5EFycK/K/G6o72mqEdEbnblRB6W9w4vg5Uf1k
	HGc/8B/O4eJB5sd2nVyNA2UwWMo8TCxlSDc4iDfZQUGq3J8x8G8jmgznH1j5Q1Hmu9yE
	/efg==
X-Received: by 10.68.222.196 with SMTP id qo4mr16591450pbc.140.1358619852959; 
	Sat, 19 Jan 2013 10:24:12 -0800 (PST)
Received: from [192.168.1.100] ([94.205.106.4])
	by mx.google.com with ESMTPS id pu5sm5361056pbb.73.2013.01.19.10.24.11
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 19 Jan 2013 10:24:12 -0800 (PST)
From: Elvis Dowson <elvis.dowson@gmail.com>
Message-Id: <546EF617-BE24-4442-B74E-29A61364E9F4@gmail.com>
Date: Sat, 19 Jan 2013 22:23:56 +0400
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
X-Mailer: Apple Mail (2.1499)
Subject: Eclipse IDE Plugin: Configuring cross gcc
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
X-List-Received-Date: Sat, 19 Jan 2013 18:24:13 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
      I've build meta-toolchain-sdk and installed the toolchain on a =
separate machine. I then installed Eclipse, Linux tools, and the Yocto =
Eclipse IDE Plugin.

I configured the Yocto Project ADT to use Standalone Pre-built =
toolchain, and pointed to the correct toolchain root and sysroot =
locations.=20

However, when I try to create a simple HelloWorld project, and select =
cross-gcc, it doesn't set any of the cross-compile prefix or toolchain =
paths.

I have to manually type them once again.

What's worse is that the environment-setup-ppc440e-poky-linux script =
file doesn't seem to be invoked.

This causes the gcc sysroot variable not to be set, causing errors =
during linking.

What is the correct way to use the pre-built toolchain, with the eclipse =
IDE. I want to build on the host, and direct compile for my target =
board.

Best regards,

Elvis Dowson=

