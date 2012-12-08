Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0041E003DA
	for <yocto@yoctoproject.org>; Sat,  8 Dec 2012 06:19:20 -0800 (PST)
Received: by mail-pa0-f48.google.com with SMTP id fa1so1078653pad.35
	for <yocto@yoctoproject.org>; Sat, 08 Dec 2012 06:19:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version:x-mailer;
	bh=QtvfJ8ZnXyQZUKkCdqTXGkqFcNKAW4GRBC4dMZxUfqc=;
	b=vZJxzENpBeqqE3fc3vWKbujY6ZpjkrX1cjnx2jy6wSUsMnDJB0p5Uud7CGo0lZBcr3
	VisUmQiLhHfIfTKE90Fri1NN4rQdqiGncvLtR1MBvLFJgWsz7DKQVfVBs95XSiDvTdEI
	CFfpb4EBWF22k7VFIrJoaaY4UlmhR9wtwJSjx7tkhBE8wCZKw5acUHtG1bDTmH3agprI
	M4O8H7oJuMPB/bGswH2auz4cAreaXAUfyVkBO+wfkZg5FKZ8dm7GYQRTotP1RT5h/SSJ
	1rcKmaoQYHKqY7NiJHXhPhGOSYWFtdCO6DcG7Ye9LImNbKQtDUsjPLkJ1Fu23+vHGW3C
	h04Q==
Received: by 10.68.129.233 with SMTP id nz9mr23527808pbb.139.1354976360757;
	Sat, 08 Dec 2012 06:19:20 -0800 (PST)
Received: from [192.168.1.100] ([94.205.107.244])
	by mx.google.com with ESMTPS id t5sm3825555paw.20.2012.12.08.06.19.18
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 08 Dec 2012 06:19:19 -0800 (PST)
From: Elvis Dowson <elvis.dowson@gmail.com>
Message-Id: <31099774-8FED-4465-BFC3-67C718BC4AF6@gmail.com>
Date: Sat, 8 Dec 2012 18:19:14 +0400
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
X-Mailer: Apple Mail (2.1499)
Subject: How to check if systemd is correctly setup
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
X-List-Received-Date: Sat, 08 Dec 2012 14:19:21 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
      I haven't used systemd before, and I've just built a linux kernel =
image using the latest yocto poky/master.

The boot process starts as normal, but it just displays "freeing memory =
(some value)" and I get no console prompt.

Q1: Which config setting or recipe code, controls the inclusion of =
systemd in the root filesystem?

Q2: How can I check to see if systemd is properly configured for my =
target (virtex-5-powerpc-405-ml507-softfloat)?

Best regards,

Elvis Dowson=

