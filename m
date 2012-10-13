Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88A50E0032E
	for <yocto@yoctoproject.org>; Sat, 13 Oct 2012 12:48:54 -0700 (PDT)
Received: by mail-pa0-f48.google.com with SMTP id kp12so4749401pab.35
	for <yocto@yoctoproject.org>; Sat, 13 Oct 2012 12:48:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=WIx1bE1SqB9HOtUcpDUsV2yDTD4Fnoqu6eU14bbi760=;
	b=e8ewqYMCU93u2hvQHO0DigESM4dughlZWi0+ZpoI2QHLvRCOW+waksliuRtpx/7CPm
	G5yH79HeO77jBcl3WGxm8TyN/u4Cm1RczHqFer18EIz9R1p3P5ZSuN9cEMsmppx2uCkv
	KI0F1PPYjd3S0KiX8KQAY6g6LdG7ZHWEwdyXPGyfKMuKAYCuVCPlF8v8T+AOJXPv+d9L
	Bh7nmQxihfPdW35MyP5KmBQ5vvRdshtYLML2mznDK3eD0xdsDM/bDye0OD/GvKqKa47Y
	9n9ZpITlHYxPNgxJyWoT/1izJQSYhDRawUwL6e8n3iK+mapYeCiSf0MsKdKIBQOnIuKy
	Uo9g==
Received: by 10.68.238.34 with SMTP id vh2mr24614801pbc.6.1350157734325;
	Sat, 13 Oct 2012 12:48:54 -0700 (PDT)
Received: from [192.168.1.100] ([94.205.106.220])
	by mx.google.com with ESMTPS id ni3sm793512pbc.2.2012.10.13.12.48.52
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 13 Oct 2012 12:48:53 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <7618B2C1-D197-406D-B563-30E837399301@gmail.com>
Date: Sat, 13 Oct 2012 23:48:49 +0400
Message-Id: <CB6ED42E-986E-476C-9259-13602F3C0403@gmail.com>
References: <7618B2C1-D197-406D-B563-30E837399301@gmail.com>
To: Philip Balister <philip@balister.org>
X-Mailer: Apple Mail (2.1499)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: meta-zynq-balister: Build output
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
X-List-Received-Date: Sat, 13 Oct 2012 19:48:54 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Philip,
                  I've just sent out two patches refactoring the zc702 =
machine configuration, and adding u-boot to the rootfs image. I've built =
this against the latest poky/master branch.

Best regards,

Elvis Dowson=

