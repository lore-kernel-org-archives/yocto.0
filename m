Return-Path: <elvis.dowson@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D9D5E0070B
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2012 09:18:46 -0700 (PDT)
Received: by yenl5 with SMTP id l5so8573463yen.35
	for <yocto@yoctoproject.org>; Wed, 01 Aug 2012 09:18:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:date:message-id
	:to:mime-version:x-mailer;
	bh=RJzziYwmUOxUyR/7NTOxr5CdpE5138k8hWcN6n7Mkdc=;
	b=UCRGl7GQ25h7oAl9GTr1lzDIc7xuMijIoM6eP2dmPfRIcb12zfef+j3VEWSSSgjAqM
	zSZmtMuejIOeOL3EbO0pNm5DcTxJ2mVGBqe77+WoHI0TwOxnGFZU53Vbu+7nLVtgi3sb
	V9EA3zBeyccSK+k4Y2k/uKLg1L57qLMSHzlL5I9qQDKFBHxVyRk2XavwS/+2dmQayphp
	E6Oo57WitlkIAIdqZtxgtpA+Es7brApQfWX46LD+i1VMGNjz/dmB+b4UM4OOwiwJ5wzC
	rW9ME8XyOHpXWuj03Z0EFuH9rKzoEVwVa3UInxJs4+vyctFouQaK0Osyau2HJtt8oruf
	V2Ow==
Received: by 10.66.80.193 with SMTP id t1mr2707098pax.40.1343837925393;
	Wed, 01 Aug 2012 09:18:45 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id nh8sm2855588pbc.60.2012.08.01.09.18.43
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 01 Aug 2012 09:18:44 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Wed, 1 Aug 2012 20:18:40 +0400
Message-Id: <C8B6E7F6-81CE-4DC0-A928-3D021DF1B8AA@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: GLIBCTARGETOS ?= "linux-gnueabi" for PowerPC 440 targets
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
X-List-Received-Date: Wed, 01 Aug 2012 16:18:46 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
       Perhaps the reason none of my root file system binaries are not =
working or running is because there is no

GLIBCTARGETOS ?=3D "linux-gnueabi"

in my machine/virtex5.conf or local.conf file?=20

I couldn't find any documentation on this, and if this is indeed the =
correct variable name for the current release.=20

Could someone please tell me what variables I should set, in order to =
generate a linux-gnueabi binary and cross compiler toolchain, for =
powerpc?

Elvis Dowson=

