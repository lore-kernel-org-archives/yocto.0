Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D862EE01388
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2012 09:33:23 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so9745945pbb.35
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2012 09:33:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:date:message-id
	:to:mime-version:x-mailer;
	bh=r87B4tZJer66b7grUErI1IFYJJI67KqXQQAjCA9CHY0=;
	b=K7zNhix67PiKydh/hmiSh/4ezyGucMBWZSgYWQZSlqse29XtnleuErw+UrzaFD7kDC
	ymhHcbUFDeM9K+lNOkVFMvvf4G+GVnlnf0T6BInuvOdylT+z3fbJmyRCo2+LrL+prNeu
	oJwTGRqrh82Es1WnP/CYu52Kh6hDqVu6srprpRJS5xIxIPR4YL+CWWW09zpg/Y6afzEa
	/WEEi29MDIe54wpMVKyvBxIxDizA8yCl/WAqaHmzY8O8hDhqwJX6jpGDVQEg9KAjMj55
	lhiON/cTrJBPQHglv/w8TDDIIpKNuMuUrt4hbLFnpPLu9lNLKWirYvUuygoXrF0axEze
	ybHA==
Received: by 10.66.83.161 with SMTP id r1mr19352196pay.69.1342888403389;
	Sat, 21 Jul 2012 09:33:23 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id hz10sm6291815pbc.32.2012.07.21.09.33.21
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 21 Jul 2012 09:33:22 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Sat, 21 Jul 2012 20:33:02 +0400
Message-Id: <0944C5D8-3610-4A02-B396-95186FD62F5C@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: Do the recent changes to core-image-minimal provide a root login prompt?
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
X-List-Received-Date: Sat, 21 Jul 2012 16:33:23 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
      Do the recent changes to core-image-minimal provide a root login =
prompt?=20

When I build it for the PowerPC440 on the Virtex5 FPGA, the size of the =
core-image-minimal-virtex5.tar.gz file is only around 3.2 MB, so I was =
wondering if the basic functionality provided by core-image-minimal =
includes booting to a root login console?

Elvis Dowson=

