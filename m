Return-Path: <elvis.dowson@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB86BE00596
	for <yocto@yoctoproject.org>; Thu,  3 May 2012 12:56:01 -0700 (PDT)
Received: by wgbfg15 with SMTP id fg15so1717062wgb.11
	for <yocto@yoctoproject.org>; Thu, 03 May 2012 12:56:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:date:message-id
	:to:mime-version:x-mailer;
	bh=N16KD9rlBle5K9gh8sei5lqQhVJi37AVW1XNC1Fo9PE=;
	b=joJp22xjpODOIFj4oWxkflZBUd7taz3ZcdGkIsnuXdU2CtgXbTwWc1cnRh2HVC6Zz3
	RUqU2UPsbVDURJ02WCLd9qrcRpjB5uZqAo8XfvYr9iidJpwHlqU0YJuclQ2WcOa8fZC8
	VDS9HJOgUqcJtwKXmf329mz7T1ci8soXUwDgEABgcLIFGjfHjto9pDlPhYwrfR+yGRF5
	SYBxXc9sBCzhlYfFk6XYlR/RlESJHsiFrvo3GiTkx91KCzjR1ACqoNKteFPK8g/TD059
	jZMRO1pG3/l3o3NXSpYtK5HH3g2MG93y+61Fd/egoy95cOuemWp4ooXonWS6O4/ipXwD
	x89A==
Received: by 10.180.95.37 with SMTP id dh5mr6375817wib.8.1336074960666;
	Thu, 03 May 2012 12:56:00 -0700 (PDT)
Received: from [192.168.1.35] (39.Red-81-33-71.dynamicIP.rima-tde.net.
	[81.33.71.39])
	by mx.google.com with ESMTPS id ff9sm1914750wib.2.2012.05.03.12.55.59
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 03 May 2012 12:56:00 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Thu, 3 May 2012 21:55:57 +0200
Message-Id: <4064BB91-B82E-4D59-B0B6-A21FC9733C0C@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1257)
X-Mailer: Apple Mail (2.1257)
Subject: How to specify a machine defconfig for a linux recipe
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
X-List-Received-Date: Thu, 03 May 2012 19:56:02 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
       How can I specify a machine defconfig for a linux recipe?

For example, if I set=20

# kernel provider
PREFERRED_PROVIDER_virtual/kernel =3D "linux-omap3"

and try to build my machine, I get the following errors:

 ERROR: Function failed: Fetcher failure for URL: 'file://defconfig'. =
Unable to fetch URL from any source.
NOTE: package linux-omap3-3.2-r0: task do_fetch: Failed
ERROR: Task 125 =
(/tool/yocto/meta-gumstix/recipes-kernel/linux/linux-omap3_3.2.bb, =
do_fetch) failed with exit code '1'
NOTE: Tasks Summary: Attempted 304 tasks of which 302 didn't need to be =
rerun and 1 failed.

Summary: 1 task failed:
  /tool/yocto/meta-gumstix/recipes-kernel/linux/linux-omap3_3.2.bb, =
do_fetch


Best regards,

Elvis Dowson=

