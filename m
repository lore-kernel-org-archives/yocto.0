Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25AB6E004AB
	for <yocto@yoctoproject.org>; Fri, 14 Sep 2012 20:29:53 -0700 (PDT)
Received: by pbbrq13 with SMTP id rq13so8261430pbb.35
	for <yocto@yoctoproject.org>; Fri, 14 Sep 2012 20:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:date:message-id
	:to:mime-version:x-mailer;
	bh=zf/1cplz65t+zAkYYnu0lQrCEqkLoHaEA8LN4ZMcdDg=;
	b=viHosC9vxrwL/rS4Nj+mbTFE27190GmlvbeQBSIuUddZ7piB4xVtpCT6qT5cNuMAAX
	HpXYGgPs8V7fuHGp/s/8R2shV1GR94qhM4cdcn0HdMb4BYfYm0zFBSOZPlceIocJx0JW
	mJE7djNt180bkEAypx/HUSY5j2Zu5fKYUoS1Ex1Y0TRnhCpTfokVQjjcW+j785fjCvEE
	R4ngAb3kqxmHjwkvaXa6xQF6ynWUcWfpzDj/4prmt3dxF2QXhpuQYYXBLe22028LqR0J
	+Ww3l+QeTdtphbJtDyxbeT++bu6MWCAL+i61lnlwHCEYKWWGxCvhTnHawEZg7pCeK3Sk
	yD/w==
Received: by 10.68.191.226 with SMTP id hb2mr8072560pbc.129.1347679774594;
	Fri, 14 Sep 2012 20:29:34 -0700 (PDT)
Received: from [192.168.1.100] ([94.205.108.162])
	by mx.google.com with ESMTPS id sj5sm2119563pbc.30.2012.09.14.20.29.32
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 14 Sep 2012 20:29:33 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Sat, 15 Sep 2012 07:29:28 +0400
Message-Id: <B9672221-8331-49D3-B853-E284CBCCA0B5@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: All kernel modules being built and shipped in images/modules-*.tgz
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
X-List-Received-Date: Sat, 15 Sep 2012 03:29:53 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
     I just noticed that with the recent poky master updates, my =
images/modules-3.3.1-r00-virtex5.tgz file has grown from 33.1 MB to =
668.5MB. When I looked in the package, I saw that the kernel/drivers =
folder inside that package was nearly 1.5GB uncompressed!!

My kenel defconfig was tuned so that I only used a bare minimum of =
kernel modules, and nearly all except for 2 groups (one related to =
filesystem and the other for networking) was built as a module. The rest =
were all built into the kernel.

Isn't this a regression or an error?=20

Also my build time has gone up from 40 minutes to 67 minutes, probably =
as a result of the increased number of kernel modules being built and =
shipped.

Best regards,

Elvis Dowson=

