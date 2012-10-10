Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3053CE0027E
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2012 10:00:55 -0700 (PDT)
Received: by mail-pa0-f48.google.com with SMTP id kp12so1016681pab.35
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2012 10:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:date:message-id
	:cc:to:mime-version:x-mailer;
	bh=a5x70Pl9d/lq13YMKuDII5CDvvJPKCENwy27G2DNRdc=;
	b=Hz/CahUPmutZqwD/wRw/9oDImHgpgIYSYpukW/nEaA7ulx5c8LuHWD1J/pPtt+G2Pq
	nIkQzv0xCsumoa7xx9K/DJ6/Zn2grzE5IVzm3hFwSp5K72U8jjyhHKOF5oubhkA9xKPU
	U/9+4+WwFsgjn7PL3enyOgfuF6yfhepsxEbe/8iy58uhbis35WqQe4BW6S3qLXkXKkMp
	ImgLASxS6D2SuPmzqx4Q8OXMY60JswxMMlwMedsFJux0CKcNh2xBSsVa20/q3Ck84lgo
	10J5lYLeAAQDHp9NVWpPITpOqoF77eqfODhLqGYSO7KDMOFy9hE13hk5EZtj55ed9ZP0
	0m5w==
Received: by 10.68.138.133 with SMTP id qq5mr75877859pbb.86.1349888450555;
	Wed, 10 Oct 2012 10:00:50 -0700 (PDT)
Received: from [192.168.1.100] ([94.205.106.112])
	by mx.google.com with ESMTPS id uh7sm1281196pbc.35.2012.10.10.10.00.48
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 10 Oct 2012 10:00:50 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Wed, 10 Oct 2012 21:00:44 +0400
Message-Id: <8FDC41DC-70B4-4BCB-9B95-51CFBCA8961D@gmail.com>
To: Wolfgang Denk <wd@denx.de>
Mime-Version: 1.0 (Apple Message framework v1283)
X-Mailer: Apple Mail (2.1283)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: denx.de site down?
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
X-List-Received-Date: Wed, 10 Oct 2012 17:00:55 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Wolfgang,
                        I noticed that your site has been down since =
yesterday? I usually sync with your u-boot and eldk repositories, and =
during the yocto build process, it failed because your site was =
un-reachable.

I was able to get past the yocto build issue, by temporarily modifying =
my u-boot repositories to point to the local file system.

I'm sure others are also facing a similar issue.

Best regards,

Elvis Dowson=

